import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:thegorgeousotp/stores/login_store.dart';
import 'package:thegorgeousotp/theme.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key key}) : super(key: key);
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Consumer<LoginStore>(
      builder: (_, loginStore, __) {
        return Scaffold(
          backgroundColor: Colors.white,
          key: loginStore.loginScaffoldKey,
          body: SafeArea(
            child: SingleChildScrollView(
              child: Container(
                height: MediaQuery.of(context).size.height,
                child: Column(
                  children: <Widget>[
                    Expanded(
                      flex: 2,
                      child: Column(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                            child: Stack(
                              children: <Widget>[
                                Container(
                                  height: 240,
                                  margin: EdgeInsets.only(top: 100),
                                  decoration: BoxDecoration(color: Color(0xFFE1E0F5), borderRadius: BorderRadius.all(Radius.circular(30))),
                                ),
                                Container(margin: EdgeInsets.symmetric(horizontal: 8), child: Image.asset('assets/img/login.png')),
                              ],
                            ),
                          ),
                          Container(
                              margin: EdgeInsets.symmetric(horizontal: 10),
                              child: Text('TheGorgeousOtp', style: TextStyle(color: MyColors.primaryColor, fontSize: 30, fontWeight: FontWeight.w800))
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Column(
                        children: <Widget>[
                          Container(
                              margin: EdgeInsets.symmetric(horizontal: 10),
                              child: RichText(
                                textAlign: TextAlign.center,
                                text: TextSpan(
                                    children: <TextSpan>[
                                      TextSpan(text: 'We will send you an ', style: TextStyle(color: MyColors.primaryColor)),
                                      TextSpan(text: 'One Time Password ', style: TextStyle(color: MyColors.primaryColor, fontWeight: FontWeight.bold)),
                                      TextSpan(text: 'on this mobile number', style: TextStyle(color: MyColors.primaryColor)),
                                    ]
                                ),
                              )
                          ),
                          Container(
                            height: 40,
                            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                            child: CupertinoTextField(
                              padding: EdgeInsets.symmetric(horizontal: 16),
                              controller: phoneController,
                              clearButtonMode: OverlayVisibilityMode.editing,
                              keyboardType: TextInputType.phone,
                              maxLines: 1,
                              placeholder: '+33...',
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                            child: RaisedButton(
                              onPressed: () {
                                if (phoneController.text.isNotEmpty) {
                                  loginStore.getCodeWithPhoneNumber(context, phoneController.text.toString());
                                } else {
                                  loginStore.loginScaffoldKey.currentState.showSnackBar(SnackBar(
                                    behavior: SnackBarBehavior.floating,
                                    backgroundColor: Colors.red,
                                    content: Text('Please enter a phone number', style: TextStyle(color: Colors.white),),
                                  ));
                                }
                              },
                              color: MyColors.primaryColor,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(14))
                              ),
                              child: Container(
                                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Text('Next', style: TextStyle(color: Colors.white),),
                                    Container(
                                      padding: EdgeInsets.all(8),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(Radius.circular(20)),
                                        color: MyColors.primaryColorLight,
                                      ),
                                      child: Icon(Icons.arrow_forward_ios, color: Colors.white, size: 16,),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
