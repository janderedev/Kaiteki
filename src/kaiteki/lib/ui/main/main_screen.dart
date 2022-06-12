import 'package:animations/animations.dart';
import 'package:breakpoint/breakpoint.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kaiteki/constants.dart' as consts;
import 'package:kaiteki/di.dart';
import 'package:kaiteki/ui/animation_functions.dart' as animations;
import 'package:kaiteki/ui/intents.dart';
import 'package:kaiteki/ui/main/compose_fab.dart';
import 'package:kaiteki/ui/main/timeline_page.dart';
import 'package:kaiteki/ui/shared/account_switcher_widget.dart';
import 'package:kaiteki/ui/shared/icon_landing_widget.dart';
import 'package:kaiteki/ui/shortcut_keys.dart';
import 'package:kaiteki/utils/extensions.dart';
import 'package:mdi/mdi.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final _timelineKey = UniqueKey();
  List<Widget>? _pages;
  List<_MainScreenTab>? _tabs;
  int _currentPage = 0;

  // TODO(Craftplacer): abstract this tab system a bit more and use enums to declare tab positioning, this allows us to later
  List<Widget> getPages(AppLocalizations l10n) {
    return [
      TimelinePage(key: _timelineKey),
      Center(
        child: IconLandingWidget(
          icon: const Icon(Mdi.dotsHorizontal),
          text: Text(l10n.niy),
        ),
      ),
      Center(
        child: IconLandingWidget(
          icon: const Icon(Mdi.dotsHorizontal),
          text: Text(l10n.niy),
        ),
      ),
    ];
  }

  List<_MainScreenTab> getTabs(AppLocalizations l10n) {
    return [
      _MainScreenTab(
        selectedIcon: Icons.home,
        icon: Icons.home_outlined,
        text: l10n.timelineTab,
        fab: _FloatingActionButtonData(
          icon: Mdi.pencil,
          tooltip: l10n.composeDialogTitle,
          text: l10n.composeButtonLabel,
          onTap: () => context.showPostDialog(),
        ),
        hideFabWhenDesktop: true,
      ),
      _MainScreenTab(
        selectedIcon: Icons.notifications_rounded,
        icon: Icons.notifications_none,
        text: l10n.notificationsTab,
      ),
      _MainScreenTab(
        selectedIcon: Icons.forum,
        icon: Icons.forum_outlined,
        text: l10n.chatsTab,
      ),
    ];
  }

  static Color? getOutsideColor(BuildContext context) {
    if (consts.useM3) {
      return Theme.of(context).colorScheme.surfaceVariant;
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.getL10n();
    _tabs ??= getTabs(l10n);
    _pages ??= getPages(l10n);

    return FocusableActionDetector(
      shortcuts: {newPostKeySet: NewPostIntent()},
      actions: {
        NewPostIntent: CallbackAction(
          onInvoke: (e) => context.showPostDialog(),
        ),
      },
      child: BreakpointBuilder(
        builder: (_, breakpoint) {
          final isMobile = breakpoint.window == WindowSize.xsmall;
          final outsideColor = getOutsideColor(context);

          if (breakpoint.window == WindowSize.xsmall) {
            return Scaffold(
              backgroundColor: outsideColor,
              appBar: buildAppBar(outsideColor, context),
              body: _getPage(),
              bottomNavigationBar: _getNavigationBar(),
              floatingActionButton: _getFab(context, _currentPage, true),
            );
          } else {
            final showFab = !_tabs![_currentPage].hideFabWhenDesktop;
            return Scaffold(
              backgroundColor: outsideColor,
              appBar: buildAppBar(outsideColor, context),
              body: _buildDesktopView(breakpoint.window >= WindowSize.medium),
              floatingActionButton:
                  showFab ? _getFab(context, _currentPage, isMobile) : null,
            );
          }
        },
      ),
    );
  }

  AppBar buildAppBar(Color? outsideColor, BuildContext context) {
    return AppBar(
      backgroundColor: outsideColor,
      foregroundColor: outsideColor != null
          ? ThemeData.estimateBrightnessForColor(outsideColor)
              .inverted
              .getColor()
          : null,
      title: Text(
        consts.appName,
        style: GoogleFonts.quicksand(fontWeight: FontWeight.w600),
      ),
      elevation: consts.useM3 ? 0.0 : null,
      actions: _buildAppBarActions(context),
    );
  }

  Widget _buildDesktopView(bool extendNavRail) {
    final outsideColor = getOutsideColor(context);
    return Row(
      children: [
        Column(
          children: [
            Flexible(
              child: NavigationRail(
                backgroundColor: outsideColor,
                useIndicator: consts.useM3,
                selectedIndex: _currentPage,
                onDestinationSelected: _changePage,
                labelType: extendNavRail
                    ? NavigationRailLabelType.none
                    : NavigationRailLabelType.selected,
                extended: extendNavRail,
                // groupAlignment: consts.useM3 ? 0 : null,
                minWidth: consts.useM3 ? null : 56,
                leading: ComposeFloatingActionButton(
                  type: extendNavRail
                      ? ComposeFloatingActionButtonType.extended
                      : ComposeFloatingActionButtonType.small,
                  elevate: !consts.useM3,
                ),
                destinations: [
                  for (var tab in _tabs!)
                    NavigationRailDestination(
                      icon: Icon(tab.icon),
                      selectedIcon: Icon(tab.selectedIcon),
                      label: Text(tab.text),
                    ),
                ],
              ),
            ),
            // if (consts.useM3) SizedBox(height: extendNavRail ? 96 : 72),
          ],
        ),
        if (!consts.useM3) const VerticalDivider(thickness: 1, width: 1),
        Expanded(
          child: _roundWidgetM3(_getPage()),
        ),
      ],
    );
  }

  List<Widget> _buildAppBarActions(BuildContext context) {
    final l10n = context.getL10n();

    return [
      IconButton(
        icon: const Icon(Icons.refresh_rounded),
        onPressed: null,
        tooltip: l10n.refreshTimelineButtonLabel,
      ),
      IconButton(
        icon: const Icon(Icons.settings_rounded),
        onPressed: () => context.push("/settings"),
        tooltip: l10n.settings,
      ),
      const AccountSwitcherWidget(size: 40),
    ];
  }

  Widget _getPage() {
    return PageTransitionSwitcher(
      transitionBuilder: animations.fadeThrough,
      child: _pages![_currentPage],
    );
  }

  static Widget _roundWidgetM3(Widget widget) {
    if (!consts.useM3) return widget;

    return ClipRRect(
      borderRadius: const BorderRadius.only(topLeft: Radius.circular(16.0)),
      child: widget,
    );
  }

  Widget? _getNavigationBar() {
    if (_tabs!.length < 2) {
      return null;
    }

    if (consts.useM3) {
      return NavigationBar(
        onDestinationSelected: _changePage,
        selectedIndex: _currentPage,
        destinations: [
          for (var tab in _tabs!)
            NavigationDestination(
              icon: Icon(tab.icon),
              selectedIcon: Icon(tab.selectedIcon),
              label: tab.text,
            ),
        ],
      );
    } else {
      return BottomNavigationBar(
        onTap: _changePage,
        currentIndex: _currentPage,
        items: [
          for (var tab in _tabs!)
            BottomNavigationBarItem(
              icon: Icon(tab.icon),
              activeIcon: Icon(tab.selectedIcon),
              label: tab.text,
            ),
        ],
      );
    }
  }

  void _changePage(int index) => setState(() => _currentPage = index);

  Widget? _getFab(BuildContext context, int index, bool mobile) {
    final tab = _tabs![_currentPage];
    final fab = tab.fab;

    if (fab == null) {
      return null;
    }

    if (mobile) {
      return FloatingActionButton(
        tooltip: fab.tooltip,
        onPressed: fab.onTap,
        child: Icon(fab.icon),
      );
    } else {
      return FloatingActionButton.extended(
        label: Text(fab.text),
        icon: Icon(fab.icon),
        onPressed: fab.onTap,
      );
    }
  }
}

class _MainScreenTab {
  final String text;
  final IconData selectedIcon;
  final IconData icon;
  final _FloatingActionButtonData? fab;
  final bool hideFabWhenDesktop;

  const _MainScreenTab({
    required this.selectedIcon,
    required this.text,
    required this.icon,
    this.fab,
    this.hideFabWhenDesktop = false,
  });
}

class _FloatingActionButtonData {
  final VoidCallback? onTap;
  final String tooltip;
  final String text;
  final IconData icon;

  _FloatingActionButtonData({
    this.onTap,
    required this.tooltip,
    required this.text,
    required this.icon,
  });
}