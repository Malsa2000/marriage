import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:marriage/register/kundali_info.dart';

class LoginPage extends StatefulWidget {
  const LoginPage(
      {Key? key,
      required this.fname,
      required this.lastname,
      required this.email,
      required this.num,
      required this.age,
      required this.bloodgroup,
      required this.password})
      : super(key: key);
  final String fname;
  final String lastname;
  final String num;
  final String email;
  final String password;
  final String age;
  final String bloodgroup;
  @override
  State<LoginPage> createState() => _LoginPageState();
}

final List<String> genderItems = [
  'Singing',
  'Dancing',
  'Acting',
  'Painting',
];
final List<int> weight = [
  48,
  49,
  50,
  51,
  52,
  53,
  54,
  55,
  56,
  57,
  58,
  59,
  60,
  61,
  62,
  63,
  64,
  65,
  66,
  67,
  68,
  69,
  70,
  71,
  72,
  73,
  74,
  75,
  76,
  77,
  78,
  79,
  80
];

bool ispressed = false;

final _formKey = GlobalKey<FormState>();

class _LoginPageState extends State<LoginPage> {
  String bodyType = "";
  String skinTone = "";
  String eatingHabit = "";
  String drinkingHabit = "";
  String smokingHabit = "";
  String anyDisabality = "";
  late String hobbyselectedValue;
  String selected = '';
  String weightselect = '';
  String? weightselectedvalue;

