QT += network \
    sql
TEMPLATE = app
TARGET = qorganizer

HEADERS += src/delegates.h \
    src/qcalendar.h \
    src/qorganizer.h \
    src/settings.h
SOURCES += src/main.cpp \
    src/delegates.cpp \
    src/qcalendar.cpp \
    src/qorganizer.cpp \
    src/settings.cpp
RESOURCES += qorganizer.qrc

TRANSLATIONS += lang/Hungarian.ts \
    lang/Romanian.ts \
    lang/Portuguese.ts \
    lang/Slovenian.ts \
    lang/Russian.ts \
    lang/Spanish.ts \
    lang/Albanian.ts \
    lang/Macedonian.ts \
    lang/Estonian.ts \
    lang/Dutch.ts \
    lang/German.ts \
    lang/French.ts \
    lang/Polish.ts

QMAKE_EXTRA_COMPILERS += lrelease
lrelease.input         = TRANSLATIONS
lrelease.output        = ${QMAKE_FILE_BASE}.qm
lrelease.commands      = $$[QT_INSTALL_BINS]/lrelease ${QMAKE_FILE_IN} -qm ${QMAKE_FILE_BASE}.qm
lrelease.CONFIG += no_link
PRE_TARGETDEPS += compiler_lrelease_make_all

translations.path = /usr/share/qorganizer/lang
translations.files = Hungarian.qm \
    Romanian.qm \
    Portuguese.qm \
    Slovenian.qm \
    Russian.qm \
    Spanish.qm \
    Albanian.qm \
    Macedonian.qm \
    Estonian.qm \
    Dutch.qm \
    German.qm \
    French.qm \
    Polish.qm

icon.path = /usr/share/pixmaps
icon.files = images/icon.png

target.path = /usr/bin
INSTALLS += target icon translations
