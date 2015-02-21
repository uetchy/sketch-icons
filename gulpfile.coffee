gulp = require 'gulp'
sketch = require 'gulp-sketch'

gulp.task 'sketch', ->
  gulp.src 'sketch/**/*.sketch'
    .pipe sketch
      export: 'artboards'
      formats: 'svg'
      compact: true
      clean: true
      saveForWeb: true
    .pipe gulp.dest 'icons'
