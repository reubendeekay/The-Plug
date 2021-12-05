import 'package:cleaner_app/helpers/constants.dart';
import 'package:cleaner_app/screens/booking_screen/booking_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class ServiceBottomWidget extends StatelessWidget {
  const ServiceBottomWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.fromLTRB(12, 1, 12, 5),
      child: Row(
        children: [
          IconButton(
              onPressed: () {},
              icon: const Icon(CupertinoIcons.text_bubble_fill)),
          const SizedBox(width: 12),
          Expanded(
            child: SizedBox(
              height: 40,
              child: RaisedButton(
                onPressed: () {
                  Get.to(() => const BookingScreen());
                },
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(3),
                ),
                color: kPrimaryColor,
                textColor: Colors.white,
                child: const Text('Book now'),
              ),
            ),
          )
        ],
      ),
    );
  }
}
