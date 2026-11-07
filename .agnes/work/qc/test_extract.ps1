$vid = "D:\TUNGND\New folder (2)\Github\the-wedding-quilt\09_media\xuong\video\cum_001\1107_193738\cum_001.mp4"
$ff  = "C:\Users\Admin\ffmpeg\ffmpeg-9.0.1-essentials_build\bin\ffmpeg.exe"
$out = "D:\TUNGND\New folder (2)\Github\the-wedding-quilt\.agnes\work\qc\sheets\test_001.jpg"
& $ff -hide_banner -loglevel error -y -i $vid -vf "select='eq(n\,90)+eq(n\,300)+eq(n\,540)+eq(n\,720)+eq(n\,810)+eq(n\,885)',scale=360:202,tile=3x2" -frames:v 1 $out
if (Test-Path $out) { Write-Output "OK"; Get-Item $out | Select-Object Length } else { Write-Output "FAIL" }
