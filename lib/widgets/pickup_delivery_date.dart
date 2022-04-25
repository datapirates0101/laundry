import 'package:flutter/material.dart';
import 'package:laundry/utils/style.dart';

Container dateWidget(String day, String date, bool isActive) {
  return Container(
    margin: const EdgeInsets.only(right: 10),
    padding: const EdgeInsets.all(20),
    decoration: BoxDecoration(
      color: (isActive) ? Colors.orange : Colors.grey.withOpacity(0.3),
      borderRadius: const BorderRadius.all(
        Radius.circular(20),
      ),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          day,
          style: contentStyle.copyWith(
            color: isActive ? Colors.white : Colors.black,
            fontSize: 18,
          ),
        ),
        Text(
          date,
          style: contentStyle.copyWith(
            color: isActive ? Colors.white : Colors.black,
            fontSize: 14,
          ),
        )
      ],
    ),
  );
}

Container timeWidget(String time, bool isActive) {
  return Container(
    margin: const EdgeInsets.only(right: 10),
    padding: const EdgeInsets.all(20),
    decoration: BoxDecoration(
      color: (isActive) ? Colors.orange : Colors.grey.withOpacity(0.3),
      borderRadius: const BorderRadius.all(
        Radius.circular(20),
      ),
    ),
    child: Center(
      child: Text(
        time,
        style: contentStyle.copyWith(
          color: isActive ? Colors.white : Colors.black,
          fontSize: 13,
        ),
      ),
    ),
  );
}
