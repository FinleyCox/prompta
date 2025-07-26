import 'package:flutter/material.dart';
import '../models/prompt_model.dart';
import '../services/hive_service.dart';
import '../i18n/strings.g.dart';
import '../widgets/banner_ad_widget.dart';
import 'add_new_page.dart';
import 'edit_prompt_page.dart';
import 'change_history_page.dart';
import 'privacy_policy_page.dart';

class PromptListPage extends StatefulWidget {
  const PromptListPage({super.key});

  @override
  State<PromptListPage> createState() => _PromptListPageState();
}

class _PromptListPageState extends State<PromptListPage>
    with TickerProviderStateMixin {
  List<PromptModel> _prompts = [];
  List<PromptModel> _filteredPrompts = [];
  bool _showFavoritesOnly = false;
  final TextEditingController _searchController = TextEditingController();
  late AnimationController _animationController;
  late Animation<double> _fadeAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: const Duration(milliseconds: 800),
      vsync: this,
    );
    _fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeInOut),
    );
    _loadPrompts();
    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    _searchController.dispose();
    super.dispose();
  }

  void _loadPrompts() {
    setState(() {
      _prompts = HiveService.getAllPrompts();
      _filterPrompts();
    });
  }

  void _filterPrompts() {
    List<PromptModel> filtered = _prompts;

    if (_showFavoritesOnly) {
      filtered = filtered.where((prompt) => prompt.isFavorite).toList();
    }

    if (_searchController.text.isNotEmpty) {
      filtered = HiveService.searchPrompts(_searchController.text);
      if (_showFavoritesOnly) {
        filtered = filtered.where((prompt) => prompt.isFavorite).toList();
      }
    }

    setState(() {
      _filteredPrompts = filtered;
    });
  }

  @override
  Widget build(BuildContext context) {
    final translations = context.t.promptListPage;
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Color(0xFF667eea), Color(0xFF764ba2)],
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              // ヘッダー部分
              Container(
                padding: const EdgeInsets.all(20),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            translations.title,
                            style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              shadows: [
                                Shadow(
                                  offset: const Offset(0, 2),
                                  blurRadius: 4,
                                  color: Colors.black.withValues(alpha: 0.3),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            '${_filteredPrompts.length}${translations.promptCount}',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.white.withValues(alpha: 0.8),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white.withValues(alpha: 0.2),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: IconButton(
                        icon: Icon(
                          _showFavoritesOnly
                              ? Icons.favorite
                              : Icons.favorite_border,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          setState(() {
                            _showFavoritesOnly = !_showFavoritesOnly;
                            _filterPrompts();
                          });
                        },
                      ),
                    ),
                    const SizedBox(width: 8),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white.withValues(alpha: 0.2),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: IconButton(
                        icon: const Icon(
                          Icons.privacy_tip,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const PrivacyPolicyPage(),
                            ),
                          );
                        },
                      ),
                    ),
                    const SizedBox(width: 8),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white.withValues(alpha: 0.2),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: PopupMenuButton<AppLocale>(
                        icon: const Icon(Icons.language, color: Colors.white),
                        onSelected: (AppLocale locale) {
                          LocaleSettings.setLocale(locale).then((_) {
                            if (!mounted) return;
                            setState(() {});
                          });
                        },
                        itemBuilder:
                            (context) => [
                              PopupMenuItem(
                                value: AppLocale.ja,
                                child: Row(
                                  children: [
                                    Text(
                                      'JP',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight:
                                            LocaleSettings.currentLocale ==
                                                    AppLocale.ja
                                                ? FontWeight.bold
                                                : FontWeight.normal,
                                      ),
                                    ),
                                    if (LocaleSettings.currentLocale ==
                                        AppLocale.ja)
                                      const Padding(
                                        padding: EdgeInsets.only(left: 8),
                                        child: Icon(Icons.check, size: 16),
                                      ),
                                  ],
                                ),
                              ),
                              PopupMenuItem(
                                value: AppLocale.en,
                                child: Row(
                                  children: [
                                    Text(
                                      'EN',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight:
                                            LocaleSettings.currentLocale ==
                                                    AppLocale.en
                                                ? FontWeight.bold
                                                : FontWeight.normal,
                                      ),
                                    ),
                                    if (LocaleSettings.currentLocale ==
                                        AppLocale.en)
                                      const Padding(
                                        padding: EdgeInsets.only(left: 8),
                                        child: Icon(Icons.check, size: 16),
                                      ),
                                  ],
                                ),
                              ),
                            ],
                      ),
                    ),
                  ],
                ),
              ),

              // 検索バー
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withValues(alpha: 0.1),
                      blurRadius: 10,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: TextField(
                  controller: _searchController,
                  decoration: InputDecoration(
                    hintText: translations.searchHint,
                    hintStyle: TextStyle(color: Colors.grey.shade400),
                    prefixIcon: const Icon(
                      Icons.search,
                      color: Color(0xFF6366F1),
                    ),
                    border: InputBorder.none,
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 16,
                    ),
                  ),
                  onChanged: (value) => _filterPrompts(),
                ),
              ),

              const SizedBox(height: 20),

              // 設定リスト
              Expanded(
                child:
                    _filteredPrompts.isEmpty
                        ? Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.note_add,
                                size: 64,
                                color: Colors.white.withValues(alpha: 0.6),
                              ),
                              const SizedBox(height: 16),
                              Text(
                                translations.noPrompts,
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white.withValues(alpha: 0.8),
                                ),
                              ),
                              const SizedBox(height: 8),
                              Text(
                                _showFavoritesOnly
                                    ? translations.noFavourites
                                    : translations.noPromptsMessage,
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white.withValues(alpha: 0.6),
                                ),
                              ),
                            ],
                          ),
                        )
                        : ListView.builder(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          itemCount: _filteredPrompts.length,
                          itemBuilder: (context, index) {
                            final prompt = _filteredPrompts[index];
                            return AnimatedBuilder(
                              animation: _fadeAnimation,
                              builder: (context, child) {
                                return Transform.translate(
                                  offset: Offset(
                                    0,
                                    20 * (1 - _fadeAnimation.value),
                                  ),
                                  child: Opacity(
                                    opacity: _fadeAnimation.value,
                                    child: Container(
                                      margin: const EdgeInsets.only(bottom: 12),
                                      child: _buildPromptCard(prompt),
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                        ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.2),
              blurRadius: 8,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: FloatingActionButton.extended(
          onPressed: () async {
            final result = await Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const AddNewPage()),
            );
            if (result == true) {
              _loadPrompts();
            }
          },
          backgroundColor: Colors.white,
          foregroundColor: const Color(0xFF6366F1),
          icon: const Icon(Icons.add),
          label: Text(translations.newPrompt),
        ),
      ),
      bottomNavigationBar: SafeArea(child: const BannerAdWidget()),
    );
  }

  Widget _buildPromptCard(PromptModel prompt) {
    final translations = context.t.promptListPage;
    return Card(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Colors.white, Colors.grey.shade50],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Text(
                      prompt.title,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color:
                              prompt.isFavorite
                                  ? Colors.red.withValues(alpha: 0.1)
                                  : Colors.grey.withValues(alpha: 0.1),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: IconButton(
                          icon: Icon(
                            prompt.isFavorite
                                ? Icons.favorite
                                : Icons.favorite_border,
                            color: prompt.isFavorite ? Colors.red : Colors.grey,
                            size: 20,
                          ),
                          onPressed: () async {
                            await HiveService.toggleFavorite(prompt.id);
                            if (mounted) {
                              _loadPrompts();
                            }
                          },
                        ),
                      ),
                      const SizedBox(width: 8),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.grey.withValues(alpha: 0.1),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: PopupMenuButton<String>(
                          icon: const Icon(Icons.more_vert, color: Colors.grey),
                          onSelected: (value) async {
                            switch (value) {
                              case 'edit':
                                final result = await Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder:
                                        (context) =>
                                            EditPromptPage(prompt: prompt),
                                  ),
                                );
                                if (mounted && result == true) {
                                  _loadPrompts();
                                }
                                break;
                              case 'history':
                                final result = await Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder:
                                        (context) =>
                                            ChangeHistoryPage(prompt: prompt),
                                  ),
                                );
                                if (mounted && result == true) {
                                  _loadPrompts();
                                }
                                break;
                              case 'delete':
                                _showDeleteDialog(prompt);
                                break;
                            }
                          },
                          itemBuilder:
                              (context) => [
                                PopupMenuItem(
                                  value: 'edit',
                                  child: Row(
                                    children: [
                                      const Icon(
                                        Icons.edit,
                                        color: Color(0xFF6366F1),
                                      ),
                                      const SizedBox(width: 8),
                                      Text(translations.edit),
                                    ],
                                  ),
                                ),
                                PopupMenuItem(
                                  value: 'history',
                                  child: Row(
                                    children: [
                                      const Icon(
                                        Icons.history,
                                        color: Colors.blue,
                                      ),
                                      const SizedBox(width: 8),
                                      Text(translations.history),
                                    ],
                                  ),
                                ),
                                PopupMenuItem(
                                  value: 'delete',
                                  child: Row(
                                    children: [
                                      const Icon(
                                        Icons.delete,
                                        color: Colors.red,
                                      ),
                                      const SizedBox(width: 8),
                                      Text(translations.delete),
                                    ],
                                  ),
                                ),
                              ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Text(
                prompt.trigger,
                style: TextStyle(fontSize: 14, color: Colors.grey.shade600),
              ),
              const SizedBox(height: 8),
              Text(
                prompt.character,
                style: TextStyle(fontSize: 14, color: Colors.grey.shade600),
              ),
              const SizedBox(height: 8),
              Text(
                prompt.content,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey.shade600,
                  height: 1.4,
                ),
              ),
              const SizedBox(height: 12),
              Row(
                children: [
                  Icon(
                    Icons.access_time,
                    size: 14,
                    color: Colors.grey.shade400,
                  ),
                  const SizedBox(width: 4),
                  Text(
                    _formatDate(prompt.updatedAt),
                    style: TextStyle(fontSize: 12, color: Colors.grey.shade400),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  String _formatDate(DateTime date) {
    final translations = context.t.promptListPage;
    final now = DateTime.now();
    final difference = now.difference(date);

    if (difference.inDays == 0) {
      return translations.today;
    } else if (difference.inDays == 1) {
      return translations.yesterday;
    } else if (difference.inDays < 7) {
      return '${difference.inDays}${translations.daysAgo}';
    } else {
      return '${date.month}/${date.day}';
    }
  }

  void _showDeleteDialog(PromptModel prompt) {
    final translations = context.t.promptListPage;
    showDialog(
      context: context,
      builder:
          (context) => AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            title: Text(translations.deleteMessage),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: Text(translations.cancel),
              ),
              ElevatedButton(
                onPressed: () async {
                  await HiveService.deletePrompt(prompt.id);
                  Navigator.pop(context);
                  if (mounted) {
                    _loadPrompts();
                  }
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  foregroundColor: Colors.white,
                ),
                child: Text(translations.delete),
              ),
            ],
          ),
    );
  }
}
