import 'package:flutter/material.dart';
import 'package:project01/widgets/InteractionPost.dart';

class TweetCard extends StatelessWidget {
  final String username;
  final bool isVerified;
  final String handle;
  final String timeAgo;
  final String? content;
  final bool hasImage;

  const TweetCard({
    Key? key,
    required this.username,
    required this.isVerified,
    required this.handle,
    required this.timeAgo,
    this.content,
    this.hasImage = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.grey.shade800,
            width: 0.5,
          ),
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CircleAvatar(
            backgroundImage: NetworkImage('https://images.pexels.com/photos/1239291/pexels-photo-1239291.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      username,
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    if (isVerified) ...[
                      const SizedBox(width: 4),
                      const Icon(
                        Icons.verified,
                        color: Colors.blue,
                        size: 16,
                      ),
                    ],
                    const SizedBox(width: 4),
                    Text(
                      '$handle · $timeAgo',
                      style: TextStyle(color: Colors.grey.shade600),
                    ),
                    const Spacer(),
                    Icon(
                      Icons.more_horiz,
                      color: Colors.grey.shade600,
                    ),
                  ],
                ),
                if (content != null) ...[
                  const SizedBox(height: 4),
                  Text(
                    content!,
                    style: const TextStyle(color: Colors.white),
                  ),
                ],
                if (hasImage) ...[
                  const SizedBox(height: 12),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Container(
                      height: 200,
                      width: double.infinity,
                      color: Colors.grey.shade800,
                      child: Image.network(
                        "https://images.pexels.com/photos/29530435/pexels-photo-29530435/free-photo-of-frente-a-la-playa-de-coastal-palm-con-vista-al-paisaje-urbano.jpeg?auto=compress&cs=tinysrgb&w=600",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
                const SizedBox(height: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    interactionPost(Icons.chat_bubble_outline, '2K'),
                    interactionPost(Icons.repeat, '13.1K'),
                    interactionPost(Icons.favorite_border, '20K'),
                    interactionPost(Icons.bar_chart, '13.9M'),
                    interactionPost(Icons.share_outlined, ''),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}