local util = require("abysal.util")

local M = {}

--- @param colors ColorScheme
function M.generate(colors)
  local fish = util.template(
    [[
.theme-light,
.theme-dark {
  --header-primary: ${fg};
  --header-secondary: ${fg_secondary};
  --text-normal: ${fg};
  --text-muted: ${fg_secondary};
  --text-link: ${blue};
  --text-link-low-saturation: ${fg_muted};
  --text-positive: ${hint};
  --text-warning: ${warning};
  --text-danger: ${gold};
  --text-brand: ${blue};
  --background-primary: ${bg};
  --bg-base-primary: ${bg};
  --background-secondary: ${bg_elevated};
  --background-secondary-alt: ${bg_elevated};
  --background-tertiary: ${bg_dark};
  --background-accent: ${selection_bg};
  --background-floating: ${bg_float};
  --background-nested-floating: ${bg_elevated};
  --background-mobile-primary: ${bg};
  --background-mobile-secondary: ${bg_elevated};
  --bg-base-secondary: ${bg_elevated};
  --bg-surface-raised: ${bg_elevated};
  --home-background: ${bg};
  --chat-background: ${bg};
  --chat-border: ${bg_highlight};
  --chat-input-container-background: ${bg};
  --background-modifier-hover: ${fg_muted}26;
  --background-modifier-selected: ${fg_muted}32;
  --background-modifier-accent: ${fg_muted}42;
  --background-modifier-active: ${fg_muted}2B;
  --info-positive-background: ${green}26;
  --info-positive-foreground: ${hint};
  --info-positive-text: ${fg};
  --brand-500: ${selection_bg};
  --brand-560: ${blue};
  --info-warning-background: ${amber}26;
  --info-warning-foreground: ${warning};
  --info-warning-text: ${fg};
  --info-danger-background:${gold}26;
  --info-danger-foreground: ${gold};
  --info-danger-text: ${fg};
  --info-help-background: ${fg_muted}26;
  --info-help-foreground: ${info};
  --info-help-text: ${fg};
  --status-positive-background: ${hint};
  --status-positive-text: ${bg};
  --status-warning-background: ${warning};
  --status-warning-text: ${bg};
  --status-danger-background: ${gold};
  --status-danger-text: ${bg};
  --status-danger: ${gold};
  --status-positive: ${hint};
  --status-warning: ${warning};
  --status-yellow-400: ${warning};
  --status-green-600: ${hint};
  --primary-dark-600: ${bg};
  --status-yellow-560: ${warning};
  --status-red-500: ${gold};
  --status-red-530: ${gold};
  --status-yellow-500: ${warning};
  --black-500: ${bg_highlight};
  --green-360: ${hint};
  --yellow-360: ${warning};
  --yellow-300: ${warning};
  --red-400: ${gold};
  --primary-100: ${fg_secondary};
  --primary-300: ${fg_secondary};
  --primary-400: ${fg_secondary};
  --primary-dark-700: ${bg_highlight};
  --primary-800: ${bg_highlight};
  --status-green-560: ${hint};
  --white-400: ${fg};
  --white-500: ${fg};
  --guild-boosting-pink: ${primary};
  --premium-perk-yellow: ${warning};
  --premium-perk-purple: ${blue};
  --premium-perk-dark-blue: ${blue};
  --premium-perk-light-blue: ${primary_anchor};
  --premium-perk-blue: ${blue};
  --premium-perk-green: ${hint};
  --premium-perk-pink: ${pink};
  --premium-perk-orange: ${primary};
  --status-green-400: ${hint};
  --button-danger-background: ${error};
  --button-danger-background-hover: ${gold};
  --button-danger-background-active: ${fg_muted};
  --button-danger-background-disabled: ${gold};
  --button-positive-background: ${hint};
  --button-positive-background-hover: ${green_anchor};
  --button-positive-background-active: ${green};
  --button-positive-background-disabled: ${hint};
  --button-secondary-background: ${fg_muted};
  --button-secondary-background-hover: ${fg_muted};
  --button-secondary-background-active: ${fg_muted};
  --button-secondary-background-disabled: ${fg_secondary};
  --button-outline-danger-text: ${fg};
  --button-outline-danger-border: ${error};
  --button-outline-danger-background: transparent;
  --button-outline-danger-background-hover: ${gold};
  --button-outline-danger-text-hover: ${bg};
  --button-outline-danger-border-hover: ${gold};
  --button-outline-danger-background-active: ${error};
  --button-outline-danger-text-active: ${bg};
  --button-outline-danger-border-active: ${error};
  --button-outline-positive-text: ${fg};
  --button-outline-positive-border: ${hint};
  --button-outline-positive-background: transparent;
  --button-outline-positive-background-hover: ${green};
  --button-outline-positive-text-hover: ${bg};
  --button-outline-positive-border-hover: ${green};
  --button-outline-positive-background-active: ${green_anchor};
  --button-outline-positive-text-active: ${bg};
  --button-outline-positive-border-active: ${green};
  --button-outline-brand-text: ${fg};
  --button-outline-brand-border: ${blue};
  --button-outline-brand-background: transparent;
  --button-outline-brand-background-hover: ${primary_anchor};
  --button-outline-brand-text-hover: ${bg};
  --button-outline-brand-border-hover: ${primary_anchor};
  --button-outline-brand-background-active: ${blue};
  --button-outline-brand-text-active: ${bg};
  --button-outline-brand-border-active: ${primary_anchor};
  --button-outline-primary-text: ${fg};
  --button-outline-primary-border: ${fg_muted};
  --button-outline-primary-background: transparent;
  --button-outline-primary-background-hover: ${fg_muted};
  --button-outline-primary-text-hover: ${bg};
  --button-outline-primary-border-hover: ${fg_muted};
  --button-outline-primary-background-active: ${fg_muted};
  --button-outline-primary-text-active: ${bg};
  --button-outline-primary-border-active: ${fg_muted};
  --modal-background: ${bg};
  --modal-footer-background: ${bg_highlight};
  --scrollbar-thin-thumb: ${blue};
  --scrollbar-thin-track: transparent;
  --scrollbar-auto-thumb: ${blue};
  --scrollbar-auto-track: ${bg_highlight};
  --scrollbar-auto-scrollbar-color-thumb: ${blue};
  --scrollbar-auto-scrollbar-color-track: ${bg_highlight};
  --input-background: ${bg_highlight};
  --input-placeholder-text: ${fg_secondary};
  --logo-primary: ${fg};
  --control-brand-foreground: ${blue};
  --control-brand-foreground-new: ${blue};
  --mention-foreground: ${blue};
  --mention-background: ${bg_elevated};
  --background-mentioned: ${amber}19;
  --background-mentioned-hover: ${amber}14;
  --background-message-hover: ${bg_elevated}3F;
  --background-message-automod: ${primary}0C;
  --background-message-automod-hover: ${primary}19;
  --background-message-highlight: ${blue}14;
  --background-message-highlight-hover: ${blue}0F;
  --channels-default: ${fg_secondary};
  --channel-icon: ${blue}99;
  --channel-text-area-placeholder: ${fg_muted}7F;
  --channeltextarea-background: ${bg_elevated};
  --activity-card-background: ${bg_highlight};
  --textbox-markdown-syntax: ${fg};
  --spoiler-revealed-background: ${bg_highlight};
  --spoiler-hidden-background: ${fg_muted};
  --android-navigation-bar-background: ${bg_highlight};
  --android-ripple: ${black}4C;
  --bg-mod-faint: ${bg_elevated};
  --bg-mod-subtle: ${bg_elevated};
  --focus-primary: ${blue};
  --interactive-normal: ${fg};
  --interactive-muted: ${fg_muted}4C;
  --interactive-hover: ${fg};
  --interactive-active: ${fg};
  --search-popout-option-non-text-color: ${fg_secondary};
  --__spoiler-background-color--hidden: ${blue};
  --__spoiler-warning-background-color: ${blue};
}

div[class*="autocomplete_"] {
    background-color: ${bg_float} !important;
}

div[class*="autocomplete_"]
div[class*="categoryHeader"] {
    background-color: ${bg_float} !important;
}

rect[mask="url(#svg-mask-status-online)"] {
    fill: ${green};
}

rect[mask="url(#svg-mask-status-idle)"] {
    fill: ${amber};
}

rect[mask="url(#svg-mask-status-dnd)"] {
    fill: ${red};
}

rect[mask="url(#svg-mask-status-offline)"] {
    fill: ${fg_secondary};
}

/* hljs */
/* stolen from https://github.com/x6r/dracula/blob/main/addons/hljs-styling.scss :D */
:root {
  /* ---- Default Colors -- */
  --background: var(--background-secondary);
  --text-default: ${fg_secondary};
  --color-1: ${gold};
  --color-2: ${primary};
  --color-3: ${amber};
  --color-4: ${green};
  --color-5: ${green_anchor};
  --color-6: ${blue};
  --color-7: ${blue};
  --color-8: ${blue};
  --color-9: ${blue};
  --color-10: ${primary};
  --color-11: ${fg};
  /* ---- HLJS Default -- */
  --hljs-attribute: var(--color-7);
  --hljs-nomarkup: var(--color-8);
  --hljs-variable: var(--color-11);
  --hljs-meta: var(--color-8);
  --hljs-meta-string: var(--color-4);
  --hljs-meta-keyword: var(--hljs-meta);
  --hljs-literal: var(--color-2);
  --hljs-section: var(--color-9);
  --hljs-number: var(--color-2);
  --hljs-name: var(--color-4);
  --hljs-selector-tag: var(--color-4);
  --hljs-selector-class: var(--color-9);
  --hljs-selector-attr: var(--color-7);
  --hljs-selector-pseudo: var(--color-7);
  --hljs-selector-id: var(--hljs-selector-class);
  --hljs-keyword: var(--color-10);
  --hljs-built_in: var(--color-3);
  --hljs-title: var(--color-9);
  --hljs-link: var(--color-5);
  --hljs-bullet: var(--color-10);
  --hljs-symbol: var(--color-1);
  --hljs-addition: var(--color-1);
  --hljs-deletion: var(--color-5);
  --hljs-attr: var(--color-2);
  --hljs-punctuation: var(--text-default);
  --hljs-regexp: var(--color-6);
  --hljs-type: var(--color-10);
  --hljs-operator: var(--color-10);
  --hljs-rest_arg: var(--text-default);
  --hljs-template-variable: var(--color-11);
  /* ---- HLJS Specific -- */
  /* --> Params */
  --hljs-params: var(--text-default);
  --hljs-params-attr: var(--hljs-params);
  /* --> Comment */
  --hljs-comment: ${fg_muted};
  --hljs-comment-doctag: var(--hljs-comment);
  /* --> String */
  --hljs-string: var(--color-4);
  --hljs-string-subst: var(--color-5);
  --hljs-string-template-variable: var(--color-2);
  /* --> Tag */
  --hljs-tag: var(--color-7);
  --hljs-tag-name: var(--color-10);
  --hljs-tag-attr: var(--color-5);
  /* --> Function */
  --hljs-function: var(--text-default);
  --hljs-function-keyword: var(--hljs-keyword);
  --hljs-function-title: var(--hljs-title);
  --hljs-function-params: var(--hljs-params);
  --hljs-function-literal: var(--hljs-literal);
  --hljs-function-operator: var(--hljs-operator);
  /* --> Class */
  --hljs-class: var(--text-default);
  --hljs-class-keyword: var(--color-6);
  --hljs-class-title: var(--color-7);
}

#app-mount .hljs {
  font-family: "JetBrainsMono Nerd Font", "JetBrains Mono", var(--font-code),
    monospace;
  background: var(--background-secondary);
  color: var(--text-normal);
  padding: 15px 20px;
  border-radius: 5px;
}

#app-mount .codeLine-3a3dbd {
  color: var(--text-default);
}

#app-mount .hljs-comment {
  color: var(--hljs-comment);
}

