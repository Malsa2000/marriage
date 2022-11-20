import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:marriage/register/about_user.dart';
import 'package:marriage/register/register_info.dart';

class Education extends StatefulWidget {
  const Education(
      {Key? key,
      required this.age,
      required this.bodytype,
      required this.disabiltiy,
      required this.drinkhabit,
      required this.eathabit,
      required this.email,
      required this.fname,
      required this.hobby,
      required this.lname,
      required this.num,
      required this.pass,
      required this.skin,
      required this.smokehabit,
      required this.weight,
      required this.familylocation,
      required this.familystatus,
      required this.familytype,
      required this.familyvalues,
      required this.height,
      required this.house,
      required this.land,
      required this.marriedstatus,
      required this.birthday,
      required this.caste,
      required this.gan,
      required this.gotra,
      required this.hello,
      required this.language,
      required this.manglik,
      required this.place,
      required this.rasi,
      required this.bloodgrp,
      required this.religion,
      required this.subcaste})
      : super(key: key);
  final String fname;
  final String lname;
  final String age;
  final String email;
  final String pass;
  final String num;
  final String hobby;
  final String weight;
  final String bodytype;
  final String skin;
  final String eathabit;
  final String drinkhabit;
  final String smokehabit;
  final String disabiltiy;
  final String marriedstatus;
  final String height;
  final String familystatus;
  final String familytype;
  final String familyvalues;
  final String familylocation;
  final String land;
  final String house;
  final String hello;
  final String manglik;
  final String place;
  final String birthday;
  final String gan;
  final String religion;
  final String caste;
  final String subcaste;
  final String language;
  final String gotra;
  final String rasi;
  final String bloodgrp;

  @override
  State<Education> createState() => _EducationState();
}

final List<String> studied = [
  'No degree',
  'School level',
  '+2',
  'Foundation',
  'Diploma',
  'Bachelors',
  'Masters',
  'PHD'
];
final List<String> college = [
  'Tribhuwan University',
  'Kathmandu University',
  'Pokhara University',
  'Purvanchal University'
];
final List<String> yesno = ['Yes', 'No'];

class _EducationState extends State<Education> {
  TextEditingController facultycontroller = TextEditingController();
  TextEditingController incomecontroller = TextEditingController();
  TextEditingController occupationcontroller = TextEditingController();
  TextEditingController orgcontroller = TextEditingController();
  TextEditingController workcontroller = TextEditingController();

  String? educationvalue;
  String? univalue;
  String? lifevalue;

