import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:medi_support/ui/screens/search/search_controller_impl.dart';
import 'package:medi_support/ui/screens/search/search_model.dart';
import 'package:medi_support/ui/screens/search/services/search_backend_service.dart';
import 'package:mockito/mockito.dart';

import '../../../mocks.mocks.dart';

void main() {
  late MockSearchBackendService mockSearchBackendService;
  late MockSearchNavigationService mockSearchNavigationService;

  setUp(() {
    mockSearchBackendService = MockSearchBackendService();
    mockSearchNavigationService = MockSearchNavigationService();
  });

  SearchControllerImpl createSearchController() {
    final SearchControllerImpl searchController = ProviderContainer().read(
      searchControllerImplProvider(
        backendService: mockSearchBackendService,
        navigationService: mockSearchNavigationService,
      ).notifier,
    );
    final KeepAliveLink keepAliveLink = searchController.ref.keepAlive();
    addTearDown(keepAliveLink.close);
    return searchController;
  }

  test('SearchControllerImpl should be able to go back', () {
    createSearchController().goBack();
    verify(mockSearchNavigationService.goBack()).called(1);
  });

  test(
      'SearchControllerImpl should be able to search for posts and filter results',
      () async {
    final SearchControllerImpl searchController = createSearchController();
    final List<SearchBackendServicePost> backendServicePosts =
        <SearchBackendServicePost>[
      const SearchBackendServicePost(
        postId: '1',
        title: 'Title 1',
        body: 'Body 1',
      ),
      const SearchBackendServicePost(
        postId: '2',
        title: 'Title 2',
        body: 'Body 2',
      ),
      const SearchBackendServicePost(
        postId: '3',
        title: 'Title 3',
        body: 'Body 3',
      ),
    ];
    final List<SearchModelPost> searchModelPosts = backendServicePosts
        .map(SearchModelPost.fromBackendServicePost)
        .toList();

    when(mockSearchBackendService.search(query: 'Title 1')).thenAnswer(
      (_) => Future<List<SearchBackendServicePost>>.value(
        <SearchBackendServicePost>[
          backendServicePosts[0],
        ],
      ),
    );
    when(mockSearchBackendService.search(query: 'Title 2')).thenAnswer(
      (_) => Future<List<SearchBackendServicePost>>.value(
        <SearchBackendServicePost>[
          backendServicePosts[1],
        ],
      ),
    );
    when(mockSearchBackendService.search(query: 'Title 3')).thenAnswer(
      (_) => Future<List<SearchBackendServicePost>>.value(
        <SearchBackendServicePost>[
          backendServicePosts[2],
        ],
      ),
    );

    searchController.onSearch(query: 'Title 1');
    await Future<void>.delayed(Duration.zero);
    expect(
      searchController.state.filteredResults,
      searchModelPosts.sublist(0, 1),
    );
    expect(searchController.state.query, 'Title 1');

    searchController.onSearch(query: 'Title 2');
    await Future<void>.delayed(Duration.zero);
    expect(
      searchController.state.filteredResults,
      searchModelPosts.sublist(1, 2),
    );
    expect(searchController.state.query, 'Title 2');

    searchController.onSearch(query: 'Title 3');
    await Future<void>.delayed(Duration.zero);
    expect(
      searchController.state.filteredResults,
      searchModelPosts.sublist(2, 3),
    );
    expect(searchController.state.query, 'Title 3');
  });

  test('SearchControllerImpl should be able to open a post', () {
    createSearchController().openPost(postId: '1');
    verify(mockSearchNavigationService.openPost(postId: '1')).called(1);
  });

  test('SearchControllerImpl should be able to discard a query', () async {
    final SearchControllerImpl searchController = createSearchController()
      ..state = const SearchModel(
        query: 'Title 1',
        filteredResults: <SearchModelPost>[
          SearchModelPost(
            id: '1',
            title: 'Title 1',
            body: 'Body 1',
          ),
        ],
      )
      ..discardQuery();
    expect(searchController.state.filteredResults, <SearchModelPost>[]);
    expect(searchController.state.query, null);
  });
}
