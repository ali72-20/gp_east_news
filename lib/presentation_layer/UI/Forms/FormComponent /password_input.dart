import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gp_east_news/presentation_layer/UI/Forms/FormComponent%20/input_compoenet_model.dart';

import '../../colors/colors.dart';

class password_input extends StatefulWidget {
  password_input({super.key, required this.model});

  input_componenet_model model;

  @override
  State<password_input> createState() => _password_inputState();
}

class _password_inputState extends State<password_input> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 32.0, left: 32.0, top: 24),
      child: TextFormField(
        obscureText: widget.model.is_password,
        style: const TextStyle(color: Colors.black, fontFamily: 'Poppins'),
        // smartDashesType: SmartDashesType.enabled,
        decoration: InputDecoration(
          border: const OutlineInputBorder(),
          labelText: widget.model.lablText,
          labelStyle: TextStyle(color: gray, fontFamily: 'Poppins'),
          suffixIcon: IconButton(
            onPressed: () {
              setState(() {
                if (widget.model.is_password) {
                  widget.model.is_password = false;
                  widget.model.suffixIcon = Icons.visibility;
                } else {
                  widget.model.is_password = true;
                  widget.model.suffixIcon = Icons.visibility_off;
                }
              });
            },
            icon: Icon(
              widget.model.suffixIcon,
            ),
          ),
        ),
      ),
    );
  }
}
