# README

An AI-powered i18n command and its Demo Rails application.

## Usage

### Code Conversion

1. Pass the file you want to convert with `bin/i18n suggest $file` to output a JSON file for code conversion
   - AI detects Japanese parts from `$file` and rewrites them to `t(key)`
     - The AI will come up with appropriate `key` names
   - JSON file for code conversion
     - `file`: Original file name
     - `content`: Converted file content
     - `ja`: Content to be written to `config/locales/ja.yml` with flattened keys
2. Compare the current content with the converted file content using `bin/i18n diff $file`
   - If something is broken or you want to change key names, use `bin/i18n open $file` to open and edit the JSON file for code conversion
3. Apply the JSON file for code conversion using `bin/i18n apply $file`
   - This will modify `$file` and `config/locales/ja.yml`

### Locale File Conversion

- Use `bin/i18n translate $locale` to translate `config/locales/ja.yml` and generate `config/locales/${locale}.yml`

## Installation

### Dependencies

```sh
$ brew install jq
$ bundle add i18n-tasks -g development
```

### Install into your Rails app

```sh
for file in i18n i18n-suggest i18n-translate; do
  curl -L -o "bin/${file}" "https://raw.githubusercontent.com/en30/ai18n/refs/heads/master/bin/${file}"
  chmod +x "bin/${file}"
done
```

Edit as appropriate to suit your project.
