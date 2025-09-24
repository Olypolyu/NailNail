project('NailNail', 'cpp',
    version : '1.0.0',
    default_options : ['warning_level=3', 'cpp_std=c++20'])

incdir = include_directories('include')

qt6 = import('qt6')
qt6_modules_dep = ['Core', 'Gui', 'Widgets', 'Qml', 'Quick', 'QuickControls2']
qt6_dep = dependency('qt6', modules: qt6_modules_dep)

kf6_dep = dependency('KF6CoreAddons', version : '>=5.246.0')
kf6kirigami_dep = dependency('KF6Kirigami2', version : '>=5.246.0')

libs = [
    qt6_dep,
    kf6_dep,
    kf6kirigami_dep
]

sources = [
    'src/cpp/main.cpp',
    'src/cpp/test.cpp',
    qt6.qml_module('com.github.olypolyu.nailnail',
        qml_sources: ['src/qml/Main.qml'],
    ),
]

ERP = executable(
    'NailNail',
    install : true,
    include_directories: [incdir],
    sources: sources,
    dependencies: libs
)