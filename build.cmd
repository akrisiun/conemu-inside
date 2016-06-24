"%ProgramFiles%\Git\bin\git.exe" submodule update --init --recursive
"%ProgramFiles%\Git\bin\git.exe" submodule sync
nuget restore ConEmuInside.sln

@set msbuild="%ProgramFiles(x86)%\msbuild\14.0\Bin\MSBuild.exe"
@if not exist %msbuild% @set msbuild="%ProgramFiles%\MSBuild\14.0\Bin\MSBuild.exe"
@if not exist %msbuild% @set msbuild="%ProgramFiles(x86)%\MSBuild\12.0\Bin\MSBuild.exe"
@if not exist %msbuild% @set msbuild="%ProgramFiles%\MSBuild\12.0\Bin\MSBuild.exe"

%msbuild% /m /nr:false /p:Configuration=Debug  /p:Platform="Any CPU" /v:M ConEmuInside.sln
%msbuild% /m /nr:false /p:Configuration=Release /p:Platform="Any CPU" /v:M ConEmuInside.sln

@PAUSE