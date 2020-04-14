import 'package:flutter/material.dart';

class Results extends StatefulWidget {
  final int total, correct, incorrect, notattempted;
  Results({this.incorrect, this.total, this.correct, this.notattempted});

  @override
  _ResultsState createState() => _ResultsState();
}

class _ResultsState extends State<Results> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
            Text("${widget.correct}/ ${widget.total}", style: TextStyle(fontSize: 25),),
              SizedBox(height: 5,),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: Text(
                    "you answered ${widget.correct} answers correctly and ${widget.incorrect} answeres incorrectly",
                textAlign: TextAlign.center,),

              ),
              SizedBox(height: 24,),
              GestureDetector(
                onTap: (){
                  Navigator.pop(context);
                },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 8),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(30)
                  ),
                  child: Text("Go to home", style: TextStyle(color: Colors.white, fontSize: 19),),
                ),
              )
          ],),
        ),
      ),
    );
  }
}
