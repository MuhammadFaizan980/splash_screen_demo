import 'package:flutter/material.dart';
import 'package:quiver/async.dart';

main() => runApp(
  MaterialApp(
    home: StFull(),
  ),
);

class StFull extends StatefulWidget {
  @override
  _StFullState createState() => _StFullState();
}

class _StFullState extends State<StFull> {
  @override
  Widget build(BuildContext context) {
    startTimer();

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Colors.black,
        ),
        child: Center(
          child: Text(
            'Welcome!',
            style: TextStyle(color: Colors.white, fontSize: 30),
          ),
        ),
      ),
    );
  }

  void startTimer() {
    CountdownTimer countDownTimer = new CountdownTimer(
      new Duration(seconds: 4),
      new Duration(seconds: 1),
    );

    var sub = countDownTimer.listen(null);

    sub.onDone(() {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (BuildContext context) => SecondScreen()));
    });
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Screen'),
      ),
      body: Center(
        child: Text('This is second screen after the splash screen'),
      ),
    );
  }
}
