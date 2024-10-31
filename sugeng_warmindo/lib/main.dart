import 'package:flutter/material.dart';

void main() {
  runApp(SugengWamindo());
}

class SugengWamindo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sugeng Warmindo',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: YummyMenuScreen(),
    );
  }
}

class YummyMenuScreen extends StatelessWidget {
  final List<Map<String, dynamic>> menuItems = [
    {
      'image': 'assets/images/goreng.png',
      'title': 'Indomie Goreng',
      'rating': 5.0,
      'time': '5 mnt',
      'price': 'Rp 5.000',
    },
    {
      'image': 'assets/images/spicy.png',
      'title': 'Indomie Goreng Spicy',
      'rating': 4.8,
      'time': '5 mnt',
      'price': 'Rp 5.500',
    },
    {
      'image': 'assets/images/ijo.png',
      'title': 'Indomie Cabe Ijo',
      'rating': 4.6,
      'time': '5 mnt',
      'price': 'Rp 5.500',
    },
    {
      'image': 'assets/images/bbq.png',
      'title': 'Indomie Barbeque',
      'rating': 4.5,
      'time': '5 mnt',
      'price': 'Rp 6.000',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu Sugeng Warmindo Hari Ini'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // Dua kolom dalam grid
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            childAspectRatio: 0.75,
          ),
          itemCount: menuItems.length,
          itemBuilder: (context, index) {
            final item = menuItems[index];
            return Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              elevation: 3,
              child: Container(
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 255, 176, 80),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(100)),
                          child: Image.network(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQpU1sszawGZLVMMZmw8oe6_VrKzhM_vNnbywm7pSgF3CYFIIA-vmKZzQnmoOQ58jv1Qos&usqp=CAU',
                            fit: BoxFit.cover,
                            scale: 10,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 5),
                          child: Text(
                            'Sugeng Warmindo',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 10),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 5),
                          child: Icon(
                            Icons.verified_rounded,
                            size: 10,
                            color: Colors.blue,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Center(
                      child: ClipRRect(
                        // borderRadius: BorderRadius.all(Radius.circular(10)),
                        child: Image.network(
                          item['image'],
                          scale: 3,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            item['title'],
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          SizedBox(height: 5),
                          Row(
                            children: [
                              Icon(Icons.star,
                                  color: Color.fromARGB(255, 255, 196, 0),
                                  size: 14),
                              SizedBox(width: 4),
                              Text('${item['rating']}'),
                              SizedBox(width: 10),
                              Icon(Icons.access_time, size: 14),
                              SizedBox(width: 4),
                              Text(item['time']),
                            ],
                          ),
                          SizedBox(height: 8),
                          Text(
                            item['price'],
                            style: TextStyle(
                              fontSize: 14,
                              color: const Color.fromARGB(255, 0, 0, 0),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
