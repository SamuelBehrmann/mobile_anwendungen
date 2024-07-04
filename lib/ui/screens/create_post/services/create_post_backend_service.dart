abstract interface class CreatePostBackendService {
  Future<void> createPost({required String title, required String content});
}
