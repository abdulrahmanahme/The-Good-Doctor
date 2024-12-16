import 'package:json_annotation/json_annotation.dart';
part 'home_model.g.dart';
@JsonSerializable()
class DoctorModel {
  String message;
  @JsonKey(name: "data")
  List<Doctorspecialization>? doctorspecialization;
  bool status;
  int code;

  DoctorModel({
    required this.message,
     this.doctorspecialization,
    required this.status,
    required this.code,
  });
  factory DoctorModel.fromJson(Map<String, dynamic> json) =>
      _$DoctorModelFromJson(json);
      
}

@JsonSerializable()
class Doctorspecialization {
  int ?id;
  String ?name;
  List<Doctor>? doctors;

  Doctorspecialization({
     this.id,
     this.name,
     this.doctors,
  });
  factory Doctorspecialization.fromJson(Map<String, dynamic> json) =>
      _$DoctorspecializationFromJson(json);
}

@JsonSerializable()
class Doctor {
  int ?id;
  String? name;
  String? email;
  String? phone;
  String ?photo;
  String? gender;
  String ?address;
  String? description;
  String ?degree;
  Specialization ?specialization;
  City ?city;
  int? appointPrice;
  String? startTime;
  String? endTime;

  Doctor({
     this.id,
     this.name,
     this.email,
     this.phone,
     this.photo,
     this.gender,
     this.address,
     this.description,
     this.degree,
     this.specialization,
     this.city,
     this.appointPrice,
     this.startTime,
     this.endTime,
  });
  factory Doctor.fromJson(Map<String, dynamic> json) => _$DoctorFromJson(json);
}

@JsonSerializable()
class City {
  int ?id;
  String ?name;
  Specialization? governrate;

  City({
     this.id,
     this.name,
     this.governrate,
  });
  factory City.fromJson(Map<String, dynamic> json) => _$CityFromJson(json);
}

@JsonSerializable()
class Specialization {
  int ?id;
  String? name;

  Specialization({
     this.id,
     this.name,
  });
  factory Specialization.fromJson(Map<String, dynamic> json) =>
      _$SpecializationFromJson(json);
}
