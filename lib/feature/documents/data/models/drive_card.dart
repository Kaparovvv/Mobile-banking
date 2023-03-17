// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class DriverCard {
  String id;
  String firstName;
  String secondName;
  String lastName;
  String IIN;
  String issueDate;
  String validDate;
  DriverCard({
    required this.id,
    required this.firstName,
    required this.secondName,
    required this.lastName,
    required this.IIN,
    required this.issueDate,
    required this.validDate,
  });

  DriverCard copyWith({
    String? id,
    String? firstName,
    String? secondName,
    String? lastName,
    String? IIN,
    String? issueDate,
    String? validDate,
  }) {
    return DriverCard(
      id: id ?? this.id,
      firstName: firstName ?? this.firstName,
      secondName: secondName ?? this.secondName,
      lastName: lastName ?? this.lastName,
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
      'IIN': IIN,
      'issueDate': issueDate,
      'validDate': validDate,
    };
  }

  factory DriverCard.fromMap(Map<String, dynamic> map) {
    return DriverCard(
      id: map['id'] as String,
      firstName: map['firstName'] as String,
      secondName: map['secondName'] as String,
      lastName: map['lastName'] as String,
      IIN: map['IIN'] as String,
      issueDate: map['issueDate'] as String,
      validDate: map['validDate'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory DriverCard.fromJson(String source) =>
      DriverCard.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'DriverCard(id: $id, firstName: $firstName, secondName: $secondName, lastName: $lastName, IIN: $IIN, issueDate: $issueDate, validDate: $validDate)';
  }

  @override
  bool operator ==(covariant DriverCard other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.firstName == firstName &&
        other.secondName == secondName &&
        other.lastName == lastName &&
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
        IIN.hashCode ^
        issueDate.hashCode ^
        validDate.hashCode;
  }
}
