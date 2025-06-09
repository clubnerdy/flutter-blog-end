import 'package:flutter/material.dart';
import 'package:flutter_blog/ui/pages/post/detail_page/widgets/post_detail_body.dart';

class PostDetailPage extends StatelessWidget {
  // post 객체를 통째로 넘길 수도 있지만 먼저 썼던 리스트의 포스트 필드랑 상세보기의 필드가 다를 수 있음.일반적으로.
  // 지금이야 통으로 쓸 수 있지만 실무에서 이렇게 사용하면 유지보수가 지옥이 될 수 있음. 필요없는 데이터를 모두 묶어서 들고갈 필요는 없음.
  // => 완전하게 분리시키는게 좋음. 뷰모델 완전 분리!!!

  int postId;
  PostDetailPage(this.postId);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: PostDetailBody(postId),
    );
  }
}
