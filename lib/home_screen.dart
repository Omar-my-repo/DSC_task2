import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

double height = 170;
double weight = 80;
enum genderType { Male, Female }

genderType? _gender = genderType.Male;

TextStyle style=TextStyle(fontSize: 20,fontWeight: FontWeight.bold);

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Height',
            style: style,
          ),
          SizedBox(
            height: 20,
          ),
          Slider(
            value: height,
            onChanged: (value) {
              setState(() {
                height = value;
              });
            },
            min: 120,
            max: 220,
          ),
          SizedBox(
            height: 50,
          ),
          Text(
            'Weight',
            style: style,
          ),
          SizedBox(
            height: 20,
          ),
          Slider(
            value: weight,
            onChanged: (value) {
              setState(() {
                weight = value;
              });
            },
            min: 30,
            max: 130,
          ),
          SizedBox(
            height: 50,
          ),
          ListTile(
            title: const Text('Male',style: TextStyle(fontSize: 20),),
            leading: Radio<genderType>(
              value: genderType.Male,
              groupValue: _gender,
              onChanged: (genderType? value) {
                setState(() {
                  _gender = value;
                });
              },
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ListTile(
            title: const Text('Female',style: TextStyle(fontSize: 20),),
            leading: Radio<genderType>(
              value: genderType.Female,
              groupValue: _gender,
              onChanged: (genderType? value) {
                setState(() {
                  _gender = value;
                });
              },
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              children: [
                Container(
                  child: Row(
                    children: [
                      Text('Height :',style: style),
                      Spacer(),
                      Text("${height.toInt().toString()} cm",style: style,),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  child: Row(
                    children: [
                      Text('Weight :',style: style,),
                      Spacer(),
                      Text("${weight.toInt().toString()} kg",style: style,),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  child: Row(
                    children: [
                      Text('Gender :',style: style),
                      Spacer(),
                      Text(_gender.toString().split('.').last,style: style,),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
