import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class setteingItemComponent extends StatefulWidget {
  setteingItemComponent(
      {super.key,
      required this.text,
      required this.icon,
      required this.color,
      required this.list,
      required this.currentValue});

  List<String> list;
  String text;
  IoniconsData icon;
  Color color;
  String currentValue;

  @override
  State<setteingItemComponent> createState() => _State();
}

class _State extends State<setteingItemComponent> {
  @override
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ListTile(
        leading: Container(
          height: 50,
          width: 50,
          decoration:
              BoxDecoration(shape: BoxShape.circle, color: widget.color),
          child: Icon(widget.icon, color: Colors.white),
        ),
       title:  Text(
          widget.text,
          style: TextStyle(color: widget.color, fontFamily: 'Poppins'),
        ),
        trailing:  Container(
          decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(12),
              color: widget.color),
          child: DropdownMenu<String>(
            textStyle:
                const TextStyle(color: Colors.white, fontFamily: 'Poppins'),
            initialSelection: widget.list.first,
            onSelected: (String? value) {
              // This is called when the user selects an item.
              setState(() {
                widget.currentValue = value!;
              });
            },
            dropdownMenuEntries: widget.list.map<DropdownMenuEntry<String>>(
              (String value) {
                return DropdownMenuEntry<String>(value: value, label: value);
              },
            ).toList(),
          ),
        ),
      ),
    );
  }
}
