#!/bin/bash

readonly projectDir="my_bevy_game"

if [ ! -d $projectDir ]; then
    # プロジェクトを新規作成
    cargo new $projectDir
    # bevy をインストール
    cd $projectDir && cargo add bevy
fi
