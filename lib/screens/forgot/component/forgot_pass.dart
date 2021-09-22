import 'package:dordum/components/customsurfixicon.dart';
import 'package:dordum/components/default_button.dart';
import 'package:dordum/components/formError.dart';
import 'package:dordum/components/no_account_text.dart';
import 'package:dordum/const/AppConstant.dart';
import 'package:dordum/screens/otp/otp_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../size_config.dart';

class ForgotPassBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHight! * 0.04),
              Text(
                "Forgot Password",
                style: TextStyle(
                  fontSize: getProportionateScreenWidth(28),
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Please enter your email and we will send \nyou a link to return to your account",
                textAlign: TextAlign.center,
              ),
              SizedBox(height: SizeConfig.screenHight! * 0.1),
              ForgotPassForm(),
            ],
          ),
        ),
      ),
    );
  }
}

class ForgotPassForm extends StatefulWidget {
  @override
  _ForgotPassFormState createState() => _ForgotPassFormState();
}

class _ForgotPassFormState extends State<ForgotPassForm> {
  final _formKey = GlobalKey<FormState>();
  List<String> errors = [];
  String? email;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            onSaved: (newValue) => email = newValue,
            onChanged: (value) {
              if (value.isNotEmpty &&
                  errors.contains(AppColorsConst.dEmailNullError)) {
                setState(() {
                  errors.remove(AppColorsConst.dEmailNullError);
                });
              } else if (AppColorsConst.emailValidatorRegExp.hasMatch(value) &&
                  errors.contains(AppColorsConst.dInvalidEmailError)) {
                setState(() {
                  errors.remove(AppColorsConst.dInvalidEmailError);
                });
              }
              return null;
            },
            validator: (value) {
              if (value!.isEmpty &&
                  !errors.contains(AppColorsConst.dEmailNullError)) {
                setState(() {
                  errors.add(AppColorsConst.dEmailNullError);
                });
              } else if (AppColorsConst.emailValidatorRegExp.hasMatch(value) &&
                  !errors.contains(AppColorsConst.dInvalidEmailError)) {
                setState(() {
                  errors.add(AppColorsConst.dInvalidEmailError);
                });
              }
              return null;
            },
            decoration: InputDecoration(
              labelText: "Email",
              hintText: "Enter your email",
              // If  you are using latest version of flutter then lable text and hint text shown like this
              // if you r using flutter less then 1.20.* then maybe this is not working properly
              floatingLabelBehavior: FloatingLabelBehavior.always,
              suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Mail.svg"),
            ),
          ),
          SizedBox(height: getProportionateScreenHeight(30)),
          FormError(errors: errors),
          SizedBox(height: SizeConfig.screenHight! * 0.1),
          DefaultButton(
            text: "Continue",
            press: () {
              if (_formKey.currentState!.validate()) {
                Navigator.push(
                    context, CupertinoPageRoute(builder: (_) => OtpScreen()));
              }
            },
          ),
          SizedBox(height: SizeConfig.screenHight! * 0.1),
          NoAccountText(),
        ],
      ),
    );
  }
}
