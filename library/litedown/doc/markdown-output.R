
# smartypants example
cat(mark("1/2 (c)"))
cat(mark("1/2 (c)", options = "+smartypants"))

mkd <- paste(names(litedown:::pants), collapse = ' ')
cat(mark(mkd, options = "+smartypants"))

