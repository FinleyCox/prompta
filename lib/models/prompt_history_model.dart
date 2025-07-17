import 'package:hive/hive.dart';

part 'prompt_history_model.g.dart';

@HiveType(typeId: 1)
class PromptHistoryModel extends HiveObject {
  @HiveField(0)
  String id;

  @HiveField(1)
  String promptId;

  @HiveField(2)
  String title;

  @HiveField(3)
  String trigger;

  @HiveField(4)
  String character;

  @HiveField(5)
  String content;

  @HiveField(6)
  bool isFavorite;

  @HiveField(7)
  DateTime savedAt;

  PromptHistoryModel({
    required this.id,
    required this.promptId,
    this.title = '',
    this.trigger = '',
    this.character = '',
    required this.content,
    this.isFavorite = false,
    required this.savedAt,
  });

  PromptHistoryModel copyWith({
    String? id,
    String? promptId,
    String? title,
    String? trigger,
    String? character,
    String? content,
    bool? isFavorite,
    DateTime? savedAt,
  }) {
    return PromptHistoryModel(
      id: id ?? this.id,
      promptId: promptId ?? this.promptId,
      title: title ?? this.title,
      trigger: trigger ?? this.trigger,
      character: character ?? this.character,
      content: content ?? this.content,
      isFavorite: isFavorite ?? this.isFavorite,
      savedAt: savedAt ?? this.savedAt,
    );
  }
}
