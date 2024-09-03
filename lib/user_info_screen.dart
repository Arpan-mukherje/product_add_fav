import 'package:flutter/material.dart';

class UserInfoSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundColor: Color.fromRGBO(152, 168, 184, 1),
            child: Align(
              alignment: Alignment.bottomRight,
              child: Container(
                height: 20,
                width: 20,
                decoration: const BoxDecoration(
                  color: Colors.orange,
                  shape: BoxShape.circle,
                ),
                child: const Icon(Icons.add, color: Colors.white, size: 15),
              ),
            ),
          ),
          const SizedBox(width: 16),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'CUSTOMER NAME',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.orange,
                ),
              ),
              Row(
                children: [
                  Icon(Icons.location_pin, size: 16),
                  Text(
                    'Kolkata, India',
                    style: TextStyle(fontSize: 14, color: Colors.black54),
                  ),
                  Icon(Icons.keyboard_arrow_down),
                ],
              ),
            ],
          ),
          const Spacer(),
          const Icon(Icons.menu, size: 28),
        ],
      ),
    );
  }
}
