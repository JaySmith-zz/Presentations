REM Must supply the correct environment because it is used to pick the web.config

%WINDIR%\Microsoft.NET\Framework\v3.5\msbuild.exe deployment.proj /v:n /p:TargetEnvironment=Production