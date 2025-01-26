import 'package:flutter/material.dart';
import 'package:responsive_linkedin/pages/nav_pages/home/widgets/center_menu/widgets/post/widgets/post_card_widget.dart';

import '../../../../../../../data/post_entity.dart';

class CenterMenuSinglePostWidget extends StatefulWidget {
  const CenterMenuSinglePostWidget({Key? key}) : super(key: key);

  @override
  State<CenterMenuSinglePostWidget> createState() => _CenterMenuSinglePostWidgetState();
}

class _CenterMenuSinglePostWidgetState extends State<CenterMenuSinglePostWidget> {

  List<PostEntity> postData = PostEntity.postListData;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(physics: const ScrollPhysics(), shrinkWrap: true,itemCount: postData.length,itemBuilder: (context, index) {
      final post = postData[index];
      return PostCardWidget(
        post: post,
      );
    });
  }
}
