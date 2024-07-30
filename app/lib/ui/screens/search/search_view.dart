import 'package:flutter/material.dart' hide SearchController;
import 'package:flutter_svg/svg.dart';
import 'package:medi_support/ui/screens/search/search_controller.dart';
import 'package:medi_support/ui/screens/search/search_model.dart';
import 'package:medi_support/ui/widgets/custom_app_bar.dart';
import 'package:medi_support/ui/widgets/custom_search_bar.dart';
import 'package:medi_support/ui/widgets/icon_row.dart';

class SearchView extends StatelessWidget {
  static const EdgeInsets _searchPadding =
      EdgeInsets.symmetric(horizontal: 16, vertical: 8);
  static const double _iconSize = 24;
  static const double _verticalSpacerSize = 16;
  static const int _postPreviewMaxLines = 1;

  static final List<IconWithLabel> _upperCategories = <IconWithLabel>[
    IconWithLabel(
      SvgPicture.asset('assets/svg/ear.svg'),
      'Ears',
    ),
    IconWithLabel(
      SvgPicture.asset('assets/svg/lungs.svg'),
      'Lungs',
    ),
    IconWithLabel(
      SvgPicture.asset('assets/svg/physician.svg'),
      'Doctor',
    ),
  ];

  static final List<IconWithLabel> _lowerCategories = <IconWithLabel>[
    IconWithLabel(
      SvgPicture.asset('assets/svg/stomack.svg'),
      'Stomach',
    ),
    IconWithLabel(SvgPicture.asset('assets/svg/tooth.svg'), 'Teeth'),
    IconWithLabel(SvgPicture.asset('assets/svg/heart.svg'), 'Hearth'),
  ];

  const SearchView({
    super.key,
    required this.controller,
    required this.model,
  });
  final SearchController controller;
  final SearchModel model;

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: CustomAppBar(
          title: 'Suche',
          leading: IconButton(
            onPressed: controller.goBack,
            icon: const Icon(Icons.arrow_back),
          ),
        ),
        body: SafeArea(
          child: ListView(
            padding: _searchPadding,
            children: <Widget>[
              CustomSearchBar(
                onSearch: (String query) => controller.onSearch(query: query),
                currentQuery: model.query,
                onDiscard: controller.discardQuery,
              ),
              const SizedBox(height: _verticalSpacerSize),
              if (model.query == null) ..._categories() else _resultList(),
            ],
          ),
        ),
      );

  List<Widget> _categories() => <Widget>[
        IconRow(
          iconSize: _iconSize,
          icons: _upperCategories,
          onIconPressed: ({required String value}) =>
              controller.onSearch(query: value),
        ),
        IconRow(
          iconSize: _iconSize,
          icons: _lowerCategories,
          onIconPressed: ({required String value}) =>
              controller.onSearch(query: value),
        ),
      ];

  Widget _resultList() => ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: model.filteredResults.length,
        itemBuilder: (BuildContext context, int index) => ListTile(
          title: Text(
            model.filteredResults[index].title,
            textAlign: TextAlign.left,
            maxLines: _postPreviewMaxLines,
            overflow: TextOverflow.ellipsis,
          ),
          subtitle: Text(
            model.filteredResults[index].body,
            textAlign: TextAlign.left,
            maxLines: _postPreviewMaxLines,
            overflow: TextOverflow.ellipsis,
          ),
          onTap: () => controller.openPost(
            postId: model.filteredResults[index].id,
          ),
        ),
      );
}
