// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, prefer_const_constructors_in_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class ImageHolder extends StatefulWidget {
  final double? right;
  final String? image;

  ImageHolder({this.right, this.image});

  @override
  State<ImageHolder> createState() => _ImageHolderState();
}

class _ImageHolderState extends State<ImageHolder> {
  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
      bottom: 65,
      right: widget.right!,
      duration: Duration(microseconds: 400),
      child: Container(
        height: MediaQuery.of(context).size.width * 0.40,
        child: Image(
          image: AssetImage(widget.image!),
        ),
      ),
    );
  }
}
