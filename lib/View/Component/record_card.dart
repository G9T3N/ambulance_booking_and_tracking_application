import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_flutter_in_kali_linux/Core/color/appcolors.dart';

class RecordCard extends StatefulWidget {
  final String name;
  final String? image;

  final String phone;
  final String address;
  final String type;
  final String date;
  final String emergencyStatus;
  final Color cardColor;
  final void Function()? onPressed;

  const RecordCard(
      {super.key,
      required this.name,
      required this.phone,
      required this.address,
      required this.type,
      required this.date,
      required this.emergencyStatus,
      required this.cardColor,
      this.image,
      this.onPressed});

  @override
  State<RecordCard> createState() => _RecordCardState();
}

class _RecordCardState extends State<RecordCard> {
  @override
  Widget build(BuildContext context) {
    String? img = widget.image;
    Color cardColor1 = widget.cardColor;
    return Container(
      decoration: BoxDecoration(
          color: Colors.grey[200], borderRadius: BorderRadius.circular(12.r)),
      height: img != null
          ? widget.emergencyStatus == "NEW"
              ? 450.h
              : 340.h
          : 120.h,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Name:${widget.name}",
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  Text(
                    "Phone:${widget.phone}",
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  Text(
                    "Address:${widget.address}",
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  Text(
                    "Type:${widget.type}",
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  Text(
                    "Date:${widget.date}",
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ],
              ),
              Card.filled(
                color: cardColor1,
                margin: EdgeInsets.only(top: 10.h),
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 4.0.w, vertical: 4.0.h),
                  child: Text(
                    widget.emergencyStatus,
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 10.h,
          ),
          img != null
              ? Column(
                  children: [
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.red),
                        borderRadius: BorderRadius.circular(12.r),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12.r),
                        child: Image.asset(
                          img,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    widget.emergencyStatus == "NEW"
                        ? SizedBox(
                            width: double.infinity,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(12.r),
                              child: Image.asset(
                                "assets/images/id.jpg",
                                fit: BoxFit.fill,
                              ),
                            ),
                          )
                        : const SizedBox(
                            height: 0,
                          )
                  ],
                )
              : const SizedBox(
                  height: 0,
                ),
          SizedBox(
            height: 15.h,
          ),
          img != null
              ? Expanded(
                  flex: 1,
                  child: widget.emergencyStatus == "ACTIVE" ||
                          widget.emergencyStatus == "BLOCK"
                      ? Column(
                          children: [
                            MaterialButton(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12.r)),
                              color: AppColor.mainColor,
                              disabledColor: AppColor.mainColor,
                              height: 50.h,
                              onPressed: () {},
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.arrow_forward_rounded,
                                    color: Colors.white,
                                    size: 27.sp,
                                  ),
                                  SizedBox(
                                    width: 20.w,
                                  ),
                                  Text(
                                    widget.emergencyStatus == "BLOCK"
                                        ? "Unblock"
                                        : "Block",
                                    style:
                                        Theme.of(context).textTheme.bodySmall,
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 15.h,
                            )
                          ],
                        )
                      : Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: MaterialButton(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12.r)),
                                color: AppColor.mainColor,
                                disabledColor: AppColor.mainColor,
                                height: 50.h,
                                onPressed: widget.emergencyStatus == "NEW"
                                    ? () {}
                                    : () {
                                        Navigator.of(context)
                                            .pushNamed("drivermapScreen");
                                      },
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    const Icon(
                                      Icons.arrow_forward_rounded,
                                      color: Colors.white,
                                    ),
                                    Text(
                                      "CONTINUE ",
                                      style:
                                          Theme.of(context).textTheme.bodySmall,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            Expanded(
                              child: MaterialButton(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12.r)),
                                color: AppColor.mainColor,
                                disabledColor: AppColor.mainColor,
                                height: 50.h,
                                onPressed: widget.onPressed,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    const Icon(
                                      Icons.arrow_forward_rounded,
                                      color: Colors.white,
                                    ),
                                    Text(
                                      "CANCEL ",
                                      style:
                                          Theme.of(context).textTheme.bodySmall,
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                          ],
                        ),
                )
              : const SizedBox(
                  height: 0,
                ),
        ],
      ),
    );
  }
}
