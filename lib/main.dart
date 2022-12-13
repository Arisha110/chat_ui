import 'package:flutter/material.dart';
import 'itemChats.dart';
import 'MyBooks.dart';
import 'bookdata.dart';

void main() {
  // WidgetsFlutterBinding.ensureInitialized();
  //await Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<BookData> books = [
    BookData(
        "https://images.unsplash.com/photo-1529665253569-6d01c0eaf7b6?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8cHJvZmlsZXxlbnwwfHwwfHw%3D&w=1000&q=80",
        "Likes "),
    BookData(
        "https://img.freepik.com/free-photo/half-profile-image-handsome-young-caucasian-man-with-good-skin-brown-eyes-black-stylish-hair-stubble-posing-isolated-against-blank-wall-looking-front-him-smiling_343059-4560.jpg?w=2000",
        "Tony"),
    BookData(
      "https://images.unsplash.com/photo-1618641986557-1ecd230959aa?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8cHJvZmlsZXxlbnwwfHwwfHw%3D&w=1000&q=80",
      "James",
    ),
    BookData(
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQLSgvSHPmQsNr6NJJrUOLUda-GTV2aEKsfTw&usqp=CAU",
        "Troy"),
    BookData(
      "https://images.unsplash.com/photo-1618641986557-1ecd230959aa?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8cHJvZmlsZXxlbnwwfHwwfHw%3D&w=1000&q=80",
      "Jordan",
    ),
    BookData("assets/spl.jpg", "Books")
  ];

  final int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink.shade50,
      //drawer: const NavigationDrawerWidget(),
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.pink.shade50,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ClipOval(
            child: Image(
              image: Image.asset('assets/ppp.jpeg').image,
            ),
          ),
        ),
        actions: <Widget>[
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.settings,
                color: Colors.grey,
              ))
        ],
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "Puzzels",
          style: TextStyle(color: Colors.pinkAccent),
        ),
        //leading: IconButton(
        //      icon: const Icon(Icons.menu),
        //      onPressed: () {
        //         NavigationDrawerWidget;
        //       }),
        //  actions: [
        //   IconButton(onPressed: () {}, icon: Icon(Icons.notifications)),  ]
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: double.infinity,
                  height: 900,
                  child: ListView(
                    //scrollDirection: Axis.vertical,
                    children: [
                      SizedBox(
                        width: double.infinity,
                        height: 155.0,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            myBook(books[0]),
                            myBook(books[1]),
                            myBook(books[2]),
                            myBook(books[3])
                          ],
                        ),
                      ),
                      TextField(
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            prefixIcon: const Icon(Icons.search),
                            contentPadding: const EdgeInsets.all(10.0),
                            hintText: "Search",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(40.0),
                                borderSide: BorderSide.none)),
                      ),
                      SizedBox(height: 20),
                      // const SizedBox(height: 2.0,),
                      SizedBox(
                          width: double.infinity,
                          height: 800,
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 30),
                            decoration: const BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(
                                      (35),
                                    ),
                                    topRight: Radius.circular(35)),
                                color: Colors.white),
                            child: ListView(
                              padding: EdgeInsets.only(top: 8),
                              physics: BouncingScrollPhysics(),
                              children: [
                                _itemChats(
                                    avatar: 'assets/jordan.jpg',
                                    name: 'Jordan',
                                    chat: 'Hii! How have you been ?',
                                    time: '13:10'),
                                _itemChats(
                                    avatar: 'assets/tim.jpg',
                                    name: 'Tim',
                                    chat: 'I saw you at the Beach today',
                                    time: '19:00'),
                                _itemChats(
                                    avatar: 'assets/james.webp',
                                    name: 'James',
                                    chat: 'Congrats on your new car',
                                    time: '19:00'),
                              ],
                            ),
                          )),
                      SizedBox(
                        height: 100,
                      )
                    ],
                  ),
                ),
              ]),
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          // BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'Chat'),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: 'favorite'),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
      ),
    );
  }
}

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex = 0;
  PageController pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageController,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
      ),
      // drawer: const NavBar(),
    );
  }
}

Widget _itemChats({String avatar = '', name = '', chat = '', time: '00.00'}) {
  return Card(
    margin: const EdgeInsets.symmetric(
      vertical: 20,
    ),
    elevation: 0,
    child: Row(
      children: [
        Avatar(
          margin: const EdgeInsets.only(
            right: 20,
          ),
          size: 60,
          image: avatar,
        ),
        Expanded(
            child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '$name',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                  ),
                ),
                Text(
                  '$time',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text('$chat',
                overflow: TextOverflow.ellipsis,
                style: TextStyle(color: Colors.black54)),
          ],
        ))
      ],
    ),
  );
}

class Avatar extends StatelessWidget {
  final double size;
  final image;
  final EdgeInsets margin;
  Avatar({this.image, this.size = 20, this.margin = const EdgeInsets.all(0)});
  // const Avatar({Key? key}) : super(key: key);
  // const Avatar({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin,
      child: Container(
        width: size,
        height: size,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage(image),
            )),
      ),
    );
  }
}
