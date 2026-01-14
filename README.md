# ÖSFK Checklistor

## Beskrivning

Checklistorna skapas ifrån en textfil som beskriver både innehållet och
utseendet. Dessa körs genom ett program (Typst) som skapar en PDF-fil
lämplig för utskrift. Poängen med detta är att det ger en mycket exakt
kontroll över utseendet.

## Nödvändiga programvaror för att skapa filerna

För att skapa PDF:erna behövs ett antal programvaror vars funktion
och installationsanvisningar beskrivs nedan.

Alla programvarorna går att använda på Windows, Mac OS och Linux.

### Typst

Typst är ett typsättningssystem som används för att formattera PDF:erna
utifrån en textfil som beskriver innehållet.

För installera Typst, följ instruktionerna här:
https://typst.app/open-source/#download

### Python & extra bibliotek

Ett Python-program används för att skapa PDF:er lämpliga för dubbelsidig
utskrift.

För att installera Python, följ instruktionerna här:
https://www.python.org/downloads/

Python-programmet använder PDF-biblioteket PyMuPDF för att manipulera 
PDF:erna.

För att installera PyMuPDF, följ instruktionerna här:
https://pymupdf.readthedocs.io/en/latest/installation.html

### GNU Make

GNU Make används för att "limma ihop" allt som behövs för att skapa filerna.
Använder du Linux eller MacOS finns GNU Make inbyggt. På Windows får du
installera det själv genom att följa instruktionerna här:
https://gnuwin32.sourceforge.net/packages/make.htm

## Skapa PDF-filerna

När du installerat programvarorna ovan kan du bygga PDF:erna genom
att köra make på kommandoraden:

```console
make
```

Om allt lyckades kommer du se några rader med diagnostisk utskrift, om allt
gick bra ska du inte ha fått några felmeddelanden.

Nu kommer det finnas några PDF-filer som du kan öppna i din PDF-läsare.
