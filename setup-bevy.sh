#!/bin/bash

readonly projectDir="my_bevy_game"

if [ ! -d $projectDir ]; then
    # プロジェクトを新規作成
    cargo new $projectDir
fi
cd $projectDir

if [ grep -qv "bevy" $(cargo tree --depth 0) ]; then
    cargo add bevy
fi
