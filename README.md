# PostScript Manpages (+ Generator Scripts!)

Manpages for PostScript operators. They have been wget'd from:

```
https://hepunx.rl.ac.uk/~adye/psdocs
```

And processed into ROFF manpages.

This repository contains:

- `man(1)` pages for PostScript (contained in the `ps-manpages` directory)
- The script which is used to generate the manpages (`ps-mkmanpage.pl`) from `ps-manpages.hxpipe`
- The script which is used to generate `ps-manpagess.hxpipe` (`ps-mkhxpipe.sh`)
- The script which is used to generate `ps-operators.ls` (`ps-mkopls.awk`) from `ps-manpages.hxpipe`
- A bonus: `hxpipe.vim`, a Vim syntax file for `hxpipe` files (I would not have been able to decipher this damn thing without it! Keep in mind that, I made it myself, use it as you wish)

**NOTE**: These operators don't care what implementation of PostScript you use! GS, XPost, GV, Zathura... They include all 3 levels. Some pages are for errors, keep that in mind.


## How to Install?

Just run `sudo make psman`. But generally, you have to copy the files in `ps-manpages` into `/usr/local/share/man/man3` (create if does not exist) and run `mandb` elavated --- with `sudo(1)`.


## Bug Reports

I haven't make sure all the generated manpages are up to the spiff, but if they are not:

1- Create an issue;
2- Or, let me know at chubakbidpaa [at] riseup [dot] net;
3- Or, let me know on Discord at `.chubak`;
