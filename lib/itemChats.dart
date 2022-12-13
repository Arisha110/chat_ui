import 'package:flutter/material.dart';
import 'main.dart';

Widget _itemChats({String avatar = '', name = '', chat = '', time: '00.00'}) {
  return Card(
    margin: const EdgeInsets.symmetric(
      vertical: 20,
    ),
    elevation: 5,
    child: Row(
      children: [
        Avatar(
          margin: const EdgeInsets.only(
            right: 20,
          ),
          size: 40,
          image: avatar,
        ),
        Expanded(
            child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  '$name',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                  ),
                ),
                Text(
                  '$time',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 7,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text('$chat',
                overflow: TextOverflow.ellipsis,
                style: TextStyle(color: Colors.black54)),
          ],
        ))
      ],
    ),
  );
}
