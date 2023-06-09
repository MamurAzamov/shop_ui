import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  static final String id = 'home_page';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> _listItem = [
    'assets/images/image_1.jpeg',
    'assets/images/image_2.jpg',
    'assets/images/image_3.png',
    'assets/images/image_4.jpg',
    'assets/images/image_5.jpg',
    'assets/images/image_1.jpeg',
    'assets/images/image_2.jpg',
    'assets/images/image_3.png',
    'assets/images/image_4.jpg',
    'assets/images/image_5.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrangeAccent,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.deepOrangeAccent,
        leading: Icon(Icons.menu),
        title: Text("Apple Products"),
        actions: [
          Padding(
              padding: EdgeInsets.all(10),
            child: Container(
              width: 36,
              height: 30,
              decoration: BoxDecoration(
                color: Colors.yellow[700],
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Center(
                child: Text("7"),
              ),
            ),
          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 220,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: const DecorationImage(
                  image: AssetImage("assets/images/image_4.jpg"),
                  fit: BoxFit.cover
                ),
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(
                    begin: Alignment.bottomRight,
                    colors: [
                      Colors.black.withOpacity(.3),
                      Colors.black.withOpacity(.01),
                    ]),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("Lifestyle sale", style: TextStyle(color: Colors.white, fontSize: 36),),
                    SizedBox(height: 30,),
                    Container(
                      height: 50,
                      margin: EdgeInsets.symmetric(horizontal: 40),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      child: Center(
                        child: Text("Shop Now", style: TextStyle(color: Colors.grey[900],),),
                      ),
                    ),
                    SizedBox(height: 30,),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20,),
            Expanded(
                child: GridView.count(
                  crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    crossAxisCount: 1,
                  children: _listItem.map((item) => cellOfList(item)).toList(),
                )
            )
          ],
        ),
      ),
    );
  }
  Widget cellOfList(String item){
    return Card(
      color: Colors.transparent,
      elevation: 0,
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: AssetImage(item),
            fit: BoxFit.cover,
          )
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Icon(Icons.favorite_outlined, color: Colors.red,size: 35,)
          ],
        ),
      ),
    );
  }
}