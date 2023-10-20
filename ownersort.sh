#!/bin/bash
if [ -d "$1" ]; then
    for file in "$1"/*; do
        if [ -f "$file" ]; then
            owner=$(stat -c %U "$file")
            mkdir -p "$owner"
            cp "$file" "$owner"
        fi
    done
else
    echo "Ошибка: директория не существует."
fi