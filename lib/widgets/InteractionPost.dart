import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget interactionPost(IconData icon, String count) {
  return Row(
    children: [
      Icon(
        icon,
        color: Colors.grey.shade600,
        size: 16,
      ),
      if (count.isNotEmpty) ...[
        const SizedBox(width: 4),
        Text(
          count,
          style: TextStyle(
            color: Colors.grey.shade600,
            fontSize: 12,
          ),
        ),
      ],
    ],
  );
}