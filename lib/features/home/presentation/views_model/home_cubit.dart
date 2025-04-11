import 'package:contact_app/features/home/data/models/user_model.dart';
import 'package:contact_app/features/home/presentation/views_model/home_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());

  String? userName;
  String? userEmail;
  String? userPhone;
  final GlobalKey<FormState> userFormKey = GlobalKey<FormState>();
  XFile? image;
  final ImagePicker picker = ImagePicker();
  List<UserModel> users = [];

  void changeUserNameContent({required String content}){
    userName = content;
    emit(ChangeUserNameFieldContentState());
  }
  void changeUserEmailContent({required String content}){
    userEmail = content;
    emit(ChangeUserEmailFieldContentState());
  }
  void changeUserPhoneContent({required String content}){
    userPhone = content;
    emit(ChangeUserPhoneFieldContentState());
  }

  Future<void> pickGalleryImage({required BuildContext context})async{
    image = await picker.pickImage(source: ImageSource.gallery);
    if(context.mounted) Navigator.of(context).pop();
    emit(PickImageState());
  }

  Future<void> pickCameraImage({required BuildContext context}) async{
    image = await picker.pickImage(source: ImageSource.camera);
    if(context.mounted) Navigator.of(context).pop();
    emit(PickImageState());
  }

  void enterUser({required BuildContext context}){
    if(userFormKey.currentState!.validate()){
      users.add(
        UserModel(
            name: userName!,
            email: userEmail!,
            phone: userPhone!,
            profilePic: image?.path,
        )
      );
      clearPreviousUserData();
      Navigator.of(context).pop();
      emit(AddingNewUserState());
    }
  }

  void deleteUser({required int index}){
    users.removeAt(index);
    emit(DeletingUserState());
  }

  void deleteLastAddedUser(){
    users.removeLast();
    emit(DeletingUserState());
  }

  void clearPreviousUserData(){
    userName= null;
    userEmail= null;
    userPhone = null;
    image = null;
  }
}
