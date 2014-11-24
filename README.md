KYGS
=======

Keep Your Grid Simple


Simple use
-------

```scss
.main {
  // Create a grid container with a 20px gutter
  @include .grid-container();
}
.content {
  // Create a 8 spans cell on 12 columns
  @include .grid-cell(8);
}
.sidebar {
  // Create a 4 spans cell on 12 columns
  @include .grid-cell(4);
}
```


Custom grid size 
-------

### Override default values

```scss
$grid-default-column-count: 16;

.content {
  // Create a 8 spans cell on 16 columns
  @include .grid-cell(8);
}
```

### Use several grid sizes

```scss
.content {
  // Create a 3 spans cell on 4 columns
  @include .grid-cell(3, 4);
}
```


Custom gutter width
-------

### Override default values

```scss
$grid-default-gutter-width: 1em;

.main {
  // Create a grid container with a 1em gutter
  @include .grid-container();
}
```

### Use several grid sizes

```scss
.main {
  // Create a grid container with a 1em gutter
  @include .grid-container(1em);
}
.content {
  // Create a 3 spans cell on 4 columns, with 1em gutter width
  @include .grid-cell(3, 4, 1em);
}
```


Responsive grid
-------

```scss
.main {
  @include .grid-container();
}
.content {
  @include .grid-cell(8);
  @media (max-width: 799px) {
    @include .grid-cell-width(9);
  }
  @media (max-width: 599px) {
    @include .grid-cell-width(12);
  }
}
.sidebar {
  @include .grid-cell(4);
  @media (max-width: 799px) {
    @include .grid-cell-width(3);
  }
  @media (max-width: 599px) {
    @include .grid-cell-width(12);
  }
}
```