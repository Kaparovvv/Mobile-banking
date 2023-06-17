import 'package:flutter/material.dart';

import '../../../../core/exports/exports.dart';

typedef ItemCallback = void Function(dynamic item);

class CustomDropDownWidget extends StatefulWidget {
  final List<dynamic> listOfItem;
  final String hintText;
  final ItemCallback callback;
  final String? Function(dynamic)? validator;

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
      child: DropdownButtonFormField(
        key: UniqueKey(),
        hint: Text(
          widget.hintText,
          style: TextStyleHelper.f14w600,
        ),
        decoration: InputDecoration(
          isDense: true,
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 10,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        validator: (value) => widget.validator!(value),
        items: widget.listOfItem.map((value) {
          return DropdownMenuItem<dynamic>(
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
        borderRadius: BorderRadius.circular(10),
        icon: const Icon(Icons.expand_more_outlined),
        iconSize: 25,
        iconEnabledColor: ThemeHelper.color414141,
      ),
    );
  }
}
