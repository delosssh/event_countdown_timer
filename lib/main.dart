// import 'dart:html';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:event_countdown_timer/choose_time.dart';
import 'package:event_countdown_timer/countdown/countdown.dart';
import 'package:event_countdown_timer/data/model/hour_minute.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ringtone_player/flutter_ringtone_player.dart';
import 'package:screen/screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Event Timer',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.amber,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Event Countdown Timer'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  // int _counter = 0;
  // String _event_timer = "";
  DateTime _timerNow = DateTime.now();
  DateTime _timerTarget;
  Duration _duration = Duration(seconds: 0); //_timerTarget.difference(_timerNow);
  int _hours = 0;
  int _minutes = 0;
  // int _seconds = 0;
  // int _second1 = 0;
  HourMinute _hourMinute;

  // int _counter = 0;
  AnimationController _controller;
  int levelClock = 180;

  final List<String> imgList = [
    'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
    'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
    'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
    'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
  ];

  // void _incrementCounter() {
  //   setState(() {
  //     _counter++;
  //   });
  // }

  @override
  void dispose() {
    Screen.keepOn(false);
    _controller.dispose();
    super.dispose();
  }


  @override
  void initState() {
    super.initState();

    _timerTarget = DateTime(_timerNow.year, _timerNow.month, _timerNow.day, 20, 30);

    _duration = _timerTarget.difference(_timerNow);

    levelClock = _duration.inSeconds;

    _hours = _timerNow.hour;
    _minutes = _timerNow.minute;

    Screen.keepOn(true);

    // _controller = AnimationController(
    //     vsync: this,
    //     duration: Duration(
    //         seconds:
    //             levelClock) // gameData.levelClock is a user entered number elsewhere in the applciation
    //     );

    // _controller.forward();
    // _controller.addStatusListener((status) {
    //   if (status == AnimationStatus.completed) {
    //     print('animation ended');
    //   }
    // });    
  }


  void _incrementCounter() async {
    print(_hours);
    print(_minutes);
    int test = 0;

    _timerNow = DateTime.now();

    _hourMinute = HourMinute();
    _hourMinute.hour = _timerNow.hour;
    _hourMinute.minute = _timerNow.minute;
    // setState(() {
    //   // This call to setState tells the Flutter framework that something has
    //   // changed in this State, which causes it to rerun the build method below
    //   // so that the display can reflect the updated values. If we changed
    //   // _counter without calling setState(), then the build method would not be
    //   // called again, and so nothing would appear to happen.
    //   _counter++;
    //   // _event_timer = DateTime.now().toString();
    //   // _timerTarget = _timerNow.add(Duration(seconds: 60*60));
    //   // _duration = _timerTarget.difference(_timerNow);
      
    //   // _second1 = _duration.inSeconds;

    //   // _hours = ((_duration.inSeconds) ~/ 3600);
    //   // _minutes = _duration.inMinutes;
    //   // _seconds = _duration.inSeconds;

    // });
    _hourMinute = await showDialog(
      context: context,
      builder: (context) {
        return ChooseTimeDialog(_hourMinute);
      },
    );

    if (_hourMinute != null) {
      print('selected: ${_hourMinute.hour}');

      _timerTarget = DateTime(_timerNow.year, _timerNow.month, _timerNow.day, _hourMinute.hour, _hourMinute.minute);

      _duration = _timerTarget.difference(_timerNow);

      levelClock = _duration.inSeconds;
      // setState((){});

      _controller = AnimationController(
          vsync: this,
          duration: Duration(
              seconds:
                  levelClock) // gameData.levelClock is a user entered number elsewhere in the applciation
          );

      _controller.forward();

      _controller.addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          print('animation ended');

          FlutterRingtonePlayer.playNotification();

        }
      });
      setState((){});

    }
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      // appBar: AppBar(
      //   // Here we take the value from the MyHomePage object that was created by
      //   // the App.build method, and use it to set our appbar title.
      //   title: Text(widget.title),
      // ),
      body: Stack(
        children: [

          fullscreenSlider(),

          Center(
            // Center is a layout widget. It takes a single child and positions it
            // in the middle of the parent.
            child: Column(
              // Column is also a layout widget. It takes a list of children and
              // arranges them vertically. By default, it sizes itself to fit its
              // children horizontally, and tries to be as tall as its parent.
              //
              // Invoke "debug painting" (press "p" in the console, choose the
              // "Toggle Debug Paint" action from the Flutter Inspector in Android
              // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
              // to see the wireframe for each widget.
              //
              // Column has various properties to control how it sizes itself and
              // how it positions its children. Here we use mainAxisAlignment to
              // center the children vertically; the main axis here is the vertical
              // axis because Columns are vertical (the cross axis would be
              // horizontal).
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                showCountdown(),
                // Countdown(
                //   animation: StepTween(
                //     begin: levelClock, // THIS IS A USER ENTERED NUMBER
                //     end: 0,
                //   ).animate(_controller),
                // ),            
                // Text(
                //   'You have pushed the button this many times:',
                // ),
                // Text(
                //   '$_counter $_hours:$_minutes:$_seconds',
                //   style: Theme.of(context).textTheme.headline4,
                // ),
              ],
            ),
          ),

        ],
              
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  Widget showCountdown() {

    if (_hourMinute != null) {

      return Countdown(
        animation: StepTween(
          begin: levelClock, // THIS IS A USER ENTERED NUMBER
          end: 0,
        ).animate(_controller),
      );           

    } else {
      return Text('Press + to set your event!');
    }

  }

  Widget fullscreenSlider() {
    final double height = MediaQuery.of(context).size.height;
    return CarouselSlider(
      options: CarouselOptions(
        height: height,
        viewportFraction: 1.0,
        enlargeCenterPage: false,
        autoPlay: true,
        scrollPhysics: NeverScrollableScrollPhysics(),
        // autoPlay: false,
      ),
      items: imgList.map((item) => Container(
        child: Center(
          child: Image.network(item, fit: BoxFit.cover, height: height,)
        ),
      )).toList()
    );
  }
}
