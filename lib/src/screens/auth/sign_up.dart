import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:sociable/src/blocs/auth_bloc/auth_bloc.dart';
import 'package:sociable/src/blocs/auth_bloc/auth_event.dart';
import 'package:sociable/src/blocs/auth_bloc/auth_state.dart';
import 'package:sociable/src/blocs/base/bloc_base.dart';
import 'package:sociable/src/blocs/base/bloc_event_state_builder.dart';
import 'package:sociable/src/screens/home/home_index.dart';
import 'package:sociable/src/values/all_resources.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool _syncContacts = true;
  bool _agreeTerms = false;
  String _cCode = "+233";
  String _vCode = "";
  bool _showVCode = false;
  MaskTextInputFormatter maskFormatter = MaskTextInputFormatter(
    mask: '(###) - ### - ####',
    filter: {"#": RegExp(r'[0-9]')},
  );

  Future<bool> _onWillPopScope() async {
    return false;
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    AuthBloc bloc = BlocProvider.of<AuthBloc>(context);

    return WillPopScope(
      onWillPop: _onWillPopScope,
      child: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.fromLTRB(0, 150, 0, 80),
                      child: Image.asset(
                        R.imgs.logo,
                        width: 250,
                      ),
                    ),
                    Container(
                      child: BlocEventStateBuilder<AuthEvent, AuthState>(
                        bloc: bloc,
                        builder: (BuildContext context, AuthState state) {
                          if(state.verified){
                            WidgetsBinding.instance.addPostFrameCallback((_) {
                              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => MyHomePage()));
                            });
                          }

                          List<Widget> children = [];

                          children.add(Container(
                            padding: EdgeInsets.symmetric(horizontal: 75, vertical: 0),
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 0,
                                  child: CountryCodePicker(
                                    onChanged: (e) {
                                      List<String> output = e.toString().split(" ");
                                      print(output[0]);
                                      setState(() {
                                        _cCode = output[0];
                                      });
                                    },
                                    showDropDownButton: true,
                                    builder: (CountryCode cCode) {
                                      return Card(
                                        elevation: 0,
                                        child: Container(
                                          padding: EdgeInsets.fromLTRB(6, 8, 0, 8),
                                          child: Row(
                                            children: [
                                              Image.asset(
                                                cCode.flagUri,
                                                width: 25,
                                                package: 'country_code_picker',
                                              ),
                                              SizedBox(
                                                width: 5,
                                              ),
                                              Text(
                                                cCode.dialCode,
                                                style: TextStyle(fontSize: 16),
                                              ),
                                              Icon(
                                                Icons.arrow_drop_down,
                                                size: 20,
                                              )
                                            ],
                                          ),
                                        ),
                                      );
                                    },
                                    initialSelection: 'GH',
                                    favorite: ['+233', 'GH'],
                                  ),
                                ),
                                Expanded(
                                  flex: 3,
                                  child: Container(
                                    child: TextField(
                                      keyboardType: TextInputType.phone,
                                      inputFormatters: [maskFormatter],
                                      decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: R.texts.phoneNumberPlaceHolder,
                                        contentPadding: EdgeInsets.all(5),
                                        isDense: true,
                                        enabledBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(color: Colors.grey),
                                        ),
                                        focusedBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(color: Colors.grey),
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ));

                          children.add(
                            Container(
                              child: state.codeSent || state.isAuthenticating ? Column(
                                children: [
                                  Container(
                                    padding: EdgeInsets.symmetric(vertical: 10),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text(R.texts.enterThe),
                                        Text(R.texts.fourDigit, style: TextStyle(fontWeight: FontWeight.bold,),),
                                        Text(R.texts.sentToYou),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.symmetric(horizontal: 100),
                                    child: PinCodeTextField(
                                      appContext: context,
                                      length: 4,
                                      keyboardType: TextInputType.number,
                                      beforeTextPaste: (text){
                                        return true;
                                      },
                                      onChanged: (newValue) {
                                        setState(() {
                                          _vCode = newValue;
                                        });
                                      },
                                      pinTheme: PinTheme(
                                        shape: PinCodeFieldShape.box,
                                        inactiveColor: Colors.grey,
                                        borderRadius: BorderRadius.circular(5),
                                        fieldHeight: 50,
                                        fieldWidth: 40,
                                        // activeFillColor: hasError ? Colors.orange : Colors.white,
                                      ),
                                    ),
                                  ),
                                ],
                              ) :Container()
                            ),
                          );

                          children.add(
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 100),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    height: 30,
                                    width: 24,
                                    child: Checkbox(
                                      value: _syncContacts,
                                      onChanged: (newValue) {
                                        setState(() {
                                          this._syncContacts = newValue;
                                        });
                                      },
                                    ),
                                  ),
                                  FlatButton(
                                      padding: EdgeInsets.symmetric(horizontal: 0),
                                      onPressed: () {
                                        setState(() {
                                          _syncContacts = !_syncContacts;
                                        });
                                      },
                                      child: Text(R.texts.syncContacts)),
                                ],
                              ),
                            ),
                          );

                          children.add(
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 80),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                        height: 30,
                                        width: 24,
                                        child: Checkbox(
                                          value: _agreeTerms,
                                          onChanged: (newValue) {
                                            newValue ? bloc.emitEvent(AuthEventAgreeTC()) : bloc.emitEvent(AuthEventDisagreeTC());
                                            setState(() {
                                              this._agreeTerms = newValue;
                                            });
                                          },
                                        ),
                                      ),
                                      GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              _agreeTerms = !_agreeTerms;
                                            });
                                            this._agreeTerms ? bloc.emitEvent(AuthEventAgreeTC()) : bloc.emitEvent(AuthEventDisagreeTC());
                                          },
                                          child: Text(R.texts.readAndAgreed)),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      GestureDetector(
                                        onTap: () {},
                                        child: Text(
                                          R.texts.termsAndCon,
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            decoration: TextDecoration.underline,
                                            color: Theme.of(context).primaryColor,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 20,
                                  )
                                ],
                              ),
                            ),
                          );

                          children.add(Container(
                            child: RaisedButton(
                              onPressed: _buttonCallBack(state, bloc),
                              color: Theme.of(context).primaryColor,
                              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50), side: BorderSide(color: Colors.transparent)),
                              textColor: Colors.white,
                              child: Text(
                                  _getButtonText(state),
                                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                            ),
                          ));

                          return Column(
                            children: children,
                          );
                        },
                      ),
                    ),


                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }


  Function _buttonCallBack(AuthState state, AuthBloc bloc){
    Function cb;
    if(state.termsAgreed){
      cb = (){
        bloc.emitEvent(AuthEventSendVerifyCode(cCode:_cCode,phone: maskFormatter.getUnmaskedText()));
      };
    }

    if(state.codeSending){
      cb = null;
    }

    if(state.codeSent){
      cb = (){
        bloc.emitEvent(AuthEventVerifyCode(cCode: _cCode, phone: maskFormatter.getUnmaskedText(), vCode: _vCode));
      };
    }

    if(state.isAuthenticating){
      cb = null;
    }

    if(state.verifyFailed){
      bloc.emitEvent(AuthEventSendVerifyCode(cCode:_cCode,phone: maskFormatter.getUnmaskedText()));
    }

    return cb;
  }

  String _getButtonText(AuthState state){
    String btnText = 'Send code';


    if(state.codeSending){
      print('code sending');
      btnText = 'Sending code ...';
    }

    if(state.codeSent){
      print('code sent');
      btnText = 'Verify';
    }

    if(state.isAuthenticating){
      print('verifying');
      btnText = 'Verifying code ...';
    }

    return btnText;
  }





}
