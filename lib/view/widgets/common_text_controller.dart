import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:task1/view/application_helper/application_utils/app_constants/app_repo_constants.dart';
import 'package:task1/view/application_helper/application_utils/app_extension/size_extension.dart';
import 'package:task1/view/application_helper/application_utils/color_utils/colors.dart';


class CommonTextControllers {
  static Widget customTextField(
      {TextEditingController? controller,
      String? value,
      FormFieldValidator<String>? validator,
      String? labelText,
      Widget? suffix,
      Widget? prefix,
      bool? isObscureText,
      double? height,
      double? width,
      String? hintText,
      BorderRadius? borderRadius,
      double? fontSize,
      Color? textFieldColor,
      Color? fontColor,
      Color? labelFontColor,
      Color? borderColor,
      Color? fillColor,
      int? maxLines,
      InputDecoration? decoration,
      ValueChanged<String>? onChanged,
      VoidCallback? onPrefixPressVCL,
      VoidCallback? onSuffixPressVCL,
      TextInputType? keyboardType,
      FontWeight? fontWeight,
      TextStyle? hintStyle,
      EdgeInsets? containerPadding,
      enabledBorder,
      focusedBorder,
      GlobalKey<FormFieldState>? formKey,
      FocusNode? focusNode,
      ValueChanged<String>? onSubmitted,
      String? language,
      bool inHome = false,
      bool inTam = false,
      bool? isReadOnly,
      EdgeInsets? contentPadding,
      List<TextInputFormatter>? inputFormatter,
      TextAlign? textAlign}) {
    return Container(

      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
            Radius.circular(3.safeBlockHorizontal())),


      ),
      width: width ?? 80.safeBlockHorizontal(),
      height: height, // ?? 9.safeBlockHorizontal(),
      // alignment: Alignment.center,
      // decoration: BoxDecoration(
      //   borderRadius: BorderRadius.circular(8),
      // ),
      child: TextFormField(
        readOnly: isReadOnly ?? false,
        initialValue: value,
        key: formKey,
        validator: validator,
        keyboardType: keyboardType ?? TextInputType.text,
        obscureText: isObscureText ?? true,
        controller: controller,
        maxLines: maxLines ?? 1,
        textInputAction: TextInputAction.next,
        textAlign: textAlign ?? TextAlign.start,
        textDirection: TextDirection.ltr,

        onChanged: onChanged,
        focusNode: focusNode,
        cursorColor: mainApplicationColor,
        onFieldSubmitted: onSubmitted,
        decoration: decoration ??
            InputDecoration(
              // contentPadding: contentPadding ?? EdgeInsets.all(1.safeBlockHorizontal()),
              labelText: labelText ?? '',
              hintText: hintText ?? '',
              suffixIcon: suffix != null
                  ? GestureDetector(
                      onTap: onSuffixPressVCL,
                      child: Padding(
                        padding: EdgeInsets.zero,
                        child: suffix,
                      ))
                  : null,
              prefixIcon: prefix != null
                  ? GestureDetector(onTap: onPrefixPressVCL, child: prefix)
                  : null,
              border: OutlineInputBorder(
                borderRadius:
                    BorderRadius.all(Radius.circular(2.safeBlockHorizontal())),
                borderSide:  BorderSide(color: splitColor),
              ),
              enabledBorder: enabledBorder ??
                  OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                        Radius.circular(3.safeBlockHorizontal())),
                    borderSide:  BorderSide(color: splitColor),
                  ),
              focusedBorder: focusedBorder ??
                  OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                        Radius.circular(3.safeBlockHorizontal())),
                    borderSide: BorderSide(color: splitColor),
                  ),
              hintStyle: hintStyle ??
                  TextStyle(
                    color: fontColor ?? textColor,
                    fontSize: fontSize ?? 3.fontSize(),
                    // fontWeight: fontWeight ?? FontWeight.w400,
                    fontFamily: arabicRoman,
                  ),
              labelStyle: hintStyle ??
                  TextStyle(
                    color: labelFontColor ?? textColor,
                    fontSize: fontSize ?? 3.fontSize(),
                    fontFamily: arabicRoman,
                    // fontWeight: fontWeight ?? FontWeight.w400,
                  ),
              errorMaxLines: 2,
              errorStyle: TextStyle(
                color: Colors.red,
                fontSize: 2.75.fontSize(),
                fontFamily: arabicRoman,
              ),
              errorBorder:  UnderlineInputBorder(
                  borderSide: BorderSide(
                color: textColor,
              )),
            ),
      ),
    );
  }
}
