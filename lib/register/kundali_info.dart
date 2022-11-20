import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:marriage/register/kundali_details.dart';
import 'package:marriage/register/register_info.dart';
import 'package:marriage/utils/sizeboxs.dart';

class KundaliInfo extends StatefulWidget {
  const KundaliInfo({Key? key,
    required this.age,
    required this.bodytype,
    required this.disabiltiy,
    required this.drinkhabit,
    required this.eathabit,
    required this.bloodgrp,
    required this.email,
    required this.fname,
    required this.hobby,
    required this.lname,
    required this.num,
    required this.pass,
    required this.skin,
    required this.smokehabit,
    required this.weight})
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
  final String bloodgrp;

  @override
  State<KundaliInfo> createState() => _KundaliInfoState();
}

final List<double> height = [
  4,
  4.1,
  4.2,
  4.3,
  4.4,
  4.5,
  4.6,
  4.7,
  4.8,
  4.9,
  4.10,
  4.11,
  5,
  5.1,
  5.2,
  5.3,
  5.4,
  5.5,
  5.6,
  5.7,
  5.8,
  5.9,
  5.10,
  5.11,
  6,
  6.1,
  6.2,
  6.3,
  6.4,
  6.5,
  6.6,
  6.7,
  6.8,
  6.9,
  6.10,
  6.11,
  7
];

int initialSectionIndex = 0;
int gsextionindex = 0;

List<Widget> section = [
  const SizedBox(),
  sections(),
  sections2(),
  sections3(),
  sections4(),
];
List<Widget> gsection = [
  const SizedBox(),
  Gsections(),
  Gsections2(),
  Gsections3(),
  Gsections4(),
];

class _KundaliInfoState extends State<KundaliInfo> {
  String? heightvalue;
  String heightselect = '';

  TextEditingController landcontroller = TextEditingController();
  TextEditingController housecontroller = TextEditingController();
  TextEditingController brothercontroller = TextEditingController();
  TextEditingController marriedbrocontroller = TextEditingController();
  TextEditingController sistercontroller = TextEditingController();
  TextEditingController marriedsiscontroller = TextEditingController();

