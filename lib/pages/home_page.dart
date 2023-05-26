import 'package:flutter/material.dart';

import 'package:second_task/pages/support/helper.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

List<Map> images = [
  {
    "image":
        "https://www.shutterstock.com/image-illustration/hotel-sign-stars-3d-illustration-260nw-195879770.jpg",
    "name": "Hotel"
  },
  {
    "image":
        "https://images.unsplash.com/photo-1542296332-2e4473faf563?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8aW5kaWElMjBhaXJwb3J0fGVufDB8fDB8fA%3D%3D&w=1000&q=80",
    "name": "Pesawat"
  },
  {
    "image":
        "https://www.india.com/wp-content/uploads/2021/01/mumbai-local-train.jpg",
    "name": "Kerala Api"
  },
  {
    "image": "https://wallpapercave.com/wp/wp6564864.jpg",
    "name": "Bus & Travel"
  },
  {
    "image":
        "https://static.india.com/wp-content/uploads/2021/09/periyar-national-park-IndiainZimbabwe-Twitter-1200.jpg",
    "name": "parks"
  },
  {
    "image":
        "https://assets.traveltriangle.com/blog/wp-content/uploads/2019/01/Niraamaya-Retreats-Surya-Samudra0310.jpg",
    "name": "Resorts"
  },
  {
    "image":
        "https://img.etimg.com/thumb/width-1200,height-900,imgsize-1762803,resizemode-1,msid-69389799/news/politics-and-nation/what-makes-temple-elephants-so-popular-in-kerala.jpg",
    "name": "Temple"
  },
  {
    "image":
        "https://prd.kerala.gov.in/sites/default/files/inline-images/tagoretheatre.jpg",
    "name": "Auditorium"
  },
  {
    "image":
        "https://assets.traveltriangle.com/blog/wp-content/uploads/2019/01/Niraamaya-Retreats-Surya-Samudra0310.jpg",
    "name": "Resorts"
  },
  {
    "image": "https://wallpapercave.com/wp/wp6564864.jpg",
    "name": "Bus & Travel"
  },
  {
    "image":
        "https://www.shutterstock.com/image-illustration/hotel-sign-stars-3d-illustration-260nw-195879770.jpg",
    "name": "Hotel"
  },
  {
    "image":
        "https://img.etimg.com/thumb/width-1200,height-900,imgsize-1762803,resizemode-1,msid-69389799/news/politics-and-nation/what-makes-temple-elephants-so-popular-in-kerala.jpg",
    "name": "Temple"
  },
];

List<Map> data2 = [
  {
    "image":
        "https://thumbs.dreamstime.com/b/dreamland-tuscany-tree-field-milky-way-europe-107866891.jpg",
    "title": "Dream Land",
    "location": "Milango,jepara",
    "amount": "500.00"
  },
  {
    "image":
        "https://static.wikia.nocookie.net/kirby/images/8/8e/KRtDL_Dream_Land.png/revision/latest?cb=20111002085713&path-prefix=en",
    "title": "Dream Land",
    "location": "juanda,Bekasi",
    "amount": "200.000"
  },
  {
    "image":
        "https://mkpcdn.com/1000x/bc74d0ae1e29be7cf84a0505ae0919f5_296175.jpg",
    "title": "ngf",
    "location": "hds",
    "amount": "34.00"
  },
  {
    "image":
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSuMKyN-mOkFx3HFvFLKya_mrkt1qg0vIclRLOGF7_gQlpCQko4F_yGXuOe7uQsapBgWdtXLkcmA3w&usqp=CAU&ec=48600113",
    "title": "gf Land",
    "location": "kdsh,nd",
    "amount": "523.80"
  },
  {
    "image": "https://i.ytimg.com/vi/xPlAAkbvIQU/maxresdefault.jpg",
    "title": "huf Land",
    "location": "bvfdskja",
    "amount": "643.00"
  },
];

class _HomePageState extends State<HomePage> {
  int imageIndex = 0;
  int lengthList = 0;

  final String blueBg =
      "https://static.vecteezy.com/system/resources/thumbnails/003/127/954/small/abstract-template-blue-background-white-squares-free-vector.jpg";

  List<List<Map>> getImageList(double padding, double itemWidth) {
    double siZe = MediaQuery.of(context).size.width;
    final int totalImage = (siZe / (itemWidth + padding)).round();
    final int pageCount = (images.length / totalImage).ceil();
    List<List<Map>> list = [];
    int imageIndex = 0;
    for (int i = 0; i < pageCount; i++) {
      List<Map> data = [];
      for (int k = 0; k < totalImage && imageIndex < images.length; k++) {
        data.add(images[imageIndex]);
        imageIndex++;
      }
      list.add(data);
    }
    return list;
  }