  String education = '';
  String univalv = '';
  String lifevalv = '';

  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;
    double screenheight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Some informations about your kundali',
                  style: TextStyle(fontSize: 20),
                ),
                Row(
                  children: [
                    const Text('If you need support, please contact us'),
                    TextButton(
                        onPressed: () {}, child: const Text('Contact Us'))
                  ],
                ),
                const Text(
                  "Highest Education",
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 5,
                ),
                DropdownButtonFormField2(
                  buttonElevation: 3,
                  decoration: InputDecoration(
                      isDense: true,
                      filled: true,
                      fillColor: Colors.white,
                      contentPadding: EdgeInsets.zero,
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.deepOrange),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.black),
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
                  buttonPadding: const EdgeInsets.only(left: 20, right: 10),
                  dropdownDecoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  items: studied
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
                  validator: (value) {
                    if (value == null) {
                      return 'Please select gender.';
                    }
                    return null;
                  },
                  onChanged: (value) {
                    education = value.toString();
                  },
                  onSaved: (value) {
                    setState(() {
                      educationvalue = value.toString();
                    });
                  },
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text("College attended",
                    style: TextStyle(fontWeight: FontWeight.w600)),
                const SizedBox(
                  height: 5,
                ),
                DropdownButtonFormField2(
                  buttonElevation: 3,
                  decoration: InputDecoration(
                      isDense: true,
                      filled: true,
                      fillColor: Colors.white,
                      contentPadding: EdgeInsets.zero,
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.deepOrange),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.black),
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
                  buttonPadding: const EdgeInsets.only(left: 20, right: 10),
                  dropdownDecoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  items: college
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
                  validator: (value) {
                    if (value == null) {
                      return 'Please select gender.';
                    }
                    return null;
                  },
                  onChanged: (value) {
                    setState(() {
                      univalv = value.toString();
                    });
                  },
                  onSaved: (value) {
                    univalue = value.toString();
                  },
                ),
                CustomTextField(
                    text1: "education faculty",
                    controller: facultycontroller,
                    hinttext: 'Enter Education...',
                    title: 'Education faculty'),
                CustomTextField(
                    text1: "occupation",
                    controller: occupationcontroller,
                    hinttext: 'Enter your occupation',
                    title: 'Occupation'),
                CustomTextField(
                    text1: "Annual Icome",
                    controller: incomecontroller,
                    hinttext: 'Enter your Income',
                    title: 'Annual Income'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        margin: const EdgeInsets.only(
                          left: 10,
                          right: 10,
                        ),
                        padding: const EdgeInsets.all(0),
                        height: screenheight * 0.12,
                        width: screenwidth / 3,
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Work Location',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w600),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Container(
                                // padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    // color:
                                    // Colors.grey.shade200.withOpacity(0.5),
                                    borderRadius: BorderRadius.circular(10)),

                                height: screenheight * 0.066,
                                child: TextFormField(
                                  controller: workcontroller,
                                  decoration: InputDecoration(
                                    hintText: 'Enter work location',
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: Colors.deepOrange),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide:
                                          const BorderSide(color: Colors.black),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                ),
                              ),
                            ])),
                    Container(
                        margin: const EdgeInsets.only(left: 8, right: 8),
                        padding: const EdgeInsets.all(1),
                        height: screenheight * 0.12,
                        width: screenwidth / 2,
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                ' Organization name',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w600),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Container(
                                // padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    // color:
                                    //     Colors.grey.shade200.withOpacity(0.5),
                                    borderRadius: BorderRadius.circular(10)),
                                height: screenheight * 0.066,
                                child: TextFormField(
                                  controller: orgcontroller,
                                  decoration: InputDecoration(
                                    hintText: 'Enter oragnization name',
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: Colors.deepOrange),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide:
                                          const BorderSide(color: Colors.black),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                ),
                              ),
                            ])),
                  ],
                ),
                const Text("Life Insurance",
                    style: TextStyle(fontWeight: FontWeight.w600)),
                const SizedBox(
                  height: 5,
                ),
                DropdownButtonFormField2(
                  buttonElevation: 3,
                  decoration: InputDecoration(
                      isDense: true,
                      filled: true,
                      fillColor: Colors.white,
                      contentPadding: EdgeInsets.zero,
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.deepOrange),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.black),
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
                  buttonPadding: const EdgeInsets.only(left: 20, right: 10),
                  dropdownDecoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  items: yesno
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
                  validator: (value) {
                    if (value == null) {
                      return 'Please select gender.';
                    }
                    return null;
                  },
                  onChanged: (value) {
                    //Do something when changing the item if you want.
                  },
                  onSaved: (value) {
                    lifevalue = value.toString();
                  },
                ),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    TextButton(
                        onPressed: () {
                          Navigator.push(context,
                              CupertinoPageRoute(builder: (context) {
                            return AboutUser(
                                age: widget.age,
                                bodytype: widget.bodytype,
                                disabiltiy: widget.disabiltiy,
                                drinkhabit: widget.drinkhabit,
                                eathabit: widget.eathabit,
                                email: widget.email,
                                fname: widget.fname,
                                hobby: widget.hobby,
                                lname: widget.lname,
                                num: widget.num,
                                pass: widget.pass,
                                skin: widget.skin,
                                smokehabit: widget.smokehabit,
                                weight: widget.weight,
                                familylocation: widget.familylocation,
                                familystatus: widget.familystatus,
                                familytype: widget.familytype,
                                familyvalues: widget.familyvalues,
                                height: widget.height,
                                house: widget.house,
                                land: widget.land,
                                marriedstatus: widget.marriedstatus,
                                birthday: widget.birthday,
                                caste: widget.caste,
                                gan: widget.gan,
                                bloodgrp: widget.bloodgrp,
                                gotra: widget.gotra,
                                hello: widget.hello,
                                language: widget.language,
                                manglik: widget.manglik,
                                place: widget.place,
                                rasi: widget.rasi,
                                religion: widget.religion,
                                subcaste: widget.subcaste,
                                college: univalv.toString(),
                                eduvalue: education.toString(),
                                faculty: facultycontroller.text,
                                income: incomecontroller.text,
                                occupation: occupationcontroller.text,
                                org: orgcontroller.text,
                                work: workcontroller.text,
                                yesno: lifevalv.toString());
                          }));
                        },
                        child: const Text('Skip')),
                    InkWell(
                      onTap: () {
                        Navigator.push(context,
                            CupertinoPageRoute(builder: (context) {
                          return AboutUser(
                              age: widget.age,
                              bodytype: widget.bodytype,
                              disabiltiy: widget.disabiltiy,
                              drinkhabit: widget.drinkhabit,
                              eathabit: widget.eathabit,
                              email: widget.email,
                              fname: widget.fname,
                              hobby: widget.hobby,
                              lname: widget.lname,
                              num: widget.num,
                              pass: widget.pass,
                              skin: widget.skin,
                              smokehabit: widget.smokehabit,
                              weight: widget.weight,
                              familylocation: widget.familylocation,
                              familystatus: widget.familystatus,
                              familytype: widget.familytype,
                              familyvalues: widget.familyvalues,
                              height: widget.height,
                              house: widget.house,
                              land: widget.land,
                              marriedstatus: widget.marriedstatus,
                              birthday: widget.birthday,
                              caste: widget.caste,
                              gan: widget.gan,
                              bloodgrp: widget.bloodgrp,
                              gotra: widget.gotra,
                              hello: widget.hello,
                              language: widget.language,
                              manglik: widget.manglik,
                              place: widget.place,
                              rasi: widget.rasi,
                              religion: widget.religion,
                              subcaste: widget.subcaste,
                              college: univalv.toString(),
                              eduvalue: education.toString(),
                              faculty: facultycontroller.text,
                              income: incomecontroller.text,
                              occupation: occupationcontroller.text,
                              org: orgcontroller.text,
                              work: workcontroller.text,
                              yesno: lifevalv.toString());
                        }));
                      },
                      child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Colors.deepOrange,
                            borderRadius: BorderRadius.circular(10)),
                        height: screenheight * 0.05,
                        width: screenwidth * 0.4,
                        child: const Text('Continue',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w500)),
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
