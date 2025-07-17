import 'package:flutter/material.dart';
import '../models/prompt_model.dart';
import '../services/hive_service.dart';
import '../i18n/strings.g.dart';
import '../models/prompt_history_model.dart';

class EditPromptPage extends StatefulWidget {
  final PromptModel prompt;

  const EditPromptPage({super.key, required this.prompt});

  @override
  State<EditPromptPage> createState() => _EditPromptPageState();
}

class _EditPromptPageState extends State<EditPromptPage>
    with TickerProviderStateMixin {
  late TextEditingController _titleController;
  late TextEditingController _triggerController;
  late TextEditingController _characterController;
  late TextEditingController _contentController;
  late bool _isFavorite;
  late AnimationController _animationController;
  late Animation<double> _slideAnimation;
  late Animation<double> _fadeAnimation;
  bool _isKeyboardVisible = false;

  @override
  void initState() {
    super.initState();
    _titleController = TextEditingController(text: widget.prompt.title);
    _triggerController = TextEditingController(text: widget.prompt.trigger);
    _characterController = TextEditingController(text: widget.prompt.character);
    _contentController = TextEditingController(text: widget.prompt.content);
    _isFavorite = widget.prompt.isFavorite;

    _animationController = AnimationController(
      duration: const Duration(milliseconds: 600),
      vsync: this,
    );
    _slideAnimation = Tween<double>(begin: 1.0, end: 0.0).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeOut),
    );
    _fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeIn),
    );
    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    _titleController.dispose();
    _triggerController.dispose();
    _characterController.dispose();
    _contentController.dispose();
    super.dispose();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // キーボードの表示状態を監視
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final keyboardHeight = MediaQuery.of(context).viewInsets.bottom;
      final newKeyboardVisible = keyboardHeight > 0;
      if (_isKeyboardVisible != newKeyboardVisible) {
        setState(() {
          _isKeyboardVisible = newKeyboardVisible;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final translations = context.t.editPromptPage;
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
          child: AnimatedBuilder(
            animation: _animationController,
            builder: (context, child) {
              return Transform.translate(
                offset: Offset(0, 50 * _slideAnimation.value),
                child: Opacity(
                  opacity: _fadeAnimation.value,
                  child: Column(
                    children: [
                      // ヘッダー
                      Container(
                        padding: const EdgeInsets.all(20),
                        child: Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.white.withValues(alpha: 0.2),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: IconButton(
                                icon: const Icon(
                                  Icons.arrow_back,
                                  color: Colors.white,
                                ),
                                onPressed: () => Navigator.pop(context),
                              ),
                            ),
                            const SizedBox(width: 16),
                            Expanded(
                              child: Text(
                                translations.title,
                                style: const TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  shadows: [
                                    Shadow(
                                      offset: Offset(0, 2),
                                      blurRadius: 4,
                                      color: Colors.black26,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.white.withValues(alpha: 0.2),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: IconButton(
                                icon: Icon(
                                  _isFavorite
                                      ? Icons.favorite
                                      : Icons.favorite_border,
                                  color:
                                      _isFavorite ? Colors.red : Colors.white,
                                ),
                                onPressed: () {
                                  setState(() {
                                    _isFavorite = !_isFavorite;
                                  });
                                },
                              ),
                            ),
                          ],
                        ),
                      ),

                      // フォーム
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.all(20),
                          padding: const EdgeInsets.all(24),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withValues(alpha: 0.1),
                                blurRadius: 20,
                                offset: const Offset(0, 10),
                              ),
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                translations.titleLabel,
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black87,
                                ),
                              ),
                              const SizedBox(height: 8),
                              TextField(
                                controller: _titleController,
                                decoration: InputDecoration(
                                  hintText: translations.titleHint,
                                  hintStyle: TextStyle(
                                    color: Colors.grey.shade400,
                                  ),
                                  filled: true,
                                  fillColor: Colors.grey.shade50,
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12),
                                    borderSide: BorderSide.none,
                                  ),
                                  contentPadding: const EdgeInsets.symmetric(
                                    horizontal: 16,
                                    vertical: 16,
                                  ),
                                ),
                                style: const TextStyle(fontSize: 16),
                              ),
                              const SizedBox(height: 24),
                              Text(
                                translations.setting,
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black87,
                                ),
                              ),
                              const SizedBox(height: 8),
                              Expanded(
                                child: Column(
                                  children: [
                                    TextField(
                                      controller: _characterController,
                                      maxLines: 1,
                                      decoration: InputDecoration(
                                        hintText: translations.characterHint,
                                        hintStyle: TextStyle(
                                          color: Colors.grey.shade400,
                                        ),
                                        filled: true,
                                        fillColor: Colors.grey.shade50,
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(
                                            12,
                                          ),
                                          borderSide: BorderSide.none,
                                        ),
                                        contentPadding:
                                            const EdgeInsets.symmetric(
                                              horizontal: 16,
                                              vertical: 12,
                                            ),
                                      ),
                                      style: const TextStyle(fontSize: 16),
                                    ),
                                    const SizedBox(height: 16),
                                    TextField(
                                      controller: _triggerController,
                                      maxLines: 1,
                                      decoration: InputDecoration(
                                        hintText: translations.triggerHint,
                                        hintStyle: TextStyle(
                                          color: Colors.grey.shade400,
                                        ),
                                        filled: true,
                                        fillColor: Colors.grey.shade50,
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(
                                            12,
                                          ),
                                          borderSide: BorderSide.none,
                                        ),
                                        contentPadding:
                                            const EdgeInsets.symmetric(
                                              horizontal: 16,
                                              vertical: 12,
                                            ),
                                      ),
                                      style: const TextStyle(fontSize: 16),
                                    ),
                                    const SizedBox(height: 16),
                                    Expanded(
                                      child: TextField(
                                        controller: _contentController,
                                        maxLines: null,
                                        expands: true,
                                        textAlignVertical:
                                            TextAlignVertical.top,
                                        decoration: InputDecoration(
                                          hintText: translations.contentHint,
                                          hintStyle: TextStyle(
                                            color: Colors.grey.shade400,
                                          ),
                                          filled: true,
                                          fillColor: Colors.grey.shade50,
                                          border: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(
                                              12,
                                            ),
                                            borderSide: BorderSide.none,
                                          ),
                                          contentPadding: const EdgeInsets.all(
                                            16,
                                          ),
                                        ),
                                        style: const TextStyle(fontSize: 16),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 16),
                              if (!_isKeyboardVisible) ...[
                                Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                            12,
                                          ),
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.black.withValues(
                                                alpha: 0.1,
                                              ),
                                              blurRadius: 8,
                                              offset: const Offset(0, 4),
                                            ),
                                          ],
                                        ),
                                        child: ElevatedButton(
                                          onPressed: _savePrompt,
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: const Color(
                                              0xFF6366F1,
                                            ),
                                            foregroundColor: Colors.white,
                                            padding: const EdgeInsets.symmetric(
                                              vertical: 16,
                                            ),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(12),
                                            ),
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              const Icon(Icons.save, size: 20),
                                              const SizedBox(width: 8),
                                              Text(
                                                translations.save,
                                                style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 16),
                                    Expanded(
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                            12,
                                          ),
                                          border: Border.all(
                                            color: Colors.grey.shade300,
                                          ),
                                        ),
                                        child: OutlinedButton(
                                          onPressed:
                                              () => Navigator.pop(context),
                                          style: OutlinedButton.styleFrom(
                                            foregroundColor:
                                                Colors.grey.shade600,
                                            padding: const EdgeInsets.symmetric(
                                              vertical: 16,
                                            ),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(12),
                                            ),
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              const Icon(Icons.close, size: 20),
                                              const SizedBox(width: 8),
                                              Text(
                                                translations.cancel,
                                                style: const TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  void _savePrompt() async {
    final validation = context.t.validation;

    if (_contentController.text.trim().isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(validation.contentRequired),
          backgroundColor: Colors.red.shade400,
          behavior: SnackBarBehavior.floating,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
      );
      return;
    }

    final updatedPrompt = widget.prompt.copyWith(
      title: _titleController.text.trim(),
      trigger: _triggerController.text.trim(),
      character: _characterController.text.trim(),
      content: _contentController.text.trim(),
      isFavorite: _isFavorite,
      updatedAt: DateTime.now(),
    );

    // 履歴を保存
    final history = PromptHistoryModel(
      id: DateTime.now().millisecondsSinceEpoch.toString(),
      promptId: widget.prompt.id,
      title: widget.prompt.title,
      trigger: widget.prompt.trigger,
      character: widget.prompt.character,
      content: widget.prompt.content,
      isFavorite: widget.prompt.isFavorite,
      savedAt: DateTime.now(),
    );
    await HiveService.addPromptHistory(history);

    await HiveService.updatePrompt(updatedPrompt);

    if (mounted) {
      Navigator.pop(context, true);
    }
  }
}
