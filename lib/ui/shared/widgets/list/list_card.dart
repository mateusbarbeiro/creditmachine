import 'package:flutter/material.dart';

class ListCard extends StatelessWidget {
  const ListCard({
    Key? key,
    required this.title,
    required this.color,
    required this.onTap,
  }) : super(key: key);

  final String title;
  final Color color;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black45,
                          offset: Offset(2.0, 2.0),
                          blurRadius: 3.0,
                        ),
                      ],
                    ),
                    child: CircleAvatar(
                      radius: 30,
                      backgroundColor: color,
                      child: const Icon(
                        Icons.person,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 30,
                ),
                Expanded(
                  flex: 3,
                  child: RichText(
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    strutStyle: const StrutStyle(fontSize: 16.0),
                    text: TextSpan(
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                      text: title,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 0,
            bottom: 0,
            left: 0,
            right: 0,
            child: Material(
              type: MaterialType.transparency,
              child: InkWell(
                borderRadius: BorderRadius.circular(10),
                onTap: onTap,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
