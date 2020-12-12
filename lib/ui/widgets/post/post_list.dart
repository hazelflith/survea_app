import 'package:flutter/material.dart';
import 'package:survea_app/ui/widgets/post/post_card.dart';
import 'package:survea_app/core/locators.dart';
import 'package:survea_app/core/viewmodels/post_model.dart';
import 'package:stacked/stacked.dart';

class PostList extends StatelessWidget {
  PostList({this.categoryId});
  final int categoryId;
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<PostViewModel>.reactive(
      fireOnModelReadyOnce: false,
      disposeViewModel: false,
      onModelReady: (model) =>
          model.getPost(1, 15, hasEnvelope: true, categoryId: categoryId),
      viewModelBuilder: () => locator<PostViewModel>(),
      builder: (context, model, child) => model.isBusy == true
          ? Center(
            child: CircularProgressIndicator(),
      )
          : ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 5,
            shrinkWrap: true,
            itemBuilder: (_, index) {
              return PostCard(
                image: model
                    .beritas[index].embedded.wpFeaturedmedia[0].sourceUrl,
                label: model.beritas[index].title.rendered,
                link: model.beritas[index].link,
          );
        },
      ),
    );
  }
}
