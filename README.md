# About

Gridgraphy is a highly configurable, and incredibly flexible [Compass](http://compass-style.org/) extension
that enables you to quickly and easily build semantic CSS grids. Whether you're developing a small single page site or architecting a large scale responsive grid system, Gridgraphy will help you get the job done faster.


- [Installation](#installation)
- [Getting Started](#getting-started)
- [Types](#types)
- [Mixins](#mixins)
- [Functions](#functions)
- [Demo](#demo)


# Installation

Install Gridgraphy by running the following from the command line:

```bash
$ gem install gridgraphy
```
Once Gridgraphy is installed you can either create a new Compass project based on Gridgraphy by running the following from the command line:

```bash
$ compass create <project_name> -r gridgraphy -u gridgraphy
```

Or you can add Gridgraphy to an existing Compass project by adding the following to your projects **config.rb**:

```ruby
require 'gridgraphy'
```


# Getting Started

## Basic

You can import the Gridgraphy extension by adding the following line to one of your [Sass/SCSS](http://sass-lang.com/) stylesheet(s):

```scss
@import gridgraphy
```

### Configurable Variables

You can mix and match different configurations to acheive the exact type of grid you need.

- **$grid-type** [default: **full**] - The [type](#types) of grid. [[full](#full-grid), [right](#right-grid), [center](#center-grid), [left](#left-grid)]
- **$grid-gutter-type** [default: **margin**] - The type of spacing to use for a columns gutter. [margin, padding]
- **$grid-max-width** [default: **960px**] - The maximum width of the grid in px.
- **$grid-gutter-width** [default: **20px**] - The gutter spacing in px between columns.
- **$grid-column-count** [default: **12**] - The total number of columns in the grid.
- **$grid-show** [default: **false**] - Set ```true``` to highlight the grid row & columns.

**That's it!** You now have access to all of the mixins and functions that Gridgraphy provides.


---

## Scaffolding

Scaffolding is a quick way to generate classes for a grid. If you plan on adding your grid classes directly to your markup
or want to export a pre-made grid as part of an external library, scaffolding can save you a ton of time.

You can create a new compass project using scaffolding by running:

```bash
$ compass create <project_name> -r gridgraphy -u gridgraphy/scaffolding
```

Or you can add scaffolding to an existing project by adding the following line to any of your [Sass/SCSS](http://sass-lang.com/) stylesheet(s):

```scss
@import gridgraphy/scaffolding
```

### Configurable Variables

- **$grid-namespace-base** [default: **grid**] - The name of the prefix that will be used for the grids row & columns class.
- **$grid-namespace-row** [default: **row**] - The name of the suffix that will be used for the grids row class.
- **$grid-namespace-column** [default: **column**] - The name of the suffix that will be used for the grids column class.


# Types
Gridgraphy ships with **4** different types of layouts. By default grids are created using the value you've set for the ```$grid-type``` [configuration variable](#configurable-variables), but can be set manually on each ```grid-*``` mixin or function.

- **Full**   - The full grid type does not have a gutter between columns.
- **Right**  - The right grid type has its gutter distributed to the right side of each column.
- **Center** - The center grid type has its gutter split in half and evenly distributed to both sides of each column.
- **Left**   - The left grid type has its gutter distributed the the left side of each column.


# Mixins

#### grid-row($max-width)
Sets an element as the container for your columns.

- **$max-width** [default: **$grid-max-width**] - The maximum width in pixels the row should span.

```sass
.grid-row
    @include grid-row(960px)
```

***

#### grid-row-nested($type)
Sets an element as the container for your columns inside another column.

- **$type** [default: **$grid-type**] - The [type](#types) of grid to be used.

```sass
.grid-row
    @include grid-row-nested(left)
```

***

#### grid-column($columns, $type)
Sets **all** the properties of a column.

- **$columns** - The number of columns to span in the row.
- **$type** [default: **$grid-type**] - The [type](#types) of grid to be used.

```sass
.grid-column
    @include grid-column(6)
```

***

#### grid-column-width($columns, $type)
Set **only the width** of a column.

**Note:** This mixin is called automatically when using the ```grid-column()``` mixin. You'll probably only want to use this directly if you need to keep your selectors very DRY.

- **$columns** - The number of columns to span in the row.
- **$type** [default: **$grid-type**] - The [type](#types) of grid to be used.

```sass
.grid-column
    @include grid-column-width(6)
```

***

#### grid-column-base()
Set **only the base** properties of a column.

**Note:** This mixin is called automatically when using the ```grid-column()``` mixin. You'll probably only want to use this directly if you need to keep your selectors very DRY.


```sass
[class^="grid-column-"]
  @include grid-column-base()

.grid-column-1
    @include grid-column-gutter(4)

.grid-column-2
    @include grid-column-gutter(8)
```

***

#### grid-column-gutter($columns, $type)
Set **only the gutter** properties of a column.

**Note:** This mixin is called automatically when using the ```grid-column()``` mixin. You'll probably only want to use this directly if you need to keep your selectors very DRY.

- **$columns** - The number of columns to span in the row.
- **$type** [default: **$grid-type**] - The [type](#types) of grid to be used.

```sass
.grid-column
    @include grid-column-gutter(6)
```

***

#### grid-column-offset-right($columns, $type)
Sets **all** the properties to offset the column from the right. *(prepends empty columns)*

- **$columns** - The number of columns to offset by.
- **$type** [default: **$grid-type**] - The [type](#types) of grid to be used.

```sass
.grid-column
    @include grid-column-offest-right(6)
```

***

#### grid-column-offset-left($columns, $type)
Sets **all** the properties to offset the column from the left. *(appends empty columns)*

- **$columns** - The number of columns to offset by.
- **$type** [default: **$grid-type**] - The [type](#types) of grid to be used.

```sass
.grid-column
    @include grid-column-offest-left(6)
```

***

#### grid-column-push($columns, $type)
Sets **all** the properties to push the column from the left. *(moves the column without affecting surrounding elements)*

- **$columns** - The number of columns to push by.
- **$type** [default: **$grid-type**] - The [type](#types) of grid to be used.

```sass
.grid-column
    @include grid-column-push(6)
```

***

#### grid-column-pull($columns, $type)
Sets **all** the properties to pull the column towards the left. *(moves the column without affecting surrounding elements)*

- **$columns** - The number of columns to pull by.
- **$type** [default: **$grid-type**] - The [type](#types) of grid to be used.

```sass
.grid-column
    @include grid-column-pull(6)
```


# Functions

#### grid-column-width($columns, $type)
Returns the unitless (percentage based) width of a column.

- **$columns** - The number of columns to take up in a row.
- **$type** [default: **$grid-type**] - The [type](#types) of grid to be used.

```sass
.grid-column
  width: #{grid-column-width(12)}%
```

***

#### grid-column-offset($columns, $type)
Returns the unitless (percentage based) offset width of a column.

- **$columns** - The number of columns to offset by.
- **$type** [default: **$grid-type**] - The [type](#types) of grid to be used.

```sass
.grid-column
  left: #{grid-column-offset(12)}%
```

***

#### grid-column-gutter($columns, $type)
Returns the unitless (percentage based) gutter width of a column.

- **$columns** - The number of columns to span in the row.
- **$type** [default: **$grid-type**] - The [type](#types) of grid to be used.

```sass
.grid-column
  margin-left: #{grid-column-gutter(12)}%
```

# Demo

Run the following from the command line to build a demo project of the different types of grids provided.

```bash
$ compass create <project_name> -r gridgraphy -u gridgraphy/example
```

