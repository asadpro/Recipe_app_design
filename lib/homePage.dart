import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Color(0xffedeff2),
          body: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 4,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text('Good Morning,'),
                            Text(
                              'Saber Ali',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 28.0),
                              textAlign: TextAlign.start,
                            ),
                          ],
                        ),
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
                      Text(
                        'See all',
                        style: TextStyle(
                            color: Colors.deepOrange,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Container(
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
                  padding: const EdgeInsets.all(22.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'Popular Recipe',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 24.0),
                      ),
                      Text(
                        'See all',
                        style: TextStyle(
                            color: Colors.deepOrange,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 22.0,
                ),
                Stack(
                  children: [
                    Container(
                      height: 220.0,
                      width: 150,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(23.0),
                      ),
                    ),
                    Positioned(
                      top: -10,
                      child: CircleAvatar(
                        backgroundImage: AssetImage('images/sushi.jpg'),
                        radius: 70,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          bottomNavigationBar: Container(
            height: 80.0,
            child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              items: const [
                BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.explore_outlined), label: 'Explore'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.favorite_border_outlined),
                    label: 'Favourite'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.person_outlined), label: 'Profile'),
              ],
            ),
          )),
    );
  }
}

Widget buildCard({required int imageNo, required String text}) => Container(
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

// class AddingAvatar extends StatelessWidget {
//   const AddingAvatar({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Column(
//         children: [
//           CircleAvatar(
//             backgroundImage: AssetImage('images/2.jpg'),
//             radius: 50,
//           ),
//           Text('data')
//         ],
//       ),
//     );
//   }
// }
