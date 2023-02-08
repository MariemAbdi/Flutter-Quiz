import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  const Result({Key? key, required this.score, required this.onPressed}) : super(key: key);

  final int score;
  final VoidCallback onPressed;

  String get resultPhrase{
    String resText;
    if(score<=8){
      resText="You Are Awesome!";
    }else if(score<=12){
      resText="Pretty Likeable!";
    }else if(score<=16){
      resText="You Are...Kind Of Strange?";
    }else{
      resText="You Are So Bad!";
    }
    return resText;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Center(
          child: Text(
            resultPhrase,
            style: const TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ),
        ElevatedButton(onPressed: onPressed, child: const Text("Restart Quiz",style: TextStyle(fontWeight: FontWeight.bold),))
      ],
    );
  }
}
