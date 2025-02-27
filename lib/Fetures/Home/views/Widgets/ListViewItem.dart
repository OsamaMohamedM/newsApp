import 'package:flutter/material.dart';

import '../../../../Core/widgets/CustomPhoto.dart';
import 'ReadMoreWithIcon.dart';

class ListViewItem extends StatelessWidget {
  const ListViewItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: double.infinity,
      child: Padding(
        padding:  EdgeInsets.all(12.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             CustomPhoto(),
             SizedBox(width: 40),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   Text(
                    'Source Unknown',
                    style: TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                   SizedBox(height: 4),
                   SizedBox(
                    width: 195,
                    child: Text(
                      'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      softWrap: true,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                   SizedBox(
                      height: 10), 
                  ReadMoreWithIcon(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

