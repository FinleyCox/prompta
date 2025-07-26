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
	late final TranslationsChangeHistoryPageEn changeHistoryPage = TranslationsChangeHistoryPageEn._(_root);
	late final TranslationsPrivacyPolicyPageEn privacyPolicyPage = TranslationsPrivacyPolicyPageEn._(_root);
	late final TranslationsValidationEn validation = TranslationsValidationEn._(_root);
}

// Path: mainScreen
class TranslationsMainScreenEn {
	TranslationsMainScreenEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get addNew => 'Add Plot';
	String get edit => 'Content Check & Edit';
	String get favourites => 'Favourites';
}

// Path: addNewPage
class TranslationsAddNewPageEn {
	TranslationsAddNewPageEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Title';
	String get titleHint => 'Enter the title of this plot';
	String get trigger => 'What inspired you to do this?';
	String get triggerLabel => 'Trigger';
	String get triggerHint => 'Enter what inspired you to do this';
	String get character => 'Characters';
	String get characterHint => 'Enter the characters';
	String get content => 'Content';
	String get contentHint => 'Enter the content of this plot';
	String get save => 'Save';
	String get cancel => 'Cancel';
	String get setting => 'Content';
}

// Path: editPromptPage
class TranslationsEditPromptPageEn {
	TranslationsEditPromptPageEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Content Check & Edit';
	String get titleLabel => 'Title';
	String get titleHint => 'Enter plot title';
	String get triggerLabel => 'What inspired you to do this?';
	String get triggerHint => 'Enter what inspired you to do this';
	String get characterLabel => 'Characters';
	String get character => 'Characters';
	String get characterHint => 'Enter the characters';
	String get contentLabel => 'Content';
	String get contentHint => 'Enter the content of this plot';
	String get save => 'Save';
	String get cancel => 'Cancel';
	String get setting => 'Content';
}

// Path: promptListPage
class TranslationsPromptListPageEn {
	TranslationsPromptListPageEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'My Plots';
	String get search => 'Search';
	String get searchHint => 'Search plots...';
	String get favourites => 'Favourites';
	String get all => 'All';
	String get noPrompts => 'there is no plot';
	String get noFavourites => 'No Favourites';
	String get noPromptsMessage => 'Try adding a new plot';
	String get promptCount => 'plots';
	String get edit => 'Content Check & Edit';
	String get history => 'History';
	String get delete => 'Delete';
	String get deleteMessage => 'Are you sure you want to delete?';
	String get today => 'Today';
	String get yesterday => 'Yesterday';
	String get daysAgo => 'days ago';
	String get newPrompt => 'Add Plot';
	String get cancel => 'Cancel';
	String get privacyPolicy => 'Privacy Policy';
}

// Path: changeHistoryPage
class TranslationsChangeHistoryPageEn {
	TranslationsChangeHistoryPageEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Change History';
	String get noTitle => '(No Title)';
	String get character => 'Characters';
	String get trigger => 'What inspired you to do this?';
	String get content => 'Content';
	String get newest => 'Newest Content';
	String get before => 'before';
}

