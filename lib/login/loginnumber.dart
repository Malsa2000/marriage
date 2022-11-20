import 'package:flutter/material.dart';

class LoginNumber extends StatelessWidget {
  LoginNumber({Key? key}) : super(key: key);
  TextEditingController numbercontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;

    return SizedBox(
        height: 500,
        child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 30),
            padding: const EdgeInsets.all(5),
            height: 500,
            width: screenwidth,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Mobile Number',
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(15),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          height: 50,
                          width: 80,
                          child: const Text('+ 977'),
                        ),
                        Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          height: 50,
                          width: screenwidth / 2,
                          child: TextFormField(
                            keyboardType: TextInputType.number,
                            controller: numbercontroller,
                            decoration: const InputDecoration(
                              hintText: 'Enter your number',
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ]),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.red.shade400,
                        borderRadius: BorderRadius.circular(10)),
                    height: 50,
                    width: 300,
                    child: const Text(
                      'LOGIN',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'New Here?',
                        style: TextStyle(color: Colors.grey),
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: const Text('Create an account'))
                    ],
                  )
                ])));
  }
}
