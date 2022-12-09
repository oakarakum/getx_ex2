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
          TextFormField(
            controller: nameController,
            keyboardType: TextInputType.name,
            style: const TextStyle(color: Colors.white),
            decoration: InputDecoration(
                fillColor: Colors.black,
                filled: true,
                hintText: "Enter Your Name",
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
          ),
          SizedBox(height: 10.h),
          TextField(
            controller: emailController,
            keyboardType: TextInputType.emailAddress,
            style: const TextStyle(color: Colors.white),
            decoration: InputDecoration(
                fillColor: Colors.black,
                filled: true,
                hintText: "Enter E-mail",
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
          ),
          SizedBox(height: 10.h),
          TextField(
            controller: phoneNumController,
            keyboardType: TextInputType.phone,
            style: const TextStyle(color: Colors.white),
            decoration: InputDecoration(
                fillColor: Colors.black,
                filled: true,
                hintText: "Enter Phone Number",
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
          ),
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
