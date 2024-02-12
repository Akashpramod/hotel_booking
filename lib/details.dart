
import 'package:flutter/material.dart';

class HotelDetailsPage extends StatelessWidget {
  final Hotel hotel;
  

  HotelDetailsPage({required this.hotel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hotel Details'),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              hotel.image, // Use the image from the hotel object
              width: double.infinity,
              height: 200,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    hotel.name, // Use the name from the hotel object
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      Icon(Icons.location_on, color: Colors.grey),
                      SizedBox(width: 4),
                      Text(
                        'Location',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Description: Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus vitae convallis felis. Nullam eleifend, risus at varius blandit, est sapien ullamcorper libero, et dictum nisi ligula eu libero.',
                    style: TextStyle(color: Colors.black87),
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Details',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      _buildAmenityIcon(Icons.pool, 'Swimming Pool'),
                      _buildAmenityIcon(Icons.local_parking, 'Parking'),
                      _buildAmenityIcon(Icons.restaurant, 'Restaurant'),
                      _buildAmenityIcon(Icons.local_bar, 'Bar'),
                    ],
                  ),
                 
                  SizedBox(height: 8),
                 Text(
                    'Price: ${hotel.price}',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                 ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () {
                      // Add your button press logic here
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.orange),
                      // Other button style properties can be added here
                    ),
                    child: Text('Book Now'),
                  ),
                )

                 
                ],
              
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAmenityIcon(IconData icon, String text) {
    return Padding(
      padding: EdgeInsets.only(right: 16),
      child: Row(
        children: [
          Icon(icon, color: Colors.blue),
          SizedBox(width: 4),
          Text(
            text,
            style: TextStyle(color: Colors.black87),
          ),
        ],
      ),
    );
  }
}

class Hotel {
  final String name;
  final String image;
  final String price;

  Hotel({required this.name, required this.image, required this.price});
}
