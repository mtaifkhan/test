import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:services_app_ui/Pages/sign_up_page.dart';
//import 'package:services_app_ui/Pages/SignUp_page.dart';

class NumberConfirmPage extends StatefulWidget {
  const NumberConfirmPage({Key? key}) : super(key: key);

  @override
  _NumberConfirmPageState createState() => _NumberConfirmPageState();
}

class _NumberConfirmPageState extends State<NumberConfirmPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "Confirm your number",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        leading: Icon(
          Icons.close,
          color: Colors.black,
        ),
        centerTitle: true,
        elevation: 1.0,
        backgroundColor: Colors.white,
      ),
      body: Container(
        margin:
            EdgeInsets.only(top: 20.0, right: 10.0, left: 10.0, bottom: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Flexible(
              child: Text(
                "Enter the code we sent to over SMS to (825) 994-4668 : ",
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              children: [
                TextEditorForPhoneVerify(),
                TextEditorForPhoneVerify(),
                TextEditorForPhoneVerify(),
                TextEditorForPhoneVerify(),
                TextEditorForPhoneVerify(),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              children: [
                Text(
                  "Didn't Get an SMS? ",
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => SignUpPage()));
                  },
                  child: Text(
                    "Send again",
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 15.0,
            ),
            Text(
              "More Options",
              style: TextStyle(
                decoration: TextDecoration.underline,
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TextEditorForPhoneVerify extends StatelessWidget {
  // final TextEditingController code;

  // TextEditorForPhoneVerify(this.code);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(8.0),
        padding: EdgeInsets.all(5.0),
        height: 65.0,
        width: 50.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            //color: Colors.black,
            border: Border.all(color: Colors.grey, style: BorderStyle.solid)),
        child: TextField(
          //textAlign: TextAlign.center,
          keyboardType: TextInputType.number,
          // controller: this.code,

          maxLength: 1,
          cursorColor: Theme.of(context).primaryColor,
          decoration: InputDecoration(
            border: InputBorder.none,
            counterText: '',
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.red,
                width: 2.5,
              ),
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
        ));
  }
}
