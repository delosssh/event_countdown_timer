import 'package:flutter/material.dart';
import 'package:event_countdown_timer/data/model/hour_minute.dart';

class ChooseTimeDialog extends StatefulWidget {

  HourMinute _hourMinute;

  ChooseTimeDialog (HourMinute hourMinute) {
    _hourMinute = hourMinute;
  }

  @override
  _ChooseTimeDialogState createState() => _ChooseTimeDialogState();
}

class _ChooseTimeDialogState extends State<ChooseTimeDialog> {

  HourMinute _hourMinute;
  int _hours = 0;

  @override
  void initState() {
    // TODO: implement initState
    _hourMinute = widget._hourMinute;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
          title: Text('Choose Time'),
          content: Row(
            children: [

              DropdownButton<int>(
                value: _hourMinute.hour,
                items: [
                  DropdownMenuItem(
                    value: 0,
                    child: Text('00'),
                  ),
                  DropdownMenuItem(
                    value: 1,
                    child: Text('01'),
                  ),
                  DropdownMenuItem(
                    value: 2,
                    child: Text('02'),
                  ),
                  DropdownMenuItem(
                    value: 3,
                    child: Text('03'),
                  ),
                  DropdownMenuItem(
                    value: 4,
                    child: Text('04'),
                  ),
                  DropdownMenuItem(
                    value: 5,
                    child: Text('05'),
                  ),
                  DropdownMenuItem(
                    value: 6,
                    child: Text('06'),
                  ),
                  DropdownMenuItem(
                    value: 7,
                    child: Text('07'),
                  ),
                  DropdownMenuItem(
                    value: 8,
                    child: Text('08'),
                  ),
                  DropdownMenuItem(
                    value: 9,
                    child: Text('09'),
                  ),
                  DropdownMenuItem(
                    value: 10,
                    child: Text('10'),
                  ),
                  DropdownMenuItem(
                    value: 11,
                    child: Text('11'),
                  ),
                  DropdownMenuItem(
                    value: 12,
                    child: Text('12'),
                  ),
                  DropdownMenuItem(
                    value: 13,
                    child: Text('13'),
                  ),
                  DropdownMenuItem(
                    value: 14,
                    child: Text('14'),
                  ),
                  DropdownMenuItem(
                    value: 15,
                    child: Text('15'),
                  ),
                  DropdownMenuItem(
                    value: 16,
                    child: Text('16'),
                  ),
                  DropdownMenuItem(
                    value: 17,
                    child: Text('17'),
                  ),
                  DropdownMenuItem(
                    value: 18,
                    child: Text('18'),
                  ),
                  DropdownMenuItem(
                    value: 19,
                    child: Text('19'),
                  ),
                  DropdownMenuItem(
                    value: 20,
                    child: Text('20'),
                  ),
                  DropdownMenuItem(
                    value: 21,
                    child: Text('21'),
                  ),
                  DropdownMenuItem(
                    value: 22,
                    child: Text('22'),
                  ),
                  DropdownMenuItem(
                    value: 23,
                    child: Text('23'),
                  ),
                ],
                onChanged: (int selectedValue) {
                  print(selectedValue);
                  _hourMinute.hour = selectedValue;
                  setState((){
                  });
                },
              ),

              DropdownButton(
                value: _hourMinute.minute,
                items: [
                  DropdownMenuItem(
                    value: 0,
                    child: Text('00'),
                  ),
                  DropdownMenuItem(
                    value: 1,
                    child: Text('15'),
                  ),
                  DropdownMenuItem(
                    value: 2,
                    child: Text('02'),
                  ),
                  DropdownMenuItem(
                    value: 3,
                    child: Text('03'),
                  ),
                  DropdownMenuItem(
                    value: 4,
                    child: Text('04'),
                  ),
                  DropdownMenuItem(
                    value: 5,
                    child: Text('05'),
                  ),
                  DropdownMenuItem(
                    value: 6,
                    child: Text('06'),
                  ),
                  DropdownMenuItem(
                    value: 7,
                    child: Text('07'),
                  ),
                  DropdownMenuItem(
                    value: 8,
                    child: Text('08'),
                  ),
                  DropdownMenuItem(
                    value: 9,
                    child: Text('09'),
                  ),
                  DropdownMenuItem(
                    value: 10,
                    child: Text('10'),
                  ),
                  DropdownMenuItem(
                    value: 11,
                    child: Text('11'),
                  ),
                  DropdownMenuItem(
                    value: 12,
                    child: Text('12'),
                  ),
                  DropdownMenuItem(
                    value: 13,
                    child: Text('13'),
                  ),
                  DropdownMenuItem(
                    value: 14,
                    child: Text('14'),
                  ),
                  DropdownMenuItem(
                    value: 15,
                    child: Text('15'),
                  ),
                  DropdownMenuItem(
                    value: 16,
                    child: Text('16'),
                  ),
                  DropdownMenuItem(
                    value: 17,
                    child: Text('17'),
                  ),
                  DropdownMenuItem(
                    value: 18,
                    child: Text('18'),
                  ),
                  DropdownMenuItem(
                    value: 19,
                    child: Text('19'),
                  ),
                  DropdownMenuItem(
                    value: 20,
                    child: Text('20'),
                  ),
                  DropdownMenuItem(
                    value: 21,
                    child: Text('21'),
                  ),
                  DropdownMenuItem(
                    value: 22,
                    child: Text('22'),
                  ),
                  DropdownMenuItem(
                    value: 23,
                    child: Text('23'),
                  ),
                  DropdownMenuItem(
                    value: 24,
                    child: Text('24'),
                  ),
                  DropdownMenuItem(
                    value: 25,
                    child: Text('25'),
                  ),
                  DropdownMenuItem(
                    value: 26,
                    child: Text('26'),
                  ),
                  DropdownMenuItem(
                    value: 27,
                    child: Text('27'),
                  ),
                  DropdownMenuItem(
                    value: 28,
                    child: Text('28'),
                  ),
                  DropdownMenuItem(
                    value: 29,
                    child: Text('29'),
                  ),
                  DropdownMenuItem(
                    value: 30,
                    child: Text('30'),
                  ),
                  DropdownMenuItem(
                    value: 31,
                    child: Text('31'),
                  ),
                  DropdownMenuItem(
                    value: 32,
                    child: Text('32'),
                  ),
                  DropdownMenuItem(
                    value: 33,
                    child: Text('33'),
                  ),
                  DropdownMenuItem(
                    value: 34,
                    child: Text('34'),
                  ),
                  DropdownMenuItem(
                    value: 35,
                    child: Text('35'),
                  ),
                  DropdownMenuItem(
                    value: 36,
                    child: Text('36'),
                  ),
                  DropdownMenuItem(
                    value: 37,
                    child: Text('37'),
                  ),
                  DropdownMenuItem(
                    value: 38,
                    child: Text('38'),
                  ),
                  DropdownMenuItem(
                    value: 39,
                    child: Text('39'),
                  ),
                  DropdownMenuItem(
                    value: 40,
                    child: Text('40'),
                  ),
                  DropdownMenuItem(
                    value: 41,
                    child: Text('41'),
                  ),
                  DropdownMenuItem(
                    value: 42,
                    child: Text('42'),
                  ),
                  DropdownMenuItem(
                    value: 43,
                    child: Text('43'),
                  ),
                  DropdownMenuItem(
                    value: 44,
                    child: Text('44'),
                  ),
                  DropdownMenuItem(
                    value: 45,
                    child: Text('45'),
                  ),
                  DropdownMenuItem(
                    value: 46,
                    child: Text('46'),
                  ),
                  DropdownMenuItem(
                    value: 47,
                    child: Text('47'),
                  ),
                  DropdownMenuItem(
                    value: 48,
                    child: Text('48'),
                  ),
                  DropdownMenuItem(
                    value: 49,
                    child: Text('49'),
                  ),
                  DropdownMenuItem(
                    value: 50,
                    child: Text('50'),
                  ),
                  DropdownMenuItem(
                    value: 51,
                    child: Text('51'),
                  ),
                  DropdownMenuItem(
                    value: 52,
                    child: Text('52'),
                  ),
                  DropdownMenuItem(
                    value: 53,
                    child: Text('53'),
                  ),
                  DropdownMenuItem(
                    value: 54,
                    child: Text('54'),
                  ),
                  DropdownMenuItem(
                    value: 55,
                    child: Text('55'),
                  ),
                  DropdownMenuItem(
                    value: 56,
                    child: Text('56'),
                  ),
                  DropdownMenuItem(
                    value: 57,
                    child: Text('57'),
                  ),
                  DropdownMenuItem(
                    value: 58,
                    child: Text('58'),
                  ),
                  DropdownMenuItem(
                    value: 59,
                    child: Text('59'),
                  ),

                ],
                onChanged: (selectedValue) {
                  print(selectedValue);
                  setState((){
                    // _minutes = selectedValue;
                    _hourMinute.minute = selectedValue;
                  });
                },
              ),


            ],
          ),
          actions: [
            FlatButton(
              onPressed: () => Navigator.pop(context, null),
              child: Text('Cancel'),
            ),
            FlatButton(
              onPressed: () => Navigator.pop(context, _hourMinute),
              child: Text('Confirm'),
            ),
          ],
      );
  }
}