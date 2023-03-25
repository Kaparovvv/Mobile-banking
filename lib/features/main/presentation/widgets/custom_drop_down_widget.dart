import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

import '../../../../core/exports/exports.dart';

typedef ItemCallback = void Function(Object? item);

class CustomDropDownWidget extends StatefulWidget {
  final List<dynamic> listOfItem;
  final String hintText;
  final ItemCallback callback;
  final String? Function(Object?)? validator;
  const CustomDropDownWidget({
    super.key,
    required this.listOfItem,
    required this.hintText,
    required this.callback,
    required this.validator,
  });

  @override
  State<CustomDropDownWidget> createState() => _CustomDropDownWidgetState();
}

class _CustomDropDownWidgetState extends State<CustomDropDownWidget> {
  dynamic _selectedValue;
  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: DropdownButton2(
        hint: Text(
          widget.hintText,
          style: TextStyleHelper.f14w600,
        ),
        items: widget.listOfItem.map((value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(
              value.toString(),
              style: TextStyleHelper.f14w600,
            ),
          );
        }).toList(),
        value: _selectedValue,
        onChanged: (value) {
          setState(() {
            _selectedValue = value;
            widget.callback(value);
          });
        },
        isExpanded: true,
        buttonStyleData: ButtonStyleData(
          height: 50,
          padding: const EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
            border: Border.all(
              color: ThemeHelper.color414141,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        iconStyleData: const IconStyleData(
          icon: Icon(Icons.expand_more_outlined),
          iconSize: 25,
          iconEnabledColor: ThemeHelper.color414141,
        ),
        dropdownStyleData: DropdownStyleData(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
      ),
    );
  }
}
