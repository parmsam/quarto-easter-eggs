# Easter Eggs Collection Extension For Quarto

This filter ports [WeiChiaChang](https://github.com/WeiChiaChang)'s [Easter Egg Collection](https://github.com/WeiChiaChang/easter-egg-collection/tree/master) over to Quarto. The extension lets you type a keyword and see something special pop in on the web page.

## Installing

```bash
quarto add parmsam/quarto-easter-eggs
```

This will install the extension under the `_extensions` subdirectory.
If you're using version control, you will want to check in this directory.

## Using

After installing the extension, add it as filter in your Quarto file YAML header.

``` markdown
filters:
  - easter-eggs
```

Then you can type one of the keywords and something special will show up. It's pretty cute.

## Example

Here is the source code for a minimal example: [example.qmd](example.qmd).

The output of `example.qmd` is [here](https://https://parmsam.github.io/quarto-easter-eggs/).

## Credit

-[🐰 easter-egg-collection by WeiChiaChang](https://github.com/WeiChiaChang/easter-egg-collection/tree/master?tab=readme-ov-file)