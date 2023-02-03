import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:testforstd/screens/main_menu.dart';
import 'package:testforstd/ui/shared/color.dart';

class ResultScreen extends StatefulWidget {
  int score;
  int secscore =0;
  int thirdscore=0;
  ResultScreen(this.score, {Key? key}) : super(key: key);

  @override
  _ResultScreenState createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.pripmaryColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: double.infinity,
            child: Text(
              "Congratulations",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 45.0,
          ),
          Text(
            "You Score is",
            style: TextStyle(color: Colors.white, fontSize: 34.0),
          ),
          SizedBox(
            height: 20.0,
          ),
          Text(
            "${widget.score}/10",
            style: TextStyle(
              color: Colors.orange,
              fontSize: 85.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 100.0,
          ),

          // 222222
          SizedBox(
            
            width: double.infinity,
            child:  Text(
              "Very good",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 45.0,
          ),
        
          Text(
            "You Score is",
            style: TextStyle(color: Colors.white, fontSize: 34.0),
          ),
          SizedBox(
            height: 20.0,
          ),
          Text(
            "${widget.score <= 5}/10",
            style: TextStyle(
              color: Colors.orange,
              fontSize: 85.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 100.0,
          ),
          
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MainMenu(),
                  ));
            },
            
            child: const Text(
              "Reapeat the quizz",
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
          ),
        ],
      ),
    );
  }
}
