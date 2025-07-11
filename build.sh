#!/bin/bash

# SenioAngel SCSS Build Script
# Verwendung: ./build.sh [build|dev|watch|clean]

echo "🎨 SenioAngel SCSS Build Script"
echo "================================"

case "$1" in
    "build")
        echo "📦 Erstelle Produktions-Build..."
        npm run build
        echo "✅ Produktions-Build abgeschlossen!"
        ;;
    "dev")
        echo "🔧 Erstelle Entwicklungs-Build..."
        npm run build:dev
        echo "✅ Entwicklungs-Build abgeschlossen!"
        ;;
    "watch")
        echo "👀 Starte Watch-Modus..."
        echo "Drücken Sie Ctrl+C zum Beenden"
        npm run watch
        ;;
    "clean")
        echo "🧹 Lösche generierte CSS-Dateien..."
        npm run clean
        echo "✅ CSS-Dateien gelöscht!"
        ;;
    "install")
        echo "📥 Installiere Abhängigkeiten..."
        npm install
        echo "✅ Abhängigkeiten installiert!"
        ;;
    *)
        echo "❌ Unbekannter Befehl: $1"
        echo ""
        echo "Verfügbare Befehle:"
        echo "  ./build.sh build   - Produktions-Build (komprimiert)"
        echo "  ./build.sh dev     - Entwicklungs-Build (mit Source Maps)"
        echo "  ./build.sh watch   - Watch-Modus für Entwicklung"
        echo "  ./build.sh clean   - CSS-Dateien löschen"
        echo "  ./build.sh install - Abhängigkeiten installieren"
        echo ""
        echo "Beispiel: ./build.sh build"
        exit 1
        ;;
esac 