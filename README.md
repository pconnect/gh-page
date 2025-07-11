# gh-page

GitHub Pages Projekt mit Bootstrap SCSS-Kompilierung.

## Installation

```bash
npm install
```

## Build-Befehle

### Produktions-Build (komprimiert)
```bash
npm run build
```

### Entwicklungs-Build (mit Source Maps)
```bash
npm run build:dev
```

### Watch-Modus (für Entwicklung)
```bash
npm run watch
```

### CSS-Dateien löschen
```bash
npm run clean
```

## Projektstruktur

```
gh-page/
├── scss/                 # SCSS-Quelldateien
│   ├── bootstrap.scss    # Haupt-Bootstrap-Datei
│   ├── _variables.scss   # Bootstrap-Variablen
│   └── _custom-variables.scss # Custom-Variablen
├── assets/
│   └── css/             # Kompilierte CSS-Dateien (wird generiert)
├── index.html           # Haupt-HTML-Datei
├── styleguide.html      # Styleguide
└── package.json         # NPM-Konfiguration
```

## Verwendung

1. Installieren Sie die Abhängigkeiten: `npm install`
2. Kompilieren Sie die SCSS-Dateien: `npm run build`
3. Öffnen Sie `index.html` oder `styleguide.html` im Browser

Die kompilierten CSS-Dateien werden im `assets/css/`-Ordner gespeichert.