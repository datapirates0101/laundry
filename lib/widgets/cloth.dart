import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:laundry/logic/item_price_cal.dart';
import 'package:laundry/utils/style.dart';

class ClothWidget extends ConsumerStatefulWidget {
  final String img;
  final String name;
  final int price;
  final StateProvider<int> quantity;
  const ClothWidget({
    Key? key,
    required this.img,
    required this.name,
    required this.price,
    required this.quantity,
  }) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ClothWidgetState();
}

class _ClothWidgetState extends ConsumerState<ClothWidget> {
  @override
  Widget build(BuildContext context) {
    widget.img;
    widget.key;
    widget.name;
    widget.price;

    int quant = ref.watch(widget.quantity);
    int totalPrice = quant * widget.price;
    
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: const EdgeInsets.all(10),
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/images/${widget.img}.png',
                      ),
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.name,
                      style: headingStyle,
                    ),
                    Text(
                      "\$${widget.price}",
                      style: headingStyle.copyWith(
                        color: Colors.grey,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      'Add Note',
                      style: headingStyle.copyWith(
                        color: Colors.orange,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
                Text(
                  '\$${totalPrice.toString()}',
                  style: headingStyle,
                ),
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        if (quant > 0) {
                          ref.read(widget.quantity.notifier).state--;
                        }
                        noItemCalculator(ref);
                        priceCalculator(ref);
                      },
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          gradient: kGradientStyle,
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                          child: Text(
                            '-',
                            style: headingStyle.copyWith(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                      width: 40,
                      child: Center(
                        child: Text(
                          quant.toString(),
                          style: headingStyle.copyWith(fontSize: 25),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        if (quant < 10) {
                          ref.read(widget.quantity.notifier).state++;
                        }
                        noItemCalculator(ref);
                        priceCalculator(ref);
                      },
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          gradient: kGradientStyle,
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                          child: Text(
                            '+',
                            style: headingStyle.copyWith(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 1,
                width: MediaQuery.of(context).size.width * 0.70,
                color: Colors.grey,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