  String marriedtalstatus = '';
  String familystatus = '';
  String familyvalues = '';
  String familylocation = '';
  String familytype = '';

  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery
        .of(context)
        .size
        .width;
    double screenheight = MediaQuery
        .of(context)
        .size
        .height;
    return SafeArea(
      child: Scaffold(
        body: ListView(children: [
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
                        onPressed: () {}, child: const Text('Contact Page'))
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text('Marital status ',
                    style: TextStyle(fontWeight: FontWeight.w600)),
                Wrap(
                  children: [
                    ChoiceChip(
                      label: const Text("Never married"),
                      selected:
                      (marriedtalstatus == "Never married") ? true : false,
                      selectedColor: Colors.deepOrange.shade200,
                      disabledColor: Colors.white,
                      onSelected: (bool value) {
                        setState(() {
                          marriedtalstatus = "Never married";
                        });
                      },
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    ChoiceChip(
                      label: const Text("Widowed"),
                      selected: (marriedtalstatus == "Widowed") ? true : false,
                      selectedColor: Colors.deepOrange.shade200,
                      disabledColor: Colors.white,
                      onSelected: (bool value) {
                        setState(() {
                          marriedtalstatus = "Widowed";
                        });
                      },
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    ChoiceChip(
                      label: const Text("Divorced"),
                      selected: (marriedtalstatus == "Divorced") ? true : false,
                      selectedColor: Colors.deepOrange.shade200,
                      disabledColor: Colors.white,
                      onSelected: (bool value) {
                        setState(() {
                          marriedtalstatus = "Divorced";
                        });
                      },
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    ChoiceChip(
                      label: const Text("Awaiting divorce"),
                      selected: (marriedtalstatus == "Awaiting divorce")
                          ? true
                          : false,
                      selectedColor: Colors.deepOrange.shade200,
                      disabledColor: Colors.white,
                      onSelected: (bool value) {
                        setState(() {
                          marriedtalstatus = "Awaiting divorce";
                        });
                      },
                    )
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text("Height",
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
                  items: height
                      .map((item) =>
                      DropdownMenuItem<double>(
                        value: item,
                        child: Text(
                          item.toString(),
                          style: const TextStyle(
                            fontSize: 14,
                          ),
                        ),
                      ))
                      .toList(),
                  validator: (value) {
                    if (value == null) {
                      return 'Please select height.';
                    }
                    return null;
                  },
                  onChanged: (value) {
                    setState(() {
                      heightselect = value.toString();
                    });
                  },
                  onSaved: (value) {
                    heightvalue = value.toString();
                  },
                ),
                const Sizeboxes(),
                const Text('Family status',
                    style: TextStyle(fontWeight: FontWeight.w600)),
                Wrap(
                  children: [
                    ChoiceChip(
                      label: const Text(" Middle class"),
                      selected: (familystatus == "Middle class") ? true : false,
                      selectedColor: Colors.deepOrange.shade200,
                      disabledColor: Colors.white,
                      onSelected: (bool value) {
                        setState(() {
                          familystatus = "Middle class";
                        });
                      },
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    ChoiceChip(
                      label: const Text("Upper middle class"),
                      selected:
                      (familystatus == "Upper middle class") ? true : false,
                      selectedColor: Colors.deepOrange.shade200,
                      disabledColor: Colors.white,
                      onSelected: (bool value) {
                        setState(() {
                          familystatus = "Upper middle class";
                        },);
                      },
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    ChoiceChip(
                      label: const Text("Rich"),
                      selected: (familystatus == "Rich") ? true : false,
                      selectedColor: Colors.deepOrange.shade200,
                      disabledColor: Colors.white,
                      onSelected: (bool value) {
                        setState(() {
                          familystatus = "Rich";
                        });
                      },
                    ),
                    ChoiceChip(
                      label: const Text("Affluent"),
                      selected: (familystatus == "Affluent") ? true : false,
                      selectedColor: Colors.deepOrange.shade200,
                      disabledColor: Colors.white,
                      onSelected: (bool value) {
                        setState(() {
                          familystatus = "Affluent";
                        });
                      },
                    )
                  ],
                ),
                const Text('Family type',
                    style: TextStyle(fontWeight: FontWeight.w600)),
                const SizedBox(
                  height: 5,
                ),
                Wrap(
                  children: [
                    ChoiceChip(
                      label: const Text("joint"),
                      selected: (familytype == "joint") ? true : false,
                      selectedColor: Colors.deepOrange.shade200,
                      disabledColor: Colors.white,
                      onSelected: (bool value) {
                        setState(() {
                          familytype = "joint";
                        });
                      },
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    ChoiceChip(
                      label: const Text("Nuclear"),
                      selected: (familytype == "Nuclear") ? true : false,
                      selectedColor: Colors.deepOrange.shade200,
                      disabledColor: Colors.white,
                      onSelected: (bool value) {
                        setState(() {
                          familytype = "Nuclear";
                        });
                      },
                    )
                  ],
                ),
                const Text(
                  'Family values',
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                Wrap(
                  children: [
                    ChoiceChip(
                      label: const Text("Orthodox"),
                      selected: (familyvalues == "Orthodox") ? true : false,
                      selectedColor: Colors.deepOrange.shade200,
                      disabledColor: Colors.white,
                      onSelected: (bool value) {
                        setState(() {
                          familyvalues = "Orthodox";
                        });
                      },
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    ChoiceChip(
                      label: const Text("Traditional"),
                      selected: (familyvalues == "Traditional") ? true : false,
                      selectedColor: Colors.deepOrange.shade200,
                      disabledColor: Colors.white,
                      onSelected: (bool value) {
                        setState(() {
                          familyvalues = "Traditional";
                        });
                      },
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    ChoiceChip(
                      label: const Text("Moderate"),
                      selected: (familyvalues == "Moderate") ? true : false,
                      selectedColor: Colors.deepOrange.shade200,
                      disabledColor: Colors.white,
                      onSelected: (bool value) {
                        setState(() {
                          familyvalues = "Moderate";
                        });
                      },
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    ChoiceChip(
                      label: const Text("liberal"),
                      selected: (familyvalues == "liberal") ? true : false,
                      selectedColor: Colors.deepOrange.shade200,
                      disabledColor: Colors.white,
                      onSelected: (bool value) {
                        setState(() {
                          familyvalues = "liberal";
                        });
                      },
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                        margin: const EdgeInsets.only(
                          left: 10,
                          right: 10,
                        ),
                        padding: const EdgeInsets.all(0),
                        height: screenheight * 0.10,
                        width: screenwidth / 3,
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'No of Brother',
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

                                height: screenheight * 0.05,
                                width: screenwidth * 0.2,
                                child: TextFormField(
                                  keyboardType: TextInputType.number,
                                  controller: brothercontroller,
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
                              )
                            ])),
                    Container(
                        margin: const EdgeInsets.only(left: 8, right: 8),
                        padding: const EdgeInsets.all(1),
                        height: screenheight * 0.10,
                        width: screenwidth / 2,
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                ' No of married brother',
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
                                height: screenheight * 0.05,
                                width: screenwidth * 0.2,
                                child: TextFormField(
                                  keyboardType: TextInputType.number,
                                  controller: marriedbrocontroller,
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                        margin: const EdgeInsets.only(
                          left: 10,
                          right: 10,
                        ),
                        padding: const EdgeInsets.all(0),
                        height: screenheight * 0.10,
                        width: screenwidth / 3,
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'No of sister',
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

                                height: screenheight * 0.05,
                                width: screenwidth * 0.2,
                                child: TextFormField(
                                  keyboardType: TextInputType.number,
                                  controller: sistercontroller,
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
                              )
                            ])),
                    Container(
                        margin: const EdgeInsets.only(left: 8, right: 8),
                        padding: const EdgeInsets.all(1),
                        height: screenheight * 0.10,
                        width: screenwidth / 2,
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                ' No of married sister',
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
                                height: screenheight * 0.05,
                                width: screenwidth * 0.2,
                                child: TextFormField(
                                  keyboardType: TextInputType.number,
                                  controller: marriedsiscontroller,
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

                // const Text('No of brothers',
                //     style: TextStyle(fontWeight: FontWeight.w600)),
                // const SizedBox(
                //   height: 8,
                // ),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //   crossAxisAlignment: CrossAxisAlignment.center,
                //   children: [
                //     InkWell(
                //       onTap: (() {
                //         setState(() {
                //           initialSectionIndex = 0;
                //         });
                //       }),
                //       child: Container(
                //         alignment: Alignment.center,
                //         decoration: BoxDecoration(
                //             color: Colors.grey.shade200,
                //             borderRadius: BorderRadius.circular(10)),
                //         height: 30,
                //         width: 50,
                //         child: const Text('None'),
                //       ),
                //     ),
                //     InkWell(
                //       onTap: () {
                //         setState(() {
                //           initialSectionIndex = 1;
                //         });
                //       },
                //       child: Container(
                //         alignment: Alignment.center,
                //         decoration: BoxDecoration(
                //             color: Colors.grey.shade200,
                //             borderRadius: BorderRadius.circular(10)),
                //         height: 30,
                //         width: 50,
                //         child: const Text('1'),
                //       ),
                //     ),
                //     InkWell(
                //       onTap: () {
                //         setState(() {
                //           initialSectionIndex = 2;
                //         });
                //       },
                //       child: Container(
                //         alignment: Alignment.center,
                //         decoration: BoxDecoration(
                //             color: Colors.grey.shade200,
                //             borderRadius: BorderRadius.circular(10)),
                //         height: 30,
                //         width: 50,
                //         child: const Text('2'),
                //       ),
                //     ),
                //     InkWell(
                //       onTap: () {
                //         setState(() {
                //           initialSectionIndex = 3;
                //         });
                //       },
                //       child: Container(
                //         alignment: Alignment.center,
                //         decoration: BoxDecoration(
                //             color: Colors.grey.shade200,
                //             borderRadius: BorderRadius.circular(10)),
                //         height: 30,
                //         width: 50,
                //         child: const Text('3'),
                //       ),
                //     ),
                //     InkWell(
                //       onTap: () {
                //         setState(() {
                //           initialSectionIndex = 4;
                //         });
                //       },
                //       child: Container(
                //         alignment: Alignment.center,
                //         decoration: BoxDecoration(
                //             color: Colors.grey.shade200,
                //             borderRadius: BorderRadius.circular(10)),
                //         height: 30,
                //         width: 80,
                //         child: const Text('4 or more'),
                //       ),
                //     ),
                //   ],
                // ),
                // initialSectionIndex == 0
                //     ? const Sizeboxes()
                //     : section[initialSectionIndex],
                // const Text('No of sisters',
                //     style: TextStyle(fontWeight: FontWeight.w600)),
                // const SizedBox(
                //   height: 8,
                // ),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //   crossAxisAlignment: CrossAxisAlignment.center,
                //   children: [
                //     InkWell(
                //       onTap: (() {
                //         setState(() {
                //           gsextionindex = 0;
                //         });
                //       }),
                //       child: Container(
                //         alignment: Alignment.center,
                //         decoration: BoxDecoration(
                //             color: Colors.grey.shade200,
                //             borderRadius: BorderRadius.circular(10)),
                //         height: 30,
                //         width: 50,
                //         child: const Text('None'),
                //       ),
                //     ),
                //     InkWell(
                //       onTap: () {
                //         setState(() {
                //           gsextionindex = 1;
                //         });
                //       },
                //       child: Container(
                //         alignment: Alignment.center,
                //         decoration: BoxDecoration(
                //             color: Colors.grey.shade200,
                //             borderRadius: BorderRadius.circular(10)),
                //         height: 30,
                //         width: 50,
                //         child: const Text('1'),
                //       ),
                //     ),
                //     InkWell(
                //       onTap: () {
                //         setState(() {
                //           gsextionindex = 2;
                //         });
                //       },
                //       child: Container(
                //         alignment: Alignment.center,
                //         decoration: BoxDecoration(
                //             color: Colors.grey.shade200,
                //             borderRadius: BorderRadius.circular(10)),
                //         height: 30,
                //         width: 50,
                //         child: const Text('2'),
                //       ),
                //     ),
                //     InkWell(
                //       onTap: () {
                //         setState(() {
                //           gsextionindex = 3;
                //         });
                //       },
                //       child: Container(
                //         alignment: Alignment.center,
                //         decoration: BoxDecoration(
                //             color: Colors.grey.shade200,
                //             borderRadius: BorderRadius.circular(10)),
                //         height: 30,
                //         width: 50,
                //         child: const Text('3'),
                //       ),
                //     ),
                //     InkWell(
                //       onTap: () {
                //         setState(() {
                //           gsextionindex = 4;
                //         });
                //       },
                //       child: Container(
                //         alignment: Alignment.center,
                //         decoration: BoxDecoration(
                //             color: Colors.grey.shade200,
                //             borderRadius: BorderRadius.circular(10)),
                //         height: 30,
                //         width: 80,
                //         child: const Text('4 or more'),
                //       ),
                //     ),
                //   ],
                // ),
                // gsextionindex == 0
                //     ? const Sizeboxes()
                //     : gsection[gsextionindex],
                const Text('Family location',
                    style: TextStyle(fontWeight: FontWeight.w600)),
                Wrap(
                  children: [
                    ChoiceChip(
                      label: const Text("Different"),
                      selected: (familylocation == "Different") ? true : false,
                      selectedColor: Colors.deepOrange.shade200,
                      disabledColor: Colors.white,
                      onSelected: (bool value) {
                        setState(() {
                          familylocation = "Different";
                        });
                      },
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    ChoiceChip(
                      label: const Text("Same as yours"),
                      selected:
                      (familylocation == "Same as yours") ? true : false,
                      selectedColor: Colors.deepOrange.shade200,
                      disabledColor: Colors.white,
                      onSelected: (bool value) {
                        setState(() {
                          familylocation = "Same as yours";
                        });
                      },
                    )
                  ],
                ),
                CustomTextField(
                    text1: 'Land',
                    controller: landcontroller,
                    hinttext: 'Enter your address',
                    title: 'Address'),
                CustomTextField(
                    text1: 'House',
                    controller: housecontroller,
                    hinttext: 'Enter your city',
                    title: 'City'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    TextButton(
                        onPressed: () {
                          Navigator.push(context,
                              CupertinoPageRoute(builder: (context) {
                                return Kundalidetails(
                                    age: widget.age,
                                    bloodgrp: widget.bloodgrp,
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
                                    familylocation: familylocation,
                                    familystatus: familystatus,
                                    familytype: familytype,
                                    familyvalues: familyvalues,
                                    height: heightselect.toString(),
                                    house: housecontroller.text,
                                    land: landcontroller.text,
                                    marriedstatus: marriedtalstatus);
                              }));
                        },
                        child: const Text('Skip')),
                    InkWell(
                      onTap: () {
                        Navigator.push(context,
                            CupertinoPageRoute(builder: (context) {
                              return Kundalidetails(
                                  age: widget.age,
                                  bloodgrp: widget.bloodgrp,
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
                                  familylocation: familylocation,
                                  familystatus: familystatus,
                                  familytype: familytype,
                                  familyvalues: familyvalues,
                                  height: heightselect.toString(),
                                  house: housecontroller.text,
                                  land: landcontroller.text,
                                  marriedstatus: marriedtalstatus);
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
          ),
        ]),
      ),
    );
  }
}

Widget sections() {
  return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
    const SizedBox(
      height: 5,
    ),
    const Text('No of married Brothers'),
    const SizedBox(
      height: 8,
    ),
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(10)),
          height: 30,
          width: 50,
          child: const Text('None'),
        ),
        Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(10)),
          height: 30,
          width: 50,
          child: const Text('1'),
        ),
      ],
    ),
  ]);
}

Widget sections2() {
  return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
    const SizedBox(
      height: 5,
    ),
    const Text('NO of married Brothers'),
    const SizedBox(
      height: 8,
    ),
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(10)),
          height: 30,
          width: 50,
          child: const Text('None'),
        ),
        Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(10)),
          height: 30,
          width: 50,
          child: const Text('1'),
        ),
        Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(10)),
          height: 30,
          width: 50,
          child: const Text('2'),
        ),
      ],
    ),
  ]);
}

