import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../models/neighborhood_life.dart';
import '../../components/image_container.dart';
import '../../../theme.dart';

class LifeBody extends StatelessWidget {
  final NeighborhoodLife neighborhoodLife;

  const LifeBody({super.key, required this.neighborhoodLife});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        border: Border(
          bottom: BorderSide(
            width: 0.5,
            color: Color(0xFFD4D5DD),
          ),
        ),
      ),
      child: Column(
        children: [
          _buildTop(),
          _buildWriter(),
          _buildWriting(),
          _buildImage(),
          Divider(
            height: 1,
            thickness: 1,
            color: Colors.grey[300],
          ),
          _buildTail(neighborhoodLife.commentCount),
        ],
      ),
    );
  }

  Padding _buildTop() {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: const EdgeInsets.all(4),
              decoration: const BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.all(
                  Radius.circular(4),
                ),
                color: Color.fromRGBO(247, 247, 247, 1),
              ),
              child: Text(
                neighborhoodLife.category,
                style: textTheme().bodyMedium,
              ),
            ),
            Text(neighborhoodLife.date, style: textTheme().bodyMedium)
          ],
        ));
  }

  Padding _buildWriter() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          ImageContainer(
            borderRadius: 15,
            imageUrl: neighborhoodLife.profileImgUri,
            width: 30,
            height: 30,
          ),
          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: neighborhoodLife.userName,
                  style: textTheme().bodyLarge,
                ),
                TextSpan(text: " ${neighborhoodLife.location}"),
                TextSpan(text: " 인증 ${neighborhoodLife.authCount}회"),
              ],
            ),
          )
        ],
      ),
    );
  }

  Padding _buildWriting() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          neighborhoodLife.content,
          style: textTheme().bodyLarge,
          maxLines: 3,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.start,
        ),
      ),
    );
  }

  Visibility _buildImage() {
    return Visibility(
      visible: neighborhoodLife.contentImgUri != "",
      child: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
        child: Image.network(
          neighborhoodLife.contentImgUri,
          height: 200,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Padding _buildTail(int commentCount) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          const Icon(
            FontAwesomeIcons.faceSmile,
            color: Colors.grey,
            size: 22,
          ),
          const SizedBox(width: 8),
          const Text(
            "공감하기",
            style: TextStyle(fontSize: 16, color: Colors.black),
          ),
          const SizedBox(
            width: 22,
          ),
          const Icon(
            FontAwesomeIcons.message,
            color: Colors.grey,
            size: 22,
          ),
          const SizedBox(width: 8),
          Text(
            "${"댓글쓰기"} $commentCount",
            style: const TextStyle(
              fontSize: 16,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
