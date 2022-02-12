import 'package:flutter/material.dart';
import 'package:recipe_app_design/article.dart';

class Explore extends StatelessWidget {
  Explore({Key? key}) : super(key: key);
  final emojiText = TextStyle(fontWeight: FontWeight.bold);
  final List<Article> _articles = articles;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 13.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 0.0, vertical: 12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RawMaterialButton(
                        shape: CircleBorder(
                          side: BorderSide(color: Color(0xffd3def0)),
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Icon(Icons.chevron_left_outlined),
                        ),
                      ),
                      RawMaterialButton(
                        shape: CircleBorder(
                          side: BorderSide(color: Color(0xffd3def0)),
                        ),
                        onPressed: () {},
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Icon(
                            Icons.book_outlined,
                            color: Colors.deepOrange,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Center(
                  child: Card(
                    shape: CircleBorder(),
                    elevation: 80.0,
                    child: CircleAvatar(
                      backgroundImage: AssetImage('images/sushi3.jpg'),
                      radius: 120.0,
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Suchi-lunch',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 28.0),
                    ),
                    SizedBox(
                      height: 12.0,
                    ),
                    Row(
                      children: const [
                        Text('by '),
                        CircleAvatar(
                          backgroundImage: AssetImage('images/2.jpg'),
                        ),
                        Text(
                          ' Chef Alex',
                        )
                      ],
                    ),
                    SizedBox(
                      height: 22.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('⭐ 4.3', style: emojiText),
                        Text('🔥 98 Calories', style: emojiText),
                        Text('⏰ 2.2 hours', style: emojiText),
                      ],
                    ),
                    SizedBox(
                      height: 12.0,
                    ),
                    Text(
                      'Details',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 18.0),
                    ),
                    SizedBox(
                      height: 12.0,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: _articles
                          .map(
                            (item) => Text(
                              '${item.heading}\n${item.content}',
                              style: TextStyle(overflow: TextOverflow.fade),
                              textAlign: TextAlign.justify,
                            ),
                          )
                          .toList(),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
        floatingActionButton: OutlinedButton(
          onPressed: () {},
          child: Text('Start Cooking'),
          style: OutlinedButton.styleFrom(
              primary: Colors.black,
              backgroundColor: Colors.amberAccent,
              fixedSize: Size(150, 50),
              elevation: 20,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0))),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      ),
    );
  }
}