Widget sections3() {
  return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
    const SizedBox(
      height: 5,
    ),
    const Text('No of married Brothers'),
    const SizedBox(
      height: 8,
    ),
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(10)),
          height: 30,
          width: 50,
          child: const Text('None'),
        ),
        Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(10)),
          height: 30,
          width: 50,
          child: const Text('1'),
        ),
        Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(10)),
          height: 30,
          width: 50,
          child: const Text('2'),
        ),
        Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(10)),
          height: 30,
          width: 50,
          child: const Text('3'),
        ),
      ],
    ),
  ]);
}

Widget sections4() {
  return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
    const SizedBox(
      height: 5,
    ),
    const Text('No of married Brothers'),
    const SizedBox(
      height: 8,
    ),
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(10)),
          height: 30,
          width: 50,
          child: const Text('None'),
        ),
        Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(10)),
          height: 30,
          width: 50,
          child: const Text('1'),
        ),
        Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(10)),
          height: 30,
          width: 50,
          child: const Text('2'),
        ),
        Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(10)),
          height: 30,
          width: 50,
          child: const Text('3'),
        ),
        Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(10)),
          height: 30,
          width: 50,
          child: const Text('4 or more'),
        )
      ],
    ),
  ]);
}

Widget Gsections() {
  return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
    const Text('No of married Sisters'),
    const SizedBox(
      height: 8,
    ),
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(10)),
          height: 30,
          width: 50,
          child: const Text('None'),
        ),
        Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(10)),
          height: 30,
          width: 50,
          child: const Text('1'),
        ),
      ],
    ),
  ]);
}

