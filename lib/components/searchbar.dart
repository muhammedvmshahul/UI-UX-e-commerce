import 'package:flutter/material.dart';

class Searchbar extends StatefulWidget {
  const Searchbar({super.key});

  @override
  State<Searchbar> createState() => _SearchbarState();
}

class _SearchbarState extends State<Searchbar> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 250,
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide:
                  BorderSide(color: Colors.grey.shade200)),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(
                      color: Colors.grey.shade200, width: 1)),
              hintText: 'Search',
              hintStyle: const TextStyle(
                  color: Colors.grey, fontWeight: FontWeight.w300),
              filled: true,
              fillColor: Colors.grey.shade200,
              prefixIcon: const Icon(
                Icons.search,
                size: 30,
              ),
            ),
          ),
        ),
        const Spacer(),
        IconButton(
            style: IconButton.styleFrom(
                backgroundColor: Colors.grey.shade200,
                padding: const EdgeInsets.all(15),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12))),
            onPressed: () {},
            icon: const Icon(Icons.notifications)),
        const Spacer(),
        IconButton(
            style: IconButton.styleFrom(
                backgroundColor: Colors.grey.shade200,
                padding: const EdgeInsets.all(15),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12))),
            onPressed: () {},
            icon: const Icon(Icons.card_travel_sharp))
      ],
    );
  }
}
