import 'package:flutter/material.dart';
import 'chats.dart';

class Message extends StatefulWidget {
  @override
  _MessageState createState() => _MessageState();
}

class _MessageState extends State<Message> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: getBody(),
    );
  }

  Widget getBody() {
    return SafeArea(
      child: Column(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Center(
                  child: Text(
                    "Messages",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).accentColor),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Divider(
                color: Theme.of(context).accentColor.withOpacity(0.5),
                thickness: 1,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8, top: 0, right: 8),
                child: Container(
                  height: 38,
                  decoration: BoxDecoration(
                      color: Theme.of(context).accentColor.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(5)),
                  child: TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.black,
                        ),
                        hintText: "Search  Matches"),
                  ),
                ),
              ),
              Divider(
                color: Theme.of(context).accentColor.withOpacity(0.5),
                thickness: 1,
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Text(
                  "New Matches",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: Theme.of(context).accentColor),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Row(
                      children: List.generate(chats.length, (index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Column(
                        children: <Widget>[
                          Container(
                            width: 70,
                            height: 70,
                            child: Stack(
                              children: <Widget>[
                                chats[index]['story']
                                    ? Container(
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            border: Border.all(
                                                color: Colors.orange[600],
                                                width: 3)),
                                        child: Padding(
                                          padding: const EdgeInsets.all(1.5),
                                          child: Container(
                                            width: 70,
                                            height: 70,
                                            decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                image: DecorationImage(
                                                    image: AssetImage(
                                                        chats[index]['img']),
                                                    fit: BoxFit.cover)),
                                          ),
                                        ),
                                      )
                                    : Container(
                                        width: 65,
                                        height: 65,
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    chats[index]['img']),
                                                fit: BoxFit.cover)),
                                      ),
                                chats[index]['online']
                                    ? Positioned(
                                        top: 52,
                                        left: 54,
                                        child: Container(
                                          width: 15,
                                          height: 15,
                                          decoration: BoxDecoration(
                                              color: Colors.green,
                                              shape: BoxShape.circle,
                                              border: Border.all(
                                                  color: Colors.white,
                                                  width: 1)),
                                        ),
                                      )
                                    : Container()
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          SizedBox(
                            width: 60,
                            child: Align(
                                child: Text(
                              chats[index]['name'],
                              overflow: TextOverflow.ellipsis,
                            )),
                          )
                        ],
                      ),
                    );
                  })),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                height: 443,
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Column(
                      children: List.generate(userMessages.length, (index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: Container(
                            decoration: BoxDecoration(
                                border:
                                    Border.all(width: 1, color: Colors.black54),
                                borderRadius: BorderRadius.circular(15),
                                color: Theme.of(context)
                                    .accentColor
                                    .withOpacity(0.2)),
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 2.5),
                              child: Row(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(left: 5.0),
                                    child: Container(
                                      width: 70,
                                      height: 70,
                                      child: Stack(
                                        children: <Widget>[
                                          userMessages[index]['story']
                                              ? Container(
                                                  decoration: BoxDecoration(
                                                      shape: BoxShape.circle,
                                                      border: Border.all(
                                                          color: Colors
                                                              .orange[600],
                                                          width: 3)),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            1.0),
                                                    child: Container(
                                                      width: 70,
                                                      height: 70,
                                                      decoration: BoxDecoration(
                                                          shape:
                                                              BoxShape.circle,
                                                          image: DecorationImage(
                                                              image: AssetImage(
                                                                  userMessages[
                                                                          index]
                                                                      ['img']),
                                                              fit: BoxFit
                                                                  .cover)),
                                                    ),
                                                  ),
                                                )
                                              : Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 5.0,
                                                          top: 2,
                                                          bottom: 2),
                                                  child: Container(
                                                    width: 65,
                                                    height: 65,
                                                    decoration: BoxDecoration(
                                                        shape: BoxShape.circle,
                                                        image: DecorationImage(
                                                            image: AssetImage(
                                                                userMessages[
                                                                        index]
                                                                    ['img']),
                                                            fit: BoxFit.cover)),
                                                  ),
                                                ),
                                          userMessages[index]['online']
                                              ? Positioned(
                                                  top: 52,
                                                  left: 54,
                                                  child: Container(
                                                    width: 15,
                                                    height: 15,
                                                    decoration: BoxDecoration(
                                                        color: Colors.green,
                                                        shape: BoxShape.circle,
                                                        border: Border.all(
                                                            color: Colors.white,
                                                            width: 1)),
                                                  ),
                                                )
                                              : Container()
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(7),
                                      color: Theme.of(context)
                                          .accentColor
                                          .withOpacity(0.07),
                                    ),
                                    height: 60,
                                    child: Padding(
                                      padding: const EdgeInsets.all(7.0),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text(
                                            userMessages[index]['name'],
                                            style: TextStyle(
                                                fontSize: 17,
                                                fontWeight: FontWeight.w500),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width -
                                                140,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Container(
                                                  width: 170,
                                                  child: Text(
                                                    userMessages[index]
                                                        ['message'],
                                                    style: TextStyle(
                                                        fontSize: 15,
                                                        color: Colors.black
                                                            .withOpacity(0.8)),
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                  ),
                                                ),
                                                Container(
                                                  width: 80,
                                                  child: Text(
                                                    " - " +
                                                        userMessages[index]
                                                            ['created_at'],
                                                    style: TextStyle(
                                                        fontSize: 15,
                                                        color: Colors.black
                                                            .withOpacity(0.8)),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        );
                      }),
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
