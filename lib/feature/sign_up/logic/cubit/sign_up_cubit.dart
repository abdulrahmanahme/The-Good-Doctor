import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:the_good_doctor/feature/sign_up/logic/cubit/sign_up_state.dart';
import 'package:the_good_doctor/feature/sign_up/data/model/sign_up_request_model.dart';
import 'package:the_good_doctor/feature/sign_up/data/repo/sign_up_reo.dart';

class SignUpCubit extends Cubit<SignUpState> {
  SignUpRepo signUpRepo;
  SignUpCubit(this.signUpRepo) : super(const SignUpState.initial());
  final formKey = GlobalKey<FormState>();

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController genderController = TextEditingController();
  TextEditingController confirmPassController = TextEditingController();

  Future<void> signUp(SignUpRequestModel signUpRequestModel) async {
    final res = await signUpRepo.signUp(signUpRequestModel);
    emit(const SignUpState.loading());
    res.when(success: (success) {
      emit(SignUpState.success(success));
    }, failure: (error) {
      emit(
        SignUpState.error(
          error: error,
        ),
      );
    });
  }
  
}
