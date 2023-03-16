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
    return DropdownButtonFormField(
      value: _selectedValue,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderSide: const BorderSide(color: ThemeHelper.color414141),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      hint: Text(
        widget.hintText,
        style: TextStyleHelper.f14w600,
      ),
      icon: const Icon(Icons.expand_more_outlined),
      isExpanded: true,
      borderRadius: BorderRadius.circular(10),
      style: TextStyleHelper.f14w600,
      validator: (dynamic value) => widget.validator!(value),
      onChanged: (value) {
        setState(() {
          _selectedValue = value;
          widget.callback(value);
        });
      },
      items: widget.listOfItem.map((value) {
        return DropdownMenuItem(
          value: value,
          child: Text(
            value.toString(),
            style: TextStyleHelper.f14w600,
          ),
        );
      }).toList(),
    );
  }
}
