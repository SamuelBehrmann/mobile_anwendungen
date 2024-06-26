import 'package:flutter/material.dart' hide SearchController;
import 'package:medi_support/ui/screens/search/search_controller.dart';
import 'package:medi_support/ui/screens/search/search_model.dart';
import 'package:medi_support/ui/widgets/custom_app_bar.dart';
import 'package:medi_support/ui/widgets/custom_search_bar.dart';
import 'package:medi_support/ui/widgets/icon_row.dart';

class SearchView extends StatelessWidget {
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
          title: 'Search',
          leading: IconButton(
            onPressed: controller.goBack,
            icon: const Icon(Icons.arrow_back),
          ),
        ),
        body: Column(
          children: <Widget>[
            CustomSearchBar(
              onSearch: controller.onSearch,
              currentQuery: model.query,
              onDiscard: controller.discardQuery,
            ),
            if (model.query.isEmpty) ..._categories else _resultList(),
          ],
        ),
      );

  List<Widget> get _categories => <Widget>[
        IconRow(
          iconSize: 24,
          icons: const <IconWithLabel>[
            IconWithLabel(Icons.search, 'Search'),
            IconWithLabel(Icons.home, 'Home'),
            IconWithLabel(Icons.favorite, 'Favorites'),
          ],
          onIconPressed: ({required String value}) =>
              controller.onSearch(query: value),
        ),
        IconRow(
          iconSize: 24,
          icons: const <IconWithLabel>[
            IconWithLabel(Icons.search, 'Search'),
            IconWithLabel(Icons.home, 'Home'),
            IconWithLabel(Icons.favorite, 'Favorites'),
          ],
          onIconPressed: ({required String value}) =>
              controller.onSearch(query: value),
        ),
      ];

  Expanded _resultList() => Expanded(
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: model.filteredResults.length,
          itemBuilder: (BuildContext context, int index) => ListTile(
            title: Text(
              model.filteredResults[index].title,
              textAlign: TextAlign.left,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            subtitle: Text(
              model.filteredResults[index].body,
              textAlign: TextAlign.left,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            onTap: () => controller.openPost(
              postId: model.filteredResults[index].id,
            ),
          ),
        ),
      );
}
