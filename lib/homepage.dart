import 'package:flutter/material.dart';
import 'package:farmer_fresh_zone/details.dart';

class HotelListPage extends StatelessWidget {
  final List<Hotel> hotels = [
    Hotel(name: 'Htotal Taj', image: 'assets/image1.jpg', price:'15k'),
    Hotel(name: 'Sixth Avenue', image: 'assets/image2.jpg', price:'17k'),
    Hotel(name: 'Sky Line', image: 'assets/image3.jpg', price:'25k'),
    Hotel(name: 'Hotal', image: 'assets/image4.jpg', price:'65k'),
    Hotel(name: 'Hotel BlueDiamond', image: 'assets/image5.jpg', price:'35k'),
    Hotel(name: 'Fessino', image: 'assets/image6.jpg', price:'14k'),
    Hotel(name: 'five Star', image: 'assets/image7.jpg', price:'27k'),
    Hotel(name: 'Pepper', image: 'assets/image8.jpg', price:'24k'),
    Hotel(name: 'Fessino', image: 'assets/image10.jpg', price:'14k'),

   
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text('Book Your Hotel'),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              // Add search functionality here
            },
          ),
          IconButton(
            icon: Icon(Icons.filter_list),
            onPressed: () {
              // Add filter functionality here
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: hotels.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HotelDetailsPage(hotel: hotels[index]),
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                leading: Image.asset(
                  hotels[index].image,
                  width: 100,
                  height: 200,
                  fit: BoxFit.cover,
                ),
                title: Text(hotels[index].name),
                subtitle: Text(hotels[index].price),
              ),
            ),
          );
        },
      ),
    );
  }
}
