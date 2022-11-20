import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:marriage/register/lifestyle_info.dart';

import '../data/controller/post_controller.dart';

class RegisterInfo extends StatefulWidget {
  const RegisterInfo(
      {Key? key,
      required this.firstname,
      required this.lastname,
      required this.number})
      : super(key: key);
  final String firstname;
  final String lastname;
  final String number;
  @override
  State<RegisterInfo> createState() => _RegisterInfoState();
}

class _RegisterInfoState extends State<RegisterInfo> {
  TextEditingController agecontroller = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passcontroller = TextEditingController();
  TextEditingController repasscontroller = TextEditingController();
  final GlobalKey<FormState> formkey = GlobalKey<FormState>();
  late String fname;
  late String lname;
  late String num;
  late String email;
  late String age;
  late String pass;

  bool isLoading = false;
  String? timetocallvalue;
  final List<String> callItems = [
    'Morning',
    'Evening',
    'Afternoon',
    'Night',
  ];
  final List<String> bloodgrp = [
    'A+',
    'A-',
    'B+',
    'B-',
    'O+',
    'O-',
    'AB+',
    'AB-'
  ];
  int validateEmail(String emailAddress) {
    String patttern = r'^[\w-.]+@([\w-]+.)+[\w-]{2,4}$';
    RegExp regExp = RegExp(patttern);
    if (emailAddress.isEmpty || emailAddress.isEmpty) {
      return 1;
    } else if (!regExp.hasMatch(emailAddress)) {
      return 2;
    } else {
      return 0;
    }
  }

  int validatePassword(String pswd) {
    if (pswd.isEmpty) {
      return 1;
    } else if (pswd.isNotEmpty && pswd.length <= 8) {
      return 2;
    } else {
      return 0;
    }
  }

  String bloodgrpselect = '';

  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;
    double screenheight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: ListView(children: [
          Form(
            key: formkey,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Provide us your basic information',
                    style: TextStyle(fontSize: 20),
                  ),
                  Row(
                    children: [
                      const Text('If you need support, please contact us'),
                      TextButton(
                          onPressed: () {}, child: const Text('Contact Page'))
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                      height: screenheight * 0.088,
                      width: screenwidth * 1,
                      margin: const EdgeInsets.all(5),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Prefered time to call you',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            DropdownButtonFormField2(
                              buttonElevation: 3,
                              decoration: InputDecoration(
                                  isDense: true,
                                  filled: true,
                                  fillColor: Colors.transparent,
                                  contentPadding: EdgeInsets.zero,
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        color: Colors.deepOrange),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                      color: Colors.black,
                                    ),
                                    borderRadius: BorderRadius.circular(10),
                                  )),
                              isExpanded: true,
                              hint: const Text(
                                'Select...',
                                style: TextStyle(fontSize: 14),
                              ),
                              icon: const Icon(
                                Icons.arrow_drop_down,
                                color: Colors.black45,
                              ),
                              iconSize: 30,
                              buttonHeight: 50,
                              buttonPadding:
                                  const EdgeInsets.only(left: 20, right: 10),
                              dropdownDecoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              items: callItems
                                  .map((item) => DropdownMenuItem<String>(
                                        value: item,
                                        child: Text(
                                          item,
                                          style: const TextStyle(
                                            fontSize: 14,
                                          ),
                                        ),
                                      ))
                                  .toList(),
                              // validator: (value) {
                              //   if (value == null) {
                              //     return 'Please select gender.';
                              //   }
                              //   return null;
                              // },
                              onChanged: (value) {
                                //Do something when changing the item if you want.
                              },
                              onSaved: (value) {
                                timetocallvalue = value.toString();
                              },
                            ),
                          ])),
                  CustomTextField(
                    text1: 'Age',
                    controller: agecontroller,
                    hinttext: 'Enter age',
                    title: 'Age',
                  ),
                  Container(
                      height: screenheight * 0.088,
                      width: screenwidth * 1,
                      margin: const EdgeInsets.all(5),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Blood Group',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            DropdownButtonFormField2(
                              buttonElevation: 3,
                              decoration: InputDecoration(
                                  isDense: true,
                                  filled: true,
                                  fillColor: Colors.transparent,
                                  contentPadding: EdgeInsets.zero,
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        color: Colors.deepOrange),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                      color: Colors.black,
                                    ),
                                    borderRadius: BorderRadius.circular(10),
                                  )),
                              isExpanded: true,
                              hint: const Text(
                                'Select...',
                                style: TextStyle(fontSize: 14),
                              ),
                              icon: const Icon(
                                Icons.arrow_drop_down,
                                color: Colors.black45,
                              ),
                              iconSize: 30,
                              buttonHeight: 50,
                              buttonPadding:
                                  const EdgeInsets.only(left: 20, right: 10),
                              dropdownDecoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              items: bloodgrp
                                  .map((item) => DropdownMenuItem<String>(
                                        value: item,
                                        child: Text(
                                          item,
                                          style: const TextStyle(
                                            fontSize: 14,
                                          ),
                                        ),
                                      ))
                                  .toList(),
                              // validator: (value) {
                              //   if (value == null) {
                              //     return 'Please select gender.';
                              //   }
                              //   return null;
                              // },
                              onChanged: (value) {
                                bloodgrpselect = value.toString();
                              },
                              onSaved: (value) {
                                timetocallvalue = value.toString();
                              },
                            ),
                          ])),
                  CustomTextField(
                    validate: (value) {
                      int res = validateEmail(emailcontroller.text);
                      if (res == 1) {
                        return "Please fill email address";
                      } else if (res == 2) {
                        return "Please enter valid email";
                      } else {
                        return null;
                      }
                    },
                    text1: 'Email address',
                    controller: emailcontroller,
                    hinttext: 'Enter email',
                    title: 'Email address',
                  ),
                  CustomTextField(
                      validate: (value) {
                        int res = validatePassword(passcontroller.text);
                        if (res == 1) {
                          return "Please enter password";
                        } else if (res == 2) {
                          return "Please enter minimum  7 characters";
                        } else {
                          return null;
                        }
                      },
                      text1: 'Password',
                      controller: passcontroller,
                      hinttext: 'Enter password',
                      title: 'Password'),
                  CustomTextField(
                      validate: (value) {
                        if (passcontroller.text != repasscontroller.text) {
                          return "Please enter same password";
                        } else {
                          return null;
                        }
                      },
                      text1: 'Repass',
                      controller: repasscontroller,
                      hinttext: 'Re-enter password',
                      title: 'Confirm password'),
                  Consumer(builder: (context, ref, child) {
                    final postuser =
                        ref.watch(registerUserNotifierprovider.notifier);
                    return isLoading
                        ? const Center(child: CircularProgressIndicator())
                        : InkWell(
                            onTap: () async {
                              if (formkey.currentState!.validate()) {
                                setState(() {
                                  fname = widget.firstname;
                                  lname = widget.lastname;
                                  num = widget.number;
                                  age = agecontroller.text;
                                  email = emailcontroller.text;
                                  pass = passcontroller.text;
                                });
                                Navigator.push(context,
                                    CupertinoPageRoute(builder: (context) {
                                  return LoginPage(
                                      fname: fname,
                                      bloodgroup: bloodgrpselect,
                                      lastname: lname,
                                      num: num,
                                      age: age,
                                      email: email,
                                      password: pass);
                                }));
                                // RegisterModel registerModel = RegisterModel(
                                //     name: widget.firstname.text,
                                //     age: int.parse(agecontroller.text),
                                //     email: emailcontroller.text,
                                //     password: passcontroller.text,
                                //     number: widget.number.text,
                                //     lastname: widget.lastname.text);

                                setState(() {
                                  isLoading = true;
                                });
                                // await postuser.postUser(registerModel, context);
                                setState(() {
                                  isLoading = false;
                                });
                              }
                            },
                            child: Container(
                              margin: EdgeInsets.only(
                                  top: 25, left: screenwidth / 4),
                              padding: const EdgeInsets.all(8),
                              height: screenheight * 0.05,
                              width: screenwidth / 2,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.deepOrange),
                              child: const Text(
                                'Continue',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ));
                  })
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}

