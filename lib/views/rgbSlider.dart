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

      body: Center(
        child: Column(
          children: <Widget>[

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

          ]
        )
     )

    );
  }
}