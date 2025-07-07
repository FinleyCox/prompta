///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import

import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:slang/generated.dart';
import 'strings.g.dart';

// Path: <root>
class TranslationsJa implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsJa({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.ja,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <ja>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	late final TranslationsJa _root = this; // ignore: unused_field

	@override 
	TranslationsJa $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsJa(meta: meta ?? this.$meta);

	// Translations
	@override late final _TranslationsMainScreenJa mainScreen = _TranslationsMainScreenJa._(_root);
	@override Map<String, String> get locales => {
		'ja': '日本語',
		'en': 'English',
	};
	@override late final _TranslationsAddNewPageJa addNewPage = _TranslationsAddNewPageJa._(_root);
	@override late final _TranslationsEditPromptPageJa editPromptPage = _TranslationsEditPromptPageJa._(_root);
	@override late final _TranslationsPromptListPageJa promptListPage = _TranslationsPromptListPageJa._(_root);
	@override late final _TranslationsValidationJa validation = _TranslationsValidationJa._(_root);
}

// Path: mainScreen
class _TranslationsMainScreenJa implements TranslationsMainScreenEn {
	_TranslationsMainScreenJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get addNew => '新規作成';
	@override String get edit => '編集';
	@override String get favourites => 'お気に入り';
}

// Path: addNewPage
class _TranslationsAddNewPageJa implements TranslationsAddNewPageEn {
	_TranslationsAddNewPageJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '新規作成';
	@override String get content => '内容';
	@override String get titleHint => 'プロンプトのタイトルを入力';
	@override String get contentHint => 'プロンプトの内容を入力してください';
	@override String get save => '保存';
	@override String get cancel => 'キャンセル';
}

// Path: editPromptPage
class _TranslationsEditPromptPageJa implements TranslationsEditPromptPageEn {
	_TranslationsEditPromptPageJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '編集';
	@override String get titleLabel => 'タイトル';
	@override String get titleHint => 'プロンプトのタイトルを入力';
	@override String get contentLabel => '内容';
	@override String get contentHint => 'プロンプトの内容を入力してください';
	@override String get save => '保存';
	@override String get cancel => 'キャンセル';
}

// Path: promptListPage
class _TranslationsPromptListPageJa implements TranslationsPromptListPageEn {
	_TranslationsPromptListPageJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'プロンプト一覧';
	@override String get search => '検索';
	@override String get searchHint => 'プロンプトを検索...';
	@override String get favourites => 'お気に入り';
	@override String get all => 'すべて';
	@override String get noPrompts => 'プロンプトがありません';
	@override String get noFavourites => 'お気に入りがありません';
	@override String get noPromptsMessage => '新しいプロンプトを追加してみましょう';
	@override String get promptCount => '個のプロンプト';
	@override String get edit => '編集';
	@override String get delete => '削除';
	@override String get deleteConfirm => '削除の確認';
	@override String get deleteMessage => '「{title}」を削除しますか？';
	@override String get today => '今日';
	@override String get yesterday => '昨日';
	@override String get daysAgo => '日前';
	@override String get newPrompt => '新規追加';
	@override String get cancel => 'キャンセル';
}

// Path: validation
class _TranslationsValidationJa implements TranslationsValidationEn {
	_TranslationsValidationJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get titleRequired => 'タイトルを入力してください';
	@override String get contentRequired => '内容を入力してください';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on TranslationsJa {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'mainScreen.addNew': return '新規作成';
			case 'mainScreen.edit': return '編集';
			case 'mainScreen.favourites': return 'お気に入り';
			case 'locales.ja': return '日本語';
			case 'locales.en': return 'English';
			case 'addNewPage.title': return '新規作成';
			case 'addNewPage.content': return '内容';
			case 'addNewPage.titleHint': return 'プロンプトのタイトルを入力';
			case 'addNewPage.contentHint': return 'プロンプトの内容を入力してください';
			case 'addNewPage.save': return '保存';
			case 'addNewPage.cancel': return 'キャンセル';
			case 'editPromptPage.title': return '編集';
			case 'editPromptPage.titleLabel': return 'タイトル';
			case 'editPromptPage.titleHint': return 'プロンプトのタイトルを入力';
			case 'editPromptPage.contentLabel': return '内容';
			case 'editPromptPage.contentHint': return 'プロンプトの内容を入力してください';
			case 'editPromptPage.save': return '保存';
			case 'editPromptPage.cancel': return 'キャンセル';
			case 'promptListPage.title': return 'プロンプト一覧';
			case 'promptListPage.search': return '検索';
			case 'promptListPage.searchHint': return 'プロンプトを検索...';
			case 'promptListPage.favourites': return 'お気に入り';
			case 'promptListPage.all': return 'すべて';
			case 'promptListPage.noPrompts': return 'プロンプトがありません';
			case 'promptListPage.noFavourites': return 'お気に入りがありません';
			case 'promptListPage.noPromptsMessage': return '新しいプロンプトを追加してみましょう';
			case 'promptListPage.promptCount': return '個のプロンプト';
			case 'promptListPage.edit': return '編集';
			case 'promptListPage.delete': return '削除';
			case 'promptListPage.deleteConfirm': return '削除の確認';
			case 'promptListPage.deleteMessage': return '「{title}」を削除しますか？';
			case 'promptListPage.today': return '今日';
			case 'promptListPage.yesterday': return '昨日';
			case 'promptListPage.daysAgo': return '日前';
			case 'promptListPage.newPrompt': return '新規追加';
			case 'promptListPage.cancel': return 'キャンセル';
			case 'validation.titleRequired': return 'タイトルを入力してください';
			case 'validation.contentRequired': return '内容を入力してください';
			default: return null;
		}
	}
}

