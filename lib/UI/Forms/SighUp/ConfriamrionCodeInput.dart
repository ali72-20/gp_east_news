import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ConfirmationCodeInput extends StatefulWidget {
  const ConfirmationCodeInput({super.key});

  @override
  State<ConfirmationCodeInput> createState() => _ConfirmationCodeInputState();
}

class _ConfirmationCodeInputState extends State<ConfirmationCodeInput> {
  late List<TextEditingController> _controllres;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controllres = List.generate(6, (index)=> TextEditingController());
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _controllres.forEach((controller)=> controller.dispose());
  }
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: List.generate(6, (index)=>buildBox(index)),
    );
  }

  Widget buildBox(int index) {
    return Container(
    margin: const EdgeInsets.only(top: 24), // Space between the boxes
      width: 50,
      height: 100,
      child: TextFormField(
        controller: _controllres[index],
        textAlign: TextAlign.center,
        style: const TextStyle(fontSize: 24, fontFamily: 'Poppins'),
        keyboardType: TextInputType.number,
        maxLength: 1,
        decoration: InputDecoration(
          counterText: '',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          filled: true,
          fillColor: Colors.grey[300],
        ),
        onChanged: (value) {
          if (value.length == 1 && index < 5) {
            FocusScope.of(context).nextFocus();
          }
        },
      ),
    );
  }
}
