import 'package:flutter/material.dart';
import 'package:novel/util/colors.dart';

class NovelTextField extends StatelessWidget {
  final TextEditingController textController;
  final String label;
  final Icon icon;
  double width;

  NovelTextField(
      {Key? key,
      required this.textController,
      required this.label,
      required this.icon,
      this.width = double.maxFinite})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(
      child: Container(
          padding: EdgeInsets.only(bottom: 10, top: 10),
          height: 70,
          width: this.width,
          child: TextFormField(
              decoration: InputDecoration(
            prefixIcon: this.icon,
            hintText: this.label,
            focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: AppColors.mainColor, width: 2.0)),
          ))),
      data: Theme.of(context).copyWith(
          inputDecorationTheme: Theme.of(context).inputDecorationTheme.copyWith(
        prefixIconColor:
            MaterialStateColor.resolveWith((Set<MaterialState> states) {
          if (states.contains(MaterialState.focused)) {
            return AppColors.mainColor;
          }
          if (states.contains(MaterialState.error)) {
            return Colors.red;
          }
          return Colors.grey;
        }),
      )),
    );
  }
}
