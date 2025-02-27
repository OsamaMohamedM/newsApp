import 'package:flutter/material.dart';

class ReadMoreWithIcon extends StatelessWidget {
  const ReadMoreWithIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: Row(
        children: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black,
              fixedSize: const Size(130, 44),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
            ),
            onPressed: () {
              
            },
            child: const Text(
              "Read More",
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const Spacer(),
          const Icon(
            Icons.favorite_border,
            size: 20,
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}