#app-mount .hljs-attribute {
  color: var(--hljs-attribute);
}

#app-mount .hljs-nomarkup {
  color: var(--hljs-nomarkup);
}

#app-mount .hljs-variable {
  color: var(--hljs-variable);
}

#app-mount .hljs-meta {
  color: var(--hljs-meta);
}

#app-mount .hljs-meta-string {
  color: var(--hljs-meta-string);
}

#app-mount .hljs-meta-keyword {
  color: var(--hljs-meta-keyword);
}

#app-mount .hljs-literal {
  color: var(--hljs-literal);
}

#app-mount .hljs-string {
  color: var(--hljs-string);
}

#app-mount .hljs-section {
  color: var(--hljs-section);
}

#app-mount .hljs-number {
  color: var(--hljs-number);
}

#app-mount .hljs-tag {
  color: var(--hljs-tag);
}

#app-mount .hljs-name {
  color: var(--hljs-name);
}

#app-mount .hljs-selector-tag {
  color: var(--hljs-selector-tag);
}

#app-mount .hljs-selector-class {
  color: var(--hljs-selector-class);
}

#app-mount .hljs-selector-attr {
  color: var(--hljs-selector-attr);
}

#app-mount .hljs-selector-pseudo {
  color: var(--hljs-selector-pseudo);
}

