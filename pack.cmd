@echo off

cls

dotnet clean ^
    --configuration Release

dotnet build ^
    --no-dependencies ^
    --configuration Release

dotnet pack ^
    --no-restore ^
    --no-build ^
    --no-dependencies ^
    --configuration Release ^
    --output artifacts ^
    /p:PackageVersion=1.0.2.21
