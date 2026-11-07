# Extract a labeled 6-frame contact sheet per rendered clip
$base = "D:\TUNGND\New folder (2)\Github\the-wedding-quilt\09_media\xuong\video"
$ff   = "C:\Users\Admin\ffmpeg\ffmpeg-9.0.1-essentials_build\bin\ffmpeg.exe"
$out  = "D:\TUNGND\New folder (2)\Github\the-wedding-quilt\.agnes\work\qc\sheets"
New-Item -ItemType Directory -Force -Path $out | Out-Null
Set-Location $base

Get-ChildItem -Directory -Filter "cum_*" | Sort-Object Name | ForEach-Object {
  $vid = Get-ChildItem $_.FullName -Recurse -Filter "*.mp4" | Sort-Object LastWriteTime | Select-Object -Last 1
  if (-not $vid) { continue }
  $id  = $_.Name.Replace("cum_","")
  $outfile = Join-Path $out ("cum_{0}.jpg" -f $id)

  # 6 frames at 3,10,17,24,27,29.5s -> scale 320x180 -> label -> tile 3x2
  $cmd = @"
{0} -y -i "{1}" -filter_complex "
[0:v]split=6[a1][a2][a3][a4][a5][a6];
[a1]trim=start=3:end=3.2,scale=320:180,drawtext=text='003s':x=6:y=6:fontsize=20:fontcolor=yellow:box=1:boxcolor=black@0.6[b1];
[a2]trim=start=10:end=10.2,scale=320:180,drawtext=text='010s':x=6:y=6:fontsize=20:fontcolor=yellow:box=1:boxcolor=black@0.6[b2];
[a3]trim=start=17:end=17.2,scale=320:180,drawtext=text='017s':x=6:y=6:fontsize=20:fontcolor=yellow:box=1:boxcolor=black@0.6[b3];
[a4]trim=start=24:end=24.2,scale=320:180,drawtext=text='024s':x=6:y=6:fontsize=20:fontcolor=yellow:box=1:boxcolor=black@0.6[b4];
[a5]trim=start=27:end=27.2,scale=320:180,drawtext=text='027s':x=6:y=6:fontsize=20:fontcolor=yellow:box=1:boxcolor=black@0.6[b5];
[a6]trim=start=29.5:end=29.8,scale=320:180,drawtext=text='029s':x=6:y=6:fontsize=20:fontcolor=yellow:box=1:boxcolor=black@0.6[b6];
[b1][b2][b3][b4][b5][b6]xstack=inputs=6:layout=0_0|w0_0|w0w1_0|0_h0|w0_h0|w0w1_h0[v]
" -map "[v]" -frames:v 1 "{2}"
"@ -f $ff, $vid.FullName, $outfile
  & $ff -hide_banner -loglevel error $cmd 2>$null
  # Fallback simpler: sequential concat not available; if xstack fails, retry plain
  if (-not (Test-Path $outfile)) {
    & $ff -y -i $vid.FullName -vf "select='eq(n\,90)+eq(n\,300)+eq(n\,510)+eq(n\,720)+eq(n\,810)+eq(n\,885)',scale=320:180,tile=3x2" -frames:v 1 $outfile -loglevel error 2>$null
  }
  if (Test-Path $outfile) { Write-Output ("OK  cum_{0}" -f $id) } else { Write-Output ("FAIL cum_{0}" -f $id) }
}