#app-mount :not(.hljs-function) > .hljs-keyword {
  color: var(--color10);
  font-style: italic;
}

#app-mount .hljs-function {
  color: var(--hljs-function);
}

#app-mount .hljs-built_in {
  color: var(--hljsbuilt_in);
}

#app-mount .hljs-title {
  color: var(--hljs-title);
}

#app-mount .hljs-link {
  color: var(--hljs-link);
}

#app-mount .hljs-bullet {
  color: var(--hljs-bullet);
}

#app-mount .hljs-symbol {
  color: var(--hljs-symbol);
}

#app-mount .hljs-addition {
  color: var(--hljs-addition);
}

#app-mount .hljs-deletion {
  color: var(--hljs-deletion);
}

#app-mount .hljs-attr {
  color: var(--hljs-attr);
}

#app-mount .hljs-punctuation {
  color: var(--hljs-punctuation);
}

#app-mount .hljs-regexp {
  color: var(--hljs-regexp);
}

#app-mount .hljs-type {
  color: var(--hljs-type);
}

#app-mount .hljs-selector-id {
  color: var(--hljs-selector-id);
}

#app-mount .hljs-params {
  color: var(--hljs-params);
}

#app-mount .hljs-operator {
  color: var(--hljs-operator);
}

#app-mount .hljs-rest_arg {
  color: var(--hljs-rest_arg);
}

