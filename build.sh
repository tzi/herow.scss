function compile() {
  SCSS_FILE=$1;
  CSS_FILE=$( echo ${SCSS_FILE%.*}.css);
  sass ${SCSS_FILE} ${CSS_FILE} --style expanded --sourcemap=none
}

compile demo/generator/generator.scss
compile demo/grid/grid.scss
compile demo/responsive/responsive.scss