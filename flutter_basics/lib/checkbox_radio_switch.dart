import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

class CheckBoxRadioSwitch extends StatefulWidget {
  const CheckBoxRadioSwitch({super.key});
  @override
  State<CheckBoxRadioSwitch> createState(){
    return _CheckBoxRadioSwitchState();
  }
}

class _CheckBoxRadioSwitchState extends State<CheckBoxRadioSwitch> {
  bool isCheckBoxOn = false;
  bool isSwitchOn = false;
  var grpCheckVal = 1;
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('CheckBox Radio Switch'),
        ),
        body: Column(
          children: [
            Checkbox(
                value: isCheckBoxOn,
                onChanged: (bool? isChecked){
                  setState(() {
                    isCheckBoxOn = isChecked!;
                  });
                }
            ),
            Radio(
                value: 1,
                groupValue: grpCheckVal,
                onChanged: (int? checkVal){
                  setState(() {
                    grpCheckVal = checkVal ?? 1;
                  });
                }
            ),
            Radio(
                value: 2,
                groupValue: grpCheckVal,
                onChanged: (int? checkVal){
                  setState(() {
                    grpCheckVal = checkVal ?? 1;
                  });
                }
            ),
            Switch(
                value: isSwitchOn,
                onChanged: (bool? isSwitched){
                  setState(() {
                    isSwitchOn = isSwitched ?? false;
                  });
                }
            ),
            FlutterSwitch(
                value: isSwitchOn,
                onToggle: (bool? isSwitched){
                  setState(() {
                    isSwitchOn = isSwitched ?? false;
                  });
                }
            )
          ],
        )

      ),
    );
  }
}