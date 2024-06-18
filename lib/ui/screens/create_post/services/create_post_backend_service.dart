abstract interface class CreatePostBackendService {
  Future<void> send({required String title, required String body});
}
