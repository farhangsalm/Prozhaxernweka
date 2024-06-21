import 'package:flutter/material.dart';
import 'package:flutter_application_1/design.dart';
import 'package:flutter_application_1/gshti/colorkan.dart';
import 'package:flutter_application_1/gshti/gashti.dart';
import 'package:flutter_application_1/gshti/product.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class productcard extends StatelessWidget {
  const productcard({
    Key? key,
    required this.size,
    required this.itemIndex,
    required this.product,
    required Null Function() press,
  }) : super(key: key);

  final Size size;
  final int itemIndex;
  final Product product;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: PADING,
        vertical: PADING / 1,
      ),
      height: 160,
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ProductDetailsPage(product: product),
            ),
          );
        },
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            FrostedGlassBox(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22),
                color: itemIndex.isEven ? MOR : AWE,
                boxShadow: [KBSHADOW],
              ),
              theWidth: 600.0,
              theHeight: 400.0,
              theChild: FrostedGlassBox(
                margin: const EdgeInsets.only(right: 8),
                decoration: BoxDecoration(
                  color: Colors.white54,
                  borderRadius: BorderRadius.circular(22),
                ),
                theWidth: 0.0,
                theHeight: 0.0,
                theChild: null,
              ),
              margin: const EdgeInsets.all(0.0),
            ),
            Positioned(
              top: 25,
              right: 25,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: PADING / 2),
                height: 100,
                width: 100,
                child: Image.asset(
                  product.image,
                  fit: BoxFit.cover,
                ),
                decoration: BoxDecoration(
                  color: WITH1,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              child: SizedBox(
                height: 136,
                width: size.width - 200,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: PADING),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * 0.8,
                        child: Text(
                          textAlign: TextAlign.center,
                          product.name,
                          style: const TextStyle(
                            color: AWE,
                            fontFamily: 'kurdish',
                            fontSize: 17,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: PADING),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * 0.8,
                        child: Text(
                          textAlign: TextAlign.center,
                          product.publisher,
                          style: const TextStyle(
                            color: ORANG1,
                            fontFamily: 'kurdishreg',
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),
                    const Spacer(),
                    Center(
                      child: Container(
                        height: 30,
                        width: double.infinity,
                        padding: const EdgeInsets.symmetric(
                          horizontal: PADING * 1.5,
                          vertical: PADING / 4,
                        ),
                        decoration: const BoxDecoration(
                          color: ORANG1,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(22),
                            bottomRight: Radius.circular(22),
                          ),
                        ),
                        child: Text(
                          textAlign: TextAlign.center,
                          product.total,
                          style: const TextStyle(
                            color: Colors.black,
                            fontFamily: 'kurdish',
                            fontSize: 17,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProductDetailsPage extends StatefulWidget {
  const ProductDetailsPage({Key? key, required this.product}) : super(key: key);
  final Product product;

  @override
  State<ProductDetailsPage> createState() => _ColorKanState();
}

class _ColorKanState extends State<ProductDetailsPage> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();

    _controller = YoutubePlayerController(

      initialVideoId: widget.product.video2, // Replace with your video ID
      flags: YoutubePlayerFlags(
       
        autoPlay: true,
        mute: false,
        isLive: true,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(130, 80, 90, 90),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Color.fromARGB(115, 34, 33, 33),
        title: IconButton(
          onPressed: () {
            gshti();
            Navigator.of(context).pop();
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white60,
            size: 30,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            height: 350,
            decoration: BoxDecoration(
              color: rash,
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(50),
                bottomLeft: Radius.circular(50),
              ),
            ),
            child: Stack(
              children: [
                Positioned(
                  top: 0,
                  right: 0,
                  left: 0,
                  child: Column(
                    children: [
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              margin: EdgeInsets.symmetric(
                                horizontal: 70,
                                vertical: 30,
                              ),
                              padding: EdgeInsets.symmetric(
                                horizontal: 10,
                                vertical: 0,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: rash,
                                    blurRadius: 7,
                                    spreadRadius: 0.5,
                                  ),
                                ],
                              ),
                              child: Image.asset(
                                widget.product.image,
                                width: 200,
                                height: 200,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            margin: EdgeInsets.fromLTRB(20, 15, 0, 10),
            child: Text(
              widget.product.publisher,
              style: TextStyle(fontFamily: "kurdish", color: Colors.white),
            ),
          ),
          Expanded(
            child: YoutubePlayerBuilder(
              player: YoutubePlayer(
                controller: _controller,
                showVideoProgressIndicator: true,
                progressIndicatorColor: Colors.amber,
                progressColors: ProgressBarColors(
                  playedColor: Colors.amber,
                  handleColor: Colors.amber,
                ),
              ),
              builder: (context, player) {
                return Column(
                  children: [
                    player,
                    // Add additional widgets here if needed
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}
