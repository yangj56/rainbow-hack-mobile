import 'package:flutter/material.dart';

class CustomDropDownField extends StatelessWidget {
  final String hintText;
  final String value;
  final void Function(String) onChanged;
  final List<DropdownMenuItem<String>> items;

  CustomDropDownField({
    @required this.hintText,
    @required this.value,
    @required this.onChanged,
    @required this.items,
  });

  @override
  Widget build(BuildContext context) {
    return new Expanded(
      child: FormField<String>(
        builder: (FormFieldState<String> state) {
          return InputDecorator(
            decoration: InputDecoration(
                isDense: true,
                contentPadding: EdgeInsets.fromLTRB(15, 8, 8, 8),
                hintText: hintText,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0))),
            child: DropdownButtonHideUnderline(
              child: ButtonTheme(
                child: DropdownButton<String>(
                  value: value,
                  isDense: true,
                  onChanged: onChanged,
                  items: items,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
