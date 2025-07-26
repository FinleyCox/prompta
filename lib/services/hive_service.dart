import 'package:hive/hive.dart';
import '../models/prompt_model.dart';
import '../models/prompt_history_model.dart';

class HiveService {
  static const String _promptBoxName = 'prompts';
  static Box<PromptModel>? _promptBox;
  static const String _historyBoxName = 'prompt_histories';
  static Box<PromptHistoryModel>? _historyBox;

  static Future<void> initialize() async {
    if (!Hive.isAdapterRegistered(0)) {
      Hive.registerAdapter(PromptModelAdapter());
    }
    if (!Hive.isAdapterRegistered(1)) {
      Hive.registerAdapter(PromptHistoryModelAdapter());
    }

    _promptBox = await Hive.openBox<PromptModel>(_promptBoxName);
    _historyBox = await Hive.openBox<PromptHistoryModel>(_historyBoxName);
  }

  static Box<PromptModel> get promptBox {
    if (_promptBox == null) {
      throw Exception(
        'HiveService is not initialized. Call initialize() first.',
      );
    }
    return _promptBox!;
  }

  static Box<PromptHistoryModel> get historyBox {
    if (_historyBox == null) {
      throw Exception(
        'HiveService is not initialized. Call initialize() first.',
      );
    }
    return _historyBox!;
  }

  // 新規作成
  static Future<void> createPrompt(PromptModel prompt) async {
    await promptBox.put(prompt.id, prompt);
  }

  // 全件取得
  static List<PromptModel> getAllPrompts() {
    // 新しいものから上にする
    final prompts = promptBox.values.toList();
    prompts.sort((a, b) => b.createdAt.compareTo(a.createdAt));
    return prompts;
  }

  // お気に入り取得
  static List<PromptModel> getFavoritePrompts() {
    final prompts =
        promptBox.values.where((prompt) => prompt.isFavorite).toList();
    prompts.sort((a, b) => b.createdAt.compareTo(a.createdAt));
    return prompts;
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
              prompt.content.toLowerCase().contains(query.toLowerCase()) ||
              prompt.character.toLowerCase().contains(query.toLowerCase()) ||
              prompt.trigger.toLowerCase().contains(query.toLowerCase()),
        )
        .toList();
  }

  // 編集履歴を追加
  static Future<void> addPromptHistory(PromptHistoryModel history) async {
    await historyBox.add(history);
  }

  // 指定プロンプトの最新3件の履歴を取得
  static List<PromptHistoryModel> getRecentHistories(String promptId) {
    final histories =
        historyBox.values.where((h) => h.promptId == promptId).toList();
    histories.sort((a, b) => b.savedAt.compareTo(a.savedAt));
    return histories.take(3).toList();
  }

  // データベースを閉じる
  static Future<void> close() async {
    await _promptBox?.close();
  }
}
