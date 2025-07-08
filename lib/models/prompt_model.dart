import 'package:hive/hive.dart';

part 'prompt_model.g.dart';

@HiveType(typeId: 0)
class PromptModel extends HiveObject {
  @HiveField(0)
  String id;

  @HiveField(1)
  String title;

  @HiveField(2)
  String trigger;

  @HiveField(3)
  String character;

  @HiveField(4)
  String content;

  @HiveField(5)
  bool isFavorite;

  @HiveField(6)
  DateTime createdAt;

  @HiveField(7)
  DateTime updatedAt;

  PromptModel({
    required this.id,
    this.title = '',
    this.trigger = '',
    this.character = '',
    required this.content,
    this.isFavorite = false,
    required this.createdAt,
    required this.updatedAt,
  });

  PromptModel copyWith({
    String? id,
    String? title,
    String? trigger,
    String? character,
    String? content,
    bool? isFavorite,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return PromptModel(
      id: id ?? this.id,
      title: title ?? this.title,
      trigger: trigger ?? this.trigger,
      character: character ?? this.character,
      content: content ?? this.content,
      isFavorite: isFavorite ?? this.isFavorite,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}
