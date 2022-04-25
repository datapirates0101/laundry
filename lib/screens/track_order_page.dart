import 'package:flutter/material.dart';
import 'package:laundry/utils/style.dart';

class TrackOrder extends StatelessWidget {
  const TrackOrder({Key? key}) : super(key: key);

  Container statusWidget(String img, String status, bool isActive) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        children: [
          Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: (isActive) ? Colors.orange : Colors.white,
                border: Border.all(
                    color: (isActive) ? Colors.transparent : Colors.orange,
                    width: 3)),
          ),
          const SizedBox(
            width: 50,
          ),
          Column(
            children: [
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/$img.png"),
                        fit: BoxFit.contain)),
              ),
              Text(
                status,
                style: contentStyle.copyWith(
                    color: (isActive) ? Colors.orange : Colors.black),
              )
            ],
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Order Number 1001",
            style: headingStyle,
          ),
          Text(
            "Order confirmed. Ready to pick",
            style: contentStyle.copyWith(color: Colors.grey, fontSize: 16),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 15),
            height: 1,
            color: Colors.grey,
          ),
          Stack(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 13, top: 50),
                width: 4,
                height: 400,
                color: Colors.grey,
              ),
              Column(
                children: [
                  statusWidget('confirmed', "Confirmed", true),
                  statusWidget('onBoard2', "Picked Up", false),
                  statusWidget('servicesImg', "In Pricess", false),
                  statusWidget('shipped', "Shipped", false),
                  statusWidget('Delivery', "Delivered", false),
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: const EdgeInsets.all(8),
                height: 40,
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    border: Border.all(
                      color: Colors.orange,
                    )),
                child: Center(
                  child: Text(
                    "Cancel Order",
                    style: contentStyle.copyWith(color: Colors.orange),
                  ),
                ),
              ),
              Container(
                height: 40,
                padding: const EdgeInsets.all(8),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Colors.orange,
                ),
                child: Center(
                  child: Text(
                    "My Orders",
                    style: contentStyle.copyWith(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
