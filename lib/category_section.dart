import 'package:flutter/material.dart';

class CategorySection extends StatefulWidget {
  @override
  _CategorySectionState createState() => _CategorySectionState();
}

class _CategorySectionState extends State<CategorySection> {
  String selectedCategory = 'All';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('All Categories',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400)),
              TextButton(
                onPressed: () {},
                child: const Row(
                  children: [
                    Text('See All'),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 15,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: Row(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      CategoryItem(
                        label: 'All',
                        isSelected: selectedCategory == 'All',
                        onTap: () => _onCategorySelected('All'),
                      ),
                      CategoryItem(
                        label: 'Cat A',
                        isSelected: selectedCategory == 'Cat A',
                        onTap: () => _onCategorySelected('Cat A'),
                      ),
                      CategoryItem(
                        label: 'Cat B',
                        isSelected: selectedCategory == 'Cat B',
                        onTap: () => _onCategorySelected('Cat B'),
                      ),
                      CategoryItem(
                        label: 'Cat C',
                        isSelected: selectedCategory == 'Cat C',
                        onTap: () => _onCategorySelected('Cat C'),
                      ),
                      CategoryItem(
                        label: 'Cat D',
                        isSelected: selectedCategory == 'Cat D',
                        onTap: () => _onCategorySelected('Cat D'),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  void _onCategorySelected(String category) {
    setState(() {
      selectedCategory = category;
    });
  }
}

class CategoryItem extends StatelessWidget {
  final bool isSelected;
  final String label;
  final VoidCallback onTap;

  const CategoryItem({
    required this.isSelected,
    required this.label,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 8),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          color: isSelected
              ? const Color.fromRGBO(255, 210, 124, 1)
              : Colors.grey[200],
          borderRadius: BorderRadius.circular(60),
        ),
        child: Row(
          children: [
            const CircleAvatar(
              backgroundColor: Color.fromRGBO(152, 168, 184, 1),
              radius: 20,
            ),
            const SizedBox(width: 8),
            Text(
              label,
              style: TextStyle(
                color: isSelected ? Colors.black : Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
