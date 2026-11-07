$base = "D:\TUNGND\New folder (2)\Github\the-wedding-quilt\09_media\xuong\video"
$ff   = "C:\Users\Admin\ffmpeg\ffmpeg-9.0.1-essentials_build\bin\ffmpeg.exe"
$out  = "D:\TUNGND\New folder (2)\Github\the-wedding-quilt\.agnes\work\qc\sheets"
New-Item -ItemType Directory -Force -Path $out | Out-Null
Set-Location $base
$log  = "D:\TUNGND\New folder (2)\Github\the-wedding-quilt\.agnes\work\qc\extract_log.txt"
Set-Content -Path $log -Value "start"

Get-ChildItem -Directory -Filter "cum_*" | Sort-Object Name | ForEach-Object {
  $vid = Get-ChildItem $_.FullName -Recurse -Filter "*.mp4" | Sort-Object LastWriteTime | Select-Object -Last 1
  if (-not $vid) { Add-Content $log ("{0} NOVIDEO" -f $_.Name); return }
  $id  = $_.Name.Replace("cum_","")
  $outfile = Join-Path $out ("cum_{0}.jpg" -f $id)
  # 6 frames at ~3,10,18,24,27,29.5s
  & $ff -hide_banner -loglevel error -y -i $vid.FullName -vf "select='eq(n\,90)+eq(n\,300)+eq(n\,540)+eq(n\,720)+eq(n\,810)+eq(n\,885)',scale=360:202,tile=3x2" -frames:v 1 $outfile
  if (Test-Path $outfile) { Add-Content $log ("{0} OK" -f $_.Name) } else { Add-Content $log ("{0} FAIL" -f $_.Name) }
}
Add-Content $log "done"
