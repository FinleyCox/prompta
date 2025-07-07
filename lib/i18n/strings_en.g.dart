///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import

part of 'strings.g.dart';

// Path: <root>
typedef TranslationsEn = Translations; // ignore: unused_element
class Translations implements BaseTranslations<AppLocale, Translations> {
	/// Returns the current translations of the given [context].
	///
	/// Usage:
	/// final t = Translations.of(context);
	static Translations of(BuildContext context) => InheritedLocaleData.of<AppLocale, Translations>(context).translations;

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	Translations({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.en,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <en>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	dynamic operator[](String key) => $meta.getTranslation(key);

	late final Translations _root = this; // ignore: unused_field

	Translations $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => Translations(meta: meta ?? this.$meta);

	// Translations
	late final TranslationsMainScreenEn mainScreen = TranslationsMainScreenEn._(_root);
	Map<String, String> get locales => {
		'ja': '日本語',
		'en': 'English',
	};
	late final TranslationsAddNewPageEn addNewPage = TranslationsAddNewPageEn._(_root);
	late final TranslationsEditPromptPageEn editPromptPage = TranslationsEditPromptPageEn._(_root);
	late final TranslationsPromptListPageEn promptListPage = TranslationsPromptListPageEn._(_root);
	late final TranslationsValidationEn validation = TranslationsValidationEn._(_root);
}

// Path: mainScreen
class TranslationsMainScreenEn {
	TranslationsMainScreenEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get addNew => 'Add New';
	String get edit => 'Edit';
	String get favourites => 'Favourites';
}

// Path: addNewPage
class TranslationsAddNewPageEn {
	TranslationsAddNewPageEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Add New';
	String get content => 'Content';
	String get titleHint => 'Enter prompt title';
	String get contentHint => 'Enter prompt content';
	String get save => 'Save';
	String get cancel => 'Cancel';
}

// Path: editPromptPage
class TranslationsEditPromptPageEn {
	TranslationsEditPromptPageEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Edit';
	String get titleLabel => 'Title';
	String get titleHint => 'Enter prompt title';
	String get contentLabel => 'Content';
	String get contentHint => 'Enter prompt content';
	String get save => 'Save';
	String get cancel => 'Cancel';
}

// Path: promptListPage
class TranslationsPromptListPageEn {
	TranslationsPromptListPageEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Prompt List';
	String get search => 'Search';
	String get searchHint => 'Search prompts...';
	String get favourites => 'Favourites';
	String get all => 'All';
	String get noPrompts => 'No Prompts';
	String get noFavourites => 'No Favourites';
	String get noPromptsMessage => 'Try adding a new prompt';
	String get promptCount => 'prompts';
	String get edit => 'Edit';
	String get delete => 'Delete';
	String get deleteConfirm => 'Delete Confirmation';
	String get deleteMessage => 'Delete "{title}"?';
	String get today => 'Today';
	String get yesterday => 'Yesterday';
	String get daysAgo => 'days ago';
	String get newPrompt => 'Add New';
	String get cancel => 'Cancel';
}

// Path: validation
class TranslationsValidationEn {
	TranslationsValidationEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get titleRequired => 'Please enter a title';
	String get contentRequired => 'Please enter content';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on Translations {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'mainScreen.addNew': return 'Add New';
			case 'mainScreen.edit': return 'Edit';
			case 'mainScreen.favourites': return 'Favourites';
			case 'locales.ja': return '日本語';
			case 'locales.en': return 'English';
			case 'addNewPage.title': return 'Add New';
			case 'addNewPage.content': return 'Content';
			case 'addNewPage.titleHint': return 'Enter prompt title';
			case 'addNewPage.contentHint': return 'Enter prompt content';
			case 'addNewPage.save': return 'Save';
			case 'addNewPage.cancel': return 'Cancel';
			case 'editPromptPage.title': return 'Edit';
			case 'editPromptPage.titleLabel': return 'Title';
			case 'editPromptPage.titleHint': return 'Enter prompt title';
			case 'editPromptPage.contentLabel': return 'Content';
			case 'editPromptPage.contentHint': return 'Enter prompt content';
			case 'editPromptPage.save': return 'Save';
			case 'editPromptPage.cancel': return 'Cancel';
			case 'promptListPage.title': return 'Prompt List';
			case 'promptListPage.search': return 'Search';
			case 'promptListPage.searchHint': return 'Search prompts...';
			case 'promptListPage.favourites': return 'Favourites';
			case 'promptListPage.all': return 'All';
			case 'promptListPage.noPrompts': return 'No Prompts';
			case 'promptListPage.noFavourites': return 'No Favourites';
			case 'promptListPage.noPromptsMessage': return 'Try adding a new prompt';
			case 'promptListPage.promptCount': return 'prompts';
			case 'promptListPage.edit': return 'Edit';
			case 'promptListPage.delete': return 'Delete';
			case 'promptListPage.deleteConfirm': return 'Delete Confirmation';
			case 'promptListPage.deleteMessage': return 'Delete "{title}"?';
			case 'promptListPage.today': return 'Today';
			case 'promptListPage.yesterday': return 'Yesterday';
			case 'promptListPage.daysAgo': return 'days ago';
			case 'promptListPage.newPrompt': return 'Add New';
			case 'promptListPage.cancel': return 'Cancel';
			case 'validation.titleRequired': return 'Please enter a title';
			case 'validation.contentRequired': return 'Please enter content';
			default: return null;
		}
	}
}

