import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  int imageIndex = 0;
  final double imageWidgetHeight = 200.0;
  List<String> images = const [
    "https://i.pinimg.com/originals/88/f8/5c/88f85cda9a1a52fb51f00d44f32ca978.jpg",
    "https://i.pinimg.com/originals/21/5d/14/215d14413008aba9e03c1f04fc7a8d86.jpg",
    "https://static01.nyt.com/images/2022/09/01/business/00roose-1/merlin_212276709_3104aef5-3dc4-4288-bb44-9e5624db0b37-superJumbo.jpg",
    "https://www.maacindia.com/images/courses/course-img-17.jpg",
    "https://www.maacindia.com/images/courses/course-img-40.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              child: Stack(
                children: [
                  SizedBox(
                    height: imageWidgetHeight,
                    child: PageView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: images.length,
                      onPageChanged: (index) {
                        imageIndex = index;
                        setState(() {});
                      },
                      itemBuilder: (c, i) {
                        return Container(
                          child: Image.network(
                            images[i],
                            fit: BoxFit.cover,
                          ),
                        );
                      },
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(right: 15, top: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        BackButton(
                          color: Colors.black,
                        ),
                        Text(
                          "Detail Destinations",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.black87),
                        ),
                        Icon(
                          Icons.favorite_border,
                        )
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 38,
                    left: 160,
                    right: 0,
                    child: Container(
                      height: 20,
                      width: double.infinity,
                      child: ListView.separated(
                        padding: EdgeInsets.zero,
                        scrollDirection: Axis.horizontal,
                        itemCount: images.length,
                        separatorBuilder: (c, i) => SizedBox(
                          width: 3,
                        ),
                        itemBuilder: (c, i) {
                          final bool isCurrent = imageIndex == i;
                          return CircleAvatar(
                            backgroundColor:
                                isCurrent ? Colors.black : Colors.black45,
                            radius: 3,
                          );
                        },
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 38,
                    right: 15,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      child: Row(
                        children: [
                          Icon(
                            Icons.image_outlined,
                            size: 20,
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Text("466")
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: imageWidgetHeight - 30,
              bottom: 0,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 15),
                height: MediaQuery.of(context).size.height -
                    (imageWidgetHeight - 30),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                    ),
                    color: Colors.grey[50]),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 25,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Tebing Land",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        Text(
                          "IDR 200.00",
                          style: TextStyle(
                            color: Colors.blue,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.location_on,
                              color: Colors.blue,
                            ),
                            Text(
                              "Juanda betkasi",
                              style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                                fontSize: 13,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          "6 malam mengenap",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 13,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "12 Jam perinjala",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 13,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.blue[100],
                      ),
                      padding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                      child: Stack(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 25,
                                child: Column(
                                  children: [
                                    CircleAvatar(
                                      backgroundColor: Colors.white,
                                      child: Icon(
                                        Icons.train,
                                        size: 18,
                                      ),
                                      radius: 15,
                                    ),
                                    Container(
                                      width: 2,
                                      color: Colors.black54,
                                      height: 30,
                                    ),
                                    CircleAvatar(
                                      backgroundColor: Colors.white,
                                      child: Icon(
                                        Icons.train,
                                        size: 18,
                                      ),
                                      radius: 15,
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Expanded(
                                child: ListView.separated(
                                  itemCount: 2,
                                  padding: EdgeInsets.zero,
                                  shrinkWrap: true,
                                  separatorBuilder: (c, i) {
                                    return Divider();
                                  },
                                  itemBuilder: (c, i) {
                                    return Column(
                                      children: [
                                        Row(
                                          children: [
                                            Text(
                                              "Jepara",
                                              style: TextStyle(
                                                color: Colors.black,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 5,
                                            ),
                                            Text(
                                              "jawa tengath",
                                              style:
                                                  TextStyle(color: Colors.grey),
                                            )
                                          ],
                                        ),
                                        SizedBox(
                                          height: 4,
                                        ),
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.alarm,
                                              size: 15,
                                              color: Colors.grey,
                                            ),
                                            SizedBox(
                                              width: 4,
                                            ),
                                            Text(
                                              "15:00",
                                              style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 12,
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 4,
                                        ),
                                      ],
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                          Positioned(
                            top: 10,
                            right: 10,
                            child: CircleAvatar(
                              radius: 15,
                              backgroundColor: Colors.white,
                              child: Icon(Icons.edit),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 100,
                          child: Column(
                            children: [
                              Text(
                                "4.9",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Row(
                                children: [
                                  starWidget(),
                                  starWidget(),
                                  starWidget(),
                                  starWidget(),
                                  starWidget(color: Colors.grey),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 70,
                          width: 2,
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          color: Colors.grey.shade200,
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  starWidget(),
                                  starWidget(),
                                  starWidget(),
                                  starWidget(),
                                  starWidget(),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Expanded(
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(15),
                                      child: LinearProgressIndicator(
                                        backgroundColor: Colors.grey,
                                        minHeight: 8,
                                        value: 0.8,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 4,
                                  ),
                                  Text("55")
                                ],
                              ),
                              Row(
                                children: [
                                  starWidget(),
                                  starWidget(),
                                  starWidget(),
                                  starWidget(),
                                  starWidget(color: Colors.grey),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Expanded(
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(15),
                                      child: LinearProgressIndicator(
                                        backgroundColor: Colors.grey,
                                        minHeight: 8,
                                        value: 0.6,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 4,
                                  ),
                                  Text("24")
                                ],
                              ),
                              Row(
                                children: [
                                  starWidget(),
                                  starWidget(),
                                  starWidget(),
                                  starWidget(color: Colors.grey),
                                  starWidget(color: Colors.grey),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Expanded(
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(15),
                                      child: LinearProgressIndicator(
                                        backgroundColor: Colors.grey,
                                        minHeight: 8,
                                        value: 0.2,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 4,
                                  ),
                                  Text("8")
                                ],
                              ),
                              Row(
                                children: [
                                  starWidget(),
                                  starWidget(),
                                  starWidget(color: Colors.grey),
                                  starWidget(color: Colors.grey),
                                  starWidget(color: Colors.grey),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Expanded(
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(15),
                                      child: LinearProgressIndicator(
                                        backgroundColor: Colors.grey,
                                        minHeight: 8,
                                        value: 0.2,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 4,
                                  ),
                                  Text("6")
                                ],
                              ),
                              Row(
                                children: [
                                  starWidget(),
                                  starWidget(color: Colors.grey),
                                  starWidget(color: Colors.grey),
                                  starWidget(color: Colors.grey),
                                  starWidget(color: Colors.grey),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Expanded(
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(15),
                                      child: LinearProgressIndicator(
                                        backgroundColor: Colors.grey,
                                        minHeight: 8,
                                        value: 0.0,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 4,
                                  ),
                                  Text("0")
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: Text(
                        "View all reviews",
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.blue),
                            color: Colors.white,
                          ),
                          child: Center(
                            child: Icon(
                              Icons.bookmark_outline_outlined,
                              color: Colors.blue,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Expanded(
                          child: MaterialButton(
                            onPressed: () {},
                            color: Colors.blue,
                            child: Text(
                              "Booking Now",
                              style: TextStyle(color: Colors.white),
                            ),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget starWidget({Color color = Colors.yellow}) {
    return Icon(
      Icons.star,
      size: 12,
      color: color,
    );
  }
}
