
dotnet restore ConEmuWinForms\ConEmuWinForms.csproj

dotnet msbuild /p:GenerateFullPaths=true
dotnet build   ConEmuWinForms\ConEmuWinForms.csproj -o ../../bin -c Release -f net471