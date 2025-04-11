sealed class HomeState {}

final class HomeInitial extends HomeState {}
final class ChangeUserNameFieldContentState extends HomeState {}
final class ChangeUserEmailFieldContentState extends HomeState {}
final class ChangeUserPhoneFieldContentState extends HomeState {}
final class PickImageState extends HomeState {}
final class AddingNewUserState extends HomeState {}
final class DeletingUserState extends HomeState {}