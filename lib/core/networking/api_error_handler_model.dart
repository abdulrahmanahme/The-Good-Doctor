
import 'dart:developer';

import 'package:json_annotation/json_annotation.dart';
part 'api_error_handler_model.g.dart';
@JsonSerializable()
class ApiErrorModel {
  final String? message;
  final int? code;
 final Map<String, dynamic>? data;

  ApiErrorModel({
    required this.message,
    this.code,
    this.data
  });

  factory ApiErrorModel.fromJson(Map<String, dynamic> json) =>
      _$ApiErrorModelFromJson(json);

  Map<String, dynamic> toJson() => _$ApiErrorModelToJson(this);

  String getError(){
    log('cccccccccccccccccccc');
    return data!.entries.map((e) => '${e.value.join(".")}').join("\n");
  }
}
