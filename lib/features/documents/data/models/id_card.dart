// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class IDCard {
  String title;
  String numberID;
  String firstName;
  String secondName;
  String lastName;
  String birthDate;
  String identityNumber;
  String issueDate;
  String validDate;
  String frontImageURL;
  String backImageURL;

  IDCard({
    required this.title,
    required this.numberID,
    required this.firstName,
    required this.secondName,
    required this.lastName,
    required this.birthDate,
    required this.identityNumber,
    required this.issueDate,
    required this.validDate,
    required this.frontImageURL,
    required this.backImageURL,
  });

  IDCard copyWith({
    String? title,
    String? numberID,
    String? firstName,
    String? secondName,
    String? lastName,
    String? birthDate,
    String? identityNumber,
    String? issueDate,
    String? validDate,
    String? frontImageURL,
    String? backImageURL,
  }) {
    return IDCard(
      title: title ?? this.title,
      numberID: numberID ?? this.numberID,
      firstName: firstName ?? this.firstName,
      secondName: secondName ?? this.secondName,
      lastName: lastName ?? this.lastName,
      birthDate: birthDate ?? this.birthDate,
      identityNumber: identityNumber ?? this.identityNumber,
      issueDate: issueDate ?? this.issueDate,
      validDate: validDate ?? this.validDate,
      frontImageURL: frontImageURL ?? this.frontImageURL,
      backImageURL: backImageURL ?? this.backImageURL,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'title': title,
      'numberID': numberID,
      'firstName': firstName,
      'secondName': secondName,
      'lastName': lastName,
      'birthDate': birthDate,
      'IIN': identityNumber,
      'issueDate': issueDate,
      'validDate': validDate,
      'frontImageURL': frontImageURL,
      'backImageURL': backImageURL,
    };
  }

  factory IDCard.fromMap(Map<String, dynamic> map) {
    return IDCard(
      title: map['title'] as String,
      numberID: map['numberID'] as String,
      firstName: map['firstName'] as String,
      secondName: map['secondName'] as String,
      lastName: map['lastName'] as String,
      birthDate: map['birthDate'] as String,
      identityNumber: map['IIN'] as String,
      issueDate: map['issueDate'] as String,
      validDate: map['validDate'] as String,
      frontImageURL: map['frontImageURL'] as String,
      backImageURL: map['backImageURL'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory IDCard.fromJson(String source) =>
      IDCard.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'IDCard(title: $title, numberID: $numberID, firstName: $firstName, secondName: $secondName, lastName: $lastName, birthDate: $birthDate, IIN: $identityNumber, issueDate: $issueDate, validDate: $validDate, frontImageURL: $frontImageURL, backImageURL: $backImageURL)';
  }

  @override
  bool operator ==(covariant IDCard other) {
    if (identical(this, other)) return true;

    return other.title == title &&
        other.numberID == numberID &&
        other.firstName == firstName &&
        other.secondName == secondName &&
        other.lastName == lastName &&
        other.birthDate == birthDate &&
        other.identityNumber == identityNumber &&
        other.issueDate == issueDate &&
        other.validDate == validDate &&
        other.frontImageURL == frontImageURL &&
        other.backImageURL == backImageURL;
  }

  @override
  int get hashCode {
    return title.hashCode ^
        numberID.hashCode ^
        firstName.hashCode ^
        secondName.hashCode ^
        lastName.hashCode ^
        birthDate.hashCode ^
        identityNumber.hashCode ^
        issueDate.hashCode ^
        validDate.hashCode ^
        frontImageURL.hashCode ^
        backImageURL.hashCode;
  }
}
