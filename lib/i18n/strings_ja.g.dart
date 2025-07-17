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
	@override late final _TranslationsChangeHistoryPageJa changeHistoryPage = _TranslationsChangeHistoryPageJa._(_root);
	@override late final _TranslationsPrivacyPolicyPageJa privacyPolicyPage = _TranslationsPrivacyPolicyPageJa._(_root);
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
	@override String get title => 'タイトル';
	@override String get titleHint => 'このプロットのタイトルを入力';
	@override String get trigger => 'これを思いついたきっかけ';
	@override String get triggerHint => 'これを思いついたきっかけを入力';
	@override String get character => '人物';
	@override String get characterHint => '人物などを入力';
	@override String get content => '内容';
	@override String get contentHint => 'このプロットの内容を入力してください';
	@override String get save => '保存';
	@override String get cancel => 'キャンセル';
	@override String get setting => 'プロット';
}

// Path: editPromptPage
class _TranslationsEditPromptPageJa implements TranslationsEditPromptPageEn {
	_TranslationsEditPromptPageJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '編集';
	@override String get titleLabel => 'タイトル';
	@override String get titleHint => 'プロットのタイトルを入力';
	@override String get characterLabel => '人物など';
	@override String get characterHint => '人物などを入力';
	@override String get triggerLabel => 'きっかけ';
	@override String get triggerHint => 'これを書いたきっかけを入力してください';
	@override String get contentLabel => '内容';
	@override String get contentHint => 'このプロットの内容を入力してください';
	@override String get save => '保存';
	@override String get cancel => 'キャンセル';
	@override String get setting => 'プロット';
}

// Path: promptListPage
class _TranslationsPromptListPageJa implements TranslationsPromptListPageEn {
	_TranslationsPromptListPageJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'プロット一覧';
	@override String get search => '検索';
	@override String get searchHint => 'プロットを検索...';
	@override String get favourites => 'お気に入り';
	@override String get all => 'すべて';
	@override String get noPrompts => 'なし';
	@override String get noFavourites => 'お気に入りがありません';
	@override String get noPromptsMessage => '新しいプロットを追加してみましょう';
	@override String get promptCount => '個のプロット';
	@override String get edit => '編集';
	@override String get history => '変更履歴';
	@override String get delete => '削除';
	@override String get deleteMessage => '本当に削除しますか？';
	@override String get today => '今日';
	@override String get yesterday => '昨日';
	@override String get daysAgo => '日前';
	@override String get newPrompt => '新規追加';
	@override String get cancel => 'キャンセル';
	@override String get privacyPolicy => 'プライバシーポリシー';
}

// Path: changeHistoryPage
class _TranslationsChangeHistoryPageJa implements TranslationsChangeHistoryPageEn {
	_TranslationsChangeHistoryPageJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '変更履歴';
	@override String get noTitle => '(タイトルなし)';
	@override String get character => '人物など';
	@override String get trigger => 'きっかけ';
	@override String get content => '内容';
	@override String get newest => '最新の内容';
	@override String get before => '件前';
}

