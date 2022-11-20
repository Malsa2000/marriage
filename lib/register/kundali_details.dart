import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:marriage/register/education.dart';
import 'package:marriage/register/register_info.dart';

class Kundalidetails extends StatefulWidget {
  const Kundalidetails(
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
      required this.bloodgrp,
      required this.smokehabit,
      required this.weight,
      required this.familylocation,
      required this.familystatus,
      required this.familytype,
      required this.familyvalues,
      required this.height,
      required this.house,
      required this.land,
      required this.marriedstatus})
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
  final String bloodgrp;
  final String house;

  @override
  State<Kundalidetails> createState() => _KundalidetailsState();
}

final List<String> religion = [
  'Buddhist',
  'Christian',
  'Muslim',
  'Hinduism',
];

class _KundalidetailsState extends State<Kundalidetails> {
  String hello = '';
  String manglik = '';
  TextEditingController placecontroller = TextEditingController();
  TextEditingController birthdaycontroller = TextEditingController();
  TextEditingController gancontroller = TextEditingController();
  TextEditingController religiontypecontroller = TextEditingController();
  TextEditingController castecontroller = TextEditingController();
  TextEditingController subcastecontroller = TextEditingController();
  TextEditingController languagecontroller = TextEditingController();
  TextEditingController gotracontroller = TextEditingController();
  TextEditingController timecontroller = TextEditingController();
  TextEditingController maglocontroller = TextEditingController();
  TextEditingController dahagotrecontroller = TextEditingController();
  TextEditingController rasicontroller = TextEditingController();

  int? selectedvalue = 0;

