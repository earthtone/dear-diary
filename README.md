# Dear Diary

Simple shell script for stubbing out Markdown files for journaling.

## Usage

```shell
./dear-diary.sh [DOCUMENT_TITLE]
```

Running the above command will generate a timestamped Markdown file in a `DIARY_PATH` directory. If no `DIARY_PATH` value is set, nothing will happen. The resultant file stubs out an optional `DOCUMENT_TITLE` as a header at the top of the document. If no title is given, the filename will be used as a fallback value. All generated documents also stub out [YAML Frontmatter](https://pandoc.org/MANUAL.html#extension-yaml_metadata_block).
