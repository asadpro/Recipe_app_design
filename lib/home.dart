import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffedeff2),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 0.0, vertical: 6.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text('Good Morning,'),
                          Text(
                            'Saber Ali',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 28.0),
                          ),
                        ],
                      ),
                      RawMaterialButton(
                        shape: CircleBorder(
                          side: BorderSide(color: Colors.grey),
                        ),
                        onPressed: () {},
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Icon(Icons.notifications_outlined),
                        ),
                      ),
                    ],
                  ),
                ),
                ListTile(
                  leading: Icon(
                    Icons.search,
                    color: Colors.black,
                  ),
                  title: Text(
                    'Search foods,chefs..',
                    style: TextStyle(color: Colors.grey),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                    side: BorderSide(
                      color: Colors.black,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 23.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'Best Chefs',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 24.0),
                      ),
                      SeeAll(),
                    ],
                  ),
                ),
                SizedBox(
                  height: 150.0,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      buildCard(imageNo: 1, text: 'Muhib'),
                      buildCard(imageNo: 2, text: 'Asad'),
                      buildCard(imageNo: 3, text: 'Hamza'),
                      buildCard(imageNo: 4, text: 'Abid'),
                      buildCard(imageNo: 5, text: 'Salim'),
                      buildCard(imageNo: 6, text: 'Haneef'),
                      buildCard(imageNo: 7, text: 'Sulaiman'),
                      buildCard(imageNo: 8, text: 'Sajad'),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 23.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'Popular Recipe',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 24.0),
                      ),
                      SeeAll(),
                    ],
                  ),
                ),
                SizedBox(
                  height: 240.0,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: const [
                      RecipeList(
                        image: 'images/sushi.jpg',
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      RecipeList(
                        image: 'images/sushi2.jpg',
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      RecipeList(
                        image: 'images/sushi.jpg',
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      RecipeList(
                        image: 'images/sushi2.jpg',
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SeeAll extends StatelessWidget {
  const SeeAll({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => showDialog(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          title: Text(
            'Progress',
          ),
          content: Text('This inkwell is in progress'),
          actions: [
            ElevatedButton.icon(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.cancel),
              label: Text('Cancel'),
            ),
          ],
        ),
      ),
      child: Text(
        'See all',
        style: TextStyle(color: Colors.deepOrange, fontWeight: FontWeight.bold),
      ),
    );
  }
}

class RecipeList extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const RecipeList({required this.image});
  final String image;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 250.0,
          width: 150,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(23.0),
          ),
        ),
        Positioned(
          top: -5,
          left: 5,
          child: Card(
            shape: CircleBorder(),
            elevation: 33.0,
            child: CircleAvatar(
              backgroundImage: AssetImage(image),
              radius: 70,
            ),
          ),
        ),
        Positioned(
          bottom: 22.0,
          left: 30.0,
          child: Column(
            children: const [
              Positioned(
                  bottom: 80,
                  left: 10,
                  child: Text(
                    'Sushi-lunch',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
                  )),
              Positioned(
                bottom: 60,
                left: 10,
                child: Text(
                  'Chef Alex  Costa',
                  style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontSize: 12.0),
                ),
              ),
              Positioned(
                bottom: 40,
                left: 10,
                child: Text(
                  '🔥 98 Calories',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 11.0,
                      color: Colors.deepOrange),
                ),
              ),
            ],
          ),
        ),
        Positioned(
          bottom: -10,
          left: 25,
          child: TextButton.icon(
            style: TextButton.styleFrom(
                backgroundColor: Colors.amber,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0))),
            onPressed: () {},
            icon: Icon(
              Icons.play_circle_filled_outlined,
              color: Colors.black,
            ),
            label: Text(
              'Let\'s try',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 14.9),
            ),
          ),
        )
      ],
    );
  }
}

Widget buildCard({required int imageNo, required String text}) => SizedBox(
      child: Column(
        children: [
          CircleAvatar(
            foregroundImage: AssetImage('images/$imageNo.jpg'),
            radius: 50,
          ),
          Text(
            text,
            style: TextStyle(fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
