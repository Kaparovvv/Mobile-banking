// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

class MarriageCertificateEntity extends Equatable {
  final String id;
  final String city;
  final String office;
  final String maleIin;
  final String femaleIin;
  final String maleFirstName;
  final String maleLastName;
  final String maleMiddleName;
  final String femaleFirstName;
  final String femaleLastName;
  final String femaleMiddleName;
  final String maleNationality;
  final String femaleNationality;

  const MarriageCertificateEntity({
    required this.id,
    required this.city,
    required this.office,
    required this.maleIin,
    required this.femaleIin,
    required this.maleFirstName,
    required this.maleLastName,
    required this.maleMiddleName,
    required this.femaleFirstName,
    required this.femaleLastName,
    required this.femaleMiddleName,
    required this.maleNationality,
    required this.femaleNationality,
  });

  @override
  List<Object?> get props => [
        id,
        city,
        office,
        maleIin,
        femaleIin,
        maleFirstName,
        maleLastName,
        maleMiddleName,
        femaleFirstName,
        femaleLastName,
        femaleMiddleName,
        maleNationality,
        femaleNationality,
      ];
}
