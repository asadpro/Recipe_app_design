import 'package:flutter/material.dart';
import 'package:recipe_app_design/article.dart';

class Favourite extends StatefulWidget {
  const Favourite({Key? key}) : super(key: key);

  @override
  State<Favourite> createState() => _FavouriteState();
}

class _FavouriteState extends State<Favourite> {
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
                      Padding(
                          padding: EdgeInsets.only(right: 70.0),
                          child: Text(
                            'Suchi Lunch',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 24.0,
                            ),
                          ))
                    ],
                  ),
                ),
                Center(
                  heightFactor: 2.5,
                  child: Text(
                    'Step 2 of 6',
                    style: TextStyle(
                        color: Colors.deepOrange,
                        fontWeight: FontWeight.bold,
                        fontSize: 22.0),
                  ),
                ),
                Container(
                  height: 200.0,
                  width: double.infinity,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: const [
                      CenterImages(
                        imageName: 'fish',
                      ),
                      SizedBox(
                        width: 40.0,
                      ),
                      CenterImages(
                        imageName: 'rise',
                      ),
                      SizedBox(
                        width: 40.0,
                      ),
                      CenterImages(
                        imageName: 'meat',
                      ),
                    ],
                  ),
                ),
                Text(
                  _articles[0].content,
                  textAlign: TextAlign.center,
                )
              ],
            ),
          ),
        ),
        floatingActionButton: OutlinedButton.icon(
          icon: Icon(Icons.play_circle_outlined),
          onPressed: () {},
          label: Text('Stir for 5 min'),
          style: OutlinedButton.styleFrom(
              primary: Colors.black,
              backgroundColor: Colors.amberAccent,
              fixedSize: Size(200, 60),
              elevation: 20,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0))),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      ),
    );
  }
}

class CenterImages extends StatelessWidget {
  const CenterImages({required this.imageName});
  final String imageName;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: 200.0,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/$imageName.jpg'), fit: BoxFit.cover),
          shape: BoxShape.circle),
    );
  }
}
