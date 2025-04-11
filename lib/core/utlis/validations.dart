sealed class Validations{

  static String? userNameValidation({required String? userName}){
    if((userName?.isEmpty ?? true) || userName?.trim() == ""){
      return "User name is required";
    }
    else{
      return null;
    }
  }
  static String? userEmailValidation({required String? userEmail}){
    final RegExp emailRegex = RegExp(
        r"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$"
    );

    if((userEmail?.isEmpty ?? true) || userEmail?.trim() == ""){
      return "User email is required";
    }
    else if (!emailRegex.hasMatch(userEmail!)) {
      return 'Enter a valid email';
    }
    else{
      return null;
    }
  }

  static String? userPhoneValidation({required String? userPhone}){
    final RegExp phoneRegex = RegExp(r'^\d{11}$');

    if((userPhone?.isEmpty ?? true) || userPhone?.trim() == ""){
      return "User phone is required";
    }
    else if (!phoneRegex.hasMatch(userPhone!)) {
      return 'Phone number must be exactly 11 digits';
    }
    else{
      return null;
    }
  }
}