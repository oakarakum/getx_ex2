import 'package:get/get.dart';
import 'package:getx_ex2/models/contact_model.dart';

class AppData extends GetxController {
  var contacts = [].obs;

  addContacts(ContactModel contact) {
    contacts.add(contact);
    Get.back();
  }

  deleteContacts(ContactModel contact) {
    contacts.remove(contact);
  }
}


  /* // bunun https://stackoverflow.com/questions/64544571/flutter-getx-forms-validation validation'ı
  RxString username = RxString('');
  RxnString errorText = RxnString(null);
  Rxn<Function()> submitFunc = Rxn<Function()>(null);

  @override
  void onInit() {
    super.onInit();
    debounce<String>(username, validations,
        time: const Duration(milliseconds: 500));
  }

  void validations(String val) async {
    errorText.value = null; // reset validation errors to nothing
    submitFunc.value = null; // disable submit while validating
    if (val.isNotEmpty) {
      if (lengthOK(val) && await available(val)) {
        print('All validations passed, enable submit btn...');
        submitFunc.value = submitFunction();
        errorText.value = null;
      }
    }
  }

  bool lengthOK(String val, {int minLen = 5}) {
    if (val.length < minLen) {
      errorText.value = 'min. 5 chars';
      return false;
    }
    return true;
  }

  Future<bool> available(String val) async {
    print('Query availability of: $val');
    await Future.delayed(
        const Duration(seconds: 1), () => print('Available query returned'));

    if (val == "Sylvester") {
      errorText.value = 'Name Taken';
      return false;
    }
    return true;
  }

  void usernameChanged(String val) {
    username.value = val;
  }

  Future<bool> Function() submitFunction() {
    return () async {
      print('Make database call to create ${username.value} account');
      await Future.delayed(
          const Duration(seconds: 1), () => print('User account created'));
      return true;
    };
  } */