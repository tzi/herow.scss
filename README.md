KYGS
=======

Keep Your Grid Simple


Simple use
-------

```scss
.main {
  // Create a 12 columns grid container
  @include .grid-container();
}
.content {
  // Create a 8 spans cell, two thirds of the grid
  @include .grid-cell(8);
}
.sidebar {
  // Create a 4 spans cell, one third of the grid
  @include .grid-cell(4);
}
```