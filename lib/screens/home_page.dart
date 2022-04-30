import 'package:flutter/material.dart';
import 'package:laundry/resources/fetch_time.dart';
import 'package:laundry/screens/order_page.dart';
import 'package:laundry/utils/style.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late DateTime time;
  bool isAvailable = true;

  @override
  void initState() {
    getTimeLogic();
    super.initState();
  }

  void getTimeLogic() async {
    time = await Time().getTime();
    setState(() {
      isAvailable = Time().checkTime(time);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.2,
            width: MediaQuery.of(context).size.width,
            color: const Color(0xfff1ffff),
            child: Stack(
              children: [
                Positioned(
                  top: 0,
                  left: 0,
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "BLESS THIS MESS",
                          style: headingStyle,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          "We pick your clothes and give \nthem a new look",
                          style: TextStyle(fontSize: 16),
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    height: 145,
                    width: 145,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/bannerImg.png'),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            'SERVICES',
            style: headingStyle,
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.2,
            width: MediaQuery.of(context).size.width,
            color: const Color(0xfff1ffff),
            child: Row(
              children: [
                Container(
                  height: 200,
                  width: 120,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/servicesImg.png'),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "IRON ONLY",
                          style: headingStyle,
                        ),
                        const SizedBox(height: 10),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => OrdersPage(),
                              ),
                            );
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              gradient: kGradientStyle,
                              borderRadius: const BorderRadius.all(
                                Radius.circular(20),
                              ),
                            ),
                            padding: const EdgeInsets.symmetric(
                              vertical: 10,
                              horizontal: 20,
                            ),
                            child: const Text(
                              "Place Order",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          Container(
            padding: const EdgeInsets.all(20),
            width: MediaQuery.of(context).size.width,
            color: const Color(0xfff1ffff),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      "AVAILABILITY",
                      style: contentStyle,
                    ),
                    isAvailable
                        ? Text(
                            "  AVAILABLE",
                            style: contentStyle.copyWith(
                              color: Colors.green,
                            ),
                          )
                        : Text(
                            '  UNAVAILABLE',
                            style: contentStyle.copyWith(
                              color: Colors.red,
                            ),
                          ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text("We are open from 7.00 AM to 8.00 PM"),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            padding: const EdgeInsets.all(20),
            width: MediaQuery.of(context).size.width,
            color: const Color(0xfff1ffff),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'CHECK THE ESTIMATION',
                  style: contentStyle,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "You can check time estimation with price",
                  style: contentStyle,
                )
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  gradient: kGradientStyle,
                  shape: BoxShape.circle,
                ),
                child: const Text(
                  '+',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
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
