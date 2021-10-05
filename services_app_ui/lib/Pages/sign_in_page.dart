import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:country_code_picker/country_code_picker.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text(
            "Login or sign up",
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
            child: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
          ),
        ),
        body: ListView(
          children: [
            Container(
              margin: EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 10.0, bottom: 5.0),
                    height: 150.0,
                    width: MediaQuery.of(context).size.width - 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        border: Border.all(
                          style: BorderStyle.solid,
                          color: Colors.grey,
                        )),
                    child: Column(
                      children: [
                        ListTile(
                          title: Text("Country/Region"),
                          subtitle: InkWell(
                            child: CountryCodePicker(
                              initialSelection: "+92",
                              showCountryOnly: false,
                              showOnlyCountryWhenClosed: false,
                              favorite: ["+91", "IN"],
                              alignLeft: true,
                            ),
                          ),
                        ),
                        // TextField(
                        //   decoration: InputDecoration(
                        //     hintText: "Country/Region",
                        //     contentPadding: EdgeInsets.only(left: 10.0),
                        //     disabledBorder: InputBorder.none,
                        //     border: InputBorder.none,
                        //   ),
                        // ),
                        Container(
                          height: 1.0,
                          width: MediaQuery.of(context).size.width,
                          color: Colors.grey,
                        ),
                        TextField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            hintText: "Phone number",
                            contentPadding: EdgeInsets.only(left: 10.0),
                            border: InputBorder.none,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Container(
                    child: Text(
                      "Plese Sure that the above information is correct.Standard message and date rates apply.",
                      style: TextStyle(
                        fontSize: 15.0,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      // Navigator.of(context).push(MaterialPageRoute(
                      //     builder: (context) => SignInPage()));
                    },
                    child: Container(
                      margin: EdgeInsets.only(top: 25.0),
                      height: 50.0,
                      width: MediaQuery.of(context).size.width - 40,
                      decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Center(
                        child: Text(
                          "Continue",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Row(children: <Widget>[
                    Expanded(
                        child: Divider(
                      color: Colors.black,
                    )),
                    Text(" OR "),
                    Expanded(
                        child: Divider(
                      color: Colors.black,
                    )),
                  ]),
                  SizedBox(
                    height: 20.0,
                  ),
                  AuthShare(
                      "Continue with Email", "assets/images/emailLogo.png"),
                  SizedBox(
                    height: 20.0,
                  ),
                  AuthShare(
                      "Continue with Apple", "assets/images/apple_logo.png"),
                  SizedBox(
                    height: 20.0,
                  ),
                  AuthShare(
                      "Continue with Google", "assets/images/googleLogo.png"),
                  SizedBox(
                    height: 20.0,
                  ),
                  AuthShare("Continue with facebook", "assets/images/face.png"),
                ],
              ),
            ),
          ],
        ));
  }

  Widget AuthShare(String name, String imagePath) {
    return Container(
      height: 50.0,
      width: MediaQuery.of(context).size.width - 40.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        border: Border.all(
          color: Colors.grey,
        ),
      ),
      child: Row(
        children: [
          Padding(
              padding: EdgeInsets.only(
                left: 10.0,
              ),
              child: Container(
                height: 30.0,
                width: 30.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                  image: DecorationImage(
                      image: AssetImage(
                        imagePath,
                      ),
                      fit: BoxFit.cover),
                ),
              )),
          SizedBox(
            width: 50.0,
          ),
          Text(
            name,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
