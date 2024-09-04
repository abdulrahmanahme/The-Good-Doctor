
import 'package:json_annotation/json_annotation.dart';
part 'sign_up_response_model.g.dart';

@JsonSerializable()
class SignUpResponseModel{
  final String message;
  @JsonKey(name:'data')
   final UserData userData;
   final int code; 
  const SignUpResponseModel({
    required this.message,
   required this.userData,
   required this.code
   });
   factory SignUpResponseModel.fromJson(Map<String, dynamic> json)=>_$SignUpResponseModelFromJson(json);

}

@JsonSerializable()
class UserData{
  final String token;
  final String username;
const  UserData({required this.token, required this.username});
factory UserData.fromJson(Map<String, dynamic> json)=>_$UserDataFromJson(json);
}
