import 'package:dordum/components/customsurfixicon.dart';
import 'package:dordum/components/default_button.dart';
import 'package:dordum/components/formError.dart';
import 'package:dordum/const/AppConstant.dart';
import 'package:dordum/screens/forgot/forgot_password.dart';
import 'package:dordum/size_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SigInForm extends StatefulWidget {
  const SigInForm({Key? key}) : super(key: key);

  @override
  _SigInFormState createState() => _SigInFormState();
}

class _SigInFormState extends State<SigInForm> {
  final _formKey = GlobalKey<FormState>();
  String? email;
  String? password;
  bool? remember = false;
  final List<String> errors = [];

  void addError({String? error}) {
    setState(() {
      errors.add(error!);
    });
  }

  void removeError({String? error}) {
    setState(() {
      errors.remove(error!);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildEmailFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildPasswordFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          Row(
            children: [
              Checkbox(
                  value: remember,
                  activeColor: AppColorsConst.dPrimaryColor,
                  onChanged: (value) {
                    setState(() {
                      remember = value;
                    });
                  }),
              Text("Remember me"),
              Spacer(),
              GestureDetector(
                onTap: () => {
                  Navigator.push(
                      context,
                      CupertinoPageRoute(
                          builder: (_) => ForgotPasswordScreen()))
                },
                child: Text(
                  "Forgot Password",
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
              ),
            ],
          ),
          FormError(errors: errors),
          SizedBox(
            height: getProportionateScreenHeight(20),
          ),
          DefaultButton(
              text: "Continue",
              press: () {
                if (_formKey.currentState!.validate()) {
                  _formKey.currentState!.save();
                  FocusScope.of(context).unfocus();
                  print("Continue ");
                }
              })
        ],
      ),
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      obscureText: true,
      onSaved: (newValue) => password = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: AppColorsConst.dPassNullError);
        } else if (value.length >= 8) {
          removeError(error: AppColorsConst.dShortPassError);
        }
        return null;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: AppColorsConst.dPassNullError);
          return "";
        } else if (value.length >= 8) {
          addError(error: AppColorsConst.dShortPassError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Password",
        hintText: "Enter Your password",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Lock.svg"),
      ),
    );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      onSaved: (newValue) => email = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: AppColorsConst.dEmailNullError);
        } else if (AppColorsConst.emailValidatorRegExp.hasMatch(value)) {
          removeError(error: AppColorsConst.dInvalidEmailError);
        }
        return null;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: AppColorsConst.dEmailNullError);
          return "";
        } else if (AppColorsConst.emailValidatorRegExp.hasMatch(value)) {
          addError(error: AppColorsConst.dInvalidEmailError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Email",
        hintText: "Enter your email",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Mail.svg"),
      ),
    );
  }
}
