
Write-Output "Push Y so yes, to run of script, if need to your machine." ;
Write-Output "Nyomj Y-t, azaz yes/igent a szkript lefuttatas engedelyezesehez, ha keri a geped.";
Write-Output "********************************************************";
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned
Write-Output "INSTALLING FAVORIT APPS IN GROUP";
Write-Output "FAVORIT APPOK INSTALLJA - CSOPORTOSAN";
Write-Output "IF FOR YOU NEED CANCEL, AFTER RUN SCRIPT CAN UINSTALL";
Write-Output "HA MÉGSEM KELL, A SZKRIPT LEFUTASA UTAN LEHET UNINSTALL.";
Write-Output "THE WORK MAYBE 2-3 MINUTES, DO NOT CLOSE THIS WINDOW. ";
Write-Output "MOST A MUNKA KB. 2-3 PERCIG TART, NE ZARD BE EZT AZ ABLAKOT.";
Write-Output "______________________________";
Write-Output "Nyomj ENTERT a folytatashoz...";
PAUSE
Write-Output "START INSTALL PROGRAMMS... MOMENTS...";
Write-Output "START PROGRAMOK TELEPITESE... TURELEM...";
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
    Write-Output "Trying to Install/Telepites... $app"

    Winget Install $app
    }

Write-Output "Plus gift - Godmode best extended Control panel made:";
Write-Output "Plusz ajándék - Godmode, a legjobb kiterjesztett Vezerlopult letrehozva:";

New-Item -Path '.\.{ED7BA470-8E54-465E-825C-99712043E01C}' -ItemType Directory

Write-Output "EXTRA! EXTRA! EXTRA! Wait. No need? Close Windows/ Varj egy kicsit... Mutatok egy webes szkriptet, amivel rengeteg Windows beallitast tudsz elvegezni, nagyon egyszeruen. Million thank ChrisTitus.com. Nyomj Entert... Ha nem erdekel, zard be az ablakot.";
Write-Output "Million thank ChrisTitus.com.";
pause
iwr -useb https://christitus.com/win | iex
