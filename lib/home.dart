import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({ Key? key }) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE5E5E5),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(198),
        child: AppBar(
          elevation: 0.0,
          backgroundColor: Color(0xFFFF903F),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(34.0),
            )
          ),
          actions: [
            Stack(
              children: [
                IconButton(
                  onPressed: () {}, 
                  iconSize: 28.0,
                  icon: Icon(
                    Icons.notifications,
                  ),
                ),
                Positioned(
                  top: 12.0,
                  right: 12.0,
                  child: CircleAvatar(
                    backgroundColor: Color(0xFF2CF3A0),
                    radius: 6.0,
                  ),
                )
              ],
            ),
          ],
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(140),
            child: Padding (
              padding: EdgeInsets.only(
                right: 24.0,
                left: 24.0,
                bottom: 24.0,
              ),
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hi John',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 8.0),
              Text(
                'Welcome Back !!!',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(
                height: 16.0,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(48.0),
                child: TextFormField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xFFFEDBC2).withOpacity(0.56),
                  border: InputBorder.none,
                  hintText: 'What bookmarks are you searching for ?',
                  hintStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 14.0,
                    fontWeight: FontWeight.w600,
                  ),
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.white,
                  )
                ),
              ),
            
              ),
            ],
          ),
          
            )
          ),
        ),
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(24.0),
        ),
        child: BottomNavigationBar(
        backgroundColor: Colors.white,
        elevation: 0,
        items: [
          BottomNavigationBarItem(
            label: '',
            icon: Icon(
              Icons.home_outlined,
              color: Color(0xFFFF903F),
              size: 32.0,
            ),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Icon(
              Icons.star_border_outlined,
              color: Color(0xFFFF903F),
              size: 32.0,
            ),
          ),
        ],
      ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        elevation: 0.0,
        backgroundColor: Color(0xFFFF903F),
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
        onPressed: () {},
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
            'Categories',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w700,
              fontSize: 22.0,
            ),
          ),
          ),
          Expanded(
            child: GridView.builder(
            padding: EdgeInsets.symmetric(
              horizontal: 16.0,
            ),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 16.0,
              mainAxisSpacing: 16.0,
            ), 
            itemCount: 4,
            itemBuilder: (context, index) {
              return Container(
                decoration: BoxDecoration(
                  color: Color(0xFFB7F1D9),
                  borderRadius: BorderRadius.circular(24.0),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 50,
                      child: Icon(
                        Icons.smart_display_outlined,
                        size: 56.0,
                      ),
                    ),
                    Text(
                      'Programming',
                      style: TextStyle(
                        color: Color(0xFF2BCD89),
                        fontSize: 16.0,
                        fontWeight: FontWeight.w700,
                      ),
                    )
                  ],
                ),
              );
            },
          ),
          )
        ],
      ),
    );
  }
}