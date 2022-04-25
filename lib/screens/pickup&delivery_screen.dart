import 'package:flutter/material.dart';
import 'package:laundry/utils/style.dart';
import 'package:laundry/widgets/pickup_delivery_date.dart';

class PickupScreen extends StatefulWidget {
  const PickupScreen({Key? key}) : super(key: key);

  @override
  State<PickupScreen> createState() => _PickupScreenState();
}

class _PickupScreenState extends State<PickupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "Select Date & Time",
          style: TextStyle(color: Colors.black),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.grey),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications, color: Colors.grey),
            onPressed: () {},
          ),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Pick Up Date',
              style: headingStyle,
            ),
            const SizedBox(height: 15),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  dateWidget('Wed', "07 Aug", true),
                  dateWidget('Wed', "07 Aug", false),
                  dateWidget('Wed', "07 Aug", false),
                  dateWidget('Wed', "07 Aug", false),
                  dateWidget('Wed', "07 Aug", false),
                  dateWidget('Wed', "07 Aug", false),
                ],
              ),
            ),
            const SizedBox(height: 15),
            Container(
              height: 1,
              color: Colors.grey,
            ),
            const SizedBox(height: 15),
            Text(
              "Pick Up Time",
              style: headingStyle,
            ),
            const SizedBox(height: 15),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  timeWidget("10:00 AM to 12:00 PM", false),
                  timeWidget("10:00 AM to 12:00 PM", true),
                ],
              ),
            ),
            const SizedBox(height: 15),
            Text(
              'Delivery Date',
              style: headingStyle,
            ),
            const SizedBox(height: 15),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  dateWidget('Wed', "07 Aug", true),
                  dateWidget('Wed', "07 Aug", false),
                  dateWidget('Wed', "07 Aug", false),
                  dateWidget('Wed', "07 Aug", false),
                  dateWidget('Wed', "07 Aug", false),
                  dateWidget('Wed', "07 Aug", false),
                ],
              ),
            ),
            const SizedBox(height: 15),
            Container(
              height: 1,
              color: Colors.grey,
            ),
            const SizedBox(height: 15),
            Text(
              "Delivery Time",
              style: headingStyle,
            ),
            const SizedBox(height: 15),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  timeWidget("10:00 AM to 12:00 PM", false),
                  timeWidget("10:00 AM to 12:00 PM", true),
                ],
              ),
            ),
            Expanded(
              child: Container(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Total Amount Payable',
                  style: headingStyle,
                ),
                Text(
                  '\$200',
                  style: headingStyle,
                ),
              ],
            ),
            InkWell(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  padding: const EdgeInsets.all(20),
                  height: 60,
                  width: MediaQuery.of(context).size.width * 0.9,
                  decoration: BoxDecoration(
                    gradient: kGradientStyle,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: const Center(
                    child: Text(
                      'SELECT DATE & TIME',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
