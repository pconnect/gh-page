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

## GitHub Pages Setup

### Option 1: Automatisches Deployment (Empfohlen)
1. Aktivieren Sie GitHub Pages in Ihren Repository-Einstellungen
2. Wählen Sie "Deploy from a branch" 
3. Wählen Sie den `gh-pages` Branch
4. Das GitHub Actions Workflow kompiliert automatisch die SCSS-Dateien

### Option 2: Manuelles Deployment
1. Kompilieren Sie die SCSS-Dateien: `./build.sh build`
2. Committen Sie die generierten CSS-Dateien:
   ```bash
   git add assets/css/bootstrap.css
   git commit -m "Build SCSS"
   git push
   ```
3. Aktivieren Sie GitHub Pages für den main/master Branch

### Wichtige Hinweise
- Die CSS-Dateien müssen im Repository enthalten sein (nicht in .gitignore)
- Source Maps werden ignoriert, um das Repository sauber zu halten
- GitHub Actions kompiliert automatisch bei jedem Push