
dotnet restore ConEmuWinForms/ConEmuWinFormsLib.csproj
dotnet build   ConEmuWinForms/ConEmuWinFormsLib.csproj -o ../../bin

nuget  pack    ConEmuWinForms\Package.nuspec