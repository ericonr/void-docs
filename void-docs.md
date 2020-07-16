# NAME

void-docs - Void Linux documentation

# SYNOPSIS

**void-docs** [**OPTIONS**] [search terms]

# DESCRIPTION

The **void-docs** utility will attempt to launch different programs until it can
find an adequate one to display the Void Linux documentation. If it is invoked
without a search term, it will show the documentation's home page. Multiple
search terms can be used to filter results. If the user has the **fzf(1)**
utility installed in their system, it will be used to browse the results.
Otherwise, **void-docs** will display the first search result. If the **-s**
flag is used, **void-docs** will display the search results instead of the
documentation.

**void-docs** supports some command line flags:

**-h, --help**: show help dialog

**-b**: only try to display the HTML version

**-m**: only try to display the Markdown version

**-r**: only try to display the roff (mandoc) version

**-s**: only display search results

The programs **void-docs** is aware of and will try to use are, in order of
preference:

For the HTML version:

- the program specified in the environment variable *BROWSER*
- **xdg-open(1)** if either *DISPLAY* or *WAYLAND_DISPLAY* environment variables
   are set
- the TUI browsers **lynx(1)**, **w3m(1)** and **links(1)**

For the Markdown version:

- the Markdown processors **mdcat** and **glow**

For the **roff(7)** version:

- **man(1)**

For a better browsing experience, it is recommended to install **fzf(1)**.

## EXAMPLES

Viewing the documentation page about the kernel:

```
$ void-docs kernel
```

Viewing a documentation page inside another session:

```
$ void-docs graphical-session kde
```

# FILES

The `void-docs` package contains a snapshot of the online documentation from
https://docs.voidlinux.org, which intends to document installation,
configuration and system management for Void Linux. It is packaged in three
formats.

*/usr/share/doc/void/html* - documentation in HTML format

*/usr/share/doc/void/markdown* - documentation in Markdown format

*/usr/share/doc/void/mandoc* - documentation in roff format

*/usr/share/doc/void/html* - can be viewed with any browser, such as Mozilla
Firefox or Chromium. Recommended when a GUI session is available, because it
allows easy navigation between the documentation pages and has the same format
as the official website. Can be accessed by pointing a browser to the
`/usr/share/doc/void/html/index.html` file.

*/usr/share/doc/void/markdown* - can be viewed as text files, using **cat(1)**
or **less(1)**, or as formatted markdown files, with applications such as
**mdcat** or **glow**. The table of contents can be accessed in the
`/usr/share/doc/void/markdown/SUMMARY.md` file.

*/usr/share/doc/void/mandoc* - can be viewed using **mandoc(1)**. Using
**mandoc(1)** with the **-a** option, which enables a pager, is recommended.

## EXAMPLES

Viewing the homepage of the HTML documentation with **qutebrowser(1)**:

```
$ qutebrowser /usr/share/doc/void/html/index.html
```

Viewing the summary of the markdown documentation with **less(1)**:

```
$ less /usr/share/doc/void/markdown/SUMMARY.md
```

Viewing the "Kernel" page of the markdown documentation with **mdcat**:

```
$ mdcat /usr/share/doc/void/markdown/config/kernel.md
```

Viewing the "Cron" page of the roff documentation with **mandoc(1)**:

```
$ mandoc -a /usr/share/doc/void/mandoc/config/cron.7
```

# AVAILABILITY

This man page is part of the void-docs package and is available from
https://github.com/void-linux/void-docs.

# BUGS

The Void Linux documentation tries to limit itself to content that is specific
to Void. Therefore, if you feel something is missing, it might have been
deliberate. However, if there is any information that is mistaken, outdated or
indeed missing, please report an issue at
https://github.com/void-linux/void-docs.
