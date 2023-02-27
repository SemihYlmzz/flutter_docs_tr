import '../../../features.dart';

class Data {
  static List<DrawerItemModel> itemsList = [
    DrawerItemModel(itemText: 'Overview', tier: 0),
    DrawerItemModel(itemText: 'Community', tier: 0),
    DrawerItemModel(itemText: 'Try Dart', tier: 0),
    DrawerItemModel(itemText: 'Get Dart', tier: 0),
    DrawerItemModel(itemText: 'Docs', tier: 0),
    DrawerItemModel(
        itemText: 'Samples & tutorials',
        items: [
          DrawerItemModel(itemText: 'Language samples', tier: 1),
          DrawerItemModel(
              itemText: 'Codelabs',
              items: [
                DrawerItemModel(itemText: 'List of Dart codelabs', tier: 2),
                DrawerItemModel(itemText: 'Language cheatsheet', tier: 2),
                DrawerItemModel(itemText: 'Iterable collections', tier: 2),
                DrawerItemModel(itemText: 'Asynchronous programming', tier: 2),
                DrawerItemModel(itemText: 'Null safety', tier: 2),
              ],
              tier: 1),
          DrawerItemModel(itemText: 'Tutorials', tier: 1),
        ],
        tier: 0),
    DrawerItemModel(
        itemText: 'Language',
        items: [
          DrawerItemModel(itemText: 'Tour', tier: 1),
          DrawerItemModel(itemText: 'Type system', tier: 1),
          DrawerItemModel(
              itemText: 'Effective Dart',
              items: [
                DrawerItemModel(itemText: 'Overview', tier: 2),
                DrawerItemModel(itemText: 'Style', tier: 2),
                DrawerItemModel(itemText: 'Documentation', tier: 2),
                DrawerItemModel(itemText: 'Usage', tier: 2),
                DrawerItemModel(itemText: 'Design', tier: 2),
              ],
              tier: 1),
          DrawerItemModel(
              itemText: 'Coming from ...',
              items: [
                DrawerItemModel(itemText: 'JavaScript to Dart', tier: 2),
                DrawerItemModel(itemText: 'Swift to Dart', tier: 2),
              ],
              tier: 1),
          DrawerItemModel(itemText: 'Extension methods', tier: 1),
          DrawerItemModel(itemText: 'Concurrency', tier: 1),
          DrawerItemModel(itemText: 'Numbers', tier: 1),
          DrawerItemModel(
              itemText: 'Null safety',
              items: [
                DrawerItemModel(
                    itemText: 'Overview: Sound null safety', tier: 2),
                DrawerItemModel(itemText: 'Migrating to null safety', tier: 2),
                DrawerItemModel(itemText: 'Understanding null safety', tier: 2),
                DrawerItemModel(itemText: 'Unsound null safety', tier: 2),
                DrawerItemModel(itemText: 'FAQ', tier: 2),
              ],
              tier: 1),
          DrawerItemModel(itemText: 'Evolution', tier: 1),
          DrawerItemModel(itemText: 'Specification', tier: 1),
        ],
        tier: 0),
    DrawerItemModel(
        itemText: 'Core libraries',
        items: [
          DrawerItemModel(itemText: 'Overview', tier: 1),
          DrawerItemModel(itemText: 'Tour', tier: 1),
          DrawerItemModel(
              itemText: 'Articles',
              items: [DrawerItemModel(itemText: 'Creating streams', tier: 2)],
              tier: 1),
        ],
        tier: 0),
    DrawerItemModel(
        itemText: 'Packages',
        items: [
          DrawerItemModel(itemText: 'How to use packages', tier: 1),
          DrawerItemModel(itemText: 'Commonly used packages', tier: 1),
          DrawerItemModel(itemText: 'Creating packages', tier: 1),
          DrawerItemModel(itemText: 'Publishing packages', tier: 1),
          DrawerItemModel(itemText: 'Writing package pages', tier: 1),
          DrawerItemModel(
              itemText: 'Package reference',
              items: [
                DrawerItemModel(itemText: "Dependencies", tier: 2),
                DrawerItemModel(itemText: "Glossary", tier: 2),
                DrawerItemModel(
                    itemText: "Package layout conventions", tier: 2),
                DrawerItemModel(itemText: "Pub environment variables", tier: 2),
                DrawerItemModel(itemText: "Pubspec file", tier: 2),
                DrawerItemModel(itemText: "Troubleshooting pub", tier: 2),
                DrawerItemModel(itemText: "Verified publishers", tier: 2),
                DrawerItemModel(itemText: "Versioning", tier: 2),
              ],
              tier: 1),
        ],
        tier: 0),
    DrawerItemModel(
        itemText: 'Development',
        items: [
          DrawerItemModel(itemText: 'Futures, async, await', tier: 1),
          DrawerItemModel(itemText: 'Streams', tier: 1),
          DrawerItemModel(itemText: 'JSON', tier: 1),
          DrawerItemModel(
              itemText: 'Interoperability',
              items: [
                DrawerItemModel(itemText: 'C interop', tier: 2),
                DrawerItemModel(
                    itemText: 'Objective-C and Swift interop', tier: 2),
                DrawerItemModel(itemText: 'Java and Kotlin interop', tier: 2),
                DrawerItemModel(itemText: 'JavaScript interop', tier: 2),
              ],
              tier: 1),
          DrawerItemModel(itemText: 'Google APIs', tier: 1),
          DrawerItemModel(itemText: 'Multi-platform apps', tier: 1),
          DrawerItemModel(
              itemText: 'Command-line & server apps',
              items: [
                DrawerItemModel(itemText: 'Overview', tier: 2),
                DrawerItemModel(itemText: 'Get started', tier: 2),
                DrawerItemModel(itemText: 'Write command-line apps', tier: 2),
                DrawerItemModel(
                    itemText: 'Fetch data from the internet', tier: 2),
                DrawerItemModel(itemText: 'Write HTTP servers', tier: 2),
                DrawerItemModel(itemText: 'Libraries and packages', tier: 2),
                DrawerItemModel(itemText: 'Google Cloud', tier: 2),
              ],
              tier: 1),
          DrawerItemModel(
              itemText: 'Web apps',
              items: [
                DrawerItemModel(itemText: 'Overview', tier: 2),
                DrawerItemModel(itemText: 'Get started', tier: 2),
                DrawerItemModel(
                    itemText: 'Low-level web programming',
                    items: [
                      DrawerItemModel(itemText: 'Connect Dart & HTML', tier: 3),
                      DrawerItemModel(
                          itemText: 'Add elements to the DOM', tier: 3),
                      DrawerItemModel(itemText: 'Remove DOM elements', tier: 3),
                    ],
                    tier: 2),
                DrawerItemModel(itemText: 'Deployment', tier: 2),
                DrawerItemModel(itemText: 'Libraries and packages', tier: 2),
              ],
              tier: 1),
          DrawerItemModel(itemText: 'Environment declarations', tier: 1),
        ],
        tier: 0),
    DrawerItemModel(
        itemText: 'Tools & techniques',
        items: [
          DrawerItemModel(itemText: 'Overview', tier: 1),
          DrawerItemModel(
              itemText: 'Editors & debuggers',
              items: [
                DrawerItemModel(itemText: 'IntelliJ & Android Studio', tier: 2),
                DrawerItemModel(itemText: 'VS Code', tier: 2),
                DrawerItemModel(itemText: 'Dart DevTools', tier: 2),
                DrawerItemModel(itemText: 'DartPad', tier: 2),
              ],
              tier: 1),
          DrawerItemModel(
              itemText: 'Command-line tools',
              items: [
                DrawerItemModel(
                    itemText: 'Dart SDK',
                    items: [
                      DrawerItemModel(itemText: 'Overview', tier: 3),
                      DrawerItemModel(itemText: 'dart', tier: 3),
                      DrawerItemModel(itemText: 'dart analyze', tier: 3),
                      DrawerItemModel(itemText: 'dart compile', tier: 3),
                      DrawerItemModel(itemText: 'dart create', tier: 3),
                      DrawerItemModel(itemText: 'dart doc', tier: 3),
                      DrawerItemModel(itemText: 'dart fix', tier: 3),
                      DrawerItemModel(itemText: 'dart format', tier: 3),
                      DrawerItemModel(itemText: 'dart info', tier: 3),
                      DrawerItemModel(itemText: 'dart pub', tier: 3),
                      DrawerItemModel(itemText: 'dart run', tier: 3),
                      DrawerItemModel(itemText: 'dart test', tier: 3),
                      DrawerItemModel(itemText: 'dartaotruntime', tier: 3),
                      DrawerItemModel(itemText: 'Experiment flags', tier: 3),
                    ],
                    tier: 2),
                DrawerItemModel(
                    itemText: 'Other command-line tools',
                    items: [
                      DrawerItemModel(itemText: 'build_runner', tier: 3),
                      DrawerItemModel(itemText: 'webdev', tier: 3),
                    ],
                    tier: 2),
              ],
              tier: 1),
          DrawerItemModel(
              itemText: 'Managing source code',
              items: [
                DrawerItemModel(itemText: 'Formatting code', tier: 2),
                DrawerItemModel(itemText: 'What not to commit', tier: 2),
              ],
              tier: 1),
          DrawerItemModel(
              itemText: 'Static analysis',
              items: [
                DrawerItemModel(
                    itemText: 'Customizing static analysis', tier: 2),
                DrawerItemModel(
                    itemText: 'Fixing common type problems', tier: 2),
                DrawerItemModel(itemText: 'Diagnostic messages', tier: 2),
                DrawerItemModel(itemText: 'Linter rules', tier: 2),
              ],
              tier: 1),
          DrawerItemModel(
              itemText: 'Testing & optimization',
              items: [
                DrawerItemModel(itemText: 'Testing', tier: 2),
                DrawerItemModel(itemText: 'Debugging web apps', tier: 2),
              ],
              tier: 1),
        ],
        tier: 0),
    DrawerItemModel(
        itemText: 'Resources',
        items: [
          DrawerItemModel(itemText: 'Overview', tier: 1),
          DrawerItemModel(itemText: 'Books', tier: 1),
          DrawerItemModel(
              itemText: 'DartPad in tutorials: Best practices', tier: 1),
          DrawerItemModel(itemText: 'Code of conduct', tier: 1),
          DrawerItemModel(itemText: 'FAQ', tier: 1),
          DrawerItemModel(
              itemText: 'History',
              items: [
                DrawerItemModel(itemText: 'Migrating to Dart 2', tier: 2),
              ],
              tier: 1),
          DrawerItemModel(itemText: 'Videos', tier: 1),
        ],
        tier: 0),
    DrawerItemModel(
      itemText: 'Related sites',
      items: [
        DrawerItemModel(
            itemText: 'API reference', tier: 1, iconData: Icons.open_in_new),
        DrawerItemModel(itemText: 'Blog', tier: 1, iconData: Icons.open_in_new),
        DrawerItemModel(
            itemText: 'DartPad (online editor)',
            tier: 1,
            iconData: Icons.open_in_new),
        DrawerItemModel(
            itemText: 'Flutter', tier: 1, iconData: Icons.open_in_new),
        DrawerItemModel(
            itemText: 'Package site', tier: 1, iconData: Icons.open_in_new),
      ],
      tier: 0,
      isExpanded: true,
    ),
  ];
}
