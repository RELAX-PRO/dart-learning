# Markdown Guide — Learn to write great `.md` files

This guide will teach you everything you need to write, preview, and share Markdown (`.md`) files. It's beginner-friendly and includes examples you can copy and try.

## What is Markdown?
Markdown is a lightweight plain-text format for writing rich text (headings, lists, code, links, images). Files usually end with the `.md` extension. GitHub, VS Code, and many static site generators render Markdown into HTML.

## Quick syntax reference (most useful things)

Headings
```
# H1
## H2
### H3
```
Renders as big headings.

Paragraphs

Just write lines of text separated by blank lines.

Emphasis
```
*italic* or _italic_
**bold** or __bold__
```

Lists
```
- Bullet one
- Bullet two

1. First
2. Second
```

Code
```
Inline `code` looks nice in a sentence.

Code block:
```dart
void main() {
  print('Hello');
}
```
```
(Use triple backticks and optionally a language name for syntax highlighting.)

Links and images
```
[Google](https://google.com)

![Alt text](path/to/image.png)
```

Blockquotes
```
> This is a quoted paragraph.
```

Tables (simple)
```
| Column A | Column B |
| --- | ---: |
| left | right |
```

Horizontal rule
```
---
```

Tips for clean writing
- Keep lines reasonably short (wrap at ~80 chars) for easier diffs.
- Use headings to structure the document.
- Use lists for steps or items.
- Preface code blocks with the language for syntax highlighting (e.g., ` ```dart `).

Advanced: Task lists
```
- [x] Done
- [ ] To do
```

## How to preview `.md` files locally (easy methods)

1) VS Code (recommended)
- Open the folder in VS Code.
- Open any `.md` file.
- Toggle the preview: press `Ctrl+Shift+V` or `Ctrl+K V` (Windows). Or click the small "Open Preview" icon in the top-right of the editor.
- You can also open the preview side-by-side with the source using `Ctrl+K V`.

2) Use a static preview in the browser (optional, `pandoc` method)
- Install `pandoc` (https://pandoc.org/installing.html).
- Convert Markdown to HTML:

```powershell
pandoc MARKDOWN_GUIDE.md -o guide.html
start guide.html
```

This will create `guide.html` and open it in your browser.

3) Lightweight local server for a folder of HTML (if you generated HTML files):

```powershell
# From the folder with HTML files
python -m http.server 8000
# then open http://localhost:8000 in your browser
```

(If you don't have Python installed, VS Code preview is the easiest.)

## Helpful examples

Example README header you can copy:

```
# Project Title

Short one-line description.

## Getting started
1. Install the Dart SDK: https://dart.dev/get-dart
2. Run an example: `dart run example.dart`
```

How to embed a small code example (Dart):

```dart
// example.dart
void main() {
  print('Hello from example');
}
```

## Images and folders
- Use relative paths to images inside your repo: `![logo](assets/logo.png)`.
- Commit the images to the repository, or host them online and use absolute URLs.

## Common mistakes to avoid
- Forgetting to close code fences (```) — this breaks rendering.
- Using tabs inside code fences inconsistently (use spaces or the project's style).
- Linking to local files with wrong paths — test links by opening the preview.

## Extra tips for GitHub-specific rendering
- GitHub supports task lists, tables, and many CommonMark extensions.
- Use `.github/ISSUE_TEMPLATE` and `README.md` at repo root to help others.

## Quick checklist when publishing a README
- [ ] Title and short description
- [ ] How to run the code (commands)
- [ ] Examples or screenshots
- [ ] License and credits (if needed)

---