  @override
  Widget build(BuildContext context) {
    double siZe = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height - 70,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(blueBg), fit: BoxFit.cover),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 30,
                        ),
                        const Text(
                          "Halo Samantha",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          "Mau Pergi\nKemana?",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 28,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: const BorderSide(color: Colors.white),
                            ),
                            filled: true,
                            fillColor: Colors.white,
                            prefixIcon: const Icon(Icons.search),
                            hintText: "wisanta . . .",
                            suffixIcon: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                CircleAvatar(
                                  radius: 18,
                                  child: Icon(Icons.shop),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(40),
                        ),
                        color: Colors.grey.shade100,
                      ),
                      child: Column(
                        children: [
                          Builder(builder: (context) {
                            final double itemWidth = siZe * 0.2;
                            const double padding = 12;
                            final list = getImageList(padding, itemWidth);
                            return Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 115,
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 10),
                                  child: PageView.builder(
                                    scrollDirection: Axis.horizontal,
                                    itemCount: list.length,
                                    onPageChanged: (index) {
                                      imageIndex = index;
                                      setState(() {});
                                    },
                                    itemBuilder: (c, index) {
                                      final subList = list[index];
                                      return ListView.separated(
                                        scrollDirection: Axis.horizontal,
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 15),
                                        separatorBuilder: (c, i) => SizedBox(
                                          width: padding,
                                        ),
                                        itemCount: subList.length,
                                        itemBuilder: (c, i) {
                                          final data = subList[i];
                                          return SizedBox(
                                            width: itemWidth,
                                            child: ImageWidget(
                                              image: data['image'],
                                              name: data['name'],
                                            ),
                                          );
                                        },
                                      );
                                    },
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                  width: double.infinity,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      ListView.separated(
                                        padding: EdgeInsets.zero,
                                        shrinkWrap: true,
                                        scrollDirection: Axis.horizontal,
                                        itemCount: list.length,
                                        separatorBuilder: (c, i) =>
                                            const SizedBox(
                                          width: 3,
                                        ),
                                         itemBuilder: (c, index) {
                                          final bool isCurrent =
                                              imageIndex == index;
                                          return CircleAvatar(
                                            backgroundColor: isCurrent
                                                ? Colors.black
                                                : Colors.black45,
                                            radius: 3,
                                          );
                                        },
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            );
                          }),
                          const SizedBox(
                            height: 20,
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  "Tempat popular",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Row(
                                  children: const [
                                    Text(
                                      "See all",
                                      style: TextStyle(
                                        color: Colors.blue,
                                      ),
                                    ),
                                    Icon(
                                      Icons.arrow_forward,
                                      size: 20,
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Expanded(
                            child: ListView.separated(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8),
                              itemCount: data2.length,
                              scrollDirection: Axis.horizontal,
                              separatorBuilder: (c, i) => const SizedBox(
                                width: 5,
                              ),
                              itemBuilder: (c, index) {
                                return InkWell(
                                  onTap: () {
                                    // Navigator.push(context,
                                    //     MaterialPageRoute(builder: (c) {
                                    //   return SecondPage();
                                    // }));
                                  },
                                  child: Container(
                                    width:
                                        MediaQuery.of(context).size.width * 0.6,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Colors.white,
                                    ),
                                    child: Column(
                                      children: [
                                        Stack(
                                          children: [
                                            ClipRRect(
                                              borderRadius:
                                                  const BorderRadius.only(
                                                topLeft: Radius.circular(15),
                                                topRight: Radius.circular(15),
                                              ),
                                              child: Image.network(
                                                data2[index]["image"],
                                                fit: BoxFit.cover,
                                                height: 80,
                                                width: double.infinity,
                                              ),
                                            ),
                                            const Positioned(
                                              top: 10,
                                              right: 10,
                                              child: CircleAvatar(
                                                child: Icon(
                                                  Icons.bookmark,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Container(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 10, vertical: 5),
                                          child: Column(
                                            children: [
                                              Text(data2[index]['title']),
                                              Row(
                                                children: [
                                                  const Icon(Icons
                                                      .location_on_outlined),
                                                  const SizedBox(
                                                    width: 4,
                                                  ),
                                                  Text(
                                                      data2[index]['location']),
                                                  const SizedBox(
                                                    height: 4,
                                                  ),
                                                  Text(
                                                      "IDR ${data2[index]['amount']}"),
                                                ],
                                              )
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

// final border = OutlineInputBorder(
//   borderRadius: BorderRadius.circular(20),
//   borderSide: BorderSide(color: Colors.white),
// );
}