#app-mount .hljs-template-variable {
  color: var(--hljs-template-variable);
}

#app-mount .hljs-comment .hljs-doctag {
  color: var(--hljs-comment-doctag);
}

#app-mount .hljs-params .hljs-attr {
  color: var(--hljs-params-attr);
}

#app-mount .hljs-string .hljs-subst {
  color: var(--hljs-string-subst);
}

#app-mount .hljs-string .hljs-template-variable {
  color: var(--hljs-string-template-variable);
}

#app-mount .hljs-tag .hljs-name {
  color: var(--hljs-tag-name);
}

#app-mount .hljs-tag .hljs-attr {
  color: var(--hljs-tag-attr);
}

#app-mount .hljs-function .hljs-keyword {
  color: var(--hljs-function-keyword);
}

#app-mount .hljs-function .hljs-title {
  color: var(--hljs-function-title);
}

#app-mount .hljs-function .hljs-literal {
  color: var(--hljs-function-literal);
}

#app-mount .hljs-function .hljs-params {
  color: var(--hljs-function-params);
}

#app-mount .hljs-function .hljs-operator {
  color: var(--hljs-function-operator);
}

#app-mount .hljs-class .hljs-keyword {
  color: var(--hljs-class-keyword);
}

#app-mount .hljs-class .hljs-title {
  color: var(--hljs-class-title);
}

/* Haskell Specific Syntax */
#app-mount .hs .hljs-type {
  color: var(--color-7);
}

/* Lua Specific Syntax */
#app-mount .lua .hljs-built_in {
  color: var(--color-7);
}

/* Clang Specific Syntax */
#app-mount .c .hljs-keyword {
  color: var(--color-7);
}
#app-mount .c .hljs-built_in {
  color: var(--color-9);
}
#app-mount .c > .hljs-keyword {
  color: var(--color-10);
}

/* CSS Specific Syntax */
#app-mount .css .hljs-built_in {
  color: var(--color-5);
}

/* Rust Specific Syntax */
#app-mount .rust .hljs-built_in {
  color: var(--color-7);
}

/* PHP Specific Syntax */
#app-mount .php .hljs-variable {
  color: var(--color-10);
}
]],
    colors
  )

  return fish
end

return M
