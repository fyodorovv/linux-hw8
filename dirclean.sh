#!/bin/bash
if [ -d "$1" ]; then
    find "$1" -type f \( -name "*.bak" -o -name "*.tmp" -o -name "*.backup" \) -delete
else
    echo "Ошибка: директория не существует."
fi