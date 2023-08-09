import 'package:educationapp/widgets/description_section.dart';
import 'package:educationapp/widgets/videos_section.dart';
import 'package:flutter/material.dart';

class CourseScreen extends StatefulWidget {
  String img;
  CourseScreen(this.img);

  @override
  State<CourseScreen> createState() => _CourseScreenState();
}

class _CourseScreenState extends State<CourseScreen> {
  bool isVideosSection = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          widget.img,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            letterSpacing: 1,
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(
              Icons.notifications,
              size: 28,
              color: Color(0xFF674AEF),
            ),
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: ListView(
          children: [
            Container(
              padding: EdgeInsets.all(5),
              width: MediaQuery.of(context).size.width,
              height: 200,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xFFF5F3FF),
                  image: DecorationImage(
                      image: AssetImage("images/${widget.img}.png"))),
              child: Center(
                  child: Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.play_arrow_rounded,
                  color: Color(0xFF674AEF),
                  size: 45,
                ),
              )),
            ),
            SizedBox(height: 15),
            Text(
              "${widget.img} Complete Course",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 5),
            Text(
              "Created by Dear Programmer",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.black.withOpacity(0.7)),
            ),
            SizedBox(height: 5),
            Text(
              "55 Videos",
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Colors.black.withOpacity(0.5)),
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
              decoration: BoxDecoration(
                  color: Color(0xFFF5F3FF),
                  borderRadius: BorderRadius.circular(10)),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Material(
                      //if isVideosSection condition is true than that the color
                      // will be on button and if condition is false then
                      //the color will be show on button but with some opacity.

                      color: isVideosSection
                          ? Color(0xFF674AEF)
                          : Color(0xFF674AEF).withOpacity(0.6),
                      borderRadius: BorderRadius.circular(10),
                      child: InkWell(
                        onTap: () {
                          //change value of
                          setState(() {
                            isVideosSection = true;
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              vertical: 15, horizontal: 35),
                          child: Text(
                            "Videos",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    Material(
                      color: isVideosSection
                          ? Color(0xFF674AEF).withOpacity(0.6)
                          : Color(0xFF674AEF),
                      borderRadius: BorderRadius.circular(10),
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            isVideosSection = false;
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              vertical: 15, horizontal: 35),
                          child: Text(
                            "Description",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    )
                  ]),
            ),

            //We will create 2 different section for videos section
            //and discreption section

            SizedBox(height: 10),

            //if isVideoSection condition is true the VideoSection will be shown
            //and if condition is false it means DescriptionSection will be shown.
            //
            isVideosSection ? VideoSection() : DescriptionSection(),
          ],
        ),
      ),
    );
  }
}
