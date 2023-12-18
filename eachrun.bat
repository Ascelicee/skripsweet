REM: Usage: eachrun.bat %1 %2
REM: %1: Eenrgy file name

echo Calculating %1

@echo off

SET PHITSBAT="c:\phits\bin\phits.bat"
SET OUTDIR="output"

copy energi\%1.inp energi.tmp

call %PHITSBAT% proton.inp

move phits.out %OUTDIR%\%1-phits.out
move Helmi_Variasi1_xz.out %OUTDIR%\%1-Helmi_Variasi1_xz.out
move Helmi_Variasi1_xz.eps %OUTDIR%\%1-Helmi_Variasi1_xz.eps

move Helmi_Variasi1_xy.out %OUTDIR%\%1-Helmi_Variasi1_xy.out
move Helmi_Variasi1_xy.eps %OUTDIR%\%1-Helmi_Variasi1_xy.eps

move Helmi_Variasi1_yz.out %OUTDIR%\%1-Helmi_Variasi1_yz.out
move Helmi_Variasi1_yz.eps %OUTDIR%\%1-Helmi_Variasi1_yz.eps

move dosis.out %OUTDIR%\%1-dosis.out
move dosis.eps %OUTDIR%\%1-dosis.eps

move KurvaDosis.out %OUTDIR%\%1-KurvaDosis.out
move KurvaDosis.eps %OUTDIR%\%1-KurvaDosis.eps

del energi.tmp
