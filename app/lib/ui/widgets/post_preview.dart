import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:medi_support/ui/widgets/custom_cached_network_image.dart';
import 'package:medi_support/ui/widgets/custom_card.dart';

part 'post_preview.freezed.dart';

class PostPreview extends StatelessWidget {
  static const double _contentSpacing = 16.0;
  static const double _textSpacing = 8.0;
  static const double _horizontalTitleGap = 16.0;
  static const double _minVerticalTitlePadding = 0.0;
  static const double _minTileHeight = 0.0;
  static const int _maxPostContentLines = 3;
  static const int _maxPostTitleLines = 1;

  final String title;
  final String content;
  final String postId;
  final PostPreviewAccount account;
  final void Function(String postId) onPostTap;
  final String buttonLabel;

  const PostPreview({
    super.key,
    required this.title,
    required this.content,
    required this.account,
    required this.postId,
    required this.onPostTap,
    required this.buttonLabel,
  });

  @override
  Widget build(BuildContext context) => CustomCard(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            _buildHeader(),
            const SizedBox(height: _contentSpacing),
            SizedBox(
              width: double.infinity,
              child: _buildContent(context),
            ),
            const SizedBox(height: _contentSpacing),
            _buildActions(),
          ],
        ),
      );

  Widget _buildHeader() => ListTile(
        contentPadding: EdgeInsets.zero,
        leading: CircleAvatar(
          child:
              CustomCachedNetworkImage(imageUrl: account.imageUrl.toString()),
        ),
        minTileHeight: _minTileHeight,
        horizontalTitleGap: _horizontalTitleGap,
        minVerticalPadding: _minVerticalTitlePadding,
        visualDensity: VisualDensity.compact,
        title: Text(account.name),
        subtitle: Text(account.titles.join(', ')),
      );

  Widget _buildContent(BuildContext context) => Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            title,
            style: Theme.of(context).textTheme.bodyLarge,
            textAlign: TextAlign.start,
            maxLines: _maxPostTitleLines,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: _textSpacing),
          Text(
            content,
            style: Theme.of(context).textTheme.bodySmall,
            maxLines: _maxPostContentLines,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.start,
          ),
        ],
      );

  Widget _buildActions() => Align(
        alignment: Alignment.centerRight,
        child: FilledButton(
          onPressed: () => onPostTap(postId),
          child: Text(buttonLabel),
        ),
      );
}

@freezed
class PostPreviewAccount with _$PostPreviewAccount {
  const factory PostPreviewAccount({
    required String name,
    required Iterable<String> titles,
    required Uri imageUrl,
  }) = _PostPreviewAccount;
}
