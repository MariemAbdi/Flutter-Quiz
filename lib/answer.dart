import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  const Answer({Key? key, required this.onPressed, required this.answerText}) : super(key: key);

  final VoidCallback onPressed;
  final String answerText;

  @override
  Widget build(BuildContext context) {
    double width= MediaQuery.of(context).size.width;

    return Container(
      width: width*0.8,
      child: ElevatedButton(
          onPressed: onPressed, child: Text(answerText,style: const TextStyle(fontWeight: FontWeight.w800),)),
    );
  }
}