  String? religionselectedvalue;
  String rasi = '';
  String religions = '';
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
              mainAxisAlignment: MainAxisAlignment.start,
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
                        onPressed: () {}, child: const Text('Contact Page'))
                  ],
                ),
                CustomTextField(
                    text1: 'Birth place',
                    controller: placecontroller,
                    hinttext: 'Enter your birth place',
                    title: 'Birth place'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                        // margin: const EdgeInsets.all(10),
                        padding: const EdgeInsets.all(5),
                        height: screenheight * 0.12,
                        width: screenwidth / 2,
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Birthday',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Container(
                                // padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    // color: Colors.grey.shade200.withOpacity(0.5),
                                    borderRadius: BorderRadius.circular(10)),
                                height: screenheight * 0.066,
                                child: TextFormField(
                                  controller: birthdaycontroller,
                                  decoration: InputDecoration(
                                      hintText: 'Enter your Birthdate',
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                            color: Colors.deepOrange),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                            color: Colors.black),
                                        borderRadius: BorderRadius.circular(10),
                                      )),
                                ),
                              ),
                            ])),
                    Container(
                        // margin: const EdgeInsets.all(5),
                        padding: const EdgeInsets.all(5),
                        height: screenheight * 0.12,
                        width: screenwidth / 3,
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Time of birth',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Container(
                                // padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    // color: Colors.grey.shade200.withOpacity(0.5),
                                    borderRadius: BorderRadius.circular(10)),
                                height: screenheight * 0.066,
                                child: TextFormField(
                                  controller: timecontroller,
                                  decoration: InputDecoration(
                                    hintText: 'Enter your Birth time',
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
                Container(
                  margin: const EdgeInsets.only(top: 0, left: 15),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('AM/PM',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Radio<int>(
                                activeColor: Colors.red.shade600,
                                value: 1,
                                groupValue: selectedvalue,
                                onChanged: (value) {
                                  setState(() {
                                    selectedvalue = value;
                                  });
                                }),
                            const Text('AM'),
                            Radio<int>(
                                activeColor: Colors.red.shade600,
                                value: 2,
                                groupValue: selectedvalue,
                                onChanged: (value) {
                                  setState(() {
                                    selectedvalue = value;
                                  });
                                }),
                            const Text('PM')
                          ],
                        ),
                      ]),
                ),
                CustomTextField(
                    text1: 'Rasi',
                    controller: rasicontroller,
                    hinttext: 'Enter your Rasi',
                    title: 'Rasi'),
                CustomTextField(
                    text1: 'Gan',
                    controller: gancontroller,
                    hinttext: 'Enter your Gan or Barga',
                    title: 'Gan or Barga'),
                const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      'Religion Group',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    )),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: DropdownButtonFormField2(
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
                      ),
                    ),
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
                    items: religion
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
                      religions = value.toString();
                    },
                    onSaved: (value) {
                      religionselectedvalue = value.toString();
                    },
                  ),
                ),
                CustomTextField(
                    text1: 'Type',
                    controller: religiontypecontroller,
                    hinttext: 'Enter type',
                    title: 'Religion type'),
                CustomTextField(
                    text1: 'caste',
                    controller: castecontroller,
                    hinttext: 'Enter your caste',
                    title: 'Caste'),
                CustomTextField(
                    text1: 'subcaste',
                    controller: subcastecontroller,
                    hinttext: 'Enter sub-caste',
                    title: 'Sub - caste- (optional)'),
                const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child: Text(
                      "Do you know caste language?",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    )),
                Wrap(children: [
                  ChoiceChip(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    pressElevation: 3,
                    label: const Text("No"),
                    selected: (hello == "No") ? true : false,
                    selectedColor: Colors.red.shade400,
                    disabledColor: Colors.white,
                    onSelected: (bool value) {
                      setState(() {
                        hello = "No";
                      });
                    },
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  ChoiceChip(
                    label: const Text("Yes"),
                    selected: (hello == "Yes") ? true : false,
                    selectedColor: Colors.deepOrange.shade200,
                    disabledColor: Colors.white,
                    onSelected: (bool value) {
                      setState(() {
                        hello = "Yes";
                      });
                    },
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                ]),
                CustomTextField(
                    text1: 'Language',
                    controller: languagecontroller,
                    hinttext: 'Enter language',
                    title: 'What other languages you know?'),
                CustomTextField(
                    text1: 'gotra',
                    controller: gotracontroller,
                    hinttext: 'Enter gotra',
                    title: 'Gotra - (optional)'),
                Row(
                  children: [
                    Container(
                        // margin: const EdgeInsets.all(10),
                        padding: const EdgeInsets.all(5),
                        height: screenheight * 0.12,
                        width: screenwidth / 2,
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Mawoli',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Container(
                                // padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    // color: Colors.grey.shade200.withOpacity(0.5),
                                    borderRadius: BorderRadius.circular(10)),
                                height: screenheight * 0.066,
                                child: TextFormField(
                                  controller: maglocontroller,
                                  decoration: InputDecoration(
                                      hintText: 'Enter mawoli caste',
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                            color: Colors.deepOrange),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                            color: Colors.black),
                                        borderRadius: BorderRadius.circular(10),
                                      )),
                                ),
                              ),
                            ])),
                    Container(
                        // margin: const EdgeInsets.all(5),
                        padding: const EdgeInsets.all(5),
                        height: screenheight * 0.12,
                        width: screenwidth / 3,
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'sahagotre',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Container(
                                // padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    // color: Colors.grey.shade200.withOpacity(0.5),
                                    borderRadius: BorderRadius.circular(10)),
                                height: screenheight * 0.066,
                                child: TextFormField(
                                  controller: dahagotrecontroller,
                                  decoration: InputDecoration(
                                    hintText: '',
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
                const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      "Manglik",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    )),
                Wrap(children: [
                  ChoiceChip(
                    pressElevation: 3,
                    label: const Text("No"),
                    selected: (manglik == "No") ? true : false,
                    selectedColor: Colors.deepOrange.shade200,
                    disabledColor: Colors.white,
                    onSelected: (bool value) {
                      setState(() {
                        manglik = "No";
                      });
                    },
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  ChoiceChip(
                    label: const Text("Yes"),
                    selected: (manglik == "Yes") ? true : false,
                    selectedColor: Colors.deepOrange.shade200,
                    disabledColor: Colors.white,
                    onSelected: (bool value) {
                      setState(() {
                        manglik = "Yes";
                      });
                    },
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  ChoiceChip(
                    label: const Text("Dont know"),
                    selected: (manglik == "Dont know") ? true : false,
                    selectedColor: Colors.deepOrange.shade200,
                    disabledColor: Colors.white,
                    onSelected: (bool value) {
                      setState(() {
                        manglik = "Dont know";
                      });
                    },
                  ),
                ]),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    TextButton(
                        onPressed: () {
                          Navigator.push(context,
                              CupertinoPageRoute(builder: (context) {
                            return Education(
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
                              bloodgrp: widget.bloodgrp,
                              height: widget.height,
                              house: widget.house,
                              land: widget.land,
                              marriedstatus: widget.marriedstatus,
                              hello: hello,
                              manglik: manglik,
                              birthday: birthdaycontroller.text,
                              caste: castecontroller.text,
                              gan: gancontroller.text,
                              gotra: gotracontroller.text,
                              language: languagecontroller.text,
                              place: placecontroller.text,
                              rasi: rasicontroller.text,
                              religion: religions.toString(),
                              subcaste: subcastecontroller.text,
                            );
                          }));
                        },
                        child: const Text(
                          'Skip',
                          style: TextStyle(fontSize: 16),
                        )),
                    InkWell(
                      onTap: () {
                        Navigator.push(context,
                            CupertinoPageRoute(builder: (context) {
                          return Education(
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
                            bloodgrp: widget.bloodgrp,
                            height: widget.height,
                            house: widget.house,
                            land: widget.land,
                            marriedstatus: widget.marriedstatus,
                            hello: hello,
                            manglik: manglik,
                            birthday: birthdaycontroller.text,
                            caste: castecontroller.text,
                            gan: gancontroller.text,
                            gotra: gotracontroller.text,
                            language: languagecontroller.text,
                            place: placecontroller.text,
                            rasi: rasi.toString(),
                            religion: religions.toString(),
                            subcaste: subcastecontroller.text,
                          );
                        }));
                      },
                      child: Container(
                        margin: const EdgeInsets.only(
                            top: 25, left: 80, bottom: 20),
                        padding: const EdgeInsets.all(8),
                        height: screenheight * 0.05,
                        width: screenwidth * 0.4,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.red.shade600),
                        child: const Text(
                          'Continue',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
