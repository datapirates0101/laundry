import 'package:flutter/material.dart';
import 'package:laundry/utils/style.dart';

class OrderConfirmation extends StatelessWidget {
  const OrderConfirmation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "Order Confirmed",
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 200,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/onBoard2.png'),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              "Thank you for choosing us!",
              style: headingStyle,
            ),
            Text(
              "Your oder has been placed and we will pick up your clothes on time!",
              style: contentStyle,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Order ID",
                  style: headingStyle,
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      gradient: kGradientStyle,
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Text(
                    "1001",
                    style: headingStyle.copyWith(color: Colors.white),
                  ),
                )
              ],
            ),
            divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Clothes Count",
                  style: headingStyle,
                ),
                Text(
                  "7",
                  style: headingStyle.copyWith(color: Colors.grey),
                ),
              ],
            ),
            divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Final Amount",
                  style: headingStyle,
                ),
                Text(
                  "225",
                  style: headingStyle.copyWith(color: Colors.grey),
                ),
              ],
            ),
            divider(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Pick up Date & Time",
                  style: headingStyle,
                ),
                Text(
                  "Wednesday, 07 Aug, 2020. Between 10:00 AM & 12:00 PM",
                  style:
                      contentStyle.copyWith(color: Colors.grey, fontSize: 16),
                ),
              ],
            ),
            divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Payment Method",
                  style: headingStyle,
                ),
                Text(
                  "Cash",
                  style: headingStyle.copyWith(color: Colors.grey),
                ),
              ],
            ),
            Expanded(
              child: Container(),
            ),
            InkWell(
              onTap: () {},
              child: Container(
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.symmetric(vertical: 20),
                decoration: BoxDecoration(
                  gradient: kGradientStyle,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Center(
                  child: Text(
                    "TRACK ORDER",
                    style: contentStyle.copyWith(
                        color: Colors.white, fontSize: 22),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Container divider() {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 15),
      height: 1,
      color: Colors.grey,
    );
  }
}
