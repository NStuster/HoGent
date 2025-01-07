#!/bin/bash

# Vraag de variabelen op met standaardwaarden en stop als er niets wordt ingevoerd

echo "Geef de Attachmentslocatie van Obsidian (0 voor default: /home/nikki/OneDrive/Documenten/Obsidian/Nikki/Attachments): "
read -rp "Keuze: " SOURCE_CHOICE

if [[ -z "$SOURCE_CHOICE" ]]; then
  echo "Geannuleerd. Geen invoer gegeven."
  exit 1
fi

if [[ "$SOURCE_CHOICE" == "0" ]]; then
  SOURCE="/home/nikki/OneDrive/Documenten/Obsidian/Nikki/Attachments"
  echo "De standaardlocatie wordt gekozen: $SOURCE"
else
  SOURCE="$SOURCE_CHOICE"
fi

echo
echo "Geef de Attachmentslocatie van de sublocatie in Obsidian: "
read -rp "Keuze: " DEST

if [[ -z "$DEST" ]]; then
  echo "Geannuleerd. Geen invoer gegeven."
  exit 1
fi

echo
echo "Geef de naam en extensie van het aan te passen markdownfile: "
read -rp "Keuze: " markdownVariabele

if [[ -z "$markdownVariabele" ]]; then
  echo "Geannuleerd. Geen invoer gegeven."
  exit 1
fi

echo
echo "Geef de locatie van $markdownVariabele: "
read -rp "Keuze: " documentLocatieVariabele

if [[ -z "$documentLocatieVariabele" ]]; then
  echo "Geannuleerd. Geen invoer gegeven."
  exit 1
fi

# Functie voor verplaatsen en hernoemen
function move_and_rename {
  echo "Bestanden verplaatsen en hernoemen..."
  find "$SOURCE" -type f -daystart -mtime -1 | while read -r file; do
    filename=$(basename "$file")
    newname=$(echo "$filename" | sed 's/^Pasted image //')
    mv "$file" "$DEST/$newname"
    echo "Verplaatst: $file -> $DEST/$newname"
  done
}

# Functie voor aanpassen in document
function update_document {
  echo "Markdown-bestand aanpassen..."
  sed -i 's/!\[\[Pasted image \([0-9]\+\)\.png\]\]/![](.\/attachments\/\1.png)/g' "$documentLocatieVariabele/$markdownVariabele"
  echo "Aanpassingen toegepast in: $documentLocatieVariabele/$markdownVariabele"
}

# Hoofdmenu
while true; do
  echo
  echo "Maak een keuze:"
  echo "1. Alles uitvoeren in script"
  echo "2. Enkel verplaatsen en hernoemen"
  echo "3. Enkel aanpassen in document"
  echo "4. Afsluiten"
  read -rp "Uw keuze: " choice

  case $choice in
    1)
      echo "Uitvoeren: alles in het script"
      move_and_rename
      update_document
      ;;
    2)
      echo "Uitvoeren: enkel verplaatsen en hernoemen"
      move_and_rename
      ;;
    3)
      echo "Uitvoeren: enkel aanpassen in document"
      update_document
      ;;
    4)
      echo "Afsluiten..."
      break
      ;;
    *)
      echo "Ongeldige keuze. Probeer opnieuw."
      ;;
  esac

  echo "-------------------------"
done

