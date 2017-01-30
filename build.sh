#!/bin/sh

project="vastan"

echo "Attempting to build $project for Windows"
/Applications/Unity/Unity.app/Contents/MacOS/Unity \
  -batchmode \
  -nographics \
  -silent-crashes \
  -logFile $(pwd)/Build/windows/build.log \
  -projectPath $(pwd)/$project \
  -buildWindowsPlayer "$(pwd)/Build/windows/$project.exe" \
  -quit

echo "Attempting to build $project for OS X"
/Applications/Unity/Unity.app/Contents/MacOS/Unity \
  -batchmode \
  -nographics \
  -silent-crashes \
  -logFile $(pwd)/Build/osx/build.log \
  -projectPath $(pwd)/$project \
  -buildOSXUniversalPlayer "$(pwd)/Build/osx/$project.app" \
  -quit

echo "Attempting to build $project for Linux"
/Applications/Unity/Unity.app/Contents/MacOS/Unity \
  -batchmode \
  -nographics \
  -silent-crashes \
  -logFile $(pwd)/Build/linux/build.log \
  -projectPath $(pwd)/$project \
  -buildLinuxUniversalPlayer "$(pwd)/Build/linux/$project.exe" \
  -quit

find ./Build/

