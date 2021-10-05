// ignore_for_file: use_key_in_widget_constructors, must_be_immutable
// ignore_for_file: prefer_const_constructors

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final assetImages = [
    "https://i.imgur.com/7fJ8XLE.jpg",
    "https://i.imgur.com/N7zUsni.jpg",
    "https://i.imgur.com/COetQ1V.jpg",
    "https://i.imgur.com/5Q5hWSH.jpg",
    "https://i.imgur.com/rMYMEjp.jpg",
  ];

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Image.asset(
                "assets/LOGO.png",
                height: 60,
                width: 60,
              ),
              buildIntro(),
              SizedBox(
                height: 15,
              ),
              Expanded(
                child: ListView(
                  children: [
                    //for carousel slider
                    CarouselSlider.builder(
                      options: CarouselOptions(
                        height: 260,
                        autoPlay: true,
                        //pageSnapping: false,
                        //enlargeStrategy: CenterPageEnlargeStrategy.height,
                        autoPlayInterval: Duration(seconds: 6),
                        viewportFraction: 1,
                        //enlargeCenterPage: true,
                      ),
                      itemCount: assetImages.length,
                      itemBuilder: (context, index, realIndex) {
                        final assetImage = assetImages[index];
                        return buildImage(assetImage, index);
                      },
                    ),
                    SizedBox(height: 50),
                    Padding(
                        padding: EdgeInsets.only(right: 20),
                        child: RichText(
                          textAlign: TextAlign.end,
                          text: TextSpan(
                            text: "Explore our ",
                            style: TextStyle(fontSize: 25, color: Colors.black),
                            children: const <TextSpan>[
                              TextSpan(
                                text: "destinations",
                                style: TextStyle(
                                  color: Colors.deepOrange,
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            ],
                          ),
                        )),
                    SizedBox(
                      height: 15,
                    ),
                    buildAustralia(context),
                    buildIndia(context),
                    buildThailand(context),
                    Padding(
                        padding: EdgeInsets.only(right: 20),
                        child: RichText(
                          textAlign: TextAlign.end,
                          text: TextSpan(
                            text: "..and many more. ",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.deepOrange,
                                fontWeight: FontWeight.bold),
                            children: const <TextSpan>[
                              TextSpan(
                                text: "Book now!",
                                style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black,
                                ),
                              )
                            ],
                          ),
                        )),
                    SizedBox(
                      height: 10,
                    )
                  ],
                ),
              )
            ]),
      );

//for intro
  Widget buildIntro() {
    return Stack(children: [
      Column(children: const <Widget>[
        Padding(padding: EdgeInsets.only(top: 50)),
        Text.rich(
          TextSpan(
              text: " Welcome,",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 50.0,
                color: Colors.black,
              ),
              children: [
                TextSpan(
                  text: "\n  Let's get started!",
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 40.0,
                  ),
                ),
              ]),
        )
      ]),
    ]);
  }

  //for carousel slider
  Widget buildImage(String assetImage, int index) {
    return Container(
      //margin: EdgeInsets.symmetric(horizontal: 8),
      color: Colors.transparent,
      child: ClipRRect(
        //borderRadius: BorderRadius.circular(20),
        child: FadeInImage.assetNetwork(
          placeholder: "assets/loading.gif",
          image: assetImage,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  //for Australia
  Widget buildAustralia(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 10, right: 10, bottom: 18),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.transparent,
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 2,
                offset: Offset(4, 4),
              )
            ]),
        child: Stack(
          alignment: Alignment.center,
          children: [
            InkWell(
              onTap: () {
                showModalBottomSheet(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.vertical(
                    top: Radius.circular(20),
                  )),
                  context: context,
                  builder: (builder) => australiaSheet(),
                );
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: FadeInImage.assetNetwork(
                    placeholder: "assets/loading.gif",
                    image: "https://i.imgur.com/Ym4dXMX.jpg"),
              ),
            ),
          ],
        ));
  }

  //for cards india
  Widget buildIndia(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 10, right: 10, bottom: 18),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.transparent,
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 2,
                offset: Offset(4, 4),
              )
            ]),
        child: Stack(
          alignment: Alignment.center,
          children: [
            InkWell(
              onTap: () {
                showModalBottomSheet(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.vertical(
                    top: Radius.circular(20),
                  )),
                  context: context,
                  builder: (builder) => indiaSheet(),
                );
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: FadeInImage.assetNetwork(
                    placeholder: "assets/loading.gif",
                    image: "https://i.imgur.com/3wmCBlT.jpg"),
              ),
            ),
          ],
        ));
  }

  Widget buildThailand(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 10, right: 10, bottom: 18),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.transparent,
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 2,
                offset: Offset(4, 4),
              )
            ]),
        child: Stack(
          alignment: Alignment.center,
          children: [
            InkWell(
              onTap: () {
                showModalBottomSheet(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.vertical(
                    top: Radius.circular(20),
                  )),
                  context: context,
                  builder: (builder) => thailandSheet(),
                );
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: FadeInImage.assetNetwork(
                    placeholder: "assets/loading.gif",
                    image: "https://i.imgur.com/kfycTnF.jpg"),
              ),
            ),
          ],
        ));
  }

  Widget australiaSheet() => Container(
      padding: EdgeInsets.all(15),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: const [
          Text(
            "Australia is abundant with unique experiences and awe-inspiring landscapes. There’s a well-known vibrancy in its natural beauty, but don’t forget to seek out its history and culture as well. There's plenty here to inspire your future travel plans so, go on, take a look around and let yourself dream of all the possibilities.",
            style: TextStyle(
              fontSize: 20,
            ),
          ),
        ],
      ));

  Widget indiaSheet() => Container(
      padding: EdgeInsets.all(15),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: const [
          Text(
            "India is on the bucket list for many travelers, and it’s no mystery why! The diverse landscape, colorful festivals, and spicy-hot cuisine are already reasons enough to pack your bags to visit Mumbai or Varanasi.",
            style: TextStyle(
              fontSize: 20,
            ),
          ),
        ],
      ));

  Widget thailandSheet() => Container(
      padding: EdgeInsets.all(15),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: const [
          Text(
            "Thailand is a Southeast Asian country. It's known for tropical beaches, opulent royal palaces, ancient ruins and ornate temples displaying figures of Buddha. In Bangkok, the capital, an ultramodern cityscape rises next to quiet canalside communities and the iconic temples of Wat Arun, Wat Pho and the Emerald Buddha Temple (Wat Phra Kaew).",
            style: TextStyle(
              fontSize: 20,
            ),
          ),
        ],
      ));
}
