import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SwitchGridTile extends StatefulWidget {
  final String switchTitle;
  final bool value;
  const SwitchGridTile(
      {super.key, required this.switchTitle, required this.value});

  @override
  State<SwitchGridTile> createState() => _SwitchGridTileState();
}

class _SwitchGridTileState extends State<SwitchGridTile> {
  @override
  Widget build(BuildContext context) {
    bool switchVal = false;
    switchVal = widget.value;
    return Row(
      children: [
        Text(
          widget.switchTitle,
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        SizedBox(
          width: 15.w,
        ),
        CupertinoSwitch(
          value: switchVal,
          onChanged: (val) {
            switchVal = val;
            setState(() {});
          },
        )
      ],
    );
  }
}
