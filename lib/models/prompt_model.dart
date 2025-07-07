import 'package:hive/hive.dart';

part 'prompt_model.g.dart';

@HiveType(typeId: 0)
class PromptModel extends HiveObject {
  @HiveField(0)
  String id;

  @HiveField(1)
  String title;

  @HiveField(2)
  String content;

  @HiveField(3)
  bool isFavorite;

  @HiveField(4)
  DateTime createdAt;

  @HiveField(5)
  DateTime updatedAt;

  PromptModel({
    required this.id,
    required this.title,
    required this.content,
    this.isFavorite = false,
    required this.createdAt,
    required this.updatedAt,
  });

  PromptModel copyWith({
    String? id,
    String? title,
    String? content,
    bool? isFavorite,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return PromptModel(
      id: id ?? this.id,
      title: title ?? this.title,
      content: content ?? this.content,
      isFavorite: isFavorite ?? this.isFavorite,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}
