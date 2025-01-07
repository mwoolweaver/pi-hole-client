import 'package:flutter/material.dart';
import 'package:animations/animations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:pi_hole_client/config/theme.dart';
import 'package:pi_hole_client/functions/conversions.dart';

import 'package:pi_hole_client/widgets/custom_list_tile.dart';
import 'package:pi_hole_client/screens/domains/delete_domain_modal.dart';
import 'package:pi_hole_client/screens/domains/domain_comment_modal.dart';

import 'package:pi_hole_client/functions/format.dart';
import 'package:pi_hole_client/models/domain.dart';

class DomainDetailsScreen extends StatelessWidget {
  const DomainDetailsScreen({
    super.key,
    required this.domain,
    required this.remove,
    this.colors,
  });

  final Domain domain;
  final void Function(Domain) remove;
  final AppColors? colors;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.domainDetails),
        actions: [
          IconButton(
            onPressed: () => showDialog(
              context: context,
              builder: (context) => DeleteDomainModal(
                onConfirm: () {
                  Navigator.maybePop(context);
                  remove(domain);
                },
              ),
            ),
            icon: const Icon(Icons.delete_rounded),
          ),
          const SizedBox(width: 10),
        ],
      ),
      body: ListView(
        children: [
          CustomListTile(
            leadingIcon: Icons.domain,
            label: AppLocalizations.of(context)!.domain,
            description: domain.domain,
          ),
          CustomListTile(
            leadingIcon: Icons.category_rounded,
            label: AppLocalizations.of(context)!.type,
            description: getDomainType(domain.type),
            color: colors != null
                ? convertColorFromNumber(colors!, domain.type)
                : null,
          ),
          CustomListTile(
            leadingIcon: Icons.schedule_rounded,
            label: AppLocalizations.of(context)!.dateAdded,
            description: formatTimestamp(domain.dateAdded, 'yyyy-MM-dd'),
          ),
          CustomListTile(
            leadingIcon: Icons.update_rounded,
            label: AppLocalizations.of(context)!.dateModified,
            description: formatTimestamp(domain.dateModified, 'yyyy-MM-dd'),
          ),
          CustomListTile(
            leadingIcon: Icons.check,
            label: AppLocalizations.of(context)!.status,
            description: domain.enabled == 1
                ? AppLocalizations.of(context)!.enabled
                : AppLocalizations.of(context)!.disabled,
          ),
          Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: domain.comment != null && domain.comment != ''
                  ? () => {
                        showModal(
                          context: context,
                          builder: (context) =>
                              DomainCommentModal(comment: domain.comment!),
                        ),
                      }
                  : null,
              child: CustomListTile(
                leadingIcon: Icons.comment_rounded,
                label: AppLocalizations.of(context)!.comment,
                description: domain.comment == ''
                    ? AppLocalizations.of(context)!.noComment
                    : domain.comment,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
