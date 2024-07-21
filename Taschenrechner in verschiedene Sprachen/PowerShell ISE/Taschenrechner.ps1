$wiederholen = "Ja"

Write-Host "Willkommen bei meinem Taschenrechner in PowerShell ISE"

While($wiederholen -eq "Ja")
{
    [int]$ersteNummer = Read-Host "Geben Sie die erste Zahl ein"
    [int]$zweiteNummer = Read-Host "Geben Sie die zweite Zahl ein"

    $operationszeichen = Read-Host "Welche Operationszeichen möchten Sie durchführen? (+, -, *, /, %)?"

    Switch($operationszeichen)
    {
        +
        {
            Write-Host("Ergebnis der von Ihnen gewählten Operationszeichen ($operationszeichen) is: ")
            $ersteNummer + $zweiteNummer
        }

        -
        {
            Write-Host("Ergebnis der von Ihnen gewählten Operationszeichen ($operationszeichen) is: ")
            $ersteNummer - $zweiteNummer
        }

        *
        {
            Write-Host("Ergebnis der von Ihnen gewählten Operationszeichen ($operationszeichen) is: ")
            $ersteNummer * $zweiteNummer
        }

        /
        {
            Write-Host("Ergebnis der von Ihnen gewählten Operationszeichen ($operationszeichen) is: ")
            $ersteNummer / $zweiteNummer
        }

        %
        {
            Write-Host("Ergebnis der von Ihnen gewählten Operationszeichen ($operationszeichen) is: ")
            $ersteNummer % $zweiteNummer
        }

        default
        {
            Write-Host "Bitte wählen Sie eines der verfügbaren Operationszeichen"
        }
    }
    $wiederholen = Read-Host "möchten Sie eine weitere Berechnung durchführen (Ja / Nein)?"
}