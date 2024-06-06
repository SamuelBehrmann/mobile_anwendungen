import 'package:flutter/material.dart';
import 'package:fpdart/fpdart.dart';
import 'package:medi_support/ui/widgets/custom_app_bar.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: CustomAppBar(
          title: some('Search'),
          leading: some(
            IconButton(
              onPressed: Navigator.of(context).pop,
              icon: const Icon(Icons.arrow_back),
            ),
          ),
        ),
      );
}
