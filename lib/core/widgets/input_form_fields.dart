import 'package:flutter/material.dart';

class InputFieldWidget extends StatelessWidget {
  final bool obscure;
  final double? height;
  final double width;
  final int lines;
  final Widget? suffix;
  final Widget? prefix;
  final String? hinttext;
  final String? labeltext;
  final String? initialvalue;
  final TextInputType? keyboardType;
  final TextInputAction textInputAction;
  final TextEditingController? controller;
  final TextStyle? hintstyle;
  final TextStyle? labelStyle;
  final TextStyle? style;
  final TextAlign? textAlign;
  final bool? validation;
  final String? validationText;
  final void Function(String)? onChanged;
  final void Function()? onChangedCompleted;
  final dynamic disable;
  final bool? isDisable;

  const InputFieldWidget({
    super.key,
    required this.obscure,
    this.height,
    required this.width,
    required this.lines,
    this.controller,
    this.suffix,
    this.keyboardType,
    this.textInputAction = TextInputAction.next,
    this.initialvalue,
    this.hinttext,
    this.labeltext,
    this.hintstyle,
    this.labelStyle,
    this.style,
    this.textAlign,
    this.validation,
    this.validationText,
    this.onChanged,
    this.onChangedCompleted,
    this.prefix,
    this.disable,
    this.isDisable = true,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      margin: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: TextFormField(
          initialValue: initialvalue,
          onEditingComplete: onChangedCompleted,
          onChanged: onChanged,
          autocorrect: true,
          controller: controller,
          maxLines: lines,
          enabled: isDisable,
          cursorColor: Theme.of(context).colorScheme.primary,
          textAlign: textAlign ?? TextAlign.start,
          obscureText: obscure,
          keyboardType: keyboardType,
          textInputAction: textInputAction,
          style: style ?? Theme.of(context).textTheme.bodyLarge,
          validator: (value) {
            if (validation == false && validation != null) {
              return validationText;
            } else if (value == null || value.isEmpty) {
              return validationText;
            } else {
              return null;
            }
          },
          decoration: InputDecoration(
            hintText: hinttext,
            labelText: labeltext,
            hintStyle: hintstyle ?? Theme.of(context).textTheme.bodyLarge,
            labelStyle: labelStyle ?? Theme.of(context).textTheme.bodyLarge,
            contentPadding:
                const EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 10),
            prefixIcon: suffix,
            suffixIcon: prefix,
          ),
        ),
      ),
    );
  }
}