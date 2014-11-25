Herow
=======

Herow, the saving time grid in Sass


Simple use
-------

```scss
.main {
  // A row, with a 20px gutter
  @include Herow-row();
}
.content {
  // A column, that spans 8 columns of 12
  @include Herow-column(8);
}
.sidebar {
  // A column, that spans 4 columns of 12
  @include Herow-column(4);
}
```


Custom grid size 
-------

### Override default values

```scss
$Herow-default-column-count: 16;
.content {
  // A column, that spans 8 columns of 16
  @include Herow-column(8);
}
```

### Use several grid sizes

```scss
.content {
  // A column, that spans 3 columns of 4
  @include Herow-column(3, 4);
}
```


Custom gutter width
-------

### Override default values

```scss
$Herow-default-gutter-width: 1em;
.main {
  // A row, with a 1em gutter
  @include Herow-row();
}
```

### Use several grid sizes

```scss
.main {
  // A row, with a 1em gutter
  @include Herow-row(1em);
}
.content {
  // A column, that spans 3 columns of 4, with a 1em gutter
  @include Herow-column(3, 4, 1em);
}
```


Responsive grid
-------

You can change the column size according to the viewport

```scss
.main {
  @include Herow-row();
}
.content {
  @include Herow-column(8);
  @media (max-width: 799px) {
    @include Herow-column-width(9);
  }
  @media (max-width: 599px) {
    @include Herow-column-width(12);
  }
}
.sidebar {
  @include Herow-column(4);
  @media (max-width: 799px) {
    @include Herow-column-width(3);
  }
  @media (max-width: 599px) {
    @include Herow-column-width(12);
  }
}
```


Atomic classes
-------

```scss
// Generate atomic classes: .hrw-Row, .hrw-Col, .hrw-Col-1 to .hrw-Col-12, etc.
@include Herow-class-generator(12, 1em); 
```