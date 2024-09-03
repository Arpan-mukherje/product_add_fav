import 'package:flutter/material.dart';

class FavouriteItemsSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        children: [
          const Text('Favourite Items',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400)),
          const SizedBox(height: 16),
          FavouriteItemCard(),
        ],
      ),
    );
  }
}

class FavouriteItemCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.12,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
              color: Color.fromRGBO(152, 168, 184, 1),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Rose Garden Restaurant',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                      SizedBox(height: 4),
                      Text('Kolkata, India',
                          style: TextStyle(color: Colors.grey)),
                    ],
                  ),
                ),
                Icon(Icons.favorite, color: Colors.orange),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.star, color: Colors.orange),
                Text('4.7', style: TextStyle(color: Colors.orange)),
                //  Spacer(),
                SizedBox(
                  width: 15,
                ),
                Icon(Icons.access_time, color: Colors.orange),
                Text('Open', style: TextStyle(color: Colors.orange)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
