import 'package:flutter/material.dart';

class PkmnTextInput extends TextFormField {
  bool? enable;

  PkmnTextInput(
      {Key? key,
      this.enable,
      String? pkmnLabelText,
      String? hintText,
      TextEditingController? controller,
      FocusNode? pkmnFokusNode,
      bool pkmnObsecureText = false,
      void Function()? pkmnOnEditing,
      String? Function(String?)? validating,
      String? Function(String?)? pkmnOnChange})
      : super(
            onEditingComplete: pkmnOnEditing,
            key: key,
            enabled: enable,
            controller: controller,
            validator: validating,
            focusNode: pkmnFokusNode,
            onChanged: pkmnOnChange,
            obscureText: pkmnObsecureText,
            decoration: InputDecoration(
                alignLabelWithHint: false,
                labelText: pkmnLabelText,
                hintText: hintText,
                filled: true,
                border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12)))));
}
