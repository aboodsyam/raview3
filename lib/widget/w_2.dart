import 'package:flutter/material.dart';

class widget_2 extends StatelessWidget {
  const widget_2({
    Key? key,
    required this.isCorrn,
  }) : super(key: key);

  final bool isCorrn;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 3,
          width: 20,
          margin: EdgeInsetsDirectional.only(end: 20),
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: isCorrn ? Colors.green : Colors.black26,
              borderRadius: BorderRadius.circular(2)),
        ),
      ],
    );
  }
}
