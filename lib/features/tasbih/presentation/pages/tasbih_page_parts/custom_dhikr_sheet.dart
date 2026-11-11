part of '../tasbih_page.dart';

// Owns its controller so it lives until the sheet route is fully gone,
// instead of being disposed while the close animation still renders it.
class _CustomDhikrSheet extends StatefulWidget {
  const _CustomDhikrSheet();

  @override
  State<_CustomDhikrSheet> createState() => _CustomDhikrSheetState();
}

class _CustomDhikrSheetState extends State<_CustomDhikrSheet> {
  final _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _submit() {
    final value = _controller.text.trim();
    if (value.isEmpty) return;
    Navigator.pop(context, value);
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    return Padding(
      padding: EdgeInsets.fromLTRB(
        20,
        8,
        20,
        MediaQuery.of(context).viewInsets.bottom + 24,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            l10n.addCustomDhikr2,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
          ),
          const SizedBox(height: 14),
          TextField(
            controller: _controller,
            autofocus: true,
            textCapitalization: TextCapitalization.words,
            textInputAction: TextInputAction.done,
            onSubmitted: (_) => _submit(),
            decoration: InputDecoration(
              labelText: l10n.dhikr,
              hintText: 'HasbunAllah',
              border: const OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 14),
          FilledButton.icon(
            onPressed: _submit,
            icon: const Icon(AppIcons.add),
            label: Text(l10n.addCustomDhikr2),
          ),
        ],
      ),
    );
  }
}