// Path: privacyPolicyPage
class TranslationsPrivacyPolicyPageEn {
	TranslationsPrivacyPolicyPageEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Privacy Policy';
	String get lastUpdated => 'Last updated: July 2025';
	String get section1Title => '1. Information We Collect';
	String get section1Content => 'This app collects and stores your plot settings locally on your device. We do not collect any personal information or transmit data to external servers. All data is stored securely on your device using local storage.';
	String get section2Title => '2. How We Use Your Information';
	String get section2Content => 'The information you create in this app is used solely to provide you with the functionality to save, edit, and manage your plot settings. We do not use your data for any other purpose.';
	String get section3Title => '3. Data Storage';
	String get section3Content => 'All your data is stored locally on your device using secure local storage. We do not have access to your data, and it is not transmitted to our servers or any third parties.';
	String get section4Title => '4. Data Security';
	String get section4Content => 'Your data is protected by your device\'s security measures. We implement industry-standard security practices to ensure your data remains secure on your device.';
	String get section5Title => '5. Third-Party Services';
	String get section5Content => 'This app may display advertisements through third-party ad services. These services may collect anonymous usage data for advertising purposes. Please refer to their respective privacy policies for more information.';
	String get section6Title => '6. Changes to This Policy';
	String get section6Content => 'We may update this privacy policy from time to time. We will notify you of any changes by posting the new privacy policy on this page and updating the \'Last updated\' date.';
	String get contactTitle => 'Contact Us';
	String get contactContent => 'If you have any questions about this privacy policy, please contact us through the app store.';
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
			case 'mainScreen.addNew': return 'Add Plot';
			case 'mainScreen.edit': return 'Content Check & Edit';
			case 'mainScreen.favourites': return 'Favourites';
			case 'locales.ja': return '日本語';
			case 'locales.en': return 'English';
			case 'addNewPage.title': return 'Title';
			case 'addNewPage.titleHint': return 'Enter the title of this plot';
			case 'addNewPage.trigger': return 'What inspired you to do this?';
			case 'addNewPage.triggerLabel': return 'Trigger';
			case 'addNewPage.triggerHint': return 'Enter what inspired you to do this';
			case 'addNewPage.character': return 'Characters';
			case 'addNewPage.characterHint': return 'Enter the characters';
			case 'addNewPage.content': return 'Content';
			case 'addNewPage.contentHint': return 'Enter the content of this plot';
			case 'addNewPage.save': return 'Save';
			case 'addNewPage.cancel': return 'Cancel';
			case 'addNewPage.setting': return 'Content';
			case 'editPromptPage.title': return 'Content Check & Edit';
			case 'editPromptPage.titleLabel': return 'Title';
			case 'editPromptPage.titleHint': return 'Enter plot title';
			case 'editPromptPage.triggerLabel': return 'What inspired you to do this?';
			case 'editPromptPage.triggerHint': return 'Enter what inspired you to do this';
			case 'editPromptPage.characterLabel': return 'Characters';
			case 'editPromptPage.character': return 'Characters';
			case 'editPromptPage.characterHint': return 'Enter the characters';
			case 'editPromptPage.contentLabel': return 'Content';
			case 'editPromptPage.contentHint': return 'Enter the content of this plot';
			case 'editPromptPage.save': return 'Save';
			case 'editPromptPage.cancel': return 'Cancel';
			case 'editPromptPage.setting': return 'Content';
			case 'promptListPage.title': return 'My Plots';
			case 'promptListPage.search': return 'Search';
			case 'promptListPage.searchHint': return 'Search plots...';
			case 'promptListPage.favourites': return 'Favourites';
			case 'promptListPage.all': return 'All';
			case 'promptListPage.noPrompts': return 'there is no plot';
			case 'promptListPage.noFavourites': return 'No Favourites';
			case 'promptListPage.noPromptsMessage': return 'Try adding a new plot';
			case 'promptListPage.promptCount': return 'plots';
			case 'promptListPage.edit': return 'Content Check & Edit';
			case 'promptListPage.history': return 'History';
			case 'promptListPage.delete': return 'Delete';
			case 'promptListPage.deleteMessage': return 'Are you sure you want to delete?';
			case 'promptListPage.today': return 'Today';
			case 'promptListPage.yesterday': return 'Yesterday';
			case 'promptListPage.daysAgo': return 'days ago';
			case 'promptListPage.newPrompt': return 'Add Plot';
			case 'promptListPage.cancel': return 'Cancel';
			case 'promptListPage.privacyPolicy': return 'Privacy Policy';
			case 'changeHistoryPage.title': return 'Change History';
			case 'changeHistoryPage.noTitle': return '(No Title)';
			case 'changeHistoryPage.character': return 'Characters';
			case 'changeHistoryPage.trigger': return 'What inspired you to do this?';
			case 'changeHistoryPage.content': return 'Content';
			case 'changeHistoryPage.newest': return 'Newest Content';
			case 'changeHistoryPage.before': return 'before';
			case 'privacyPolicyPage.title': return 'Privacy Policy';
			case 'privacyPolicyPage.lastUpdated': return 'Last updated: July 2025';
			case 'privacyPolicyPage.section1Title': return '1. Information We Collect';
			case 'privacyPolicyPage.section1Content': return 'This app collects and stores your plot settings locally on your device. We do not collect any personal information or transmit data to external servers. All data is stored securely on your device using local storage.';
			case 'privacyPolicyPage.section2Title': return '2. How We Use Your Information';
			case 'privacyPolicyPage.section2Content': return 'The information you create in this app is used solely to provide you with the functionality to save, edit, and manage your plot settings. We do not use your data for any other purpose.';
			case 'privacyPolicyPage.section3Title': return '3. Data Storage';
			case 'privacyPolicyPage.section3Content': return 'All your data is stored locally on your device using secure local storage. We do not have access to your data, and it is not transmitted to our servers or any third parties.';
			case 'privacyPolicyPage.section4Title': return '4. Data Security';
			case 'privacyPolicyPage.section4Content': return 'Your data is protected by your device\'s security measures. We implement industry-standard security practices to ensure your data remains secure on your device.';
			case 'privacyPolicyPage.section5Title': return '5. Third-Party Services';
			case 'privacyPolicyPage.section5Content': return 'This app may display advertisements through third-party ad services. These services may collect anonymous usage data for advertising purposes. Please refer to their respective privacy policies for more information.';
			case 'privacyPolicyPage.section6Title': return '6. Changes to This Policy';
			case 'privacyPolicyPage.section6Content': return 'We may update this privacy policy from time to time. We will notify you of any changes by posting the new privacy policy on this page and updating the \'Last updated\' date.';
			case 'privacyPolicyPage.contactTitle': return 'Contact Us';
			case 'privacyPolicyPage.contactContent': return 'If you have any questions about this privacy policy, please contact us through the app store.';
			case 'validation.titleRequired': return 'Please enter a title';
			case 'validation.contentRequired': return 'Please enter content';
			default: return null;
		}
	}
}

