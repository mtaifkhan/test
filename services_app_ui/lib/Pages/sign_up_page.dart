import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'sign_in_page.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  // DateTime? pickedDate;

  // @override
  // void initState() {
  //   super.initState();
  //   pickedDate = DateTime.now();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text(
            "Finish signing up",
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 1.0,
          leading: InkWell(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
          ),
        ),
        body: ListView(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 50.0,
                    width: MediaQuery.of(context).size.width - 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        border: Border.all(
                          style: BorderStyle.solid,
                          color: Colors.grey,
                        )),
                    child: const TextField(
                      decoration: InputDecoration(
                        hintText: "User Name",
                        contentPadding: EdgeInsets.only(left: 10.0),
                        disabledBorder: InputBorder.none,
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  const Text(
                    "Make sure it matches the name on your government ID.",
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  //  ==================  Date of Birth ===================
                  // Container(
                  //   height: 50.0,
                  //   width: MediaQuery.of(context).size.width - 40,
                  //   decoration: BoxDecoration(
                  //       borderRadius: BorderRadius.circular(10.0),
                  //       border: Border.all(
                  //         style: BorderStyle.solid,
                  //         color: Colors.grey,
                  //       )),
                  //   child: ListTile(
                  //     title: Text("Birthday(mm/dd/yyyy)"),
                  //     trailing: Icon(Icons.keyboard_arrow_down),
                  //   ),
                  //    ===================================
                  //   child: TextField(
                  //     decoration: InputDecoration(
                  //       hintText: "Birthday(mm/dd/yyyy)",
                  //       contentPadding: EdgeInsets.only(left: 10.0),
                  //       disabledBorder: InputBorder.none,
                  //       border: InputBorder.none,
                  //     ),
                  //   ),
                  //),
                  // SizedBox(
                  //   height: 10.0,
                  // ),
                  // Text(
                  //   "To sign up,you need to be at least 18.You birthday would be shared with other people who use Airbnb.",
                  //   style: TextStyle(
                  //     fontSize: 15.0,
                  //     color: Colors.grey,
                  //   ),
                  // ),
                  // SizedBox(
                  //   height: 20.0,
                  // ),
                  Container(
                    height: 50.0,
                    width: MediaQuery.of(context).size.width - 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        border: Border.all(
                          style: BorderStyle.solid,
                          color: Colors.grey,
                        )),
                    child: const TextField(
                      decoration: InputDecoration(
                        hintText: "Email",
                        contentPadding: EdgeInsets.only(left: 10.0),
                        disabledBorder: InputBorder.none,
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  const Text(
                    "We'll email you trip confirmations and receipts.",
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Container(
                    height: 50.0,
                    width: MediaQuery.of(context).size.width - 40,
                    padding: const EdgeInsets.only(top: 8.0, right: 8.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        border: Border.all(
                          style: BorderStyle.solid,
                          color: Colors.grey,
                        )),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        suffixIcon: TextButton(
                          onPressed: () {},
                          child: const Text(
                            "Show",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        hintText: "password",
                        contentPadding: const EdgeInsets.only(left: 10.0),
                        disabledBorder: InputBorder.none,
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  const Text(
                    "password must be at least 8 characters",
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Container(
                    height: 50.0,
                    width: MediaQuery.of(context).size.width - 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        border: Border.all(
                          style: BorderStyle.solid,
                          color: Colors.grey,
                        )),
                    // child: ListTile(
                    //   title: Text("Birthday(mm/dd/yyyy)"),
                    //   trailing: Icon(Icons.keyboard_arrow_down),
                    // ),
                    //    ===================================
                    child: const TextField(
                      decoration: InputDecoration(
                        hintText: "Zip/Postal code",
                        contentPadding: EdgeInsets.only(left: 10.0),
                        disabledBorder: InputBorder.none,
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  const Text(
                    "Enter zip for city and State",
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),

            //====================== Extras  =========

            Container(
              margin: const EdgeInsets.only(top: 30.0, left: 20.0, right: 20.0),
              child: Column(
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        const TextSpan(
                          text:
                              "By selecting Agree and Continue below,I agree to Airbnb's",
                          style: TextStyle(color: Colors.black, fontSize: 15.0),
                        ),
                        TextSpan(
                            text:
                                "Term of Service,Payments Tems of Service,Privacy policy",
                            style: TextStyle(
                              color: Colors.blue[900],
                              decoration: TextDecoration.underline,
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                            )),
                        const TextSpan(
                          text: ", and ",
                          style: TextStyle(color: Colors.black, fontSize: 15.0),
                        ),
                        TextSpan(
                            text: "Nondiscrimination Policy.",
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                // ignore: avoid_print
                                print("The richText is tapped");
                              },
                            style: TextStyle(
                              color: Colors.blue[900],
                              decoration: TextDecoration.underline,
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                            )),
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const SignInPage()));
                    },
                    child: Container(
                      margin: const EdgeInsets.only(top: 25.0),
                      height: 50.0,
                      width: MediaQuery.of(context).size.width - 40,
                      decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: const Center(
                        child: Text(
                          "Agree and continue",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
    //        _pickDate()async{
    //   DateTime date=await showDatePicker(
    //     context:context ,
    //     firstDate: DateTime(DateTime.now().year-5),
    //      lastDate: DateTime(DateTime.now().year+5),
    //      pickedDate=date;
    //      );
    // }
  }
}
