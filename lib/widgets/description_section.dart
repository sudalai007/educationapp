import 'package:flutter/material.dart';

class DescriptionSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Column(children: [
        Text(
          "Lorem ipsum or lipsum is simply a dummy text for the printing and typesetting industry. The roots of that standard text go way back to the 1500s when an unknown printer took a galley type and combined it to make a type specimen book.",
          style: TextStyle(fontSize: 16, color: Colors.black.withOpacity(0.7)),
          textAlign: TextAlign.justify,
        ),
        SizedBox(height: 20),
        Row(
          children: [
            Text(
              "Course Length",
              style: TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.w500,
              ),
            ),
            Icon(
              Icons.timer,
              color: Color(0xFF674AEF),
            ),
            SizedBox(width: 5),
            Text(
              "26 Hours",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            )
          ],
        ),
        SizedBox(height: 10),
        Row(
          children: [
            Text(
              "Rating",
              style: TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.w600,
              ),
            ),
            Icon(
              Icons.star,
              color: Colors.amber,
            ),
            SizedBox(width: 5),
            Text(
              "4.5",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            )
          ],
        )
      ]),
    );
  }
}
