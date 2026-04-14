#!/usr/bin/env bash

set -e

download_scores() {
    OUT_DIR="score/$1"
    # shellcheck disable=SC2124
    SCORE_IDS=${@:2}

    mkdir -p "${OUT_DIR}"
    pushd "${OUT_DIR}"

    for id in ${SCORE_IDS}; do
        GREGOBASE_URL="https://gregobase.selapa.net/download.php?id=${id}&format=gabc&elem=1"
        curl --remote-header-name --remote-name "${GREGOBASE_URL}"
    done

    popd
}

download_scores "missa-i" 1143 2980 300 2977
