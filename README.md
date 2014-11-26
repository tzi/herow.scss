Herow
=======

Herow, the saving time grid in Sass.
 
Herow provides mixins that are [simple to use](#simple-to-use) and [easy to customize](#easy-to-customize) for semantic grids.<br>
It also provides [atomic mixins](#atomic-mixins), that are ideal to deal with responsive problematic.<br>
Last, but not least, you can generate [atomic classes](#atomic-classes) to play with it directly in CSS.


Simple to use
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


Easy to customize
-------

### Grid size

You can set a grid size as a parameter of the `Herow-column()` mixin.

```scss
.content {
  // A column, that spans 3 columns of 4
  @include Herow-column(3, 4);
}
```

or you can set your grid size globally.

```scss
$Herow-default-column-count: 16;
.content {
  // A column, that spans 8 columns of 16
  @include Herow-column(8);
}
```

### Gutter width

You can set a gutter width as a parameter of the `Herow-row()` and `Herow-column()` mixins.

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

or you can set your gutter width globally.

```scss
$Herow-default-gutter-width: 1em;
.main {
  // A row, with a 1em gutter
  @include Herow-row();
}
```

See the [main API documentation](http://tzi.github.io/Herow/api/#api-mixin) and the [configuration documentation](http://tzi.github.io/Herow/api/#configuration-variable).


Atomic mixins
-------

When designing responsive grid, the atomic mixins allow you to update the grid behaviour.

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
```

See the [Atomic mixins API documentation](http://tzi.github.io/Herow/api/#atomic-api-mixin).


Atomic classes
-------

With the `Herow-class-generator()`, you can generate atomic classes, like `.row`, `.col`, `.col-1` to `.col-12`, etc.

```scss
// Generate atomic classes for a 12 columns grid with 1em of gutter
@include Herow-class-generator(12, 1em); 
```

You can also play with the class prefix & suffix to genrate classes like `.my-row` or `.row-md`.
For example:


```scss
// Generate default atomic classes
@include Herow-class-generator(12, 1em);
@media (max-width: 799px) {
  // Generate atomic classes for medium screens
  @include Herow-class-generator(12, 1em, '', '-md');
}
@media (max-width: 599px) {
  // Generate atomic classes for tiny screens
  @include Herow-class-generator(12, 1em, '', '-xs');
}
```

See the [Class generator API documentation](http://tzi.github.io/Herow/api/#mixin-Herow-class-generator).