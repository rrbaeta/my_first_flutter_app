import 'package:flutter/material.dart';

class MySliderPage extends StatefulWidget {
  const MySliderPage({Key? key}) : super(key: key);

  @override
  State<MySliderPage> createState() => _MySliderPageState();
}

class _MySliderPageState extends State<MySliderPage> {
  double _currentSliderValueRed = 0;
  double _currentSliderValueGreen = 0;
  double _currentSliderValueBlue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Color.fromRGBO(
          _currentSliderValueRed.round(),
          _currentSliderValueGreen.round(),
          _currentSliderValueBlue.round(),
          1
      ),

      body: Container(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

          children: <Widget>[

            Container(
              child: Column(

                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,

                children: <Widget>[
                  
                  Text("Hexadecimal: " + Color.fromRGBO(
                      _currentSliderValueRed.round(),
                      _currentSliderValueGreen.round(),
                      _currentSliderValueBlue.round(),
                      1
                  ).value.toRadixString(16))
                  
                ],
              ),
            ),

            Container(

              child: Column(

                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,

                children: <Widget>[

                  Text("Red: " + _currentSliderValueRed.round().toString()),

                  Slider.adaptive(
                      value: _currentSliderValueRed,
                      min: 0,
                      max: 255,
                      label: _currentSliderValueRed.round().toString(),
                      onChanged: (double value) {
                        setState(() {
                          _currentSliderValueRed = value;
                        });
                      }
                  ),

                  Text("Green: " + _currentSliderValueGreen.round().toString()),

                  Slider.adaptive(
                      value: _currentSliderValueGreen,
                      min: 0,
                      max: 255,
                      label: _currentSliderValueGreen.round().toString(),
                      onChanged: (double value) {
                        setState(() {
                          _currentSliderValueGreen = value;
                        });
                      }
                  ),

                  Text("Blue: " + _currentSliderValueBlue.round().toString()),

                  Slider.adaptive(
                      value: _currentSliderValueBlue,
                      min: 0,
                      max: 255,
                      label: _currentSliderValueBlue.round().toString(),
                      onChanged: (double value) {
                        setState(() {
                          _currentSliderValueBlue = value;
                        });
                      }
                  ),

                ],
              ),

            ),

          ]
        )
     )

    );
  }
}