Widget Gsections2() {
  return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
    const Text('No of married Sisters'),
    const SizedBox(
      height: 8,
    ),
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(10)),
          height: 30,
          width: 50,
          child: const Text('None'),
        ),
        Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(10)),
          height: 30,
          width: 50,
          child: const Text('1'),
        ),
        Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(10)),
          height: 30,
          width: 50,
          child: const Text('2'),
        ),
      ],
    ),
  ]);
}

Widget Gsections3() {
  return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
    const Text('No of married Sisters'),
    const SizedBox(
      height: 8,
    ),
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(10)),
          height: 30,
          width: 50,
          child: const Text('None'),
        ),
        Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(10)),
          height: 30,
          width: 50,
          child: const Text('1'),
        ),
        Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(10)),
          height: 30,
          width: 50,
          child: const Text('2'),
        ),
        Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(10)),
          height: 30,
          width: 50,
          child: const Text('3'),
        ),
      ],
    ),
  ]);
}

Widget Gsections4() {
  return Column(children: [
    const Text('No of married sisters'),
    const SizedBox(
      height: 8,
    ),
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(10)),
          height: 30,
          width: 50,
          child: const Text('None'),
        ),
        Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(10)),
          height: 30,
          width: 50,
          child: const Text('1'),
        ),
        Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(10)),
          height: 30,
          width: 50,
          child: const Text('2'),
        ),
        Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(10)),
          height: 30,
          width: 50,
          child: const Text('3'),
        ),
        Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(10)),
          height: 30,
          width: 50,
          child: const Text('4 or more'),
        )
      ],
    ),
  ]);
}
