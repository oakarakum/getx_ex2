// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:getx_ex2/controller/contact_controller_data.dart';
import 'package:getx_ex2/models/contact_model.dart';
import 'package:getx_ex2/page/contact_book_screen.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  AppData appData = Get.put(AppData(), permanent: true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 10.h),
          SizedBox(
              height: 50.h,
              width: 85.w,
              child: Obx(
                () => ListView.builder(
                  itemCount: appData.contacts.value.length,
                  itemBuilder: (context, index) {
                    ContactModel model = appData.contacts.value[index];

                    return GestureDetector(
                      onTap: () {
                        Get.to(() => ContactBook());
                      },
                      child: Padding(
                        padding: EdgeInsets.only(bottom: 2.h),
                        child: PhysicalModel(
                          elevation: 1.h.w,
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(2.w),
                          shape: BoxShape.rectangle,
                          shadowColor: Colors.black,
                          child: Center(
                            child: Column(
                              children: [
                                Text(
                                  model.name,
                                  style: TextStyle(fontSize: 0.8.h.w),
                                ),
                                Text(
                                  model.email,
                                  style: TextStyle(fontSize: 0.8.h.w),
                                ),
                                Text(
                                  model.phone,
                                  style: TextStyle(fontSize: 0.8.h.w),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              )),
          ElevatedButton(
              onPressed: () {
                Get.to(() => ContactBook());
              },
              child: Center(
                child: Text("Add Contact"),
              ))
        ],
      ),
    );
  }
}
