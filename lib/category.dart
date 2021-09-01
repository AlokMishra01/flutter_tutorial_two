import 'package:flutter/material.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({ Key? key }) : super(key: key);

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
          leading: Icon(
            Icons.arrow_back_ios_new, 
            color: Colors.white,
          ),
          centerTitle: true,
          title: Text(
            'Cooking',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w700,
              fontSize: 24.0,
            ),
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


      body: SingleChildScrollView(
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Labels',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w700,
                fontSize: 22.0,
              ),
            ),
          ),

          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 16.0,
            ),
            child: Row(
            children: [
              OutlinedButton(
                onPressed: () {
                  print('add labels');
                },
                child: Icon(
                  Icons.add,
                  color: Color(0xFFFF903F),
                ),
                style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24.0),
                    ),
                    side: BorderSide(
                      color: Color(0xFFFF903F),
                      width: 2.0,
                    ),
                  ),
                ),
                SizedBox(width: 8.0),

                Expanded(
                  child: SizedBox(
                    height: 44.0,
                    child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: 20,
                    itemBuilder: (context, index) {
                      return Chip(
                        backgroundColor: Color(0xFFFF903F),
                        label: Text(
                          'Burger',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      );
                    },
                    separatorBuilder: (context, index) {
                      return SizedBox(width: 8.0);
                    },
                  ),
                
                  ),
                ),
              ],
            ),
          ),
        
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal:16.0
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
              'Bookmarks',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w700,
                fontSize: 22.0,
              ),
              ),

              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.arrow_circle_down_outlined,
                
                ),
                color: Color(0xFFFF903F),
                ),
              ],
            ),
          ),

          Padding(
            padding: EdgeInsets.symmetric(
              horizontal:16.0
            ),
            child: Row(
              children: [
                Icon(
                  Icons.bookmark,
                  color: Color(0xFFFF903F),
                ),
                Text(
              '149',
              style: TextStyle(
                color: Color(0xFFFF903F),
                fontWeight: FontWeight.w600,
                fontSize: 18.0,
              ),
              ),
              ],
            ),
          ),

          ListView.separated(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              padding: EdgeInsets.all(16.0),
              itemCount: 40,
              separatorBuilder: (context, index) {
                return SizedBox(
                  height: 8.0,
                );
              },
              itemBuilder: (context, index) {
                return Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(16),
                        child: Image.network(
                        'https://images.pexels.com/users/avatars/26735/lisa-815.jpeg?auto=compress&fit=crop&h=256&w=256',
                        height: 80.0,
                        width: 80.0,
                        fit: BoxFit.cover,
                        ),
                      ),

                      SizedBox(width: 8.0),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            'Chicken Burger',
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(
                            height: 8.0,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.notifications,
                                color: Colors.redAccent.withOpacity(0.5),
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.greenAccent,
                              ),
                            ],
                          ),
                        ],
                      ),
                      ),
                      SizedBox(width: 8.0),
                      CircleAvatar(
                        radius: 24,
                        backgroundColor: Colors.greenAccent,
                        child: IconButton(
                        icon: Icon(
                          Icons.exit_to_app,
                          color: Colors.white,
                          size: 24,
                        ),
                        onPressed: () {},
                      ),
                      ),
                      SizedBox(width: 8.0),
                      CircleAvatar(
                        radius: 24,
                        backgroundColor: Colors.redAccent,
                        child: IconButton(
                        icon: Icon(
                          Icons.delete,
                          color: Colors.white,
                          size: 24,
                        ),
                        onPressed: () {},
                      ),
                      ),
                    ],
                  ),
                );
              },
            ),
          
        ],
      ),
    
      ),
    );
  }
}