// Path: privacyPolicyPage
class _TranslationsPrivacyPolicyPageJa implements TranslationsPrivacyPolicyPageEn {
	_TranslationsPrivacyPolicyPageJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'プライバシーポリシー';
	@override String get lastUpdated => '最終更新日: 2025年7月';
	@override String get section1Title => '1. 収集する情報';
	@override String get section1Content => 'このアプリは、あなたのプロット設定をデバイス内にローカルで保存します。個人情報を収集したり、外部サーバーにデータを送信することはありません。すべてのデータはローカルストレージを使用してデバイス内に安全に保存されます。';
	@override String get section2Title => '2. 情報の使用方法';
	@override String get section2Content => 'このアプリで作成した情報は、プロット設定の保存、編集、管理機能を提供する目的でのみ使用されます。データを他の目的で使用することはありません。';
	@override String get section3Title => '3. データの保存';
	@override String get section3Content => 'すべてのデータは安全なローカルストレージを使用してデバイス内に保存されます。私たちはあなたのデータにアクセスできず、サーバーや第三者に送信されることもありません。';
	@override String get section4Title => '4. データセキュリティ';
	@override String get section4Content => 'あなたのデータはデバイスのセキュリティ機能によって保護されています。私たちは業界標準のセキュリティ対策を実装し、デバイス内のデータが安全に保たれるよう努めています。';
	@override String get section5Title => '5. 第三者サービス';
	@override String get section5Content => 'このアプリは第三者広告サービスを通じて広告を表示する場合があります。これらのサービスは広告目的で匿名の使用データを収集する場合があります。詳細については、それぞれのプライバシーポリシーをご参照ください。';
	@override String get section6Title => '6. このポリシーの変更';
	@override String get section6Content => 'このプライバシーポリシーは随時更新される場合があります。新しいプライバシーポリシーをこのページに掲載し、「最終更新日」を更新することで、変更をお知らせします。';
	@override String get contactTitle => 'お問い合わせ';
	@override String get contactContent => 'このプライバシーポリシーについてご質問がございましたら、アプリストアを通じてお問い合わせください。';
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
			case 'addNewPage.title': return 'タイトル';
			case 'addNewPage.titleHint': return 'このプロットのタイトルを入力';
			case 'addNewPage.trigger': return 'これを思いついたきっかけ';
			case 'addNewPage.triggerHint': return 'これを思いついたきっかけを入力';
			case 'addNewPage.character': return '人物';
			case 'addNewPage.characterHint': return '人物などを入力';
			case 'addNewPage.content': return '内容';
			case 'addNewPage.contentHint': return 'このプロットの内容を入力してください';
			case 'addNewPage.save': return '保存';
			case 'addNewPage.cancel': return 'キャンセル';
			case 'addNewPage.setting': return 'プロット';
			case 'editPromptPage.title': return '編集';
			case 'editPromptPage.titleLabel': return 'タイトル';
			case 'editPromptPage.titleHint': return 'プロットのタイトルを入力';
			case 'editPromptPage.characterLabel': return '人物など';
			case 'editPromptPage.characterHint': return '人物などを入力';
			case 'editPromptPage.triggerLabel': return 'きっかけ';
			case 'editPromptPage.triggerHint': return 'これを書いたきっかけを入力してください';
			case 'editPromptPage.contentLabel': return '内容';
			case 'editPromptPage.contentHint': return 'このプロットの内容を入力してください';
			case 'editPromptPage.save': return '保存';
			case 'editPromptPage.cancel': return 'キャンセル';
			case 'editPromptPage.setting': return 'プロット';
			case 'promptListPage.title': return 'プロット一覧';
			case 'promptListPage.search': return '検索';
			case 'promptListPage.searchHint': return 'プロットを検索...';
			case 'promptListPage.favourites': return 'お気に入り';
			case 'promptListPage.all': return 'すべて';
			case 'promptListPage.noPrompts': return 'なし';
			case 'promptListPage.noFavourites': return 'お気に入りがありません';
			case 'promptListPage.noPromptsMessage': return '新しいプロットを追加してみましょう';
			case 'promptListPage.promptCount': return '個のプロット';
			case 'promptListPage.edit': return '編集';
			case 'promptListPage.history': return '変更履歴';
			case 'promptListPage.delete': return '削除';
			case 'promptListPage.deleteMessage': return '本当に削除しますか？';
			case 'promptListPage.today': return '今日';
			case 'promptListPage.yesterday': return '昨日';
			case 'promptListPage.daysAgo': return '日前';
			case 'promptListPage.newPrompt': return '新規追加';
			case 'promptListPage.cancel': return 'キャンセル';
			case 'promptListPage.privacyPolicy': return 'プライバシーポリシー';
			case 'changeHistoryPage.title': return '変更履歴';
			case 'changeHistoryPage.noTitle': return '(タイトルなし)';
			case 'changeHistoryPage.character': return '人物など';
			case 'changeHistoryPage.trigger': return 'きっかけ';
			case 'changeHistoryPage.content': return '内容';
			case 'changeHistoryPage.newest': return '最新の内容';
			case 'changeHistoryPage.before': return '件前';
			case 'privacyPolicyPage.title': return 'プライバシーポリシー';
			case 'privacyPolicyPage.lastUpdated': return '最終更新日: 2025年7月';
			case 'privacyPolicyPage.section1Title': return '1. 収集する情報';
			case 'privacyPolicyPage.section1Content': return 'このアプリは、あなたのプロット設定をデバイス内にローカルで保存します。個人情報を収集したり、外部サーバーにデータを送信することはありません。すべてのデータはローカルストレージを使用してデバイス内に安全に保存されます。';
			case 'privacyPolicyPage.section2Title': return '2. 情報の使用方法';
			case 'privacyPolicyPage.section2Content': return 'このアプリで作成した情報は、プロット設定の保存、編集、管理機能を提供する目的でのみ使用されます。データを他の目的で使用することはありません。';
			case 'privacyPolicyPage.section3Title': return '3. データの保存';
			case 'privacyPolicyPage.section3Content': return 'すべてのデータは安全なローカルストレージを使用してデバイス内に保存されます。私たちはあなたのデータにアクセスできず、サーバーや第三者に送信されることもありません。';
			case 'privacyPolicyPage.section4Title': return '4. データセキュリティ';
			case 'privacyPolicyPage.section4Content': return 'あなたのデータはデバイスのセキュリティ機能によって保護されています。私たちは業界標準のセキュリティ対策を実装し、デバイス内のデータが安全に保たれるよう努めています。';
			case 'privacyPolicyPage.section5Title': return '5. 第三者サービス';
			case 'privacyPolicyPage.section5Content': return 'このアプリは第三者広告サービスを通じて広告を表示する場合があります。これらのサービスは広告目的で匿名の使用データを収集する場合があります。詳細については、それぞれのプライバシーポリシーをご参照ください。';
			case 'privacyPolicyPage.section6Title': return '6. このポリシーの変更';
			case 'privacyPolicyPage.section6Content': return 'このプライバシーポリシーは随時更新される場合があります。新しいプライバシーポリシーをこのページに掲載し、「最終更新日」を更新することで、変更をお知らせします。';
			case 'privacyPolicyPage.contactTitle': return 'お問い合わせ';
			case 'privacyPolicyPage.contactContent': return 'このプライバシーポリシーについてご質問がございましたら、アプリストアを通じてお問い合わせください。';
			case 'validation.titleRequired': return 'タイトルを入力してください';
			case 'validation.contentRequired': return '内容を入力してください';
			default: return null;
		}
	}
}

