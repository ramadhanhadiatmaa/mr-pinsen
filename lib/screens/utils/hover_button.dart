// ignore_for_file: prefer_const_constructors_in_immutables, use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HoverButton extends StatefulWidget {
  final String? text;
  final Function? hover;

  HoverButton({this.text, this.hover});

  @override
  State<HoverButton> createState() => _HoverButtonState();
}

class _HoverButtonState extends State<HoverButton> {
  Color color = Colors.black;
  Color textcolor = Colors.black;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (val) {
        widget.hover!();
        setState(() {
          color = Colors.transparent;
          textcolor = Colors.amber;
        });
      },
      onExit: (val) {
        setState(() {
          color = Colors.black;
          textcolor = Colors.black;
        });
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 250),
        curve: Curves.easeInOut,
        margin: EdgeInsets.only(right: 15, top: 15),
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(width: 1, color: color),
        ),
        child: Center(
          child: Text(
            widget.text!,
            style: GoogleFonts.poppins(
              fontSize: 16,
              fontWeight: FontWeight.w300,
              color: textcolor,
            ),
          ),
        ),
      ),
    );
  }
}
