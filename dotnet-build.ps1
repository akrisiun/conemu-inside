
dotnet restore ConEmuWinForms/ConEmuWinFormsLib.csproj
# dotnet build   ConEmuWinForms/ConEmuWinFormsLib.csproj -o ../../bin

$msbuild="$env:ProgramFiles\Microsoft Visual Studio\Preview\Community\MSBuild\15.0\bin\MSBuild.exe"

& "$msbuild"   /p:Configuration=Debug /v:M ConEmuWinForms/ConEmuWinFormsLib.csproj

nuget  pack    ConEmuWinForms\Package.nuspec