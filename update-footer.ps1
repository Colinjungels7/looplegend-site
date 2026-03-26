$file = "index.html"
$content = [System.IO.File]::ReadAllText((Resolve-Path $file).Path)

$oldFooter = '<div class="footer-logo">Loop<span>Legend</span></div>'
$newFooter = @'
<div class="footer-logo">Loop<span>Legend</span></div>
  <p style="margin-top:1rem;opacity:0.5;font-size:0.8rem;">
    <a href="https://looplegendapp.com/privacy" style="color:inherit;text-decoration:underline;">Privacy Policy</a>
    &middot;
    <a href="https://looplegendapp.com/terms" style="color:inherit;text-decoration:underline;">Terms</a>
  </p>
'@

$content = $content.Replace($oldFooter, $newFooter)
[System.IO.File]::WriteAllText((Resolve-Path $file).Path, $content)
Write-Host "Footer updated with privacy and terms links"
