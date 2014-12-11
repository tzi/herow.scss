Changelog
=======

 * `v3.0.1`:
     * Bugfix on `class-generator()` mixin

 * `v3.0.0`:
     * Rename component layer to grid layer
     * Add a responsive layer that handle grid size change and associate media-queries

 * `v2.0.0`:
     * Add a component layer to handle named grid

 * `v1.2.0`:
     * Change gutter distribution to prevent grid to grid margin collapsing  

 * `v1.1.1`:
     * Change the inline-block negative margin to `-0.31em` 

 * `v1.1.0`:
     * Remove the `offset-right()` mixin. The `offset()` mixin now replace the previous `offset-left()`
     * Add a `box-sizing: border-box` property on columns 
     * Add a variable to configure the default `column-flow`
     * Add a parameter to the `row-gutter()` mixin to allow to add an external pad on grids