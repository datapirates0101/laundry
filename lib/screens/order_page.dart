import 'package:flutter/material.dart';
import 'package:laundry/utils/style.dart';
import 'package:laundry/widgets/category.dart';
import 'package:laundry/widgets/cloth.dart';

class OrdersPage extends StatefulWidget {
  const OrdersPage({Key? key}) : super(key: key);

  @override
  State<OrdersPage> createState() => _OrdersPageState();
}

class _OrdersPageState extends State<OrdersPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "Select Clothes",
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
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                categoryWidget('man', 'Man', true),
                categoryWidget('girl', 'Women', false),
                categoryWidget('child', 'Kids', false),
                categoryWidget('oldman', 'Others', false),
              ],
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    clothWidget('cloth1', 'Trouser', '15', context),
                    clothWidget('cloth2', 'Jeans', '15', context),
                    clothWidget('cloth3', 'Jackets', '15', context),
                    clothWidget('cloth4', 'Shirt', '15', context),
                    clothWidget('cloth5', 'T-Shirt', '15', context),
                    clothWidget('cloth6', 'Blazer', '15', context),
                    clothWidget('cloth7', 'Coats', '15', context),
                    clothWidget('cloth8', 'Kurta', '15', context),
                    clothWidget('cloth9', 'Sweater', '15', context),
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(
                      'Your Basket',
                      style: headingStyle,
                    ),
                    Text(
                      '7 Items added',
                      style: contentStyle,
                    ),
                  ],
                ),
                Text(
                  '\$200',
                  style: headingStyle,
                ),
              ],
            ),
            const SizedBox(
              height: 30,
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
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
