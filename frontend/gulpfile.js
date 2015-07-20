'use strict';
var gulp = require('gulp'),
    sass = require('gulp-ruby-sass'),
    autoprefixer = require('gulp-autoprefixer'),
    minifycss = require('gulp-minify-css'),
    uglify = require('gulp-uglify'),
    imagemin = require('gulp-imagemin'),
    rename = require('gulp-rename'),
    concat = require('gulp-concat'),
    cache = require('gulp-cache'),
    livereload = require('gulp-livereload'),
    del = require('del'),
    sass = require('gulp-sass'),
    clean = require('gulp-clean'),
    jsmin  = require("gulp-jsmin");

gulp.task('default', function() {
    gulp.start('styles', 'scripts','depcss', 'images', 'watch');
});

gulp.task('images', function() {
  return gulp.src('assets/images/**/*')
    .pipe(cache(imagemin({ optimizationLevel: 5, progressive: true, interlaced: true })))
    .pipe(gulp.dest('../public/assets/images'))
});

gulp.task('styles', function() {
  return gulp.src('assets/stylesheets/*.scss', { style: 'expanded' })
    .pipe(sass.sync().on('error', sass.logError))
    .pipe(autoprefixer('last 2 version'))
    .pipe(concat('main.css'))
    .pipe(minifycss())
    .pipe(rename({suffix: '.min'}))
    .pipe(gulp.dest('../public/assets/stylesheets'))
});

gulp.task('depcss', function() {
  return gulp.src('assets/dependencies/css/*.css', { style: 'expanded' })
    .pipe(autoprefixer('last 2 version'))
    .pipe(concat('dependencies.css'))
    .pipe(minifycss())
    .pipe(rename({suffix: '.min'}))
    .pipe(gulp.dest('../public/assets/dependencies'))
});


gulp.task('scripts', function() {
  return gulp.src('assets/javascripts/*.js')
    .pipe(concat('main.js'))
    .pipe(jsmin())
    .pipe(uglify())
    .pipe(rename({suffix: '.min'}))
    .pipe(gulp.dest('../public/assets/js'))
});

gulp.task('watch', function() {

  // Watch .scss files
  gulp.watch('assets/stylesheets/**/*.scss', ['styles']);

  // Watch .js files
  gulp.watch('assets/javascripts/**/*.js', ['scripts']);

  // Watch image files
  gulp.watch('assets/images/**/*', ['images']);

});
