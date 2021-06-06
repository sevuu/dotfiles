# st - suckless terminal

My build of st, with focus on productivity and keyboard-driven workflow.

## Features

- transparency (need a third-party compositor)
- open a URL with alt+l
- copy a URL with alt+y
- scroll with alt + {j, k, u, d}
- zoom with alt+shift+ {j, k} or alt+ {-, =}
- reset zoom with alt+shift+l or alt+shift+ =
- insert arbitrary Unicode character with ctrl+shift+u
- synchronized rendering support
- fallback fonts
- spawn a new terminal in the same directory with ctrl+shift+return
- copy a command's output with alt+o
- read colorscheme and alpha from Xresources
- edit the terminal's visible contents in $EDITOR with alt+e

## Third-Party Dependencies

- any window compositor
- [dmenu](https://tools.suckless.org/dmenu/)
- [xclip](https://github.com/astrand/xclip) (scripts can be modified by hand to work with any clipboard tool)

## Applied Patches

- [alpha](https://st.suckless.org/patches/alpha/)
- [anysize](https://st.suckless.org/patches/anysize/)
- [bold is not bright](https://st.suckless.org/patches/bold-is-not-bright/)
- [externalpipe](https://st.suckless.org/patches/externalpipe/)
- [scrollback](https://st.suckless.org/patches/scrollback/) (altered, see [e11b0b2](https://github.com/Randoragon/st/commit/e11b0b24d56035dbbb3dcd20004a52f55dcb4fd9))
- [iso14755](https://st.suckless.org/patches/iso14755/)
- [synchronized rendering](https://st.suckless.org/patches/sync/)
- [xresources](https://st.suckless.org/patches/xresources/)
- [font2](https://st.suckless.org/patches/font2/)
- [newterm](https://st.suckless.org/patches/newterm/)
- [boxdraw](https://st.suckless.org/patches/boxdraw/)

## Installation

In order to build st you need the Xlib header files.

Edit config.mk to match your local setup (st is installed into
the /usr/local namespace by default).

Afterwards enter the following command to build and install st (if
necessary as root):

    make clean install

## References

I used these as sources of inspiration to see some examples of what can be done with st without relying solely on painful experimentation.
Also, the suckless website is a primary source for patches, which are obligatory for any decent st build.

- [Official Website](https://st.suckless.org)
- [Luke Smith's build](https://github.com/lukesmithxyz/st)


## Credits

st is based on Aurélien APTEL <aurelien dot aptel at gmail dot com> bt source code.

