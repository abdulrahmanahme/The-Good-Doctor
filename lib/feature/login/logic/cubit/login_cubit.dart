import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:the_good_doctor/core/app_const/app_const.dart';
import 'package:the_good_doctor/core/helper/hive_helper.dart';
import 'package:the_good_doctor/core/networking/api_error_handler.dart';
import 'package:the_good_doctor/core/shared_pref/shared_pref.dart';
import 'package:the_good_doctor/feature/login/data/model/login_response.dart';
import 'package:the_good_doctor/feature/login/data/repo/login_repo.dart';
import '../../data/model/login_request_body.dart';
part 'login_state.dart';
part 'login_cubit.freezed.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginRepo loginRepo;
  LoginCubit(this.loginRepo) : super(const LoginState.initial());
  final formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  HiveHelperCash hiveHelperCash = HiveHelperCash();
  bool isEmailAndPasswordCashed=false;

  void emitLoginState(LoginRequestBody loginRequestBody) async {
    emit(const LoginState.loading());
    final res = await loginRepo.login(loginRequestBody);
    res.when(success: (loginSuccess) {
      setUserToken(loginSuccess.userData?.token ?? '');
      emit(LoginState.success(loginSuccess));
    }, failure: (error) {
      emit(
        LoginState.error(
          error.data!.entries.map((e) => '\n ${e.key}').toString(),
        ),
      );
    });
  }

  void setUserToken(String token) async {
    await SharedPref.setSecureString(AppConst.token, token);
  }

  void setPasswordAndEmail() {
    if (emailController.value.text.isEmpty &&
        passwordController.value.text.isEmpty) {
      emailController.text = hiveHelperCash.getCashedEmail;
      passwordController.text = hiveHelperCash.getCashedPassword;
      isEmailAndPasswordCashed=true;
    }
  }
}
