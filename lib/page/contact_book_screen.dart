import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_ex2/controller/contact_controller_data.dart';
import 'package:getx_ex2/models/contact_model.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ContactBook extends StatelessWidget {
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneNumController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  AppData appData = Get.find<AppData>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(height: 10.h),
          TextFormFieldNameWidget(
              controllers: nameController,
              hintTexting: "Enter Your Name",
              inputType: TextInputType.name),
          SizedBox(height: 10.h),
          TextFormFieldEmailWidget(
              controllers: emailController,
              hintTexting: "Enter E-mail",
              inputType: TextInputType.emailAddress),
          SizedBox(height: 10.h),
          TextFormFieldPhoneWidget(
              controllers: phoneNumController,
              hintTexting: "Enter Phone Number",
              inputType: TextInputType.phone),
          SizedBox(height: 10.h),
          GestureDetector(
            onTap: () {
              // Get.to(() => ContactBook());
              ContactModel model = ContactModel(
                  name: nameController.text,
                  email: emailController.text,
                  phone: phoneNumController.text);

              appData.addContacts(model);
            },
            child: PhysicalModel(
              elevation: .8.h.w,
              color: Colors.orange,
              borderRadius: BorderRadius.circular(5.w),
              shape: BoxShape.rectangle,
              shadowColor: Colors.black,
              child: Center(
                child: Text(
                  "Add ",
                  style: TextStyle(fontSize: 0.8.h.w),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class TextFormFieldEmailWidget extends StatelessWidget {
  final TextEditingController controllers;
  final String hintTexting;
  final TextInputType inputType;
  const TextFormFieldEmailWidget({
    Key? key,
    required this.controllers,
    required this.hintTexting,
    required this.inputType,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controllers, //
      keyboardType: inputType,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: ((value) {
        if (!GetUtils.isEmail(value!)) {
          return "Email is not valid";
        } else {
          return null;
        }
      }),
      style: const TextStyle(color: Colors.white),
      decoration: InputDecoration(
          fillColor: Colors.black,
          filled: true,
          hintText: hintTexting,
          hintStyle: const TextStyle(color: Colors.white),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(2.w),
              borderSide: BorderSide(
                  width: 0.1.h,
                  color: Colors.purple,
                  style: BorderStyle.solid)),
          focusColor: Colors.yellow,
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(2.w),
              borderSide: BorderSide(
                  width: 0.5.h,
                  color: Colors.purple,
                  style: BorderStyle.solid))),
    );
  }
}

class TextFormFieldPhoneWidget extends StatelessWidget {
  final TextEditingController controllers;
  final String hintTexting;
  final TextInputType inputType;
  const TextFormFieldPhoneWidget({
    Key? key,
    required this.controllers,
    required this.hintTexting,
    required this.inputType,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controllers, //
      keyboardType: inputType,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: ((value) {
        if (!GetUtils.isPhoneNumber(value!)) {
          return "Phone is not valid";
        } else {
          return null;
        }
      }),
      style: const TextStyle(color: Colors.white),
      decoration: InputDecoration(
          fillColor: Colors.black,
          filled: true,
          hintText: hintTexting,
          hintStyle: const TextStyle(color: Colors.white),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(2.w),
              borderSide: BorderSide(
                  width: 0.1.h,
                  color: Colors.purple,
                  style: BorderStyle.solid)),
          focusColor: Colors.yellow,
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(2.w),
              borderSide: BorderSide(
                  width: 0.5.h,
                  color: Colors.purple,
                  style: BorderStyle.solid))),
    );
  }
}

class TextFormFieldNameWidget extends StatelessWidget {
  final TextEditingController controllers;
  final String hintTexting;
  final TextInputType inputType;
  const TextFormFieldNameWidget({
    Key? key,
    required this.controllers,
    required this.hintTexting,
    required this.inputType,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controllers, //
      keyboardType: inputType,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: ((value) {
        if (!GetUtils.isUsername(value!)) {
          return "Username is not valid";
        } else {
          return null;
        }
      }),
      style: const TextStyle(color: Colors.white),
      decoration: InputDecoration(
          fillColor: Colors.black,
          filled: true,
          hintText: hintTexting,
          hintStyle: const TextStyle(color: Colors.white),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(2.w),
              borderSide: BorderSide(
                  width: 0.1.h,
                  color: Colors.purple,
                  style: BorderStyle.solid)),
          focusColor: Colors.yellow,
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(2.w),
              borderSide: BorderSide(
                  width: 0.5.h,
                  color: Colors.purple,
                  style: BorderStyle.solid))),
    );
  }
}
