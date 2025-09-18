#!/bin/bash

echo "=============================="
echo "   🔐 Simple Security Toolkit"
echo "=============================="
echo "Choose an option:"

options=("Generate Passwords" "Encrypt File" "Decrypt File" "Quit")

select opt in "${options[@]}"
do
    case $opt in
        "Generate Passwords")
            echo "Enter the password length:"
            read PASS_LENGTH
            echo "Generating 5 random passwords..."
            for p in $(seq 1 5); do
                openssl rand -base64 48 | cut -c1-$PASS_LENGTH
            done
            ;;
        
        "Encrypt File")
            echo "Enter the filename you want to encrypt:"
            read file
            if [[ -f "$file" ]]; then
                gpg -c "$file"
                echo "✅ File encrypted -> $file.gpg"
            else
                echo "❌ File not found!"
            fi
            ;;
        
        "Decrypt File")
            echo "Enter the filename you want to decrypt (e.g., file.txt.gpg):"
            read file2
            if [[ -f "$file2" ]]; then
                gpg -d "$file2" > "${file2%.gpg}"
                echo "✅ File decrypted -> ${file2%.gpg}"
            else
                echo "❌ File not found!"
            fi
            ;;
        
        "Quit")
            echo "Goodbye 👋"
            break
            ;;
        
        *)
            echo "Invalid option!"
            ;;
    esac
done
