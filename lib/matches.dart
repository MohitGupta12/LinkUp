import 'package:flutter/material.dart';
import 'package:flutter_tindercard/flutter_tindercard.dart';
import 'data/info.dart';

class Matchs extends StatefulWidget {
  @override
  _MatchsState createState() => _MatchsState();
}

class _MatchsState extends State<Matchs> {
  List matches;
  int matchsLength = 0;

  @override
  void initState() {
    super.initState();
    setState(() {
      matches = explore;
      matchsLength = explore.length;
    });
  }

  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    CardController controller;
    return Scaffold(
        body: Container(
      color: Theme.of(context).primaryColor,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 50),
        child: TinderSwapCard(
          totalNum: matchsLength,
          maxHeight: MediaQuery.of(context).size.height * 0.75,
          maxWidth: MediaQuery.of(context).size.width,
          minHeight: MediaQuery.of(context).size.height * 0.6,
          minWidth: MediaQuery.of(context).size.width * 0.75,
          cardBuilder: (context, index) => Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      blurRadius: 5,
                      spreadRadius: 2)
                ]),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Stack(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(matches[index]["img"]),
                            fit: BoxFit.cover)),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [
                            Colors.black.withOpacity(0.35),
                            Colors.white.withOpacity(0.25)
                          ],
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter),
                    ),
                    child: Row(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.72,
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      matches[index]["name"],
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 24,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Text(
                                      matches[index]["age"],
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 22,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  matches[index]["designation"],
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                (matches[index]["mutual friends"] != "0")
                                    ? Text(
                                        ' ${matches[index]["mutual friends"]} Mutual friends',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                        ),
                                      )
                                    : Row(
                                        children: List.generate(
                                            matches[index]["likes"].length,
                                            (index) => Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                    left: 3,
                                                  ),
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                        border: Border.all(
                                                            width: 1,
                                                            color: Theme.of(
                                                                    context)
                                                                .primaryColorLight),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(30),
                                                        color: Colors.white
                                                            .withOpacity(0.45)),
                                                    child: Padding(
                                                      padding: const EdgeInsets
                                                              .symmetric(
                                                          vertical: 3,
                                                          horizontal: 10),
                                                      child: Text(
                                                        ' ${matches[index]["likes"][index]} ',
                                                        style: TextStyle(
                                                            color: Theme.of(
                                                                    context)
                                                                .primaryColorLight),
                                                      ),
                                                    ),
                                                  ),
                                                )),
                                      )
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
            //  Card(
            //   child: Image.asset('${cardImages[index]}'),
            // ),
          ),

          orientation: AmassOrientation.BOTTOM, stackNum: 2,
          // swipeEdge: 1.0,
          animDuration: 100,

          cardController: controller = CardController(),
          swipeUpdateCallback: (DragUpdateDetails details, Alignment align) {
            if (align.y < 0) {
            } else if (align.y < 0) {}
          },
          swipeCompleteCallback:
              (CardSwipeOrientation orientation, int index) {},
        ),
      ),
    ));
  }
}
