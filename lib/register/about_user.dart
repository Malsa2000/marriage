import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:marriage/data/controller/post_controller.dart';
import 'package:marriage/data/model/register_model.dart';

class AboutUser extends StatefulWidget {
  const AboutUser(
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
      required this.religion,
      required this.subcaste,
      required this.college,
      required this.eduvalue,
      required this.faculty,
      required this.income,
      required this.occupation,
      required this.org,
      required this.bloodgrp,
      required this.work,
      required this.yesno})
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
  final String college;
  final String yesno;
  final String faculty;
  final String income;
  final String occupation;
  final String org;
  final String work;

  final String eduvalue;
  @override
  State<AboutUser> createState() => _AboutUserState();
}

class _AboutUserState extends State<AboutUser> {
  File? img;
  Future pickImage() async {
    final img = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (img == null) return;
    final imgTemporary = File(img.path);
    setState(() {
      this.img = imgTemporary;
    });
  }

  TextEditingController aboutcontroller = TextEditingController();
  bool isloading = false;

  @override
  Widget build(BuildContext context) {
    double screenheight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: ListView(
        //shrinkWrap: true,
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'Some informations about you',
                    style: TextStyle(fontSize: 20),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Text('If you need support, please contact us'),
                      TextButton(
                          onPressed: () {}, child: const Text('Contact Page'))
                    ],
                  ),
                  Container(
                      height: 150,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Colors.red),
                      child: img != null
                          ? CircleAvatar(
                              radius: 150,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(100),
                                child: Image.file(
                                  height: 150,
                                  width: 150,
                                  img!,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            )
                          : CircleAvatar(
                              backgroundColor: Colors.grey.shade200,
                              radius: 150,
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(100),
                                  child: const Icon(
                                    Icons.person,
                                    size: 80,
                                    color: Colors.grey,
                                  )),
                            )),
                  TextButton(
                      onPressed: () {
                        pickImage();
                      },
                      child: const Text('Upload Image')),
                  const Text(
                    'Tell About yourself',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Container(
                    margin: const EdgeInsets.all(10),
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.grey.shade200.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(10)),
                    height: screenheight / 3,
                    child: TextFormField(
                      textInputAction: TextInputAction.done,
                      maxLines: 7,
                      controller: aboutcontroller,
                      decoration: const InputDecoration(
                        hintText: 'Write something intresting',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  Consumer(builder: (context, ref, child) {
                    final postuser =
                        ref.watch(registerUserNotifierprovider.notifier);
                    return isloading
                        ? const Center(
                            child: CircularProgressIndicator(),
                          )
                        : InkWell(
                            onTap: () async {
                              RegisterModel registerModel = RegisterModel(
                                  city: widget.house,
                                  horoscope: widget.rasi,
                                  weight: widget.weight,
                                  age: widget.age,
                                  annualincome: widget.income,
                                  bloodgroup: widget.bloodgrp,
                                  birthPlace: widget.place,
                                  birthday: widget.birthday,
                                  bodytype: widget.bodytype,
                                  aboutme: aboutcontroller.text,
                                  familystatus: widget.familystatus,
                                  hobbies: widget.hobby,
                                  height: widget.height,
                                  education: widget.eduvalue,
                                  gotra: widget.gotra,
                                  materialstatus: widget.marriedstatus,
                                  orgname: widget.org,
                                  occupation: widget.occupation,
                                  religion: widget.religion,
                                  skintone: widget.skin,
                                  caste: widget.caste,
                                  address: widget.land,
                                  familytype: widget.familytype,
                                  name: widget.fname,
                                  email: widget.email,
                                  password: widget.pass,
                                  number: '+977${widget.num}',
                                  lastname: widget.lname);
                              ref
                                  .read(registerUserNotifierprovider.notifier)
                                  .postUser(registerModel, context);

                              setState(() {
                                isloading = true;
                              });

                              // Navigator.push(context,
                              //     CupertinoPageRoute(builder: (context) {
                              //   return const AboutUser();
                              // }));
                            },
                            child: Container(
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color: Colors.deepOrange,
                                  borderRadius: BorderRadius.circular(10)),
                              height: 40,
                              width: 120,
                              child: const Text('Continue',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500)),
                            ),
                          );
                  })
                ]),
          ),
        ],
      ),
    );
  }
}
