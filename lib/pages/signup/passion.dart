import 'package:flutter/material.dart';
import 'package:tinder/pages/rootpage.dart';
import 'package:tinder/pages/signup/uniName.dart';
import 'package:tinder/widget/gradientText.dart';
import '../../widget/graidentButton.dart';
import '../../widget/hobbies.dart';

class PassionPage extends StatefulWidget {
  @override
  _PassionPageState createState() => _PassionPageState();
}

class _PassionPageState extends State<PassionPage> {
  bool colorValue;
  int count;

  // int _count;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.white24,
        elevation: 0.0,
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).pushReplacement(
                new MaterialPageRoute(builder: (context) => UniName()));
          },
          child: Icon(
            Icons.arrow_back_ios_rounded,
            color: Theme.of(context).accentColor,
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Passion',
              style: TextStyle(fontSize: 50),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
                'Lets everyone know wht you\'re passionate about by adding it to your profile.'),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 530,
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(),
                      child: Container(
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Hobbies('Travel'),
                              Hobbies('Netflix'),
                              Hobbies('Twitch'),
                              Hobbies('Walk')
                            ]),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(),
                      child: Container(
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Hobbies('90\'s Kid'),
                              Hobbies('Anime'),
                              Hobbies('Dog lover'),
                            ]),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(),
                      child: Container(
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Hobbies('Hikking'),
                              Hobbies('Fashion'),
                              Hobbies('House Parties'),
                            ]),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(),
                      child: Container(
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Hobbies('DIy'),
                              Hobbies('Genshin Impact'),
                              Hobbies('Art'),
                            ]),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(),
                      child: Container(
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Hobbies('Musician'),
                              Hobbies('Board games'),
                              Hobbies('Brunch'),
                            ]),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(),
                      child: Container(
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Hobbies('Museum'),
                              Hobbies('Festivals'),
                              Hobbies('Tea'),
                              Hobbies('Golf')
                            ]),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(),
                      child: Container(
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Hobbies('Disney'),
                              Hobbies('Gamer'),
                              Hobbies('Cat lover'),
                            ]),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(),
                      child: Container(
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Hobbies('Running'),
                              Hobbies('Music'),
                              Hobbies('Triva'),
                              Hobbies('Yoga')
                            ]),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(),
                      child: Container(
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Hobbies('Photography'),
                              Hobbies('Vlogging'),
                              Hobbies('Hip Hop'),
                            ]),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(),
                      child: Container(
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Hobbies('Triva'),
                              Hobbies('Cricket'),
                              Hobbies('Wine'),
                              Hobbies('Coffee')
                            ]),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(),
                      child: Container(
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Hobbies('Maggi'),
                              Hobbies('Volunterring '),
                              Hobbies('Vegan'),
                            ]),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(),
                      child: Container(
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Hobbies('Cat Lover'),
                              Hobbies('Politics'),
                              Hobbies('Working out'),
                            ]),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(),
                      child: Container(
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Hobbies('PotterHead'),
                              Hobbies('Karaoke'),
                              Hobbies('Reading'),
                            ]),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(),
                      child: Container(
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Hobbies('Slam Poetry'),
                              Hobbies('Foodie'),
                              Hobbies('Sushi'),
                            ]),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(),
                      child: Container(
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Hobbies('Stand-up Comedy'),
                              Hobbies('Outdoors'),
                            ]),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(),
                      child: Container(
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Hobbies('Actism'),
                              Hobbies('Fishing'),
                              Hobbies('Spirituality'),
                            ]),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(),
                      child: Container(
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Hobbies('Sports'),
                              Hobbies('Surfing'),
                              Hobbies('Soccer'),
                            ]),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(),
                      child: Container(
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Hobbies('Environmentalism'),
                              Hobbies('Astrology'),
                            ]),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(),
                      child: Container(
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Hobbies('Movies'),
                              Hobbies('Instagarm'),
                              Hobbies('Poetry'),
                            ]),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            RaisedGradientButton(
              child: GradientText(
                colorValue,
                'CONTINUE',
              ),
              isActive: true,
              radius: BorderRadius.circular(25),
              gradient1: LinearGradient(colors: [
                Color(0XFFFD297B),
                Color(0XFFFF5864),
                Color(0XFFdf5f23)
              ], begin: Alignment.bottomLeft, end: Alignment.topRight),
              onPressed1: () {
                Navigator.of(context).pushReplacement(
                    new MaterialPageRoute(builder: (context) => RootPage()));
              },
            )
          ],
        ),
      ),
    );
  }
}
