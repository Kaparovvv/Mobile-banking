// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class IDCard {
  String id;
  String firstName;
  String secondName;
  String lastName;
  String birthDate;
  String IIN;
  String issueDate;
  String validDate;
  IDCard({
    required this.id,
    required this.firstName,
    required this.secondName,
    required this.lastName,
    required this.birthDate,
    required this.IIN,
    required this.issueDate,
    required this.validDate,
  });

  IDCard copyWith({
    String? id,
    String? firstName,
    String? secondName,
    String? lastName,
    String? birthDate,
    String? IIN,
    String? issueDate,
    String? validDate,
  }) {
    return IDCard(
      id: id ?? this.id,
      firstName: firstName ?? this.firstName,
      secondName: secondName ?? this.secondName,
      lastName: lastName ?? this.lastName,
      birthDate: birthDate ?? this.birthDate,
      IIN: IIN ?? this.IIN,
      issueDate: issueDate ?? this.issueDate,
      validDate: validDate ?? this.validDate,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'firstName': firstName,
      'secondName': secondName,
      'lastName': lastName,
      'birthDate': birthDate,
      'IIN': IIN,
      'issueDate': issueDate,
      'validDate': validDate,
    };
  }

  factory IDCard.fromMap(Map<String, dynamic> map) {
    return IDCard(
      id: map['id'] as String,
      firstName: map['first_name'] as String,
      secondName: map['second_name'] as String,
      lastName: map['last_name'] as String,
      birthDate: map['birth_date'] as String,
      IIN: map['IIN'] as String,
      issueDate: map['issue_date'] as String,
      validDate: map['valid_date'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory IDCard.fromJson(String source) =>
      IDCard.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'IDCard(id: $id, firstName: $firstName, secondName: $secondName, lastName: $lastName, birthDate: $birthDate, IIN: $IIN, issueDate: $issueDate, validDate: $validDate)';
  }

  @override
  bool operator ==(covariant IDCard other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.firstName == firstName &&
        other.secondName == secondName &&
        other.lastName == lastName &&
        other.birthDate == birthDate &&
        other.IIN == IIN &&
        other.issueDate == issueDate &&
        other.validDate == validDate;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        firstName.hashCode ^
        secondName.hashCode ^
        lastName.hashCode ^
        birthDate.hashCode ^
        IIN.hashCode ^
        issueDate.hashCode ^
        validDate.hashCode;
  }
}
