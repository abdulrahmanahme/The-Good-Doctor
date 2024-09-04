import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:the_good_doctor/core/networking/api_error_handler.dart';
import 'package:the_good_doctor/feature/login/data/repo/login_repo.dart';
import '../../data/model/login_request_body.dart';
part 'login_state.dart';
part 'login_cubit.freezed.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginRepo loginRepo;
  LoginCubit(this.loginRepo) : super(const LoginState.initial());
  final formKey=GlobalKey<FormState>();
  TextEditingController emailController=TextEditingController();
  TextEditingController passwordController=TextEditingController();


  void emitLoginState(LoginRequestBody loginRequestBody) async {
    emit(const LoginState.loading());
    final res = await loginRepo.login(loginRequestBody);
    res.when(success: (loginSuccess) {
      emit(LoginState.success(loginSuccess));
    }, failure: (error) {
      emit(LoginState.error(
          error.data!.entries
              .map((e) => '\n ${e.key}')
              .toString(),
        ),);
    });
  }
}

