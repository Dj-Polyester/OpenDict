import 'package:jgraph/api/custom_text_style.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

class CustomTextModel extends ChangeNotifier {
  CustomTextModel({this.cursorPos = 0, String? text})
      : controller = TextEditingController(text: text);

  late TextEditingController controller;
  late FocusNode focusNode = FocusNode();

  int cursorPos;

  set text(String newValue) {
    controller.text = newValue;
    setCursorPos();
  }

  void saveCursorPos() {
    cursorPos = controller.selection.baseOffset;
  }

  void setCursorPos() {
    controller.selection =
        TextSelection.fromPosition(TextPosition(offset: cursorPos));
  }
}

class CustomTextWithProvider extends StatelessWidget {
  CustomTextWithProvider({
    Key? key,
    this.validator,
    this.labelText = "",
    this.hintText = "",
    this.inputText,
    this.onChanged,
    this.textStyle,
    this.isSecret = false,
    this.prefixIcon,
    this.suffixIcon,
    this.obscureText = false,
    this.readOnly = false,
    this.isCollapsed = false,
    this.onEditingComplete,
  }) : super(key: key);

  final bool isSecret;
  final void Function(String)? onEditingComplete;
  final bool obscureText, readOnly, isCollapsed;
  final Widget? prefixIcon, suffixIcon;
  final TextStyle? textStyle;
  final String? inputText;
  final String? Function(String?)? validator;
  final Function(String)? onChanged;

  final String labelText, hintText;

  late CustomTextModel textModel = CustomTextModel(text: inputText);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: textModel,
      builder: (context, _) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: CustomText(
            onEditingComplete: onEditingComplete,
            validator: validator,
            labelText: labelText,
            hintText: hintText,
            onChanged: onChanged,
            textStyle: textStyle,
            prefixIcon: prefixIcon,
            suffixIcon: suffixIcon,
            obscureText: obscureText,
            readOnly: readOnly,
          ),
        );
      },
    );
  }
}

class CustomText extends StatelessWidget {
  const CustomText({
    Key? key,
    this.validator,
    this.labelText = "",
    this.hintText = "",
    this.onChanged,
    this.textStyle,
    this.prefixIcon,
    this.suffixIcon,
    this.obscureText = false,
    this.readOnly = false,
    this.isCollapsed = false,
    this.onEditingComplete,
  }) : super(key: key);

  final void Function(String)? onEditingComplete;
  final bool obscureText, readOnly, isCollapsed;
  final Widget? prefixIcon, suffixIcon;
  final TextStyle? textStyle;

  final String? Function(String?)? validator;
  final String labelText, hintText;
  final Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onEditingComplete: (onEditingComplete == null)
          ? null
          : () => onEditingComplete!(
              context.read<CustomTextModel>().controller.text),
      readOnly: readOnly,
      obscureText: obscureText,
      style: textStyle,
      decoration: CustomTextStyle.textFieldStyle(
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        labelTextStr: labelText,
        hintTextStr: hintText,
        isCollapsed: isCollapsed,
      ),
      controller: context.read<CustomTextModel>().controller,
      focusNode: context.read<CustomTextModel>().focusNode,
      validator: validator,
      onChanged: onChanged,
    );
  }
}
