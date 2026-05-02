# Abysal for Gemini CLI

This directory contains the Abysal color scheme for the [Gemini CLI](https://github.com/google-gemini/gemini-cli).

## Installation

1. Choose your preferred Abysal style (Storm, Moon, Night, or Day).
2. Open your Gemini CLI `settings.json` file. You can find this in:
   - **Linux/macOS:** `~/.gemini/settings.json`
   - **Windows:** `%USERPROFILE%\.gemini\settings.json`
3. Add or update the `ui.theme` property with the absolute path to your chosen theme file:

```json
{
  "ui": {
    "theme": "/absolute/path/to/abysal_night.json"
  }
}
```

Alternatively, you can copy the contents of the JSON file into the `ui.customThemes` object in your `settings.json`:

```json
{
  "ui": {
    "customThemes": {
      "Abysal": {
        "name": "Abysal",
        "type": "custom",
        ...
      }
    },
    "theme": "Abysal"
  }
}
```

## Styles

- **abysal_storm.json**: Abysal Storm (Dark)
- **abysal_obsidian.json**: Abysal Moon (Dark)
- **abysal_night.json**: Abysal (Dark)
- **abysal_marble.json**: Abysal Day (Light)
