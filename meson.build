project(
  'NailNail',
  'cpp',
  version: '1.0.0',
  default_options: ['warning_level=3', 'cpp_std=c++20'],
)

qt6 = import('qt6')

includes = [include_directories('include')]

qt6_modules_dep = ['Core', 'Gui', 'Widgets', 'Qml', 'Quick', 'QuickControls2']
qt6_dep = dependency('qt6', modules: qt6_modules_dep)

KDE_FRAMEWORKS_VERR = '>=5.246.0'
kf6_dep = dependency('KF6CoreAddons', version: KDE_FRAMEWORKS_VERR)
kf6kirigami_dep = dependency('KF6Kirigami2', version: KDE_FRAMEWORKS_VERR)
kf6i18n_dep = dependency('KF6I18n', version: KDE_FRAMEWORKS_VERR)

libs = [qt6_dep, kf6_dep, kf6kirigami_dep, kf6i18n_dep]

sources = [
  'src/cpp/main.cpp',
  'src/cpp/test.cpp',
  qt6.qml_module(
    'com.github.olypolyu.nailnail',
    qml_sources: [
      'src/qml/Main.qml',
      'src/qml/LoginPage.qml',
    ],
  ),
]

NailNail = executable(
  'NailNail',
  install: true,
  include_directories: includes,
  sources: sources,
  dependencies: libs,
)
