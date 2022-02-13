import 'package:cart_view_apps/components/default_button.dart';
import 'package:cart_view_apps/screens/sign_in/sign_in_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import '../../../constants.dart';
import '../../../size_config.dart';


class SignUpForm extends StatefulWidget {
  const SignUpForm({Key? key}) : super(key: key);

  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final _formKey = GlobalKey<FormState>();
  final _auth = FirebaseAuth.instance;
  String? email;
  String? password;
  String? conformPassword;
  DateTime? date = DateTime(1900);
  TextEditingController dateCtl = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildNameFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildEmailFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildPasswordFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildDateOfBirthFormField(),
          SizedBox(height: getProportionateScreenHeight(40)),
          DefaultButton(
            text: "Continue",
            press: () async {
              if (_formKey.currentState!.validate()) {
                _formKey.currentState!.save();
                try {
                  await _auth
                      .createUserWithEmailAndPassword(
                      email: "$email",
                      password: "$password");

                  ScaffoldMessenger.of(context)
                      .showSnackBar(
                    const SnackBar(
                      backgroundColor: Colors.blueGrey,
                      content: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                            'Successfully Register.You Can Login Now'),
                      ),
                      duration: Duration(seconds: 5),
                    ),
                  );
                  await Navigator.pushNamed(context, SignInScreen.routeName);
                } on FirebaseAuthException catch (e) {
                  showDialog(
                    context: context,
                    builder: (ctx) => AlertDialog(
                      title: const Text(
                          ' Ops! Registration Failed'),
                      content: Text('${e.message}'),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(ctx).pop();
                          },
                          child: const Text('Okay'),
                        )
                      ],
                    ),
                  );
                }
              }
            },
          ),
        ],
      ),
    );
  }

  TextFormField buildDateOfBirthFormField(){
    return TextFormField(
      controller: dateCtl,
        onTap: () async{
          FocusScope.of(context).requestFocus(FocusNode());
          date = await showDatePicker(
              context: context,
              initialDate:DateTime.now(),
              firstDate:DateTime(1900),
              lastDate: DateTime(2100),
          );
          String formattedDate = DateFormat('yyyy-MM-dd').format(date!);
          dateCtl.text = formattedDate;
          },
      onSaved: (newValue) => dateCtl.text = newValue!,
      validator: (value) {
        if (value!.isEmpty) {
          return kDOBNullError;
        }
        return null;
      },
      decoration: const InputDecoration(
        labelText: "DOB",
        hintText: "Enter your date of birth",
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      obscureText: true,
      onSaved: (newValue) => password = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          kPassNullError;
        } else if (value.length >= 8) {
          kShortPassError;
        }
        password = value;
      },
      validator: (value) {
        if (value!.isEmpty) {
          return kPassNullError;
        } else if (value.length < 8) {
          return kShortPassError;
        }
        return null;

      },
      decoration: const InputDecoration(
        labelText: "Password",
        hintText: "Enter your password",
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      onSaved: (newValue) => email = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          kEmailNullError;
        } else if (emailValidatorRegExp.hasMatch(value)) {
          kInvalidEmailError;
        }
      },
      validator: (value) {
        if (value!.isEmpty) {
          return kEmailNullError;
        } else if (!emailValidatorRegExp.hasMatch(value)) {
          return kInvalidEmailError;
        }
        return null;
      },
      decoration: const InputDecoration(
        labelText: "Email",
        hintText: "Enter your email",
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }

  TextFormField buildNameFormField() {
    return TextFormField(
      onSaved: (newValue) => userName = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          kNameNullError;
        }
      },
      validator: (value) {
        if (value!.isEmpty) {
          return kNameNullError;
        }else if (value.length < 4) {
          return kShortNameError;
        }
      },
      decoration: const InputDecoration(
        labelText: "User Name",
        hintText: "Enter your user name",
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }
}

