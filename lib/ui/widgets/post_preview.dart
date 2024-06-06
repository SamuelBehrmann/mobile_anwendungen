import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:medi_support/ui/widgets/custom_card.dart';
part 'post_preview.freezed.dart';

class PostPreview extends StatelessWidget {
  final String title;
  final String content;
  final String postId;
  final PostPreviewAccount account;
  final void Function(String postId) onPostTap;

  const PostPreview({
    super.key,
    required this.title,
    required this.content,
    required this.account,
    required this.postId,
    required this.onPostTap,
  });

  @override
  Widget build(BuildContext context) => CustomCard(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            _buildHeader(),
            const SizedBox(height: 16),
            _buildContent(),
            const SizedBox(height: 16),
            _buildActions(),
          ],
        ),
      );

  Widget _buildHeader() => ListTile(
        contentPadding: EdgeInsets.zero,
        leading: CircleAvatar(
          backgroundImage: NetworkImage(account.imageUrl.toString()),
        ),
        minTileHeight: 0,
        horizontalTitleGap: 16,
        minVerticalPadding: 0,
        visualDensity: VisualDensity.compact,
        title: Text(account.name),
        subtitle: Text(account.titles.join(', ')),
      );

  Widget _buildContent() => Builder(
        builder: (BuildContext context) => Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              title,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const SizedBox(height: 8),
            Text(
              content,
              style: Theme.of(context).textTheme.bodySmall,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      );

  Widget _buildActions() => Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FilledButton(
            onPressed: () => onPostTap(postId),
            child: const Text('Lesen'),
          ),
        ],
      );
}

@freezed
class PostPreviewAccount with _$PostPreviewAccount {
  const factory PostPreviewAccount({
    required String name,
    required Iterable<String> titles,
    required Uri imageUrl,
  }) = PostPreview_Account;
}
