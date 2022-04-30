import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:laundry/logic/item_price_cal.dart';
import 'package:laundry/providers/quantity.dart';
import 'package:laundry/screens/pickup&delivery_screen.dart';
import 'package:laundry/utils/style.dart';
import 'package:laundry/widgets/category.dart';
import 'package:laundry/widgets/cloth.dart';
import 'package:laundry/logic/gender_clothList.dart';

class OrdersPage extends ConsumerStatefulWidget {
  const OrdersPage({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _OrdersPageState();
}

class _OrdersPageState extends ConsumerState<OrdersPage> {
  bool isActiveMan = true;
  bool isActiveWomen = false;
  bool isActivekid = false;
  int gender = 0;

  @override
  Widget build(
    BuildContext context,
  ) {
    int item = ref.watch(itemCountProvider);
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
          onPressed: () {
            refreshUi(ref);
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh_outlined, color: Colors.grey),
            onPressed: () {
              refreshUi(ref);
            },
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
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isActiveWomen = false;
                      isActivekid = false;
                      isActiveMan = !isActiveMan;
                      gender = 0;
                    });
                  },
                  child: categoryWidget('man', 'Man', isActiveMan),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isActiveMan = false;
                      isActivekid = false;
                      isActiveWomen = !isActiveWomen;
                      gender = 1;
                    });
                  },
                  child: categoryWidget('girl', 'Women', isActiveWomen),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isActiveMan = false;
                      isActiveWomen = false;
                      isActivekid = !isActivekid;
                      gender = 2;
                    });
                  },
                  child: categoryWidget('child', 'Kids', isActivekid),
                ),
              ],
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: whichGenderCloths()[gender],
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
                      '${item.toString()} Items added',
                      style: contentStyle,
                    ),
                  ],
                ),
                Text(
                  '\$${ref.watch(priceProvider)}',
                  style: headingStyle,
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const PickupScreen(),
                  ),
                );
              },
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
