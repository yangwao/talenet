<template>
  <b-navbar :fixed="position" :class="classes" toggleable="md" type="dark" variant="dark">
    <b-nav-toggle :target="'t-navbar-' + position + '-collapse'"></b-nav-toggle>
    <b-collapse is-nav :id="'t-navbar-' + position + '-collapse'">
      <b-navbar-nav class="container d-flex d-flex-row">
        <slot name="item"></slot>
      </b-navbar-nav>
    </b-collapse>
    <div class="t-navbar-center">
      <slot name="center"></slot>
    </div>
    <div class="t-navbar-center-left">
      <slot name="center-left"></slot>
    </div>
    <div class="t-navbar-center-right">
      <slot name="center-right"></slot>
    </div>
  </b-navbar>
</template>

<script>
  export default {
    props: {
      position: {
        type: String,
        required: true
      }
    },

    computed: {
      classes () {
        return ['t-navbar', 't-navbar-' + this.position]
      }
    }
  }
</script>

<style lang="scss">
  // Not scoped to allow styling slots.
  @import "../variables";
  @import "../mixins";

  .t-navbar {
    height: $navbar-height;

    @include media-breakpoint-down(sm) {
      &.t-navbar-bottom {
        // 1hack to make menu appear above navbar
        // remove as soon as bootstrap fixes this
        .navbar-collapse {
          position: absolute;
          bottom: $navbar-height;
          width: 100%;
          margin-bottom: 3px;
        }
      }
    }

    &.t-navbar-top {
      border-bottom: $navbar-border-width solid $navbar-border-color;
    }

    &.t-navbar-bottom {
      border-top: $navbar-border-width solid $navbar-border-color;
    }

    .navbar-toggler {
      outline: none;
    }

    .navbar-nav {
      padding: 0;
      border-right: $navbar-border-width solid $navbar-border-color;
    }

    .nav-item, .form-inline {
      flex-grow: 1;
      border: none;
      height: $navbar-content-height;
      padding: 0;

      @include media-breakpoint-only(md) {
        font-size: $navbar-font-size-sm;
      }

      a {
        text-align: center;
        padding: 0;
        margin: 0;
        border: none;
        height: $navbar-content-height;
        line-height: $navbar-content-height;
      }
    }

    .navbar-nav {
      border: $navbar-border-width solid $navbar-border-color;
      background-color: $navbar-bg;
    }

    &.t-navbar-top .navbar-nav {
      padding-top: $navbar-center-size * 0.4;
    }

    &.t-navbar-bottom .navbar-nav {
      padding-bottom: $navbar-center-size * 0.4;
    }

    @include media-breakpoint-up(md) {
      .navbar-nav {
        border: none;
        border-right: $navbar-border-width solid $navbar-border-color;
        background-color: transparent;
      }

      .navbar-collapse, .navbar-nav {
        height: $navbar-content-height;
      }

      &.t-navbar-top .navbar-nav {
        padding-top: 0;
      }

      &.t-navbar-bottom .navbar-nav {
        padding-bottom: 0;
      }

      .nav-item, .form-inline {
        max-width: 25%;
        height: $navbar-content-height;
        border-left: $navbar-border-width solid $navbar-border-color;
        border-top: none;
        border-bottom: none;
      }
    }

    .nav-item {
      .active {
        background-color: $navbar-active-bg;
      }
    }

    .form-inline {
      input {
        margin: 0;
        padding: $input-btn-padding-y $input-btn-padding-x;

        box-sizing: border-box;

        height: 100%;
        width: 100%;

        text-align: center;

        border: none;
        border-radius: 0;

        box-shadow: none;
      }
    }

    .t-navbar-center {
      position: absolute;
      left: 50%;
      margin-left: -$navbar-center-size / 2;

      width: $navbar-center-size;
      height: 2 * $navbar-height - 1px;

      & > * {
        width: $navbar-center-size;
      }
    }

    &.t-navbar-top .t-navbar-center {
      top: 0;
    }

    &.t-navbar-bottom .t-navbar-center {
      bottom: 0;
    }

    .t-navbar-center-left,
    .t-navbar-center-right {
      position: absolute;
      margin-top: $navbar-center-secondary-vertical-offset;
    }

    .t-navbar-center-left {
      right: 50%;
      margin-right: $navbar-center-secondary-horizontal-offset;
    }

    .t-navbar-center-right {
      left: 50%;
      margin-left: $navbar-center-secondary-horizontal-offset;
    }
  }
</style>
