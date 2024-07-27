import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RecordCard extends StatelessWidget {
  final String name;
  final String phone;
  final String address;
  final String type;
  final String date;
  final String emergencyStatus;
  final Color cardColor;

  const RecordCard(
      {super.key,
      required this.name,
      required this.phone,
      required this.address,
      required this.type,
      required this.date,
      required this.emergencyStatus,
      required this.cardColor});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.grey[300], borderRadius: BorderRadius.circular(12.r)),
      height: 120.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Name:$name",
                style: Theme.of(context).textTheme.titleMedium,
              ),
              Text(
                "Phone:$phone",
                style: Theme.of(context).textTheme.titleMedium,
              ),
              Text(
                "Address:$address",
                style: Theme.of(context).textTheme.titleMedium,
              ),
              Text(
                "Type:$type",
                style: Theme.of(context).textTheme.titleMedium,
              ),
              Text(
                "Date:$date",
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ],
          ),
          Card.filled(
            color: cardColor,
            margin: EdgeInsets.only(top: 10.h),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 4.0.w, vertical: 4.0.h),
              child: Text(
                emergencyStatus,
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ),
          )
        ],
      ),
    );
  }
}
