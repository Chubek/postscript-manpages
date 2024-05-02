export TIDY_HTML=.tidyrc
cat ps-htmlmans/* | tidy -q | hxnormalize | hxclean | hxpipe > ps-manpages.hxpipe
