
Write-Output "Push Y so yes, to run of script, if need to your machine." ;
Write-Output "Nyomj Y-t, azaz yes/igen a szkript lefutásának engedélyezéséhez, ha kéri a géped.";
Write-Output "********************************************************";
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned
Write-Output "INSTALLING FAVORIT APPS IN GROUP";
Write-Output "FAVORIT APPOK INSTALLJA - CSOPORTOSAN";
Write-Output "IF FOR YOU NEED CANCEL, AFTER RUN SCRIPT CAN UINSTALL";
Write-Output "HA MÉGSEM KELL, A SZKRIPT LEFUTÁSA UTÁN LEHET UNINSTALL.";
Write-Output "THE WORK MAYBE 2-3 MINUTES, DO NOT CLOSE THIS WINDOW. ";
Write-Output "MOST A MUNKA KB. 2-3 PERCIG TART, NE ZÁRD BE EZT AZ ABLAKOT.";
Write-Output "______________________________";
Write-Output "Nyomj ENTERT a folytatáshoz...";
PAUSE
Write-Output "START INSTALL PROGRAMMS... MOMENTS...";
Write-Output "KEZDŐDIK A PROGRAMOK TELEPÍTÉSE... TÜRELEM...";
$apps = @(

"Brave.Brave" <# Brave browser böngésző (Chrome engine, but ad-free, secure, personal protect / Chrome motoros, de reklám mentes) #>
"Mozilla.Firefox" <#Firefox browser böngésző #>
"TheDocumentFoundation.LibreOffice" <# best and libre Office text-table-prezent.pack / ingyenes, nyílt forráskódú Office szövegszerk-táblázatkez-prezentáció programcsomag #>
"IrfanSkiljan.IrfanView" #Best Img Viewer and Editor / Legjobb Képnézegető és képszerkesztő
"VideoLAN.VLC" #Best sound, music, and video player / Legjobb zene és videó lejátszó 
"FreeCommander" #Free file menager / Kiváló ingyenes fájlkezelő
"7zip.7zip" <# best archiver / a legjobb archiváló - tömörítő - program #> 
"Google.Chrome.EXE" <#Chrome browser böngésző #>

)

foreach ($app in $apps) {
    Write-Output "Trying to Install $app"

    Winget Install $app
    }

Write-Output "Plus gift - Godmode best extended Control panel made:";
Write-Output "Plusz ajándék - Godmode, a legjobb kiterjesztett Vezérlőpult létrehozva:";

New-Item -Path '.\.{ED7BA470-8E54-465E-825C-99712043E01C}' -ItemType Directory

Write-Output "EXTRA! EXTRA! EXTRA! Wait. No need? Close Windows/ Várj egy kicsit... Mutatok egy webes szkriptet, amivel rengeteg Windows beállítást tudsz elvégezni, nagyon egyszerűen. Million thank ChrisTitus.com. Nyomj Entert... Ha nem érdekel, zárd be az ablakot.";
Write-Output "Million thank ChrisTitus.com.";
pause
iwr -useb https://christitus.com/win | iex