  @override
  void initState() {
    // TODO: implement initState\
    hobbyselectedValue = "";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double screemwidth = MediaQuery.of(context).size.width;
    double screenheight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Form(
            key: _formKey,
            child: ListView(
              children: [
                const Text(
                  'Some informations about your lifestyle',
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
                  height: 5,
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Hobbies",
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
                      fillColor: Colors.transparent,
                      contentPadding: EdgeInsets.zero,
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.deepOrange),
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
                  buttonPadding: const EdgeInsets.only(left: 20, right: 10),
                  dropdownDecoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  items: genderItems
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
                      selected = value.toString();
                    });
                    //Do something when changing the item if you want.
                  },
                  onSaved: (value) {
                    setState(() {
                      hobbyselectedValue = value.toString();
                    });
                  },
                ),
                const SizedBox(
                  height: 13,
                ),
                const Text(
                  "Weight",
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 5,
                ),
                DropdownButtonFormField2<String>(
                  buttonElevation: 3,
                  decoration: InputDecoration(
                      isDense: true,
                      filled: true,
                      fillColor: Colors.transparent,
                      contentPadding: EdgeInsets.zero,
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.deepOrange),
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
                  buttonPadding: const EdgeInsets.only(left: 20, right: 10),
                  dropdownDecoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  items: weight
                      .map((item) => DropdownMenuItem<String>(
                            value: item.toString(),
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
                      return 'Please select gender.';
                    }
                    return null;
                  },
                  onChanged: (value) {
                    setState(() {
                      weightselect = value.toString();
                    });
                  },
                  onSaved: (value) {
                    weightselectedvalue = value.toString();
                  },
                ),
                const SizedBox(
                  height: 13,
                ),
                const Text(
                  "Body Type",
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                Wrap(
                  children: [
                    ChoiceChip(
                      pressElevation: 3,
                      label: const Text("Slim"),
                      selected: (bodyType == "Slim") ? true : false,
                      selectedColor: Colors.deepOrange.shade200,
                      disabledColor: Colors.white,
                      onSelected: (bool value) {
                        setState(() {
                          bodyType = "Slim";
                        });
                      },
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    ChoiceChip(
                      label: const Text("Average"),
                      selected: (bodyType == "Average") ? true : false,
                      selectedColor: Colors.deepOrange.shade200,
                      disabledColor: Colors.white,
                      onSelected: (bool value) {
                        setState(() {
                          bodyType = "Average";
                        });
                      },
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    ChoiceChip(
                      label: const Text("Athetic"),
                      selected: (bodyType == "Athetic") ? true : false,
                      selectedColor: Colors.deepOrange.shade200,
                      disabledColor: Colors.white,
                      onSelected: (bool value) {
                        setState(() {
                          bodyType = "Athetic";
                        });
                      },
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    ChoiceChip(
                      label: const Text("Heavy"),
                      selected: (bodyType == "Heavy") ? true : false,
                      selectedColor: Colors.deepOrange.shade200,
                      disabledColor: Colors.white,
                      onSelected: (bool value) {
                        setState(() {
                          bodyType = "Heavy";
                        });
                      },
                    )
                  ],
                ),
                const SizedBox(
                  height: 13,
                ),
                const Text(
                  "Skin Tone",
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                Wrap(
                  children: [
                    ChoiceChip(
                      label: const Text("Fair"),
                      selected: (skinTone == "Fair") ? true : false,
                      selectedColor: Colors.deepOrange.shade200,
                      disabledColor: Colors.white,
                      onSelected: (bool value) {
                        setState(() {
                          skinTone = "Fair";
                        });
                      },
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    ChoiceChip(
                      label: const Text("White"),
                      selected: (skinTone == "White") ? true : false,
                      selectedColor: Colors.deepOrange.shade200,
                      disabledColor: Colors.white,
                      onSelected: (bool value) {
                        setState(() {
                          skinTone = "White";
                        });
                      },
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    ChoiceChip(
                      label: const Text("Semi-Dark"),
                      selected: (skinTone == "Semi-Dark") ? true : false,
                      selectedColor: Colors.deepOrange.shade200,
                      disabledColor: Colors.white,
                      onSelected: (bool value) {
                        setState(() {
                          skinTone = "Semi-Dark";
                        });
                      },
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    ChoiceChip(
                      label: const Text("Dark"),
                      selected: (skinTone == "Dark") ? true : false,
                      selectedColor: Colors.deepOrange.shade200,
                      disabledColor: Colors.white,
                      onSelected: (bool value) {
                        setState(() {
                          skinTone = "Dark";
                        });
                      },
                    )
                  ],
                ),
                const SizedBox(
                  height: 13,
                ),
                const Text(
                  "Eating Habit",
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                Wrap(
                  children: [
                    ChoiceChip(
                      label: const Text("All"),
                      selected: (eatingHabit == "All") ? true : false,
                      selectedColor: Colors.deepOrange.shade200,
                      disabledColor: Colors.white,
                      onSelected: (bool value) {
                        setState(() {
                          eatingHabit = "All";
                        });
                      },
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    ChoiceChip(
                      label: const Text("Vegeterian"),
                      selected: (eatingHabit == "Vegeterian") ? true : false,
                      selectedColor: Colors.deepOrange.shade200,
                      disabledColor: Colors.white,
                      onSelected: (bool value) {
                        setState(() {
                          eatingHabit = "Vegeterian";
                        });
                      },
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    ChoiceChip(
                      label: const Text("Non-Vegeterian"),
                      selected:
                          (eatingHabit == "Non-Vegeterian") ? true : false,
                      selectedColor: Colors.deepOrange.shade200,
                      disabledColor: Colors.white,
                      onSelected: (bool value) {
                        setState(() {
                          eatingHabit = "Non-Vegeterian";
                        });
                      },
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    ChoiceChip(
                      label: const Text("Eggetarian"),
                      selected: (eatingHabit == "Eggetarian") ? true : false,
                      selectedColor: Colors.deepOrange.shade200,
                      disabledColor: Colors.white,
                      onSelected: (bool value) {
                        setState(() {
                          eatingHabit = "Eggetarian";
                        });
                      },
                    )
                  ],
                ),
                const SizedBox(
                  height: 13,
                ),
                const Text(
                  "Drinking Habit",
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                Wrap(
                  children: [
                    ChoiceChip(
                      label: const Text("Non-Drinker"),
                      selected: (drinkingHabit == "Non-Drinker") ? true : false,
                      selectedColor: Colors.deepOrange.shade200,
                      disabledColor: Colors.white,
                      onSelected: (bool value) {
                        setState(() {
                          drinkingHabit = "Non-Drinker";
                        });
                      },
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    ChoiceChip(
                      label: const Text("Drink Socially"),
                      selected:
                          (drinkingHabit == "Drink Socially") ? true : false,
                      selectedColor: Colors.deepOrange.shade200,
                      disabledColor: Colors.white,
                      onSelected: (bool value) {
                        setState(() {
                          drinkingHabit = "Drink Socially";
                        });
                      },
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    ChoiceChip(
                      label: const Text("Regular"),
                      selected: (drinkingHabit == "Regular") ? true : false,
                      selectedColor: Colors.deepOrange.shade200,
                      disabledColor: Colors.white,
                      onSelected: (bool value) {
                        setState(() {
                          drinkingHabit = "Regular";
                        });
                      },
                    ),
                  ],
                ),
                const SizedBox(
                  height: 13,
                ),
                const Text(
                  "Smoking Habit",
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                Wrap(
                  children: [
                    ChoiceChip(
                      label: const Text("Non-Smoker"),
                      selected: (smokingHabit == "Non-Smoker") ? true : false,
                      selectedColor: Colors.deepOrange.shade200,
                      disabledColor: Colors.white,
                      onSelected: (bool value) {
                        setState(() {
                          smokingHabit = "Non-Smoker";
                        });
                      },
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    ChoiceChip(
                      label: const Text("Light/Social"),
                      selected: (smokingHabit == "Light/Social") ? true : false,
                      selectedColor: Colors.deepOrange.shade200,
                      disabledColor: Colors.white,
                      onSelected: (bool value) {
                        setState(() {
                          smokingHabit = "Light/Social";
                        });
                      },
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    ChoiceChip(
                      label: const Text("Occasionally"),
                      selected: (smokingHabit == "Occasionally") ? true : false,
                      selectedColor: Colors.deepOrange.shade200,
                      disabledColor: Colors.white,
                      onSelected: (bool value) {
                        setState(() {
                          smokingHabit = "Occasionally";
                        });
                      },
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    ChoiceChip(
                      label: const Text("Regular"),
                      selected: (smokingHabit == "Regular") ? true : false,
                      selectedColor: Colors.deepOrange.shade200,
                      disabledColor: Colors.white,
                      onSelected: (bool value) {
                        setState(() {
                          smokingHabit = "Regular";
                        });
                      },
                    )
                  ],
                ),
                const SizedBox(
                  height: 13,
                ),
                const Text(
                  "Any disabality",
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                Wrap(
                  children: [
                    ChoiceChip(
                      label: const Text("No"),
                      selected: (anyDisabality == "No") ? true : false,
                      selectedColor: Colors.deepOrange.shade200,
                      disabledColor: Colors.white,
                      onSelected: (bool value) {
                        setState(() {
                          anyDisabality = "No";
                        });
                      },
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    ChoiceChip(
                      label: const Text("Yes"),
                      selected: (anyDisabality == "Yes") ? true : false,
                      selectedColor: Colors.deepOrange.shade200,
                      disabledColor: Colors.white,
                      onSelected: (bool value) {
                        setState(() {
                          anyDisabality = "Yes";
                        });
                      },
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 18,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    TextButton(
                        onPressed: () {
                          Navigator.push(context,
                              CupertinoPageRoute(builder: (context) {
                            return KundaliInfo(
                                age: widget.age,
                                bodytype: bodyType,
                                disabiltiy: anyDisabality,
                                drinkhabit: drinkingHabit,
                                eathabit: eatingHabit,
                                email: widget.email,
                                fname: widget.fname,
                                hobby: selected.toString(),
                                lname: widget.lastname,
                                num: widget.num,
                                pass: widget.password,
                                skin: skinTone,
                                bloodgrp: widget.bloodgroup,
                                smokehabit: smokingHabit,
                                weight: weightselect.toString());
                          }));
                        },
                        child: const Text('Skip')),
                    InkWell(
                      onTap: () async {
                        Navigator.push(context,
                            CupertinoPageRoute(builder: (context) {
                          return KundaliInfo(
                              age: widget.age,
                              bodytype: bodyType,
                              disabiltiy: anyDisabality,
                              drinkhabit: drinkingHabit,
                              eathabit: eatingHabit,
                              email: widget.email,
                              fname: widget.fname,
                              hobby: selected.toString(),
                              lname: widget.lastname,
                              num: widget.num,
                              pass: widget.password,
                              skin: skinTone,
                              smokehabit: smokingHabit,
                              bloodgrp: widget.bloodgroup,
                              weight: weightselect.toString());
                        }));
                      },
                      child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Colors.deepOrange,
                            borderRadius: BorderRadius.circular(10)),
                        height: screenheight * 0.05,
                        width: screemwidth * 0.4,
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
        ),
      ),
    );
  }
}
