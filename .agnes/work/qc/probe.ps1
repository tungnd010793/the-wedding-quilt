$base = "D:\TUNGND\New folder (2)\Github\the-wedding-quilt\09_media\xuong\video"
$ff = "C:\Users\Admin\ffmpeg\ffmpeg-9.0.1-essentials_build\bin\ffprobe.exe"
Set-Location $base
Get-ChildItem -Directory -Filter "cum_*" | Sort-Object Name | ForEach-Object {
  $vid = Get-ChildItem $_.FullName -Recurse -Filter "*.mp4" | Sort-Object LastWriteTime | Select-Object -Last 1
  if ($vid) {
    $dur = & $ff -v error -show_entries format=duration -of default=noprint_wrappers=1:nokey=1 $vid.FullName
    $res = & $ff -v error -select_streams v:0 -show_entries stream=width,height -of csv=p=0 $vid.FullName
    Write-Output ("{0}  {1}s  {2}  {3}" -f $_.Name, $dur, $res, $vid.FullName)
  } else {
    Write-Output ("{0}  NOVIDEO" -f $_.Name)
  }
}