class Registerdrop {
  final String name;
  Registerdrop({required this.name});
  static List<Registerdrop> dropList = [
    Registerdrop(name: 'Morning'),
    Registerdrop(name: 'Evening'),
    Registerdrop(name: 'Night'),
    Registerdrop(name: 'Afternoon'),
    Registerdrop(name: 'Any time is ok'),
  ];
}

class CustomTextField extends StatelessWidget {
  CustomTextField(
      {Key? key,
      this.textInputAction = TextInputAction.next,
      this.obsecuretext = false,
      required this.text1,
      required this.controller,
      required this.hinttext,
      this.title,
      this.labeltext,
      this.suffixicon,
      this.validate})
      : super(key: key);
  final String text1;
  TextEditingController controller;
  final String hinttext;
  final String? labeltext;
  final String? title;
  final String? Function(String?)? validate;
  bool obsecuretext;
  Widget? suffixicon;
  TextInputAction textInputAction;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(title!,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
        const SizedBox(
          height: 5,
        ),
        TextFormField(
          obscureText: obsecuretext,
          validator: validate,
          controller: controller,
          textInputAction: textInputAction,
          decoration: InputDecoration(
              suffixIcon: suffixicon,
              labelText: labeltext,
              floatingLabelBehavior: FloatingLabelBehavior.always,
              hintText: hinttext,
              focusedBorder: outlinefocusBorder(color: Colors.deepOrange),
              enabledBorder: outlinefocusBorder(),
              errorBorder: outlinefocusBorder(color: Colors.red),
              focusedErrorBorder: outlinefocusBorder(color: Colors.red)),
        ),
      ]),
    );
  }

  OutlineInputBorder outlinefocusBorder({Color color = Colors.black}) {
    return OutlineInputBorder(
        borderSide: BorderSide(color: color),
        gapPadding: 0.2,
        borderRadius: BorderRadius.circular(15));
  }
}
