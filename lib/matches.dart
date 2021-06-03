import 'package:flutter/material.dart';
import 'package:flutter_tindercard/flutter_tindercard.dart';
import 'data/info.dart';
import 'data/mainIcon.dart';

class Matchs extends StatefulWidget {
  @override
  _MatchsState createState() => _MatchsState();
}

class _MatchsState extends State<Matchs> {
  List matches;
  int matchsLength = 0;
  CardController controller;
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
    return Scaffold(
      bottomSheet: getBottomSheet(),
      body: getBody(),
    );
  }

  // ignore: missing_return
  Widget getBody() {
    return Container(
      color: Theme.of(context).primaryColor,
      child: Padding(
        padding: const EdgeInsets.only(top: 30, bottom: 130),
        child: TinderSwapCard(
          totalNum: matchsLength,
          maxHeight: MediaQuery.of(context).size.height * 0.75,
          maxWidth: MediaQuery.of(context).size.width,
          minHeight: MediaQuery.of(context).size.height * 0.6,
          minWidth: MediaQuery.of(context).size.width * 0.75,
          orientation: AmassOrientation.BOTTOM, stackNum: 2,
          // swipeEdge: 1.0,
          animDuration: 100,

          cardController: controller = CardController(),
          swipeUpdateCallback: (DragUpdateDetails details, Alignment align) {
            if (align.x < 0) {
              Text('nope');
            } else if (align.x < 0) {
              Text('nope');
            }
          },
          swipeCompleteCallback:
              (CardSwipeOrientation orientation, int index) {},
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
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Row(
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width * 0.67,
                                child: Column(
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
                                                padding: const EdgeInsets.only(
                                                  left: 3,
                                                ),
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    border: Border.all(
                                                        width: 1,
                                                        color: Colors.white),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            30),
                                                    color: Colors.white
                                                        .withOpacity(0.45),
                                                  ),
                                                  child: Padding(
                                                    padding: const EdgeInsets
                                                            .symmetric(
                                                        vertical: 3,
                                                        horizontal: 10),
                                                    child: Text(
                                                      ' ${matches[index]["likes"][index]} ',
                                                      style: TextStyle(
                                                          color: Colors.white),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  child: Center(
                                    child: Icon(
                                      Icons.info,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              )
                            ],
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
        ),
      ),
    );
  }

  Widget getBottomSheet() {
    List<Widget> buttonsList;
    var size = MediaQuery.of(context).size;
    buttonsList = List.generate(
      item_icons.length,
      (index) {
        return Container(
          width: item_icons[index]['size'],
          height: item_icons[index]['size'],
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColorLight,
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: Theme.of(context).accentColor.withOpacity(0.4),
                blurRadius: 10,
                spreadRadius: 5,
              ),
            ],
          ),
          child: Center(
            child: Image.asset(
              item_icons[index]['icon'],
              width: item_icons[index]['icon_size'],
            ),
          ),
        );
      },
    );
    return Container(
      width: size.width,
      height: 120,
      decoration: BoxDecoration(color: Theme.of(context).primaryColor),
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          buttonsList[0],
          buttonsList[1],
          buttonsList[2],
          buttonsList[3],
          buttonsList[4],
        ]),
      ),
    );
  }
}
