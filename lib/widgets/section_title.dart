import 'package:flutter/material.dart';

class SectionTitle extends StatelessWidget {

  final String title;
  final String? subtitle;

  const SectionTitle({
    super.key,
    required this.title,
    this.subtitle,
  });

  @override
  Widget build(BuildContext context) {

    return Padding(

      padding: const EdgeInsets.only(
        top: 22,
        bottom: 12,
      ),

      child: Column(

        crossAxisAlignment: CrossAxisAlignment.start,

        children: [

          Text(
            title,

            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w800,
              color: Color.fromARGB(255, 50, 34, 16),
            ),
          ),

          if (subtitle != null) ...[

            const SizedBox(height: 4),

            Text(
              subtitle!,
              style: TextStyle(
                color: const Color.fromARGB(255, 139, 119, 96),
              ),
            ),

          ],

        ],

      ),

    );

  }

}