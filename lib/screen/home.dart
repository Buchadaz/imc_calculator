import 'package:flutter/material.dart';
import '../constant/app_constants.dart';
import '../widgets/left_bar.dart';
import '../widgets/right_bar.dart';
import 'package:hexcolor/hexcolor.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController _heightController = TextEditingController();
  TextEditingController _weightController = TextEditingController();
  double _bmiRestult = 0;
  String _textResult = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "BMI CALCULATOR",
          style: TextStyle(color: accentHexColor, fontWeight: FontWeight.w300),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
      ),
      backgroundColor: mainHexColor,
      body: SingleChildScrollView(
          child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 130,
                child: TextField(
                  controller: _heightController,
                  style: TextStyle(
                      fontSize: 42,
                      fontWeight: FontWeight.w300,
                      color: accentHexColor),
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Height",
                      hintStyle: TextStyle(
                          fontSize: 42,
                          fontWeight: FontWeight.w300,
                          color: Colors.white.withOpacity(.8))),
                ),
              ),
              Container(
                width: 130,
                child: TextField(
                  controller: _weightController,
                  style: TextStyle(
                      fontSize: 42,
                      fontWeight: FontWeight.w300,
                      color: accentHexColor),
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Weight",
                      hintStyle: TextStyle(
                          fontSize: 42,
                          fontWeight: FontWeight.w300,
                          color: Colors.white.withOpacity(.8))),
                ),
              )
            ],
          ),
          SizedBox(
            height: 30,
          ),
          GestureDetector(
            onTap: () {
              double _h = double.parse(_heightController.text);
              double _w = double.parse(_weightController.text);
              setState(() {
                _bmiRestult = _w / (_h * _h);
                if (_bmiRestult > 25) {
                  _textResult = "Cuidado! Ta acima de fortin!";
                } else if (_bmiRestult >= 18.5 && _bmiRestult < 25) {
                  _textResult = "Ta suave! Peso normal";
                } else {
                  _textResult = "Opa! Ta abaixo do padrão";
                }
              });
            },
            child: Container(
              child: Text(
                "CALCULATE",
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: accentHexColor),
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Container(
            child: Text(
              _bmiRestult.toStringAsFixed(2),
              style: TextStyle(fontSize: 90, color: accentHexColor),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Visibility(
            visible: _textResult.isNotEmpty,
            child: Container(
              child: Text(
                _textResult,
                style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w400,
                    color: accentHexColor),
              ),
            ),
          ),
          SizedBox(height: 10),
          LeftBar(barWidht: 40),
          SizedBox(
            height: 20,
          ),
          LeftBar(barWidht: 70),
          SizedBox(
            height: 20,
          ),
          LeftBar(barWidht: 40),
          SizedBox(
            height: 10,
          ),
          RightBar(barWidht: 70),
          SizedBox(
            height: 20,
          ),
          RightBar(barWidht: 70)
        ],
      )),
    );
  }
}
