import 'package:hive/hive.dart';
import '../models/prompt_model.dart';

class HiveService {
  static const String _promptBoxName = 'prompts';
  static Box<PromptModel>? _promptBox;

  static Future<void> initialize() async {
    if (!Hive.isAdapterRegistered(0)) {
      Hive.registerAdapter(PromptModelAdapter());
    }
    _promptBox = await Hive.openBox<PromptModel>(_promptBoxName);
  }

  static Box<PromptModel> get promptBox {
    if (_promptBox == null) {
      throw Exception(
        'HiveService is not initialized. Call initialize() first.',
      );
    }
    return _promptBox!;
  }

  // 新規作成
  static Future<void> createPrompt(PromptModel prompt) async {
    await promptBox.put(prompt.id, prompt);
  }

  // 全件取得
  static List<PromptModel> getAllPrompts() {
    return promptBox.values.toList();
  }

  // お気に入り取得
  static List<PromptModel> getFavoritePrompts() {
    return promptBox.values.where((prompt) => prompt.isFavorite).toList();
  }

  // IDで取得
  static PromptModel? getPromptById(String id) {
    return promptBox.get(id);
  }

  // 更新
  static Future<void> updatePrompt(PromptModel prompt) async {
    final updatedPrompt = prompt.copyWith(updatedAt: DateTime.now());
    await promptBox.put(prompt.id, updatedPrompt);
  }

  // お気に入り切り替え
  static Future<void> toggleFavorite(String id) async {
    final prompt = promptBox.get(id);
    if (prompt != null) {
      final updatedPrompt = prompt.copyWith(
        isFavorite: !prompt.isFavorite,
        updatedAt: DateTime.now(),
      );
      await promptBox.put(id, updatedPrompt);
    }
  }

  // 削除
  static Future<void> deletePrompt(String id) async {
    await promptBox.delete(id);
  }

  // 検索
  static List<PromptModel> searchPrompts(String query) {
    return promptBox.values
        .where(
          (prompt) =>
              prompt.title.toLowerCase().contains(query.toLowerCase()) ||
              prompt.content.toLowerCase().contains(query.toLowerCase()),
        )
        .toList();
  }

  // データベースを閉じる
  static Future<void> close() async {
    await _promptBox?.close();
  }
}
