{ nodeEnv
, fetchurl
, fetchgit
, globalBuildInputs ? []
, propagatedBuildInputs ? []
}:

# This file has been editied to include propogatedBuildInputs

let
  sources = {
    "abstract-leveldown-0.12.4" = {
      name = "abstract-leveldown";
      packageName = "abstract-leveldown";
      version = "0.12.4";
      src = fetchurl {
        url = "https://registry.npmjs.org/abstract-leveldown/-/abstract-leveldown-0.12.4.tgz";
        sha1 = "29e18e632e60e4e221d5810247852a63d7b2e410";
      };
    };
    "abstract-leveldown-4.0.3" = {
      name = "abstract-leveldown";
      packageName = "abstract-leveldown";
      version = "4.0.3";
      src = fetchurl {
        url = "https://registry.npmjs.org/abstract-leveldown/-/abstract-leveldown-4.0.3.tgz";
        sha512 = "qsIHFQy0u17JqSY+3ZUT+ykqxYY17yOfvAsLkFkw8kSQqi05d1jyj0bCuSX6sjYlXuY9cKpgUt5EudQdP4aXyA==";
      };
    };
    "abstract-leveldown-5.0.0" = {
      name = "abstract-leveldown";
      packageName = "abstract-leveldown";
      version = "5.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/abstract-leveldown/-/abstract-leveldown-5.0.0.tgz";
        sha512 = "5mU5P1gXtsMIXg65/rsYGsi93+MlogXZ9FA8JnwKurHQg64bfXwGYVdVdijNTVNOlAsuIiOwHdvFFD5JqCJQ7A==";
      };
    };
    "adm-zip-0.4.11" = {
      name = "adm-zip";
      packageName = "adm-zip";
      version = "0.4.11";
      src = fetchurl {
        url = "https://registry.npmjs.org/adm-zip/-/adm-zip-0.4.11.tgz";
        sha512 = "L8vcjDTCOIJk7wFvmlEUN7AsSb8T+2JrdP7KINBjzr24TJ5Mwj590sLu3BC7zNZowvJWa/JtPmD8eJCzdtDWjA==";
      };
    };
    "ajv-5.5.2" = {
      name = "ajv";
      packageName = "ajv";
      version = "5.5.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/ajv/-/ajv-5.5.2.tgz";
        sha1 = "73b5eeca3fab653e3d3f9422b341ad42205dc965";
      };
    };
    "aligned-block-file-1.1.3" = {
      name = "aligned-block-file";
      packageName = "aligned-block-file";
      version = "1.1.3";
      src = fetchurl {
        url = "https://registry.npmjs.org/aligned-block-file/-/aligned-block-file-1.1.3.tgz";
        sha512 = "ai/S+nZ9XMjC0ReZfq94OLGCICVBJyhNiKWmF1J+/GVZZaXtYV805plMi9obaWjfNl/QljB+VOsT+wQ7R858xA==";
      };
    };
    "ansi-escapes-1.4.0" = {
      name = "ansi-escapes";
      packageName = "ansi-escapes";
      version = "1.4.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/ansi-escapes/-/ansi-escapes-1.4.0.tgz";
        sha1 = "d3a8a83b319aa67793662b13e761c7911422306e";
      };
    };
    "ansi-regex-2.1.1" = {
      name = "ansi-regex";
      packageName = "ansi-regex";
      version = "2.1.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/ansi-regex/-/ansi-regex-2.1.1.tgz";
        sha1 = "c3b33ab5ee360d86e0e628f0468ae7ef27d654df";
      };
    };
    "ansi-regex-3.0.0" = {
      name = "ansi-regex";
      packageName = "ansi-regex";
      version = "3.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/ansi-regex/-/ansi-regex-3.0.0.tgz";
        sha1 = "ed0317c322064f79466c02966bddb605ab37d998";
      };
    };
    "ansi-styles-2.2.1" = {
      name = "ansi-styles";
      packageName = "ansi-styles";
      version = "2.2.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/ansi-styles/-/ansi-styles-2.2.1.tgz";
        sha1 = "b432dd3358b634cf75e1e4664368240533c1ddbe";
      };
    };
    "anymatch-1.3.2" = {
      name = "anymatch";
      packageName = "anymatch";
      version = "1.3.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/anymatch/-/anymatch-1.3.2.tgz";
        sha512 = "0XNayC8lTHQ2OI8aljNCN3sSx6hsr/1+rlcDAotXJR7C1oZZHCNsfpbKwMjRA3Uqb5tF1Rae2oloTr4xpq+WjA==";
      };
    };
    "append-batch-0.0.1" = {
      name = "append-batch";
      packageName = "append-batch";
      version = "0.0.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/append-batch/-/append-batch-0.0.1.tgz";
        sha1 = "9224858e556997ccc07f11f1ee9a128532aa0d25";
      };
    };
    "aproba-1.2.0" = {
      name = "aproba";
      packageName = "aproba";
      version = "1.2.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/aproba/-/aproba-1.2.0.tgz";
        sha512 = "Y9J6ZjXtoYh8RnXVCMOU/ttDmk1aBjunq9vO0ta5x85WDQiQfUF9sIPBITdbiiIVcBo03Hi3jMxigBtsddlXRw==";
      };
    };
    "are-we-there-yet-1.1.5" = {
      name = "are-we-there-yet";
      packageName = "are-we-there-yet";
      version = "1.1.5";
      src = fetchurl {
        url = "https://registry.npmjs.org/are-we-there-yet/-/are-we-there-yet-1.1.5.tgz";
        sha512 = "5hYdAkZlcG8tOLujVDTgCT+uPX0VnpAH28gWsLfzpXYm7wP6mp5Q/gYyR7YQ0cKVJcXJnl3j2kpBan13PtQf6w==";
      };
    };
    "arr-diff-2.0.0" = {
      name = "arr-diff";
      packageName = "arr-diff";
      version = "2.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/arr-diff/-/arr-diff-2.0.0.tgz";
        sha1 = "8f3b827f955a8bd669697e4a4256ac3ceae356cf";
      };
    };
    "arr-diff-4.0.0" = {
      name = "arr-diff";
      packageName = "arr-diff";
      version = "4.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/arr-diff/-/arr-diff-4.0.0.tgz";
        sha1 = "d6461074febfec71e7e15235761a329a5dc7c520";
      };
    };
    "arr-flatten-1.1.0" = {
      name = "arr-flatten";
      packageName = "arr-flatten";
      version = "1.1.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/arr-flatten/-/arr-flatten-1.1.0.tgz";
        sha512 = "L3hKV5R/p5o81R7O02IGnwpDmkp6E982XhtbuwSe3O4qOtMMMtodicASA1Cny2U+aCXcNpml+m4dPsvsJ3jatg==";
      };
    };
    "arr-union-3.1.0" = {
      name = "arr-union";
      packageName = "arr-union";
      version = "3.1.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/arr-union/-/arr-union-3.1.0.tgz";
        sha1 = "e39b09aea9def866a8f206e288af63919bae39c4";
      };
    };
    "array-union-1.0.2" = {
      name = "array-union";
      packageName = "array-union";
      version = "1.0.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/array-union/-/array-union-1.0.2.tgz";
        sha1 = "9a34410e4f4e3da23dea375be5be70f24778ec39";
      };
    };
    "array-uniq-1.0.3" = {
      name = "array-uniq";
      packageName = "array-uniq";
      version = "1.0.3";
      src = fetchurl {
        url = "https://registry.npmjs.org/array-uniq/-/array-uniq-1.0.3.tgz";
        sha1 = "af6ac877a25cc7f74e058894753858dfdb24fdb6";
      };
    };
    "array-unique-0.2.1" = {
      name = "array-unique";
      packageName = "array-unique";
      version = "0.2.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/array-unique/-/array-unique-0.2.1.tgz";
        sha1 = "a1d97ccafcbc2625cc70fadceb36a50c58b01a53";
      };
    };
    "array-unique-0.3.2" = {
      name = "array-unique";
      packageName = "array-unique";
      version = "0.3.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/array-unique/-/array-unique-0.3.2.tgz";
        sha1 = "a894b75d4bc4f6cd679ef3244a9fd8f46ae2d428";
      };
    };
    "arrify-1.0.1" = {
      name = "arrify";
      packageName = "arrify";
      version = "1.0.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/arrify/-/arrify-1.0.1.tgz";
        sha1 = "898508da2226f380df904728456849c1501a4b0d";
      };
    };
    "asn1-0.2.4" = {
      name = "asn1";
      packageName = "asn1";
      version = "0.2.4";
      src = fetchurl {
        url = "https://registry.npmjs.org/asn1/-/asn1-0.2.4.tgz";
        sha512 = "jxwzQpLQjSmWXgwaCZE9Nz+glAG01yF1QnWgbhGwHI5A6FRIEY6IVqtHhIepHqI7/kyEyQEagBC5mBEFlIYvdg==";
      };
    };
    "assert-plus-1.0.0" = {
      name = "assert-plus";
      packageName = "assert-plus";
      version = "1.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/assert-plus/-/assert-plus-1.0.0.tgz";
        sha1 = "f12e0f3c5d77b0b1cdd9146942e4e96c1e4dd525";
      };
    };
    "assign-symbols-1.0.0" = {
      name = "assign-symbols";
      packageName = "assign-symbols";
      version = "1.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/assign-symbols/-/assign-symbols-1.0.0.tgz";
        sha1 = "59667f41fadd4f20ccbc2bb96b8d4f7f78ec0367";
      };
    };
    "async-0.9.2" = {
      name = "async";
      packageName = "async";
      version = "0.9.2";
      src = fetchurl {
        url = "http://registry.npmjs.org/async/-/async-0.9.2.tgz";
        sha1 = "aea74d5e61c1f899613bf64bda66d4c78f2fd17d";
      };
    };
    "async-1.0.0" = {
      name = "async";
      packageName = "async";
      version = "1.0.0";
      src = fetchurl {
        url = "http://registry.npmjs.org/async/-/async-1.0.0.tgz";
        sha1 = "f8fc04ca3a13784ade9e1641af98578cfbd647a9";
      };
    };
    "async-2.6.1" = {
      name = "async";
      packageName = "async";
      version = "2.6.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/async/-/async-2.6.1.tgz";
        sha512 = "fNEiL2+AZt6AlAw/29Cr0UDe4sRAHCpEHh54WMz+Bb7QfNcFw4h3loofyJpLeQs4Yx7yuqu/2dLgM5hKOs6HlQ==";
      };
    };
    "async-each-1.0.1" = {
      name = "async-each";
      packageName = "async-each";
      version = "1.0.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/async-each/-/async-each-1.0.1.tgz";
        sha1 = "19d386a1d9edc6e7c1c85d388aedbcc56d33602d";
      };
    };
    "async-single-1.0.5" = {
      name = "async-single";
      packageName = "async-single";
      version = "1.0.5";
      src = fetchurl {
        url = "https://registry.npmjs.org/async-single/-/async-single-1.0.5.tgz";
        sha1 = "125dd09de95d3ea30a378adbed021092179b03c9";
      };
    };
    "async-write-2.1.0" = {
      name = "async-write";
      packageName = "async-write";
      version = "2.1.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/async-write/-/async-write-2.1.0.tgz";
        sha1 = "1e762817d849ce44bfac07925a42036787061b15";
      };
    };
    "asynckit-0.4.0" = {
      name = "asynckit";
      packageName = "asynckit";
      version = "0.4.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/asynckit/-/asynckit-0.4.0.tgz";
        sha1 = "c79ed97f7f34cb8f2ba1bc9790bcc366474b4b79";
      };
    };
    "atob-2.1.2" = {
      name = "atob";
      packageName = "atob";
      version = "2.1.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/atob/-/atob-2.1.2.tgz";
        sha512 = "Wm6ukoaOGJi/73p/cl2GvLjTI5JM1k/O14isD73YML8StrH/7/lRFgmg8nICZgD3bZZvjwCGxtMOD3wWNAu8cg==";
      };
    };
    "atomic-file-0.0.1" = {
      name = "atomic-file";
      packageName = "atomic-file";
      version = "0.0.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/atomic-file/-/atomic-file-0.0.1.tgz";
        sha1 = "6c36658f6c4ece33fba3877731e7c25fc82999bb";
      };
    };
    "atomic-file-1.1.5" = {
      name = "atomic-file";
      packageName = "atomic-file";
      version = "1.1.5";
      src = fetchurl {
        url = "https://registry.npmjs.org/atomic-file/-/atomic-file-1.1.5.tgz";
        sha512 = "TG+5YFiaKQ6CZiSQsosGMJ/IJzwMZ4V/rSdEXlD6+DwKyv8OyeUcprq34kp4yuS6bfQYXhxBC2Vm8PWo+iKBGQ==";
      };
    };
    "attach-ware-1.1.1" = {
      name = "attach-ware";
      packageName = "attach-ware";
      version = "1.1.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/attach-ware/-/attach-ware-1.1.1.tgz";
        sha1 = "28f51393dd8bb8bdaad972342519bf09621a35a3";
      };
    };
    "aws-sign2-0.7.0" = {
      name = "aws-sign2";
      packageName = "aws-sign2";
      version = "0.7.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/aws-sign2/-/aws-sign2-0.7.0.tgz";
        sha1 = "b46e890934a9591f2d2f6f86d7e6a9f1b3fe76a8";
      };
    };
    "aws4-1.8.0" = {
      name = "aws4";
      packageName = "aws4";
      version = "1.8.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/aws4/-/aws4-1.8.0.tgz";
        sha512 = "ReZxvNHIOv88FlT7rxcXIIC0fPt4KZqZbOlivyWtXLt8ESx84zd3kMC6iK5jVeS2qt+g7ftS7ye4fi06X5rtRQ==";
      };
    };
    "babel-code-frame-6.26.0" = {
      name = "babel-code-frame";
      packageName = "babel-code-frame";
      version = "6.26.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/babel-code-frame/-/babel-code-frame-6.26.0.tgz";
        sha1 = "63fd43f7dc1e3bb7ce35947db8fe369a3f58c74b";
      };
    };
    "babel-core-6.26.3" = {
      name = "babel-core";
      packageName = "babel-core";
      version = "6.26.3";
      src = fetchurl {
        url = "https://registry.npmjs.org/babel-core/-/babel-core-6.26.3.tgz";
        sha512 = "6jyFLuDmeidKmUEb3NM+/yawG0M2bDZ9Z1qbZP59cyHLz8kYGKYwpJP0UwUKKUiTRNvxfLesJnTedqczP7cTDA==";
      };
    };
    "babel-generator-6.26.1" = {
      name = "babel-generator";
      packageName = "babel-generator";
      version = "6.26.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/babel-generator/-/babel-generator-6.26.1.tgz";
        sha512 = "HyfwY6ApZj7BYTcJURpM5tznulaBvyio7/0d4zFOeMPUmfxkCjHocCuoLa2SAGzBI8AREcH3eP3758F672DppA==";
      };
    };
    "babel-helper-call-delegate-6.24.1" = {
      name = "babel-helper-call-delegate";
      packageName = "babel-helper-call-delegate";
      version = "6.24.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/babel-helper-call-delegate/-/babel-helper-call-delegate-6.24.1.tgz";
        sha1 = "ece6aacddc76e41c3461f88bfc575bd0daa2df8d";
      };
    };
    "babel-helper-get-function-arity-6.24.1" = {
      name = "babel-helper-get-function-arity";
      packageName = "babel-helper-get-function-arity";
      version = "6.24.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/babel-helper-get-function-arity/-/babel-helper-get-function-arity-6.24.1.tgz";
        sha1 = "8f7782aa93407c41d3aa50908f89b031b1b6853d";
      };
    };
    "babel-helper-hoist-variables-6.24.1" = {
      name = "babel-helper-hoist-variables";
      packageName = "babel-helper-hoist-variables";
      version = "6.24.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/babel-helper-hoist-variables/-/babel-helper-hoist-variables-6.24.1.tgz";
        sha1 = "1ecb27689c9d25513eadbc9914a73f5408be7a76";
      };
    };
    "babel-helpers-6.24.1" = {
      name = "babel-helpers";
      packageName = "babel-helpers";
      version = "6.24.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/babel-helpers/-/babel-helpers-6.24.1.tgz";
        sha1 = "3471de9caec388e5c850e597e58a26ddf37602b2";
      };
    };
    "babel-messages-6.23.0" = {
      name = "babel-messages";
      packageName = "babel-messages";
      version = "6.23.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/babel-messages/-/babel-messages-6.23.0.tgz";
        sha1 = "f3cdf4703858035b2a2951c6ec5edf6c62f2630e";
      };
    };
    "babel-plugin-check-es2015-constants-6.22.0" = {
      name = "babel-plugin-check-es2015-constants";
      packageName = "babel-plugin-check-es2015-constants";
      version = "6.22.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/babel-plugin-check-es2015-constants/-/babel-plugin-check-es2015-constants-6.22.0.tgz";
        sha1 = "35157b101426fd2ffd3da3f75c7d1e91835bbf8a";
      };
    };
    "babel-plugin-transform-es2015-arrow-functions-6.22.0" = {
      name = "babel-plugin-transform-es2015-arrow-functions";
      packageName = "babel-plugin-transform-es2015-arrow-functions";
      version = "6.22.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/babel-plugin-transform-es2015-arrow-functions/-/babel-plugin-transform-es2015-arrow-functions-6.22.0.tgz";
        sha1 = "452692cb711d5f79dc7f85e440ce41b9f244d221";
      };
    };
    "babel-plugin-transform-es2015-block-scoping-6.26.0" = {
      name = "babel-plugin-transform-es2015-block-scoping";
      packageName = "babel-plugin-transform-es2015-block-scoping";
      version = "6.26.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/babel-plugin-transform-es2015-block-scoping/-/babel-plugin-transform-es2015-block-scoping-6.26.0.tgz";
        sha1 = "d70f5299c1308d05c12f463813b0a09e73b1895f";
      };
    };
    "babel-plugin-transform-es2015-computed-properties-6.24.1" = {
      name = "babel-plugin-transform-es2015-computed-properties";
      packageName = "babel-plugin-transform-es2015-computed-properties";
      version = "6.24.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/babel-plugin-transform-es2015-computed-properties/-/babel-plugin-transform-es2015-computed-properties-6.24.1.tgz";
        sha1 = "6fe2a8d16895d5634f4cd999b6d3480a308159b3";
      };
    };
    "babel-plugin-transform-es2015-destructuring-6.23.0" = {
      name = "babel-plugin-transform-es2015-destructuring";
      packageName = "babel-plugin-transform-es2015-destructuring";
      version = "6.23.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/babel-plugin-transform-es2015-destructuring/-/babel-plugin-transform-es2015-destructuring-6.23.0.tgz";
        sha1 = "997bb1f1ab967f682d2b0876fe358d60e765c56d";
      };
    };
    "babel-plugin-transform-es2015-parameters-6.24.1" = {
      name = "babel-plugin-transform-es2015-parameters";
      packageName = "babel-plugin-transform-es2015-parameters";
      version = "6.24.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/babel-plugin-transform-es2015-parameters/-/babel-plugin-transform-es2015-parameters-6.24.1.tgz";
        sha1 = "57ac351ab49caf14a97cd13b09f66fdf0a625f2b";
      };
    };
    "babel-plugin-transform-es2015-shorthand-properties-6.24.1" = {
      name = "babel-plugin-transform-es2015-shorthand-properties";
      packageName = "babel-plugin-transform-es2015-shorthand-properties";
      version = "6.24.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/babel-plugin-transform-es2015-shorthand-properties/-/babel-plugin-transform-es2015-shorthand-properties-6.24.1.tgz";
        sha1 = "24f875d6721c87661bbd99a4622e51f14de38aa0";
      };
    };
    "babel-plugin-transform-es2015-spread-6.22.0" = {
      name = "babel-plugin-transform-es2015-spread";
      packageName = "babel-plugin-transform-es2015-spread";
      version = "6.22.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/babel-plugin-transform-es2015-spread/-/babel-plugin-transform-es2015-spread-6.22.0.tgz";
        sha1 = "d6d68a99f89aedc4536c81a542e8dd9f1746f8d1";
      };
    };
    "babel-plugin-transform-es2015-template-literals-6.22.0" = {
      name = "babel-plugin-transform-es2015-template-literals";
      packageName = "babel-plugin-transform-es2015-template-literals";
      version = "6.22.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/babel-plugin-transform-es2015-template-literals/-/babel-plugin-transform-es2015-template-literals-6.22.0.tgz";
        sha1 = "a84b3450f7e9f8f1f6839d6d687da84bb1236d8d";
      };
    };
    "babel-polyfill-6.23.0" = {
      name = "babel-polyfill";
      packageName = "babel-polyfill";
      version = "6.23.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/babel-polyfill/-/babel-polyfill-6.23.0.tgz";
        sha1 = "8364ca62df8eafb830499f699177466c3b03499d";
      };
    };
    "babel-polyfill-6.26.0" = {
      name = "babel-polyfill";
      packageName = "babel-polyfill";
      version = "6.26.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/babel-polyfill/-/babel-polyfill-6.26.0.tgz";
        sha1 = "379937abc67d7895970adc621f284cd966cf2153";
      };
    };
    "babel-preset-es2040-1.1.1" = {
      name = "babel-preset-es2040";
      packageName = "babel-preset-es2040";
      version = "1.1.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/babel-preset-es2040/-/babel-preset-es2040-1.1.1.tgz";
        sha1 = "408cc33724708205c780667b930fa78df5bc8f94";
      };
    };
    "babel-register-6.26.0" = {
      name = "babel-register";
      packageName = "babel-register";
      version = "6.26.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/babel-register/-/babel-register-6.26.0.tgz";
        sha1 = "6ed021173e2fcb486d7acb45c6009a856f647071";
      };
    };
    "babel-runtime-6.26.0" = {
      name = "babel-runtime";
      packageName = "babel-runtime";
      version = "6.26.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/babel-runtime/-/babel-runtime-6.26.0.tgz";
        sha1 = "965c7058668e82b55d7bfe04ff2337bc8b5647fe";
      };
    };
    "babel-template-6.26.0" = {
      name = "babel-template";
      packageName = "babel-template";
      version = "6.26.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/babel-template/-/babel-template-6.26.0.tgz";
        sha1 = "de03e2d16396b069f46dd9fff8521fb1a0e35e02";
      };
    };
    "babel-traverse-6.26.0" = {
      name = "babel-traverse";
      packageName = "babel-traverse";
      version = "6.26.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/babel-traverse/-/babel-traverse-6.26.0.tgz";
        sha1 = "46a9cbd7edcc62c8e5c064e2d2d8d0f4035766ee";
      };
    };
    "babel-types-6.26.0" = {
      name = "babel-types";
      packageName = "babel-types";
      version = "6.26.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/babel-types/-/babel-types-6.26.0.tgz";
        sha1 = "a3b073f94ab49eb6fa55cd65227a334380632497";
      };
    };
    "babylon-6.18.0" = {
      name = "babylon";
      packageName = "babylon";
      version = "6.18.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/babylon/-/babylon-6.18.0.tgz";
        sha512 = "q/UEjfGJ2Cm3oKV71DJz9d25TPnq5rhBVL2Q4fA5wcC3jcrdn7+SssEybFIxwAvvP+YCsCYNKughoF33GxgycQ==";
      };
    };
    "bail-1.0.3" = {
      name = "bail";
      packageName = "bail";
      version = "1.0.3";
      src = fetchurl {
        url = "https://registry.npmjs.org/bail/-/bail-1.0.3.tgz";
        sha512 = "1X8CnjFVQ+a+KW36uBNMTU5s8+v5FzeqrP7hTG5aTb4aPreSbZJlhwPon9VKMuEVgV++JM+SQrALY3kr7eswdg==";
      };
    };
    "balanced-match-1.0.0" = {
      name = "balanced-match";
      packageName = "balanced-match";
      version = "1.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/balanced-match/-/balanced-match-1.0.0.tgz";
        sha1 = "89b4d199ab2bee49de164ea02b89ce462d71b767";
      };
    };
    "base-0.11.2" = {
      name = "base";
      packageName = "base";
      version = "0.11.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/base/-/base-0.11.2.tgz";
        sha512 = "5T6P4xPgpp0YDFvSWwEZ4NoE3aM4QBQXDzmVbraCkFj8zHM+mba8SyqB5DbZWyR7mYHo6Y7BdQo3MoA4m0TeQg==";
      };
    };
    "base64-url-2.2.0" = {
      name = "base64-url";
      packageName = "base64-url";
      version = "2.2.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/base64-url/-/base64-url-2.2.0.tgz";
        sha512 = "Y4qHHAE+rWjmAFPQmHPiiD+hWwM/XvuFLlP6kVxlwZJK7rjiE2uIQR9tZ37iEr1E6iCj9799yxMAmiXzITb3lQ==";
      };
    };
    "bash-color-0.0.4" = {
      name = "bash-color";
      packageName = "bash-color";
      version = "0.0.4";
      src = fetchurl {
        url = "https://registry.npmjs.org/bash-color/-/bash-color-0.0.4.tgz";
        sha1 = "e9be8ce33540cada4881768c59bd63865736e913";
      };
    };
    "bcrypt-pbkdf-1.0.2" = {
      name = "bcrypt-pbkdf";
      packageName = "bcrypt-pbkdf";
      version = "1.0.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/bcrypt-pbkdf/-/bcrypt-pbkdf-1.0.2.tgz";
        sha1 = "a4301d389b6a43f9b67ff3ca11a3f6637e360e9e";
      };
    };
    "binary-extensions-1.12.0" = {
      name = "binary-extensions";
      packageName = "binary-extensions";
      version = "1.12.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/binary-extensions/-/binary-extensions-1.12.0.tgz";
        sha512 = "DYWGk01lDcxeS/K9IHPGWfT8PsJmbXRtRd2Sx72Tnb8pcYZQFF1oSDb8hJtS1vhp212q1Rzi5dUf9+nq0o9UIg==";
      };
    };
    "binary-search-1.3.4" = {
      name = "binary-search";
      packageName = "binary-search";
      version = "1.3.4";
      src = fetchurl {
        url = "https://registry.npmjs.org/binary-search/-/binary-search-1.3.4.tgz";
        sha512 = "dPxU/vZLnH0tEVjVPgi015oSwqu6oLfCeHywuFRhBE0yM0mYocvleTl8qsdM1YFhRzTRhM1+VzS8XLDVrHPopg==";
      };
    };
    "bindings-1.3.0" = {
      name = "bindings";
      packageName = "bindings";
      version = "1.3.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/bindings/-/bindings-1.3.0.tgz";
        sha512 = "DpLh5EzMR2kzvX1KIlVC0VkC3iZtHKTgdtZ0a3pglBZdaQFjt5S9g9xd1lE+YvXyfd6mtCeRnrUfOLYiTMlNSw==";
      };
    };
    "bl-0.8.2" = {
      name = "bl";
      packageName = "bl";
      version = "0.8.2";
      src = fetchurl {
        url = "http://registry.npmjs.org/bl/-/bl-0.8.2.tgz";
        sha1 = "c9b6bca08d1bc2ea00fc8afb4f1a5fd1e1c66e4e";
      };
    };
    "bl-1.2.2" = {
      name = "bl";
      packageName = "bl";
      version = "1.2.2";
      src = fetchurl {
        url = "http://registry.npmjs.org/bl/-/bl-1.2.2.tgz";
        sha512 = "e8tQYnZodmebYDWGH7KMRvtzKXaJHx3BbilrgZCfvyLUYdKpK1t5PSPmpkny/SgiTSCnjfLW7v5rlONXVFkQEA==";
      };
    };
    "blake2s-1.0.1" = {
      name = "blake2s";
      packageName = "blake2s";
      version = "1.0.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/blake2s/-/blake2s-1.0.1.tgz";
        sha1 = "1598822a320ece6aa401ba982954f82f61b0cd7b";
      };
    };
    "bluebird-3.5.2" = {
      name = "bluebird";
      packageName = "bluebird";
      version = "3.5.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/bluebird/-/bluebird-3.5.2.tgz";
        sha512 = "dhHTWMI7kMx5whMQntl7Vr9C6BvV10lFXDAasnqnrMYhXVCzzk6IO9Fo2L75jXHT07WrOngL1WDXOp+yYS91Yg==";
      };
    };
    "bootstrap-4.1.3" = {
      name = "bootstrap";
      packageName = "bootstrap";
      version = "4.1.3";
      src = fetchurl {
        url = "https://registry.npmjs.org/bootstrap/-/bootstrap-4.1.3.tgz";
        sha512 = "rDFIzgXcof0jDyjNosjv4Sno77X4KuPeFxG2XZZv1/Kc8DRVGVADdoQyyOVDwPqL36DDmtCQbrpMCqvpPLJQ0w==";
      };
    };
    "bootstrap-vue-2.0.0-rc.11" = {
      name = "bootstrap-vue";
      packageName = "bootstrap-vue";
      version = "2.0.0-rc.11";
      src = fetchurl {
        url = "https://registry.npmjs.org/bootstrap-vue/-/bootstrap-vue-2.0.0-rc.11.tgz";
        sha512 = "LxR+oL8yKr1DVoWUWTX+XhiT0xaTMH6142u2VSFDm4tewTH8HIrzN2YIl7HLZrw2DIuE9bRMIdWJqqn3aQe7Hw==";
      };
    };
    "brace-expansion-1.1.11" = {
      name = "brace-expansion";
      packageName = "brace-expansion";
      version = "1.1.11";
      src = fetchurl {
        url = "https://registry.npmjs.org/brace-expansion/-/brace-expansion-1.1.11.tgz";
        sha512 = "iCuPHDFgrHX7H2vEI/5xpz07zSHB00TpugqhmYtVmMO6518mCuRMoOYFldEBl0g187ufozdaHgWKcYFb61qGiA==";
      };
    };
    "braces-1.8.5" = {
      name = "braces";
      packageName = "braces";
      version = "1.8.5";
      src = fetchurl {
        url = "https://registry.npmjs.org/braces/-/braces-1.8.5.tgz";
        sha1 = "ba77962e12dff969d6b76711e914b737857bf6a7";
      };
    };
    "braces-2.3.2" = {
      name = "braces";
      packageName = "braces";
      version = "2.3.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/braces/-/braces-2.3.2.tgz";
        sha512 = "aNdbnj9P8PjdXU4ybaWLK2IF3jc/EoDYbC7AazW6to3TRsfXxscC9UXOB5iDiEQrkyIbWp2SLQda4+QAa7nc3w==";
      };
    };
    "broadcast-stream-0.2.2" = {
      name = "broadcast-stream";
      packageName = "broadcast-stream";
      version = "0.2.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/broadcast-stream/-/broadcast-stream-0.2.2.tgz";
        sha1 = "79e7bb14a9abba77f72ac9258220242a8fd3919d";
      };
    };
    "browser-split-0.0.1" = {
      name = "browser-split";
      packageName = "browser-split";
      version = "0.0.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/browser-split/-/browser-split-0.0.1.tgz";
        sha1 = "7b097574f8e3ead606fb4664e64adfdda2981a93";
      };
    };
    "browserify-zlib-0.1.4" = {
      name = "browserify-zlib";
      packageName = "browserify-zlib";
      version = "0.1.4";
      src = fetchurl {
        url = "https://registry.npmjs.org/browserify-zlib/-/browserify-zlib-0.1.4.tgz";
        sha1 = "bb35f8a519f600e0fa6b8485241c979d0141fb2d";
      };
    };
    "buffer-alloc-1.2.0" = {
      name = "buffer-alloc";
      packageName = "buffer-alloc";
      version = "1.2.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/buffer-alloc/-/buffer-alloc-1.2.0.tgz";
        sha512 = "CFsHQgjtW1UChdXgbyJGtnm+O/uLQeZdtbDo8mfUgYXCHSM1wgrVxXm6bSyrUuErEb+4sYVGCzASBRot7zyrow==";
      };
    };
    "buffer-alloc-unsafe-1.1.0" = {
      name = "buffer-alloc-unsafe";
      packageName = "buffer-alloc-unsafe";
      version = "1.1.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/buffer-alloc-unsafe/-/buffer-alloc-unsafe-1.1.0.tgz";
        sha512 = "TEM2iMIEQdJ2yjPJoSIsldnleVaAk1oW3DBVUykyOLsEsFmEc9kn+SFFPz+gl54KQNxlDnAwCXosOS9Okx2xAg==";
      };
    };
    "buffer-fill-1.0.0" = {
      name = "buffer-fill";
      packageName = "buffer-fill";
      version = "1.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/buffer-fill/-/buffer-fill-1.0.0.tgz";
        sha1 = "f8f78b76789888ef39f205cd637f68e702122b2c";
      };
    };
    "buffer-from-1.1.1" = {
      name = "buffer-from";
      packageName = "buffer-from";
      version = "1.1.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/buffer-from/-/buffer-from-1.1.1.tgz";
        sha512 = "MQcXEUbCKtEo7bhqEs6560Hyd4XaovZlO/k9V3hjVUF/zwW7KBVdSK4gIt/bzwS9MbR5qob+F5jusZsb0YQK2A==";
      };
    };
    "bytewise-1.1.0" = {
      name = "bytewise";
      packageName = "bytewise";
      version = "1.1.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/bytewise/-/bytewise-1.1.0.tgz";
        sha1 = "1d13cbff717ae7158094aa881b35d081b387253e";
      };
    };
    "bytewise-core-1.2.3" = {
      name = "bytewise-core";
      packageName = "bytewise-core";
      version = "1.2.3";
      src = fetchurl {
        url = "https://registry.npmjs.org/bytewise-core/-/bytewise-core-1.2.3.tgz";
        sha1 = "3fb410c7e91558eb1ab22a82834577aa6bd61d42";
      };
    };
    "cache-base-1.0.1" = {
      name = "cache-base";
      packageName = "cache-base";
      version = "1.0.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/cache-base/-/cache-base-1.0.1.tgz";
        sha512 = "AKcdTnFSWATd5/GCPRxr2ChwIJ85CeyrEyjRHlKxQ56d4XJMGym0uAiKn0xbLOGOl3+yRpOTi484dVCEc5AUzQ==";
      };
    };
    "camelcase-2.1.1" = {
      name = "camelcase";
      packageName = "camelcase";
      version = "2.1.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/camelcase/-/camelcase-2.1.1.tgz";
        sha1 = "7c1d16d679a1bbe59ca02cacecfb011e201f5a1f";
      };
    };
    "caseless-0.12.0" = {
      name = "caseless";
      packageName = "caseless";
      version = "0.12.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/caseless/-/caseless-0.12.0.tgz";
        sha1 = "1b681c21ff84033c826543090689420d187151dc";
      };
    };
    "ccount-1.0.3" = {
      name = "ccount";
      packageName = "ccount";
      version = "1.0.3";
      src = fetchurl {
        url = "https://registry.npmjs.org/ccount/-/ccount-1.0.3.tgz";
        sha512 = "Jt9tIBkRc9POUof7QA/VwWd+58fKkEEfI+/t1/eOlxKM7ZhrczNzMFefge7Ai+39y1pR/pP6cI19guHy3FSLmw==";
      };
    };
    "chalk-1.1.3" = {
      name = "chalk";
      packageName = "chalk";
      version = "1.1.3";
      src = fetchurl {
        url = "http://registry.npmjs.org/chalk/-/chalk-1.1.3.tgz";
        sha1 = "a8115c55e4a702fe4d150abd3872822a7e09fc98";
      };
    };
    "character-entities-1.2.2" = {
      name = "character-entities";
      packageName = "character-entities";
      version = "1.2.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/character-entities/-/character-entities-1.2.2.tgz";
        sha512 = "sMoHX6/nBiy3KKfC78dnEalnpn0Az0oSNvqUWYTtYrhRI5iUIYsROU48G+E+kMFQzqXaJ8kHJZ85n7y6/PHgwQ==";
      };
    };
    "character-entities-html4-1.1.2" = {
      name = "character-entities-html4";
      packageName = "character-entities-html4";
      version = "1.1.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/character-entities-html4/-/character-entities-html4-1.1.2.tgz";
        sha512 = "sIrXwyna2+5b0eB9W149izTPJk/KkJTg6mEzDGibwBUkyH1SbDa+nf515Ppdi3MaH35lW0JFJDWeq9Luzes1Iw==";
      };
    };
    "character-entities-legacy-1.1.2" = {
      name = "character-entities-legacy";
      packageName = "character-entities-legacy";
      version = "1.1.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/character-entities-legacy/-/character-entities-legacy-1.1.2.tgz";
        sha512 = "9NB2VbXtXYWdXzqrvAHykE/f0QJxzaKIpZ5QzNZrrgQ7Iyxr2vnfS8fCBNVW9nUEZE0lo57nxKRqnzY/dKrwlA==";
      };
    };
    "character-reference-invalid-1.1.2" = {
      name = "character-reference-invalid";
      packageName = "character-reference-invalid";
      version = "1.1.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/character-reference-invalid/-/character-reference-invalid-1.1.2.tgz";
        sha512 = "7I/xceXfKyUJmSAn/jw8ve/9DyOP7XxufNYLI9Px7CmsKgEUaZLUTax6nZxGQtaoiZCjpu6cHPj20xC/vqRReQ==";
      };
    };
    "chardet-0.4.2" = {
      name = "chardet";
      packageName = "chardet";
      version = "0.4.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/chardet/-/chardet-0.4.2.tgz";
        sha1 = "b5473b33dc97c424e5d98dc87d55d4d8a29c8bf2";
      };
    };
    "charwise-3.0.1" = {
      name = "charwise";
      packageName = "charwise";
      version = "3.0.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/charwise/-/charwise-3.0.1.tgz";
        sha512 = "RcdumNsM6fJZ5HHbYunqj2bpurVRGsXour3OR+SlLEHFhG6ALm54i6Osnh+OvO7kEoSBzwExpblYFH8zKQiEPw==";
      };
    };
    "chloride-2.2.10" = {
      name = "chloride";
      packageName = "chloride";
      version = "2.2.10";
      src = fetchurl {
        url = "https://registry.npmjs.org/chloride/-/chloride-2.2.10.tgz";
        sha512 = "CbU1ISGiB2JBV6PDXx7hkl8D94d2TPD1BANUMFbr8rZYKJi8De2d3Hu2XDIOLAhXf+8yhoFOdjtLG6fxz3QByQ==";
      };
    };
    "chloride-test-1.2.2" = {
      name = "chloride-test";
      packageName = "chloride-test";
      version = "1.2.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/chloride-test/-/chloride-test-1.2.2.tgz";
        sha1 = "178686a85e9278045112e96e8c791793f9a10aea";
      };
    };
    "chokidar-1.7.0" = {
      name = "chokidar";
      packageName = "chokidar";
      version = "1.7.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/chokidar/-/chokidar-1.7.0.tgz";
        sha1 = "798e689778151c8076b4b360e5edd28cda2bb468";
      };
    };
    "chownr-1.1.1" = {
      name = "chownr";
      packageName = "chownr";
      version = "1.1.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/chownr/-/chownr-1.1.1.tgz";
        sha512 = "j38EvO5+LHX84jlo6h4UzmOwi0UgW61WRyPtJz4qaadK5eY3BTS5TY/S1Stc3Uk2lIM6TPevAlULiEJwie860g==";
      };
    };
    "chrome-native-messaging-0.2.0" = {
      name = "chrome-native-messaging";
      packageName = "chrome-native-messaging";
      version = "0.2.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/chrome-native-messaging/-/chrome-native-messaging-0.2.0.tgz";
        sha1 = "c142cde524bd1b1854e14f57e078a396a6da3826";
      };
    };
    "class-utils-0.3.6" = {
      name = "class-utils";
      packageName = "class-utils";
      version = "0.3.6";
      src = fetchurl {
        url = "https://registry.npmjs.org/class-utils/-/class-utils-0.3.6.tgz";
        sha512 = "qOhPa/Fj7s6TY8H8esGu5QNpMMQxz79h+urzrNYN6mn+9BnxlDGf5QZ+XeCDsxSjPqsSR56XOZOJmpeurnLMeg==";
      };
    };
    "cli-cursor-1.0.2" = {
      name = "cli-cursor";
      packageName = "cli-cursor";
      version = "1.0.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/cli-cursor/-/cli-cursor-1.0.2.tgz";
        sha1 = "64da3f7d56a54412e59794bd62dc35295e8f2987";
      };
    };
    "cli-cursor-2.1.0" = {
      name = "cli-cursor";
      packageName = "cli-cursor";
      version = "2.1.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/cli-cursor/-/cli-cursor-2.1.0.tgz";
        sha1 = "b35dac376479facc3e94747d41d0d0f5238ffcb5";
      };
    };
    "cli-width-2.2.0" = {
      name = "cli-width";
      packageName = "cli-width";
      version = "2.2.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/cli-width/-/cli-width-2.2.0.tgz";
        sha1 = "ff19ede8a9a5e579324147b0c11f0fbcbabed639";
      };
    };
    "co-3.1.0" = {
      name = "co";
      packageName = "co";
      version = "3.1.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/co/-/co-3.1.0.tgz";
        sha1 = "4ea54ea5a08938153185e15210c68d9092bc1b78";
      };
    };
    "co-4.6.0" = {
      name = "co";
      packageName = "co";
      version = "4.6.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/co/-/co-4.6.0.tgz";
        sha1 = "6ea6bdf3d853ae54ccb8e47bfa0bf3f9031fb184";
      };
    };
    "code-point-at-1.1.0" = {
      name = "code-point-at";
      packageName = "code-point-at";
      version = "1.1.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/code-point-at/-/code-point-at-1.1.0.tgz";
        sha1 = "0d070b4d043a5bea33a2f1a40e2edb3d9a4ccf77";
      };
    };
    "collapse-white-space-1.0.4" = {
      name = "collapse-white-space";
      packageName = "collapse-white-space";
      version = "1.0.4";
      src = fetchurl {
        url = "https://registry.npmjs.org/collapse-white-space/-/collapse-white-space-1.0.4.tgz";
        sha512 = "YfQ1tAUZm561vpYD+5eyWN8+UsceQbSrqqlc/6zDY2gtAE+uZLSdkkovhnGpmCThsvKBFakq4EdY/FF93E8XIw==";
      };
    };
    "collection-visit-1.0.0" = {
      name = "collection-visit";
      packageName = "collection-visit";
      version = "1.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/collection-visit/-/collection-visit-1.0.0.tgz";
        sha1 = "4bc0373c164bc3291b4d368c829cf1a80a59dca0";
      };
    };
    "colors-1.0.3" = {
      name = "colors";
      packageName = "colors";
      version = "1.0.3";
      src = fetchurl {
        url = "https://registry.npmjs.org/colors/-/colors-1.0.3.tgz";
        sha1 = "0433f44d809680fdeb60ed260f1b0c262e82a40b";
      };
    };
    "colors-1.3.2" = {
      name = "colors";
      packageName = "colors";
      version = "1.3.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/colors/-/colors-1.3.2.tgz";
        sha512 = "rhP0JSBGYvpcNQj4s5AdShMeE5ahMop96cTeDl/v9qQQm2fYClE2QXZRi8wLzc+GmXSxdIqqbOIAhyObEXDbfQ==";
      };
    };
    "combined-stream-1.0.7" = {
      name = "combined-stream";
      packageName = "combined-stream";
      version = "1.0.7";
      src = fetchurl {
        url = "https://registry.npmjs.org/combined-stream/-/combined-stream-1.0.7.tgz";
        sha512 = "brWl9y6vOB1xYPZcpZde3N9zDByXTosAeMDo4p1wzo6UMOX4vumB+TP1RZ76sfE6Md68Q0NJSrE/gbezd4Ul+w==";
      };
    };
    "commander-2.19.0" = {
      name = "commander";
      packageName = "commander";
      version = "2.19.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/commander/-/commander-2.19.0.tgz";
        sha512 = "6tvAOO+D6OENvRAh524Dh9jcfKTYDQAqvqezbCW82xj5X0pSrcpxtvRKHLG0yBY6SD7PSDrJaj+0AiOcKVd1Xg==";
      };
    };
    "compare-at-paths-1.0.0" = {
      name = "compare-at-paths";
      packageName = "compare-at-paths";
      version = "1.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/compare-at-paths/-/compare-at-paths-1.0.0.tgz";
        sha512 = "Ke1ejo/RZ+Hzku4gcW34uPMOR4Cpq87MAotELgV9mwiAzDN726cu+eWo0zWg1vRIfyf6yK5bW9uIW+c/SksQ5w==";
      };
    };
    "component-emitter-1.2.1" = {
      name = "component-emitter";
      packageName = "component-emitter";
      version = "1.2.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/component-emitter/-/component-emitter-1.2.1.tgz";
        sha1 = "137918d6d78283f7df7a6b7c5a63e140e69425e6";
      };
    };
    "concat-map-0.0.1" = {
      name = "concat-map";
      packageName = "concat-map";
      version = "0.0.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/concat-map/-/concat-map-0.0.1.tgz";
        sha1 = "d8a96bd77fd68df7793a73036a3ba0d5405d477b";
      };
    };
    "concat-stream-1.6.2" = {
      name = "concat-stream";
      packageName = "concat-stream";
      version = "1.6.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/concat-stream/-/concat-stream-1.6.2.tgz";
        sha512 = "27HBghJxjiZtIk3Ycvn/4kbJk/1uZuJFfuPEns6LaEvpvG1f0hTea8lilrouyo9mVc2GWdcEZ8OLoGmSADlrCw==";
      };
    };
    "console-control-strings-1.1.0" = {
      name = "console-control-strings";
      packageName = "console-control-strings";
      version = "1.1.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/console-control-strings/-/console-control-strings-1.1.0.tgz";
        sha1 = "3d7cf4464db6446ea644bf4b39507f9851008e8e";
      };
    };
    "cont-1.0.3" = {
      name = "cont";
      packageName = "cont";
      version = "1.0.3";
      src = fetchurl {
        url = "https://registry.npmjs.org/cont/-/cont-1.0.3.tgz";
        sha1 = "6874f1e935fca99d048caeaaad9a0aeb020bcce0";
      };
    };
    "continuable-1.1.8" = {
      name = "continuable";
      packageName = "continuable";
      version = "1.1.8";
      src = fetchurl {
        url = "https://registry.npmjs.org/continuable/-/continuable-1.1.8.tgz";
        sha1 = "dc877b474160870ae3bcde87336268ebe50597d5";
      };
    };
    "continuable-1.2.0" = {
      name = "continuable";
      packageName = "continuable";
      version = "1.2.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/continuable/-/continuable-1.2.0.tgz";
        sha1 = "08277468d41136200074ccf87294308d169f25b6";
      };
    };
    "continuable-hash-0.1.4" = {
      name = "continuable-hash";
      packageName = "continuable-hash";
      version = "0.1.4";
      src = fetchurl {
        url = "https://registry.npmjs.org/continuable-hash/-/continuable-hash-0.1.4.tgz";
        sha1 = "81c74d41771d8c92783e1e00e5f11b34d6dfc78c";
      };
    };
    "continuable-list-0.1.6" = {
      name = "continuable-list";
      packageName = "continuable-list";
      version = "0.1.6";
      src = fetchurl {
        url = "https://registry.npmjs.org/continuable-list/-/continuable-list-0.1.6.tgz";
        sha1 = "87cf06ec580716e10dff95fb0b84c5f0e8acac5f";
      };
    };
    "continuable-para-1.2.0" = {
      name = "continuable-para";
      packageName = "continuable-para";
      version = "1.2.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/continuable-para/-/continuable-para-1.2.0.tgz";
        sha1 = "445510f649459dd0fc35c872015146122731c583";
      };
    };
    "continuable-series-1.2.0" = {
      name = "continuable-series";
      packageName = "continuable-series";
      version = "1.2.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/continuable-series/-/continuable-series-1.2.0.tgz";
        sha1 = "3243397ae93a71d655b3026834a51590b958b9e8";
      };
    };
    "convert-source-map-1.6.0" = {
      name = "convert-source-map";
      packageName = "convert-source-map";
      version = "1.6.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/convert-source-map/-/convert-source-map-1.6.0.tgz";
        sha512 = "eFu7XigvxdZ1ETfbgPBohgyQ/Z++C0eEhTor0qRwBw9unw+L0/6V8wkSuGgzdThkiS5lSpdptOQPD8Ak40a+7A==";
      };
    };
    "copy-descriptor-0.1.1" = {
      name = "copy-descriptor";
      packageName = "copy-descriptor";
      version = "0.1.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/copy-descriptor/-/copy-descriptor-0.1.1.tgz";
        sha1 = "676f6eb3c39997c2ee1ac3a924fd6124748f578d";
      };
    };
    "core-js-2.5.7" = {
      name = "core-js";
      packageName = "core-js";
      version = "2.5.7";
      src = fetchurl {
        url = "https://registry.npmjs.org/core-js/-/core-js-2.5.7.tgz";
        sha512 = "RszJCAxg/PP6uzXVXL6BsxSXx/B05oJAQ2vkJRjyjrEcNVycaqOmNb5OTxZPE3xa5gwZduqza6L9JOCenh/Ecw==";
      };
    };
    "core-util-is-1.0.2" = {
      name = "core-util-is";
      packageName = "core-util-is";
      version = "1.0.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/core-util-is/-/core-util-is-1.0.2.tgz";
        sha1 = "b5fd54220aa2bc5ab57aab7140c940754503c1a7";
      };
    };
    "cross-spawn-4.0.2" = {
      name = "cross-spawn";
      packageName = "cross-spawn";
      version = "4.0.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/cross-spawn/-/cross-spawn-4.0.2.tgz";
        sha1 = "7b9247621c23adfdd3856004a823cbe397424d41";
      };
    };
    "cross-spawn-5.1.0" = {
      name = "cross-spawn";
      packageName = "cross-spawn";
      version = "5.1.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/cross-spawn/-/cross-spawn-5.1.0.tgz";
        sha1 = "e8bd0efee58fcff6f8f94510a0a554bbfa235449";
      };
    };
    "cycle-1.0.3" = {
      name = "cycle";
      packageName = "cycle";
      version = "1.0.3";
      src = fetchurl {
        url = "https://registry.npmjs.org/cycle/-/cycle-1.0.3.tgz";
        sha1 = "21e80b2be8580f98b468f379430662b046c34ad2";
      };
    };
    "d3-5.7.0" = {
      name = "d3";
      packageName = "d3";
      version = "5.7.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/d3/-/d3-5.7.0.tgz";
        sha512 = "8KEIfx+dFm8PlbJN9PI0suazrZ41QcaAufsKE9PRcqYPWLngHIyWJZX96n6IQKePGgeSu0l7rtlueSSNq8Zc3g==";
      };
    };
    "d3-array-1.2.4" = {
      name = "d3-array";
      packageName = "d3-array";
      version = "1.2.4";
      src = fetchurl {
        url = "https://registry.npmjs.org/d3-array/-/d3-array-1.2.4.tgz";
        sha512 = "KHW6M86R+FUPYGb3R5XiYjXPq7VzwxZ22buHhAEVG5ztoEcZZMLov530mmccaqA1GghZArjQV46fuc8kUqhhHw==";
      };
    };
    "d3-axis-1.0.12" = {
      name = "d3-axis";
      packageName = "d3-axis";
      version = "1.0.12";
      src = fetchurl {
        url = "https://registry.npmjs.org/d3-axis/-/d3-axis-1.0.12.tgz";
        sha512 = "ejINPfPSNdGFKEOAtnBtdkpr24c4d4jsei6Lg98mxf424ivoDP2956/5HDpIAtmHo85lqT4pruy+zEgvRUBqaQ==";
      };
    };
    "d3-brush-1.0.6" = {
      name = "d3-brush";
      packageName = "d3-brush";
      version = "1.0.6";
      src = fetchurl {
        url = "https://registry.npmjs.org/d3-brush/-/d3-brush-1.0.6.tgz";
        sha512 = "lGSiF5SoSqO5/mYGD5FAeGKKS62JdA1EV7HPrU2b5rTX4qEJJtpjaGLJngjnkewQy7UnGstnFd3168wpf5z76w==";
      };
    };
    "d3-chord-1.0.6" = {
      name = "d3-chord";
      packageName = "d3-chord";
      version = "1.0.6";
      src = fetchurl {
        url = "https://registry.npmjs.org/d3-chord/-/d3-chord-1.0.6.tgz";
        sha512 = "JXA2Dro1Fxw9rJe33Uv+Ckr5IrAa74TlfDEhE/jfLOaXegMQFQTAgAw9WnZL8+HxVBRXaRGCkrNU7pJeylRIuA==";
      };
    };
    "d3-collection-1.0.7" = {
      name = "d3-collection";
      packageName = "d3-collection";
      version = "1.0.7";
      src = fetchurl {
        url = "https://registry.npmjs.org/d3-collection/-/d3-collection-1.0.7.tgz";
        sha512 = "ii0/r5f4sjKNTfh84Di+DpztYwqKhEyUlKoPrzUFfeSkWxjW49xU2QzO9qrPrNkpdI0XJkfzvmTu8V2Zylln6A==";
      };
    };
    "d3-color-1.2.3" = {
      name = "d3-color";
      packageName = "d3-color";
      version = "1.2.3";
      src = fetchurl {
        url = "https://registry.npmjs.org/d3-color/-/d3-color-1.2.3.tgz";
        sha512 = "x37qq3ChOTLd26hnps36lexMRhNXEtVxZ4B25rL0DVdDsGQIJGB18S7y9XDwlDD6MD/ZBzITCf4JjGMM10TZkw==";
      };
    };
    "d3-contour-1.3.2" = {
      name = "d3-contour";
      packageName = "d3-contour";
      version = "1.3.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/d3-contour/-/d3-contour-1.3.2.tgz";
        sha512 = "hoPp4K/rJCu0ladiH6zmJUEz6+u3lgR+GSm/QdM2BBvDraU39Vr7YdDCicJcxP1z8i9B/2dJLgDC1NcvlF8WCg==";
      };
    };
    "d3-dispatch-1.0.5" = {
      name = "d3-dispatch";
      packageName = "d3-dispatch";
      version = "1.0.5";
      src = fetchurl {
        url = "https://registry.npmjs.org/d3-dispatch/-/d3-dispatch-1.0.5.tgz";
        sha512 = "vwKx+lAqB1UuCeklr6Jh1bvC4SZgbSqbkGBLClItFBIYH4vqDJCA7qfoy14lXmJdnBOdxndAMxjCbImJYW7e6g==";
      };
    };
    "d3-drag-1.2.3" = {
      name = "d3-drag";
      packageName = "d3-drag";
      version = "1.2.3";
      src = fetchurl {
        url = "https://registry.npmjs.org/d3-drag/-/d3-drag-1.2.3.tgz";
        sha512 = "8S3HWCAg+ilzjJsNtWW1Mutl74Nmzhb9yU6igspilaJzeZVFktmY6oO9xOh5TDk+BM2KrNFjttZNoJJmDnkjkg==";
      };
    };
    "d3-dsv-1.0.10" = {
      name = "d3-dsv";
      packageName = "d3-dsv";
      version = "1.0.10";
      src = fetchurl {
        url = "https://registry.npmjs.org/d3-dsv/-/d3-dsv-1.0.10.tgz";
        sha512 = "vqklfpxmtO2ZER3fq/B33R/BIz3A1PV0FaZRuFM8w6jLo7sUX1BZDh73fPlr0s327rzq4H6EN1q9U+eCBCSN8g==";
      };
    };
    "d3-ease-1.0.5" = {
      name = "d3-ease";
      packageName = "d3-ease";
      version = "1.0.5";
      src = fetchurl {
        url = "https://registry.npmjs.org/d3-ease/-/d3-ease-1.0.5.tgz";
        sha512 = "Ct1O//ly5y5lFM9YTdu+ygq7LleSgSE4oj7vUt9tPLHUi8VCV7QoizGpdWRWAwCO9LdYzIrQDg97+hGVdsSGPQ==";
      };
    };
    "d3-fetch-1.1.2" = {
      name = "d3-fetch";
      packageName = "d3-fetch";
      version = "1.1.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/d3-fetch/-/d3-fetch-1.1.2.tgz";
        sha512 = "S2loaQCV/ZeyTyIF2oP8D1K9Z4QizUzW7cWeAOAS4U88qOt3Ucf6GsmgthuYSdyB2HyEm4CeGvkQxWsmInsIVA==";
      };
    };
    "d3-force-1.1.2" = {
      name = "d3-force";
      packageName = "d3-force";
      version = "1.1.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/d3-force/-/d3-force-1.1.2.tgz";
        sha512 = "p1vcHAUF1qH7yR+e8ip7Bs61AHjLeKkIn8Z2gzwU2lwEf2wkSpWdjXG0axudTHsVFnYGlMkFaEsVy2l8tAg1Gw==";
      };
    };
    "d3-format-1.3.2" = {
      name = "d3-format";
      packageName = "d3-format";
      version = "1.3.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/d3-format/-/d3-format-1.3.2.tgz";
        sha512 = "Z18Dprj96ExragQ0DeGi+SYPQ7pPfRMtUXtsg/ChVIKNBCzjO8XYJvRTC1usblx52lqge56V5ect+frYTQc8WQ==";
      };
    };
    "d3-geo-1.11.1" = {
      name = "d3-geo";
      packageName = "d3-geo";
      version = "1.11.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/d3-geo/-/d3-geo-1.11.1.tgz";
        sha512 = "GsG7x9G9sykseLviOVSJ3h5yjw0ItLopOtuDQKUt1TRklEegCw5WAmnIpYYiCkSH/QgUMleAeE2xZK38Qb+1+Q==";
      };
    };
    "d3-hierarchy-1.1.8" = {
      name = "d3-hierarchy";
      packageName = "d3-hierarchy";
      version = "1.1.8";
      src = fetchurl {
        url = "https://registry.npmjs.org/d3-hierarchy/-/d3-hierarchy-1.1.8.tgz";
        sha512 = "L+GHMSZNwTpiq4rt9GEsNcpLa4M96lXMR8M/nMG9p5hBE0jy6C+3hWtyZMenPQdwla249iJy7Nx0uKt3n+u9+w==";
      };
    };
    "d3-interpolate-1.3.2" = {
      name = "d3-interpolate";
      packageName = "d3-interpolate";
      version = "1.3.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/d3-interpolate/-/d3-interpolate-1.3.2.tgz";
        sha512 = "NlNKGopqaz9qM1PXh9gBF1KSCVh+jSFErrSlD/4hybwoNX/gt1d8CDbDW+3i+5UOHhjC6s6nMvRxcuoMVNgL2w==";
      };
    };
    "d3-path-1.0.7" = {
      name = "d3-path";
      packageName = "d3-path";
      version = "1.0.7";
      src = fetchurl {
        url = "https://registry.npmjs.org/d3-path/-/d3-path-1.0.7.tgz";
        sha512 = "q0cW1RpvA5c5ma2rch62mX8AYaiLX0+bdaSM2wxSU9tXjU4DNvkx9qiUvjkuWCj3p22UO/hlPivujqMiR9PDzA==";
      };
    };
    "d3-polygon-1.0.5" = {
      name = "d3-polygon";
      packageName = "d3-polygon";
      version = "1.0.5";
      src = fetchurl {
        url = "https://registry.npmjs.org/d3-polygon/-/d3-polygon-1.0.5.tgz";
        sha512 = "RHhh1ZUJZfhgoqzWWuRhzQJvO7LavchhitSTHGu9oj6uuLFzYZVeBzaWTQ2qSO6bz2w55RMoOCf0MsLCDB6e0w==";
      };
    };
    "d3-quadtree-1.0.5" = {
      name = "d3-quadtree";
      packageName = "d3-quadtree";
      version = "1.0.5";
      src = fetchurl {
        url = "https://registry.npmjs.org/d3-quadtree/-/d3-quadtree-1.0.5.tgz";
        sha512 = "U2tjwDFbZ75JRAg8A+cqMvqPg1G3BE7UTJn3h8DHjY/pnsAfWdbJKgyfcy7zKjqGtLAmI0q8aDSeG1TVIKRaHQ==";
      };
    };
    "d3-random-1.1.2" = {
      name = "d3-random";
      packageName = "d3-random";
      version = "1.1.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/d3-random/-/d3-random-1.1.2.tgz";
        sha512 = "6AK5BNpIFqP+cx/sreKzNjWbwZQCSUatxq+pPRmFIQaWuoD+NrbVWw7YWpHiXpCQ/NanKdtGDuB+VQcZDaEmYQ==";
      };
    };
    "d3-scale-2.1.2" = {
      name = "d3-scale";
      packageName = "d3-scale";
      version = "2.1.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/d3-scale/-/d3-scale-2.1.2.tgz";
        sha512 = "bESpd64ylaKzCDzvULcmHKZTlzA/6DGSVwx7QSDj/EnX9cpSevsdiwdHFYI9ouo9tNBbV3v5xztHS2uFeOzh8Q==";
      };
    };
    "d3-scale-chromatic-1.3.3" = {
      name = "d3-scale-chromatic";
      packageName = "d3-scale-chromatic";
      version = "1.3.3";
      src = fetchurl {
        url = "https://registry.npmjs.org/d3-scale-chromatic/-/d3-scale-chromatic-1.3.3.tgz";
        sha512 = "BWTipif1CimXcYfT02LKjAyItX5gKiwxuPRgr4xM58JwlLocWbjPLI7aMEjkcoOQXMkYsmNsvv3d2yl/OKuHHw==";
      };
    };
    "d3-selection-1.3.2" = {
      name = "d3-selection";
      packageName = "d3-selection";
      version = "1.3.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/d3-selection/-/d3-selection-1.3.2.tgz";
        sha512 = "OoXdv1nZ7h2aKMVg3kaUFbLLK5jXUFAMLD/Tu5JA96mjf8f2a9ZUESGY+C36t8R1WFeWk/e55hy54Ml2I62CRQ==";
      };
    };
    "d3-shape-1.2.2" = {
      name = "d3-shape";
      packageName = "d3-shape";
      version = "1.2.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/d3-shape/-/d3-shape-1.2.2.tgz";
        sha512 = "hUGEozlKecFZ2bOSNt7ENex+4Tk9uc/m0TtTEHBvitCBxUNjhzm5hS2GrrVRD/ae4IylSmxGeqX5tWC2rASMlQ==";
      };
    };
    "d3-time-1.0.10" = {
      name = "d3-time";
      packageName = "d3-time";
      version = "1.0.10";
      src = fetchurl {
        url = "https://registry.npmjs.org/d3-time/-/d3-time-1.0.10.tgz";
        sha512 = "hF+NTLCaJHF/JqHN5hE8HVGAXPStEq6/omumPE/SxyHVrR7/qQxusFDo0t0c/44+sCGHthC7yNGFZIEgju0P8g==";
      };
    };
    "d3-time-format-2.1.3" = {
      name = "d3-time-format";
      packageName = "d3-time-format";
      version = "2.1.3";
      src = fetchurl {
        url = "https://registry.npmjs.org/d3-time-format/-/d3-time-format-2.1.3.tgz";
        sha512 = "6k0a2rZryzGm5Ihx+aFMuO1GgelgIz+7HhB4PH4OEndD5q2zGn1mDfRdNrulspOfR6JXkb2sThhDK41CSK85QA==";
      };
    };
    "d3-timer-1.0.9" = {
      name = "d3-timer";
      packageName = "d3-timer";
      version = "1.0.9";
      src = fetchurl {
        url = "https://registry.npmjs.org/d3-timer/-/d3-timer-1.0.9.tgz";
        sha512 = "rT34J5HnQUHhcLvhSB9GjCkN0Ddd5Y8nCwDBG2u6wQEeYxT/Lf51fTFFkldeib/sE/J0clIe0pnCfs6g/lRbyg==";
      };
    };
    "d3-transition-1.1.3" = {
      name = "d3-transition";
      packageName = "d3-transition";
      version = "1.1.3";
      src = fetchurl {
        url = "https://registry.npmjs.org/d3-transition/-/d3-transition-1.1.3.tgz";
        sha512 = "tEvo3qOXL6pZ1EzcXxFcPNxC/Ygivu5NoBY6mbzidATAeML86da+JfVIUzon3dNM6UX6zjDx+xbYDmMVtTSjuA==";
      };
    };
    "d3-voronoi-1.1.4" = {
      name = "d3-voronoi";
      packageName = "d3-voronoi";
      version = "1.1.4";
      src = fetchurl {
        url = "https://registry.npmjs.org/d3-voronoi/-/d3-voronoi-1.1.4.tgz";
        sha512 = "dArJ32hchFsrQ8uMiTBLq256MpnZjeuBtdHpaDlYuQyjU0CVzCJl/BVW+SkszaAeH95D/8gxqAhgx0ouAWAfRg==";
      };
    };
    "d3-zoom-1.7.3" = {
      name = "d3-zoom";
      packageName = "d3-zoom";
      version = "1.7.3";
      src = fetchurl {
        url = "https://registry.npmjs.org/d3-zoom/-/d3-zoom-1.7.3.tgz";
        sha512 = "xEBSwFx5Z9T3/VrwDkMt+mr0HCzv7XjpGURJ8lWmIC8wxe32L39eWHIasEe/e7Ox8MPU4p1hvH8PKN2olLzIBg==";
      };
    };
    "dashdash-1.14.1" = {
      name = "dashdash";
      packageName = "dashdash";
      version = "1.14.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/dashdash/-/dashdash-1.14.1.tgz";
        sha1 = "853cfa0f7cbe2fed5de20326b8dd581035f6e2f0";
      };
    };
    "debug-2.6.9" = {
      name = "debug";
      packageName = "debug";
      version = "2.6.9";
      src = fetchurl {
        url = "https://registry.npmjs.org/debug/-/debug-2.6.9.tgz";
        sha512 = "bC7ElrdJaJnPbAP+1EotYvqZsb3ecl5wi6Bfi6BJTUcNowp6cvspg0jXznRTKDjm/E7AdgFBVeAPVMNcKGsHMA==";
      };
    };
    "decode-uri-component-0.2.0" = {
      name = "decode-uri-component";
      packageName = "decode-uri-component";
      version = "0.2.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/decode-uri-component/-/decode-uri-component-0.2.0.tgz";
        sha1 = "eb3913333458775cb84cd1a1fae062106bb87545";
      };
    };
    "decompress-response-3.3.0" = {
      name = "decompress-response";
      packageName = "decompress-response";
      version = "3.3.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/decompress-response/-/decompress-response-3.3.0.tgz";
        sha1 = "80a4dd323748384bfa248083622aedec982adff3";
      };
    };
    "deep-equal-0.2.2" = {
      name = "deep-equal";
      packageName = "deep-equal";
      version = "0.2.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/deep-equal/-/deep-equal-0.2.2.tgz";
        sha1 = "84b745896f34c684e98f2ce0e42abaf43bba017d";
      };
    };
    "deep-equal-1.0.1" = {
      name = "deep-equal";
      packageName = "deep-equal";
      version = "1.0.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/deep-equal/-/deep-equal-1.0.1.tgz";
        sha1 = "f5d260292b660e084eff4cdbc9f08ad3247448b5";
      };
    };
    "deep-extend-0.6.0" = {
      name = "deep-extend";
      packageName = "deep-extend";
      version = "0.6.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/deep-extend/-/deep-extend-0.6.0.tgz";
        sha512 = "LOHxIOaPYdHlJRtCQfDIVZtfw/ufM8+rVj649RIHzcm/vGwQRXFt6OPqIFWsm2XEMrNIEtWR64sY1LEKD2vAOA==";
      };
    };
    "deepmerge-2.2.1" = {
      name = "deepmerge";
      packageName = "deepmerge";
      version = "2.2.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/deepmerge/-/deepmerge-2.2.1.tgz";
        sha512 = "R9hc1Xa/NOBi9WRVUWg19rl1UB7Tt4kuPd+thNJgFZoxXsTz7ncaPaeIm+40oSGuP33DfMb4sZt1QIGiJzC4EA==";
      };
    };
    "default-shell-1.0.1" = {
      name = "default-shell";
      packageName = "default-shell";
      version = "1.0.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/default-shell/-/default-shell-1.0.1.tgz";
        sha1 = "752304bddc6174f49eb29cb988feea0b8813c8bc";
      };
    };
    "deferred-leveldown-0.2.0" = {
      name = "deferred-leveldown";
      packageName = "deferred-leveldown";
      version = "0.2.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/deferred-leveldown/-/deferred-leveldown-0.2.0.tgz";
        sha1 = "2cef1f111e1c57870d8bbb8af2650e587cd2f5b4";
      };
    };
    "deferred-leveldown-3.0.0" = {
      name = "deferred-leveldown";
      packageName = "deferred-leveldown";
      version = "3.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/deferred-leveldown/-/deferred-leveldown-3.0.0.tgz";
        sha512 = "ajbXqRPMXRlcdyt0TuWqknOJkp1JgQjGB7xOl2V+ebol7/U11E9h3/nCZAtN1M7djmAJEIhypCUc1tIWxdQAuQ==";
      };
    };
    "deferred-leveldown-4.0.2" = {
      name = "deferred-leveldown";
      packageName = "deferred-leveldown";
      version = "4.0.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/deferred-leveldown/-/deferred-leveldown-4.0.2.tgz";
        sha512 = "5fMC8ek8alH16QiV0lTCis610D1Zt1+LA4MS4d63JgS32lrCjTFDUFz2ao09/j2I4Bqb5jL4FZYwu7Jz0XO1ww==";
      };
    };
    "define-properties-1.1.3" = {
      name = "define-properties";
      packageName = "define-properties";
      version = "1.1.3";
      src = fetchurl {
        url = "https://registry.npmjs.org/define-properties/-/define-properties-1.1.3.tgz";
        sha512 = "3MqfYKj2lLzdMSf8ZIZE/V+Zuy+BgD6f164e8K2w7dgnpKArBDerGYpM46IYYcjnkdPNMjPk9A6VFB8+3SKlXQ==";
      };
    };
    "define-property-0.2.5" = {
      name = "define-property";
      packageName = "define-property";
      version = "0.2.5";
      src = fetchurl {
        url = "https://registry.npmjs.org/define-property/-/define-property-0.2.5.tgz";
        sha1 = "c35b1ef918ec3c990f9a5bc57be04aacec5c8116";
      };
    };
    "define-property-1.0.0" = {
      name = "define-property";
      packageName = "define-property";
      version = "1.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/define-property/-/define-property-1.0.0.tgz";
        sha1 = "769ebaaf3f4a63aad3af9e8d304c9bbe79bfb0e6";
      };
    };
    "define-property-2.0.2" = {
      name = "define-property";
      packageName = "define-property";
      version = "2.0.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/define-property/-/define-property-2.0.2.tgz";
        sha512 = "jwK2UV4cnPpbcG7+VRARKTZPUWowwXA8bzH5NP6ud0oeAxyYPuGZUAC7hMugpCdz4BeSZl2Dl9k66CHJ/46ZYQ==";
      };
    };
    "defined-1.0.0" = {
      name = "defined";
      packageName = "defined";
      version = "1.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/defined/-/defined-1.0.0.tgz";
        sha1 = "c98d9bcef75674188e110969151199e39b1fa693";
      };
    };
    "delayed-stream-1.0.0" = {
      name = "delayed-stream";
      packageName = "delayed-stream";
      version = "1.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/delayed-stream/-/delayed-stream-1.0.0.tgz";
        sha1 = "df3ae199acadfb7d440aaae0b29e2272b24ec619";
      };
    };
    "delegates-1.0.0" = {
      name = "delegates";
      packageName = "delegates";
      version = "1.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/delegates/-/delegates-1.0.0.tgz";
        sha1 = "84c6e159b81904fdca59a0ef44cd870d31250f9a";
      };
    };
    "depnest-1.3.0" = {
      name = "depnest";
      packageName = "depnest";
      version = "1.3.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/depnest/-/depnest-1.3.0.tgz";
        sha1 = "14bd8a361df445d2d34f7ecb362d6c7457288959";
      };
    };
    "detab-1.0.2" = {
      name = "detab";
      packageName = "detab";
      version = "1.0.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/detab/-/detab-1.0.2.tgz";
        sha1 = "01bc2a4abe7bc7cc67c3039808edbae47049a0ee";
      };
    };
    "detect-indent-4.0.0" = {
      name = "detect-indent";
      packageName = "detect-indent";
      version = "4.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/detect-indent/-/detect-indent-4.0.0.tgz";
        sha1 = "f76d064352cdf43a1cb6ce619c4ee3a9475de208";
      };
    };
    "detect-libc-1.0.3" = {
      name = "detect-libc";
      packageName = "detect-libc";
      version = "1.0.3";
      src = fetchurl {
        url = "https://registry.npmjs.org/detect-libc/-/detect-libc-1.0.3.tgz";
        sha1 = "fa137c4bd698edf55cd5cd02ac559f91a4c4ba9b";
      };
    };
    "duplexify-3.6.1" = {
      name = "duplexify";
      packageName = "duplexify";
      version = "3.6.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/duplexify/-/duplexify-3.6.1.tgz";
        sha512 = "vM58DwdnKmty+FSPzT14K9JXb90H+j5emaR4KYbr2KTIz00WHGbWOe5ghQTx233ZCLZtrGDALzKwcjEtSt35mA==";
      };
    };
    "dynamic-dijkstra-1.0.0" = {
      name = "dynamic-dijkstra";
      packageName = "dynamic-dijkstra";
      version = "1.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/dynamic-dijkstra/-/dynamic-dijkstra-1.0.0.tgz";
        sha512 = "AUbCFABXNoon689xft5ROX/fO9pdttZ6wZcMXZ4oH85Bn9rtiMdVHVBbAZ9kxAewdm5L1m+y+n97s8ofwya8WA==";
      };
    };
    "ecc-jsbn-0.1.2" = {
      name = "ecc-jsbn";
      packageName = "ecc-jsbn";
      version = "0.1.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/ecc-jsbn/-/ecc-jsbn-0.1.2.tgz";
        sha1 = "3a83a904e54353287874c564b7549386849a98c9";
      };
    };
    "ecstatic-3.3.0" = {
      name = "ecstatic";
      packageName = "ecstatic";
      version = "3.3.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/ecstatic/-/ecstatic-3.3.0.tgz";
        sha512 = "EblWYTd+wPIAMQ0U4oYJZ7QBypT9ZUIwpqli0bKDjeIIQnXDBK2dXtZ9yzRCOlkW1HkO8gn7/FxLK1yPIW17pw==";
      };
    };
    "ed2curve-0.1.4" = {
      name = "ed2curve";
      packageName = "ed2curve";
      version = "0.1.4";
      src = fetchurl {
        url = "https://registry.npmjs.org/ed2curve/-/ed2curve-0.1.4.tgz";
        sha1 = "94a44248bb87da35db0eff7af0aa576168117f59";
      };
    };
    "electron-context-menu-0.9.1" = {
      name = "electron-context-menu";
      packageName = "electron-context-menu";
      version = "0.9.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/electron-context-menu/-/electron-context-menu-0.9.1.tgz";
        sha1 = "ed4df20c080491c3c996abfcb363159946a38058";
      };
    };
    "electron-default-menu-1.0.1" = {
      name = "electron-default-menu";
      packageName = "electron-default-menu";
      version = "1.0.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/electron-default-menu/-/electron-default-menu-1.0.1.tgz";
        sha1 = "3173c5018eb507404fec63bdf3b78c38eedba808";
      };
    };
    "electron-dl-1.12.0" = {
      name = "electron-dl";
      packageName = "electron-dl";
      version = "1.12.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/electron-dl/-/electron-dl-1.12.0.tgz";
        sha512 = "UMc2CL45Ybpvu66LDPYzwmDRmYK4Ivz+wdnTM0eXcNMztvQwhixAk2UPme1c7McqG8bAlKEkQpZn3epmQy4EWg==";
      };
    };
    "electron-is-dev-0.1.2" = {
      name = "electron-is-dev";
      packageName = "electron-is-dev";
      version = "0.1.2";
      src = fetchurl {
        url = "http://registry.npmjs.org/electron-is-dev/-/electron-is-dev-0.1.2.tgz";
        sha1 = "8a1043e32b3a1da1c3f553dce28ce764246167e3";
      };
    };
    "electron-window-state-4.1.1" = {
      name = "electron-window-state";
      packageName = "electron-window-state";
      version = "4.1.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/electron-window-state/-/electron-window-state-4.1.1.tgz";
        sha1 = "6b34fdc31b38514dfec8b7c8f7b5d4addb67632d";
      };
    };
    "elegant-spinner-1.0.1" = {
      name = "elegant-spinner";
      packageName = "elegant-spinner";
      version = "1.0.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/elegant-spinner/-/elegant-spinner-1.0.1.tgz";
        sha1 = "db043521c95d7e303fd8f345bedc3349cfb0729e";
      };
    };
    "emoji-named-characters-1.0.2" = {
      name = "emoji-named-characters";
      packageName = "emoji-named-characters";
      version = "1.0.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/emoji-named-characters/-/emoji-named-characters-1.0.2.tgz";
        sha1 = "cdeb36d0e66002c4b9d7bf1dfbc3a199fb7d409b";
      };
    };
    "emoji-server-1.0.0" = {
      name = "emoji-server";
      packageName = "emoji-server";
      version = "1.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/emoji-server/-/emoji-server-1.0.0.tgz";
        sha1 = "d063cfee9af118cc5aeefbc2e9b3dd5085815c63";
      };
    };
    "encoding-0.1.12" = {
      name = "encoding";
      packageName = "encoding";
      version = "0.1.12";
      src = fetchurl {
        url = "https://registry.npmjs.org/encoding/-/encoding-0.1.12.tgz";
        sha1 = "538b66f3ee62cd1ab51ec323829d1f9480c74beb";
      };
    };
    "encoding-down-4.0.1" = {
      name = "encoding-down";
      packageName = "encoding-down";
      version = "4.0.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/encoding-down/-/encoding-down-4.0.1.tgz";
        sha512 = "AlSE+ugBIpLL0i9if2SlnOZ4oWj/XvBb8tw2Ie/pFB73vdYs5O/6plRyqIgjbZbz8onaL20AAuMP87LWbP56IQ==";
      };
    };
    "encoding-down-5.0.2" = {
      name = "encoding-down";
      packageName = "encoding-down";
      version = "5.0.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/encoding-down/-/encoding-down-5.0.2.tgz";
        sha512 = "YDM0RZsUsCB4HGQ6wBsjcY8lINZDdpMZuswX6fmwmrCN0axbscITjKywvU1EhryBaItO1F4RlsAHcIEkOQujig==";
      };
    };
    "encoding-down-5.0.4" = {
      name = "encoding-down";
      packageName = "encoding-down";
      version = "5.0.4";
      src = fetchurl {
        url = "https://registry.npmjs.org/encoding-down/-/encoding-down-5.0.4.tgz";
        sha512 = "8CIZLDcSKxgzT+zX8ZVfgNbu8Md2wq/iqa1Y7zyVR18QBEAc0Nmzuvj/N5ykSKpfGzjM8qxbaFntLPwnVoUhZw==";
      };
    };
    "end-of-stream-1.4.1" = {
      name = "end-of-stream";
      packageName = "end-of-stream";
      version = "1.4.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/end-of-stream/-/end-of-stream-1.4.1.tgz";
        sha512 = "1MkrZNvWTKCaigbn+W15elq2BB/L22nqrSY5DKlo3X6+vclJm8Bb5djXJBmEX6fS3+zCh/F4VBK5Z2KxJt4s2Q==";
      };
    };
    "epidemic-broadcast-trees-6.3.4" = {
      name = "epidemic-broadcast-trees";
      packageName = "epidemic-broadcast-trees";
      version = "6.3.4";
      src = fetchurl {
        url = "https://registry.npmjs.org/epidemic-broadcast-trees/-/epidemic-broadcast-trees-6.3.4.tgz";
        sha512 = "ucs3AI3ebPCDFGw8B0SUBwzcY2WqKrbJeqYeeX9KF+XvsO7GFEe0L+1hXPfJcEScfGPByXJNACkYwUFnNaOueQ==";
      };
    };
    "errno-0.1.7" = {
      name = "errno";
      packageName = "errno";
      version = "0.1.7";
      src = fetchurl {
        url = "https://registry.npmjs.org/errno/-/errno-0.1.7.tgz";
        sha512 = "MfrRBDWzIWifgq6tJj60gkAwtLNb6sQPlcFrSOflcP1aFmmruKQ2wRnze/8V6kgyz7H3FF8Npzv78mZ7XLLflg==";
      };
    };
    "es-abstract-1.12.0" = {
      name = "es-abstract";
      packageName = "es-abstract";
      version = "1.12.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/es-abstract/-/es-abstract-1.12.0.tgz";
        sha512 = "C8Fx/0jFmV5IPoMOFPA9P9G5NtqW+4cOPit3MIuvR2t7Ag2K15EJTpxnHAYTzL+aYQJIESYeXZmDBfOBE1HcpA==";
      };
    };
    "es-to-primitive-1.2.0" = {
      name = "es-to-primitive";
      packageName = "es-to-primitive";
      version = "1.2.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/es-to-primitive/-/es-to-primitive-1.2.0.tgz";
        sha512 = "qZryBOJjV//LaxLTV6UC//WewneB3LcXOL9NP++ozKVXsIIIpm/2c13UDiD9Jp2eThsecw9m3jPqDwTyobcdbg==";
      };
    };
    "es2040-1.2.6" = {
      name = "es2040";
      packageName = "es2040";
      version = "1.2.6";
      src = fetchurl {
        url = "https://registry.npmjs.org/es2040/-/es2040-1.2.6.tgz";
        sha512 = "+sAm7CSGH2+0NMZqm63huevZVoyk8OwF8lVIdwPcNtvZxX3YIITGiui8bfLYS8oNcgCgHNYO+QsgMafwo1OWwg==";
      };
    };
    "escape-string-regexp-1.0.5" = {
      name = "escape-string-regexp";
      packageName = "escape-string-regexp";
      version = "1.0.5";
      src = fetchurl {
        url = "https://registry.npmjs.org/escape-string-regexp/-/escape-string-regexp-1.0.5.tgz";
        sha1 = "1b61c0562190a8dff6ae3bb2cf0200ca130b86d4";
      };
    };
    "esutils-2.0.2" = {
      name = "esutils";
      packageName = "esutils";
      version = "2.0.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/esutils/-/esutils-2.0.2.tgz";
        sha1 = "0abf4f1caa5bcb1f7a9d8acc6dea4faaa04bac9b";
      };
    };
    "execa-0.5.1" = {
      name = "execa";
      packageName = "execa";
      version = "0.5.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/execa/-/execa-0.5.1.tgz";
        sha1 = "de3fb85cb8d6e91c85bcbceb164581785cb57b36";
      };
    };
    "exit-hook-1.1.1" = {
      name = "exit-hook";
      packageName = "exit-hook";
      version = "1.1.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/exit-hook/-/exit-hook-1.1.1.tgz";
        sha1 = "f05ca233b48c05d54fff07765df8507e95c02ff8";
      };
    };
    "expand-brackets-0.1.5" = {
      name = "expand-brackets";
      packageName = "expand-brackets";
      version = "0.1.5";
      src = fetchurl {
        url = "https://registry.npmjs.org/expand-brackets/-/expand-brackets-0.1.5.tgz";
        sha1 = "df07284e342a807cd733ac5af72411e581d1177b";
      };
    };
    "expand-brackets-2.1.4" = {
      name = "expand-brackets";
      packageName = "expand-brackets";
      version = "2.1.4";
      src = fetchurl {
        url = "https://registry.npmjs.org/expand-brackets/-/expand-brackets-2.1.4.tgz";
        sha1 = "b77735e315ce30f6b6eff0f83b04151a22449622";
      };
    };
    "expand-range-1.8.2" = {
      name = "expand-range";
      packageName = "expand-range";
      version = "1.8.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/expand-range/-/expand-range-1.8.2.tgz";
        sha1 = "a299effd335fe2721ebae8e257ec79644fc85337";
      };
    };
    "expand-template-1.1.1" = {
      name = "expand-template";
      packageName = "expand-template";
      version = "1.1.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/expand-template/-/expand-template-1.1.1.tgz";
        sha512 = "cebqLtV8KOZfw0UI8TEFWxtczxxC1jvyUvx6H4fyp1K1FN7A4Q+uggVUlOsI1K8AGU0rwOGqP8nCapdrw8CYQg==";
      };
    };
    "explain-error-1.0.4" = {
      name = "explain-error";
      packageName = "explain-error";
      version = "1.0.4";
      src = fetchurl {
        url = "https://registry.npmjs.org/explain-error/-/explain-error-1.0.4.tgz";
        sha1 = "a793d3ac0cad4c6ab571e9968fbbab6cb2532929";
      };
    };
    "ext-list-2.2.2" = {
      name = "ext-list";
      packageName = "ext-list";
      version = "2.2.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/ext-list/-/ext-list-2.2.2.tgz";
        sha512 = "u+SQgsubraE6zItfVA0tBuCBhfU9ogSRnsvygI7wht9TS510oLkBRXBsqopeUG/GBOIQyKZO9wjTqIu/sf5zFA==";
      };
    };
    "ext-name-5.0.0" = {
      name = "ext-name";
      packageName = "ext-name";
      version = "5.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/ext-name/-/ext-name-5.0.0.tgz";
        sha512 = "yblEwXAbGv1VQDmow7s38W77hzAgJAO50ztBLMcUyUBfxv1HC+LGwtiEN+Co6LtlqT/5uwVOxsD4TNIilWhwdQ==";
      };
    };
    "extend-3.0.2" = {
      name = "extend";
      packageName = "extend";
      version = "3.0.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/extend/-/extend-3.0.2.tgz";
        sha512 = "fjquC59cD7CyW6urNXK0FBufkZcoiGG80wTuPujX590cB5Ttln20E2UB4S/WARVqhXffZl2LNgS+gQdPIIim/g==";
      };
    };
    "extend-shallow-2.0.1" = {
      name = "extend-shallow";
      packageName = "extend-shallow";
      version = "2.0.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/extend-shallow/-/extend-shallow-2.0.1.tgz";
        sha1 = "51af7d614ad9a9f610ea1bafbb989d6b1c56890f";
      };
    };
    "extend-shallow-3.0.2" = {
      name = "extend-shallow";
      packageName = "extend-shallow";
      version = "3.0.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/extend-shallow/-/extend-shallow-3.0.2.tgz";
        sha1 = "26a71aaf073b39fb2127172746131c2704028db8";
      };
    };
    "extend.js-0.0.2" = {
      name = "extend.js";
      packageName = "extend.js";
      version = "0.0.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/extend.js/-/extend.js-0.0.2.tgz";
        sha1 = "0f9c7a81a1f208b703eb0c3131fe5716ac6ecd15";
      };
    };
    "external-editor-2.2.0" = {
      name = "external-editor";
      packageName = "external-editor";
      version = "2.2.0";
      src = fetchurl {
        url = "http://registry.npmjs.org/external-editor/-/external-editor-2.2.0.tgz";
        sha512 = "bSn6gvGxKt+b7+6TKEv1ZycHleA7aHhRHyAqJyp5pbUFuYYNIzpZnQDk7AsYckyWdEnTeAnay0aCy2aV6iTk9A==";
      };
    };
    "extglob-0.3.2" = {
      name = "extglob";
      packageName = "extglob";
      version = "0.3.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/extglob/-/extglob-0.3.2.tgz";
        sha1 = "2e18ff3d2f49ab2765cec9023f011daa8d8349a1";
      };
    };
    "extglob-2.0.4" = {
      name = "extglob";
      packageName = "extglob";
      version = "2.0.4";
      src = fetchurl {
        url = "https://registry.npmjs.org/extglob/-/extglob-2.0.4.tgz";
        sha512 = "Nmb6QXkELsuBr24CJSkilo6UHHgbekK5UiZgfE6UHD3Eb27YC6oD+bhcT+tJ6cl8dmsgdQxnWlcry8ksBIBLpw==";
      };
    };
    "extsprintf-1.3.0" = {
      name = "extsprintf";
      packageName = "extsprintf";
      version = "1.3.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/extsprintf/-/extsprintf-1.3.0.tgz";
        sha1 = "96918440e3041a7a414f8c52e3c574eb3c3e1e05";
      };
    };
    "eyes-0.1.8" = {
      name = "eyes";
      packageName = "eyes";
      version = "0.1.8";
      src = fetchurl {
        url = "https://registry.npmjs.org/eyes/-/eyes-0.1.8.tgz";
        sha1 = "62cf120234c683785d902348a800ef3e0cc20bc0";
      };
    };
    "fast-deep-equal-1.1.0" = {
      name = "fast-deep-equal";
      packageName = "fast-deep-equal";
      version = "1.1.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/fast-deep-equal/-/fast-deep-equal-1.1.0.tgz";
        sha1 = "c053477817c86b51daa853c81e059b733d023614";
      };
    };
    "fast-future-1.0.2" = {
      name = "fast-future";
      packageName = "fast-future";
      version = "1.0.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/fast-future/-/fast-future-1.0.2.tgz";
        sha1 = "8435a9aaa02d79248d17d704e76259301d99280a";
      };
    };
    "fast-json-stable-stringify-2.0.0" = {
      name = "fast-json-stable-stringify";
      packageName = "fast-json-stable-stringify";
      version = "2.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/fast-json-stable-stringify/-/fast-json-stable-stringify-2.0.0.tgz";
        sha1 = "d5142c0caee6b1189f87d3a76111064f86c8bbf2";
      };
    };
    "figures-2.0.0" = {
      name = "figures";
      packageName = "figures";
      version = "2.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/figures/-/figures-2.0.0.tgz";
        sha1 = "3ab1a2d2a62c8bfb431a0c94cb797a2fce27c962";
      };
    };
    "file-saver-1.3.8" = {
      name = "file-saver";
      packageName = "file-saver";
      version = "1.3.8";
      src = fetchurl {
        url = "http://registry.npmjs.org/file-saver/-/file-saver-1.3.8.tgz";
        sha512 = "spKHSBQIxxS81N/O21WmuXA2F6wppUCsutpzenOeZzOCCJ5gEfcbqJP983IrpLXzYmXnMUa6J03SubcNPdKrlg==";
      };
    };
    "filename-regex-2.0.1" = {
      name = "filename-regex";
      packageName = "filename-regex";
      version = "2.0.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/filename-regex/-/filename-regex-2.0.1.tgz";
        sha1 = "c1c4b9bee3e09725ddb106b75c1e301fe2f18b26";
      };
    };
    "fill-range-2.2.4" = {
      name = "fill-range";
      packageName = "fill-range";
      version = "2.2.4";
      src = fetchurl {
        url = "https://registry.npmjs.org/fill-range/-/fill-range-2.2.4.tgz";
        sha512 = "cnrcCbj01+j2gTG921VZPnHbjmdAf8oQV/iGeV2kZxGSyfYjjTyY79ErsK1WJWMpw6DaApEX72binqJE+/d+5Q==";
      };
    };
    "fill-range-4.0.0" = {
      name = "fill-range";
      packageName = "fill-range";
      version = "4.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/fill-range/-/fill-range-4.0.0.tgz";
        sha1 = "d544811d428f98eb06a63dc402d2403c328c38f7";
      };
    };
    "fix-path-2.1.0" = {
      name = "fix-path";
      packageName = "fix-path";
      version = "2.1.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/fix-path/-/fix-path-2.1.0.tgz";
        sha1 = "72ece739de9af4bd63fd02da23e9a70c619b4c38";
      };
    };
    "flumecodec-0.0.0" = {
      name = "flumecodec";
      packageName = "flumecodec";
      version = "0.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/flumecodec/-/flumecodec-0.0.0.tgz";
        sha1 = "36ce06abe2e0e01c44dd69f2a165305a2320649b";
      };
    };
    "flumecodec-0.0.1" = {
      name = "flumecodec";
      packageName = "flumecodec";
      version = "0.0.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/flumecodec/-/flumecodec-0.0.1.tgz";
        sha1 = "ae049a714386bb83e342657a82924b70364a90d6";
      };
    };
    "flumedb-0.4.9" = {
      name = "flumedb";
      packageName = "flumedb";
      version = "0.4.9";
      src = fetchurl {
        url = "https://registry.npmjs.org/flumedb/-/flumedb-0.4.9.tgz";
        sha512 = "z932cCXHteJXKcwoev8/RfJ9tQ10FeRCZ6Jh55UnxN/ayZraYZvNYObl8ujbho7xQZB1CDt2WTHCN5gEYGBqGw==";
      };
    };
    "flumedb-0.5.1" = {
      name = "flumedb";
      packageName = "flumedb";
      version = "0.5.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/flumedb/-/flumedb-0.5.1.tgz";
        sha512 = "WB/q5YYEvVB2ozp7xhp3ur5NfX03HZywx6EEV6AlKjd1PodZdHVspz3NpakV++mVB89CRoH2nq+WdY33ntbfQw==";
      };
    };
    "flumelog-offset-3.3.2" = {
      name = "flumelog-offset";
      packageName = "flumelog-offset";
      version = "3.3.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/flumelog-offset/-/flumelog-offset-3.3.2.tgz";
        sha512 = "KG0TCb+cWuEvnL44xjBhVNu+jRmJ8Msh2b1krYb4FllLwSbjreaCU/hH3uzv+HmUrtU/EhJepcAu79WxLH3EZQ==";
      };
    };
    "flumeview-hashtable-1.0.4" = {
      name = "flumeview-hashtable";
      packageName = "flumeview-hashtable";
      version = "1.0.4";
      src = fetchurl {
        url = "https://registry.npmjs.org/flumeview-hashtable/-/flumeview-hashtable-1.0.4.tgz";
        sha512 = "4L52hBelX7dYVAQQ9uPjksqxOCxLwI4NsfEG/+sTM423axT2Poq5cnfdvGm3HzmNowzwDIKtdy429r6PbfKEIw==";
      };
    };
    "flumeview-level-3.0.4" = {
      name = "flumeview-level";
      packageName = "flumeview-level";
      version = "3.0.4";
      src = fetchurl {
        url = "https://registry.npmjs.org/flumeview-level/-/flumeview-level-3.0.4.tgz";
        sha512 = "NK0w/fDvUEKpeOHoeatpzLdsHvwxIYQM1K7MfxvoLrtKTysik0Us/daoO9yebXVqgjSpcdZZaGuTq5KbfYul0Q==";
      };
    };
    "flumeview-level-3.0.6" = {
      name = "flumeview-level";
      packageName = "flumeview-level";
      version = "3.0.6";
      src = fetchurl {
        url = "https://registry.npmjs.org/flumeview-level/-/flumeview-level-3.0.6.tgz";
        sha512 = "omfYDMixWGL8Xx/mFl7xoALZvvOePiN/7jzY/kUJz3TR4px55QV4tZMba63QPyKj7NZVAPE61wq//P5sdiqvQw==";
      };
    };
    "flumeview-query-6.3.0" = {
      name = "flumeview-query";
      packageName = "flumeview-query";
      version = "6.3.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/flumeview-query/-/flumeview-query-6.3.0.tgz";
        sha512 = "8QBannTFLICARmflhHpXNeR5hh6IzIyJz4XhKTofzmxq/hXEn1un7aF6P6dRQkOwthENDTbSB07eWKqwnYDKtw==";
      };
    };
    "flumeview-query-7.1.0" = {
      name = "flumeview-query";
      packageName = "flumeview-query";
      version = "7.1.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/flumeview-query/-/flumeview-query-7.1.0.tgz";
        sha512 = "z/23qWuRW5dj7yNJ1i61R0RgnUWn4rdaf9Fr1Ckz3CzKpwJBWR1MqnABuGY3k1PZg1T11Busm2aRdb6oH1ZLsQ==";
      };
    };
    "flumeview-reduce-1.3.14" = {
      name = "flumeview-reduce";
      packageName = "flumeview-reduce";
      version = "1.3.14";
      src = fetchurl {
        url = "https://registry.npmjs.org/flumeview-reduce/-/flumeview-reduce-1.3.14.tgz";
        sha512 = "hMk9g42JrD92PCmNDiET6JGjur09wQrlAUQRPjmsk8LNqDz/tC5upvCfiynIgWUphe8dZMhUHIzOTh75xa1WKA==";
      };
    };
    "flumeview-search-1.0.6" = {
      name = "flumeview-search";
      packageName = "flumeview-search";
      version = "1.0.6";
      src = fetchurl {
        url = "https://registry.npmjs.org/flumeview-search/-/flumeview-search-1.0.6.tgz";
        sha512 = "gXuKH2Y3/6dkdK2UEOBILnVZcP0mRYeIDZmJK5CB+PjXWn2ZPANSg1vGuKcqMq/bmfbbVtNwsnMFDGWMnhcvPg==";
      };
    };
    "for-each-0.3.3" = {
      name = "for-each";
      packageName = "for-each";
      version = "0.3.3";
      src = fetchurl {
        url = "https://registry.npmjs.org/for-each/-/for-each-0.3.3.tgz";
        sha512 = "jqYfLp7mo9vIyQf8ykW2v7A+2N4QjeCeI5+Dz9XraiO1ign81wjiH7Fb9vSOWvQfNtmSa4H2RoQTrrXivdUZmw==";
      };
    };
    "for-in-1.0.2" = {
      name = "for-in";
      packageName = "for-in";
      version = "1.0.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/for-in/-/for-in-1.0.2.tgz";
        sha1 = "81068d295a8142ec0ac726c6e2200c30fb6d5e80";
      };
    };
    "for-own-0.1.5" = {
      name = "for-own";
      packageName = "for-own";
      version = "0.1.5";
      src = fetchurl {
        url = "https://registry.npmjs.org/for-own/-/for-own-0.1.5.tgz";
        sha1 = "5265c681a4f294dabbf17c9509b6763aa84510ce";
      };
    };
    "forever-agent-0.6.1" = {
      name = "forever-agent";
      packageName = "forever-agent";
      version = "0.6.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/forever-agent/-/forever-agent-0.6.1.tgz";
        sha1 = "fbc71f0c41adeb37f96c577ad1ed42d8fdacca91";
      };
    };
    "forked-systray-3.0.8" = {
      name = "forked-systray";
      packageName = "forked-systray";
      version = "3.0.8";
      src = fetchurl {
        url = "https://registry.npmjs.org/forked-systray/-/forked-systray-3.0.8.tgz";
        sha512 = "4pKfrHlu2Mf0JTtJQEHPMtJNC41bd6JNfAKBp5Ao/WujaIIA+v9lyZuaW4GofY/8FjfwTKirIcyuhj0YjjSahg==";
      };
    };
    "form-data-2.3.3" = {
      name = "form-data";
      packageName = "form-data";
      version = "2.3.3";
      src = fetchurl {
        url = "https://registry.npmjs.org/form-data/-/form-data-2.3.3.tgz";
        sha512 = "1lLKB2Mu3aGP1Q/2eCOx0fNbRMe7XdwktwOruhfqqd0rIJWwN4Dh+E3hrPSlDCXnSR7UtZ1N38rVXm+6+MEhJQ==";
      };
    };
    "fragment-cache-0.2.1" = {
      name = "fragment-cache";
      packageName = "fragment-cache";
      version = "0.2.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/fragment-cache/-/fragment-cache-0.2.1.tgz";
        sha1 = "4290fad27f13e89be7f33799c6bc5a0abfff0d19";
      };
    };
    "fs-constants-1.0.0" = {
      name = "fs-constants";
      packageName = "fs-constants";
      version = "1.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/fs-constants/-/fs-constants-1.0.0.tgz";
        sha512 = "y6OAwoSIf7FyjMIv94u+b5rdheZEjzR63GTyZJm5qh4Bi+2YgwLCcI/fPFZkL5PSixOt6ZNKm+w+Hfp/Bciwow==";
      };
    };
    "fs.realpath-1.0.0" = {
      name = "fs.realpath";
      packageName = "fs.realpath";
      version = "1.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/fs.realpath/-/fs.realpath-1.0.0.tgz";
        sha1 = "1504ad2523158caa40db4a2787cb01411994ea4f";
      };
    };
    "fsevents-1.2.4" = {
      name = "fsevents";
      packageName = "fsevents";
      version = "1.2.4";
      src = fetchurl {
        url = "https://registry.npmjs.org/fsevents/-/fsevents-1.2.4.tgz";
        sha512 = "z8H8/diyk76B7q5wg+Ud0+CqzcAF3mBBI/bA5ne5zrRUUIvNkJY//D3BqyH571KuAC4Nr7Rw7CjWX4r0y9DvNg==";
      };
    };
    "function-bind-1.1.1" = {
      name = "function-bind";
      packageName = "function-bind";
      version = "1.1.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/function-bind/-/function-bind-1.1.1.tgz";
        sha512 = "yIovAzMX49sF8Yl58fSCWJ5svSLuaibPxXQJFLmBObTuCr0Mf1KiPopGM9NiFjiYBCbfaa2Fh6breQ6ANVTI0A==";
      };
    };
    "gauge-2.7.4" = {
      name = "gauge";
      packageName = "gauge";
      version = "2.7.4";
      src = fetchurl {
        url = "https://registry.npmjs.org/gauge/-/gauge-2.7.4.tgz";
        sha1 = "2c03405c7538c39d7eb37b317022e325fb018bf7";
      };
    };
    "generate-function-2.3.1" = {
      name = "generate-function";
      packageName = "generate-function";
      version = "2.3.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/generate-function/-/generate-function-2.3.1.tgz";
        sha512 = "eeB5GfMNeevm/GRYq20ShmsaGcmI81kIX2K9XQx5miC8KdHaC6Jm0qQ8ZNeGOi7wYB8OsdxKs+Y2oVuTFuVwKQ==";
      };
    };
    "generate-object-property-1.2.0" = {
      name = "generate-object-property";
      packageName = "generate-object-property";
      version = "1.2.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/generate-object-property/-/generate-object-property-1.2.0.tgz";
        sha1 = "9c0e1c40308ce804f4783618b937fa88f99d50d0";
      };
    };
    "get-stream-2.3.1" = {
      name = "get-stream";
      packageName = "get-stream";
      version = "2.3.1";
      src = fetchurl {
        url = "http://registry.npmjs.org/get-stream/-/get-stream-2.3.1.tgz";
        sha1 = "5f38f93f346009666ee0150a054167f91bdd95de";
      };
    };
    "get-value-2.0.6" = {
      name = "get-value";
      packageName = "get-value";
      version = "2.0.6";
      src = fetchurl {
        url = "https://registry.npmjs.org/get-value/-/get-value-2.0.6.tgz";
        sha1 = "dc15ca1c672387ca76bd37ac0a395ba2042a2c28";
      };
    };
    "getpass-0.1.7" = {
      name = "getpass";
      packageName = "getpass";
      version = "0.1.7";
      src = fetchurl {
        url = "https://registry.npmjs.org/getpass/-/getpass-0.1.7.tgz";
        sha1 = "5eff8e3e684d569ae4cb2b1282604e8ba62149fa";
      };
    };
    "github-from-package-0.0.0" = {
      name = "github-from-package";
      packageName = "github-from-package";
      version = "0.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/github-from-package/-/github-from-package-0.0.0.tgz";
        sha1 = "97fb5d96bfde8973313f20e8288ef9a167fa64ce";
      };
    };
    "glob-6.0.4" = {
      name = "glob";
      packageName = "glob";
      version = "6.0.4";
      src = fetchurl {
        url = "https://registry.npmjs.org/glob/-/glob-6.0.4.tgz";
        sha1 = "0f08860f6a155127b2fadd4f9ce24b1aab6e4d22";
      };
    };
    "glob-7.1.3" = {
      name = "glob";
      packageName = "glob";
      version = "7.1.3";
      src = fetchurl {
        url = "https://registry.npmjs.org/glob/-/glob-7.1.3.tgz";
        sha512 = "vcfuiIxogLV4DlGBHIUOwI0IbrJ8HWPc4MU7HzviGeNho/UJDfi6B5p3sHeWIQ0KGIU0Jpxi5ZHxemQfLkkAwQ==";
      };
    };
    "glob-base-0.3.0" = {
      name = "glob-base";
      packageName = "glob-base";
      version = "0.3.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/glob-base/-/glob-base-0.3.0.tgz";
        sha1 = "dbb164f6221b1c0b1ccf82aea328b497df0ea3c4";
      };
    };
    "glob-parent-2.0.0" = {
      name = "glob-parent";
      packageName = "glob-parent";
      version = "2.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/glob-parent/-/glob-parent-2.0.0.tgz";
        sha1 = "81383d72db054fcccf5336daa902f182f6edbb28";
      };
    };
    "globals-9.18.0" = {
      name = "globals";
      packageName = "globals";
      version = "9.18.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/globals/-/globals-9.18.0.tgz";
        sha512 = "S0nG3CLEQiY/ILxqtztTWH/3iRRdyBLw6KMDxnKMchrtbj2OFmehVh0WUCfW3DUrIgx/qFrJPICrq4Z4sTR9UQ==";
      };
    };
    "globby-4.1.0" = {
      name = "globby";
      packageName = "globby";
      version = "4.1.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/globby/-/globby-4.1.0.tgz";
        sha1 = "080f54549ec1b82a6c60e631fc82e1211dbe95f8";
      };
    };
    "gossip-query-0.2.2" = {
      name = "gossip-query";
      packageName = "gossip-query";
      version = "0.2.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/gossip-query/-/gossip-query-0.2.2.tgz";
        sha1 = "a9c6359308e2f69182563989db3f8c1477bb620f";
      };
    };
    "graceful-fs-4.1.11" = {
      name = "graceful-fs";
      packageName = "graceful-fs";
      version = "4.1.11";
      src = fetchurl {
        url = "https://registry.npmjs.org/graceful-fs/-/graceful-fs-4.1.11.tgz";
        sha1 = "0e8bdfe4d1ddb8854d64e04ea7c00e2a026e5658";
      };
    };
    "graphlib-2.1.5" = {
      name = "graphlib";
      packageName = "graphlib";
      version = "2.1.5";
      src = fetchurl {
        url = "https://registry.npmjs.org/graphlib/-/graphlib-2.1.5.tgz";
        sha512 = "XvtbqCcw+EM5SqQrIetIKKD+uZVNQtDPD1goIg7K73RuRZtVI5rYMdcCVSHm/AS1sCBZ7vt0p5WgXouucHQaOA==";
      };
    };
    "graphreduce-3.0.4" = {
      name = "graphreduce";
      packageName = "graphreduce";
      version = "3.0.4";
      src = fetchurl {
        url = "https://registry.npmjs.org/graphreduce/-/graphreduce-3.0.4.tgz";
        sha1 = "bf442d0a878e83901e5ef3e652d23ffb5b831ed7";
      };
    };
    "growly-1.3.0" = {
      name = "growly";
      packageName = "growly";
      version = "1.3.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/growly/-/growly-1.3.0.tgz";
        sha1 = "f10748cbe76af964b7c96c93c6bcc28af120c081";
      };
    };
    "gunzip-maybe-1.4.1" = {
      name = "gunzip-maybe";
      packageName = "gunzip-maybe";
      version = "1.4.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/gunzip-maybe/-/gunzip-maybe-1.4.1.tgz";
        sha512 = "qtutIKMthNJJgeHQS7kZ9FqDq59/Wn0G2HYCRNjpup7yKfVI6/eqwpmroyZGFoCYaG+sW6psNVb4zoLADHpp2g==";
      };
    };
    "har-schema-2.0.0" = {
      name = "har-schema";
      packageName = "har-schema";
      version = "2.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/har-schema/-/har-schema-2.0.0.tgz";
        sha1 = "a94c2224ebcac04782a0d9035521f24735b7ec92";
      };
    };
    "har-validator-5.1.0" = {
      name = "har-validator";
      packageName = "har-validator";
      version = "5.1.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/har-validator/-/har-validator-5.1.0.tgz";
        sha512 = "+qnmNjI4OfH2ipQ9VQOw23bBd/ibtfbVdK2fYbY4acTDqKTW/YDp9McimZdDbG8iV9fZizUqQMD5xvriB146TA==";
      };
    };
    "has-1.0.3" = {
      name = "has";
      packageName = "has";
      version = "1.0.3";
      src = fetchurl {
        url = "https://registry.npmjs.org/has/-/has-1.0.3.tgz";
        sha512 = "f2dvO0VU6Oej7RkWJGrehjbzMAjFp5/VKPp5tTpWIV4JHHZK1/BxbFRtf/siA2SWTe09caDmVtYYzWEIbBS4zw==";
      };
    };
    "has-ansi-2.0.0" = {
      name = "has-ansi";
      packageName = "has-ansi";
      version = "2.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/has-ansi/-/has-ansi-2.0.0.tgz";
        sha1 = "34f5049ce1ecdf2b0649af3ef24e45ed35416d91";
      };
    };
    "has-network-0.0.1" = {
      name = "has-network";
      packageName = "has-network";
      version = "0.0.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/has-network/-/has-network-0.0.1.tgz";
        sha1 = "3eea7b44caa9601797124be8ba89d228c4101499";
      };
    };
    "has-symbols-1.0.0" = {
      name = "has-symbols";
      packageName = "has-symbols";
      version = "1.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/has-symbols/-/has-symbols-1.0.0.tgz";
        sha1 = "ba1a8f1af2a0fc39650f5c850367704122063b44";
      };
    };
    "has-unicode-2.0.1" = {
      name = "has-unicode";
      packageName = "has-unicode";
      version = "2.0.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/has-unicode/-/has-unicode-2.0.1.tgz";
        sha1 = "e0e6fe6a28cf51138855e086d1691e771de2a8b9";
      };
    };
    "has-value-0.3.1" = {
      name = "has-value";
      packageName = "has-value";
      version = "0.3.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/has-value/-/has-value-0.3.1.tgz";
        sha1 = "7b1f58bada62ca827ec0a2078025654845995e1f";
      };
    };
    "has-value-1.0.0" = {
      name = "has-value";
      packageName = "has-value";
      version = "1.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/has-value/-/has-value-1.0.0.tgz";
        sha1 = "18b281da585b1c5c51def24c930ed29a0be6b177";
      };
    };
    "has-values-0.1.4" = {
      name = "has-values";
      packageName = "has-values";
      version = "0.1.4";
      src = fetchurl {
        url = "https://registry.npmjs.org/has-values/-/has-values-0.1.4.tgz";
        sha1 = "6d61de95d91dfca9b9a02089ad384bff8f62b771";
      };
    };
    "has-values-1.0.0" = {
      name = "has-values";
      packageName = "has-values";
      version = "1.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/has-values/-/has-values-1.0.0.tgz";
        sha1 = "95b0b63fec2146619a6fe57fe75628d5a39efe4f";
      };
    };
    "hashlru-2.2.1" = {
      name = "hashlru";
      packageName = "hashlru";
      version = "2.2.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/hashlru/-/hashlru-2.2.1.tgz";
        sha1 = "10f2099a0d7c05a40f2beaf5c1d39cf2f7dabf36";
      };
    };
    "he-0.5.0" = {
      name = "he";
      packageName = "he";
      version = "0.5.0";
      src = fetchurl {
        url = "http://registry.npmjs.org/he/-/he-0.5.0.tgz";
        sha1 = "2c05ffaef90b68e860f3fd2b54ef580989277ee2";
      };
    };
    "he-1.2.0" = {
      name = "he";
      packageName = "he";
      version = "1.2.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/he/-/he-1.2.0.tgz";
        sha512 = "F/1DnUGPopORZi0ni+CvrCgHQ5FyEAHRLSApuYWMmrbSwoN2Mn/7k+Gl38gJnR7yyDZk6WLXwiGod1JOWNDKGw==";
      };
    };
    "heap-0.2.6" = {
      name = "heap";
      packageName = "heap";
      version = "0.2.6";
      src = fetchurl {
        url = "https://registry.npmjs.org/heap/-/heap-0.2.6.tgz";
        sha1 = "087e1f10b046932fc8594dd9e6d378afc9d1e5ac";
      };
    };
    "highlight.js-9.13.1" = {
      name = "highlight.js";
      packageName = "highlight.js";
      version = "9.13.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/highlight.js/-/highlight.js-9.13.1.tgz";
        sha512 = "Sc28JNQNDzaH6PORtRLMvif9RSn1mYuOoX3omVjnb0+HbpPygU2ALBI0R/wsiqCb4/fcp07Gdo8g+fhtFrQl6A==";
      };
    };
    "home-or-tmp-2.0.0" = {
      name = "home-or-tmp";
      packageName = "home-or-tmp";
      version = "2.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/home-or-tmp/-/home-or-tmp-2.0.0.tgz";
        sha1 = "e36c3f2d2cae7d746a857e38d18d5f32a7882db8";
      };
    };
    "hoox-0.0.1" = {
      name = "hoox";
      packageName = "hoox";
      version = "0.0.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/hoox/-/hoox-0.0.1.tgz";
        sha1 = "08a74d9272a9cc83ae8e6bbe0303f0ee76432094";
      };
    };
    "http-signature-1.2.0" = {
      name = "http-signature";
      packageName = "http-signature";
      version = "1.2.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/http-signature/-/http-signature-1.2.0.tgz";
        sha1 = "9aecd925114772f3d95b65a60abb8f7c18fbace1";
      };
    };
    "i-0.3.6" = {
      name = "i";
      packageName = "i";
      version = "0.3.6";
      src = fetchurl {
        url = "https://registry.npmjs.org/i/-/i-0.3.6.tgz";
        sha1 = "d96c92732076f072711b6b10fd7d4f65ad8ee23d";
      };
    };
    "iconv-lite-0.4.24" = {
      name = "iconv-lite";
      packageName = "iconv-lite";
      version = "0.4.24";
      src = fetchurl {
        url = "https://registry.npmjs.org/iconv-lite/-/iconv-lite-0.4.24.tgz";
        sha512 = "v3MXnZAcvnywkTUEZomIActle7RXXeedOR31wwl7VlyoXO4Qi9arvSenNQWne1TcRwhCL1HwLI21bEqdpj8/rA==";
      };
    };
    "increment-buffer-1.0.1" = {
      name = "increment-buffer";
      packageName = "increment-buffer";
      version = "1.0.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/increment-buffer/-/increment-buffer-1.0.1.tgz";
        sha1 = "65076d75189d808b39ad13ab5b958e05216f9e0d";
      };
    };
    "inflight-1.0.6" = {
      name = "inflight";
      packageName = "inflight";
      version = "1.0.6";
      src = fetchurl {
        url = "https://registry.npmjs.org/inflight/-/inflight-1.0.6.tgz";
        sha1 = "49bd6331d7d02d0c09bc910a1075ba8165b56df9";
      };
    };
    "inherits-2.0.3" = {
      name = "inherits";
      packageName = "inherits";
      version = "2.0.3";
      src = fetchurl {
        url = "https://registry.npmjs.org/inherits/-/inherits-2.0.3.tgz";
        sha1 = "633c2c83e3da42a502f52466022480f4208261de";
      };
    };
    "ini-1.3.5" = {
      name = "ini";
      packageName = "ini";
      version = "1.3.5";
      src = fetchurl {
        url = "https://registry.npmjs.org/ini/-/ini-1.3.5.tgz";
        sha512 = "RZY5huIKCMRWDUqZlEi72f/lmXKMvuszcMBduliQ3nnWbx9X/ZBQO7DijMEYS9EhHBb2qacRUMtC7svLwe0lcw==";
      };
    };
    "inquirer-3.0.6" = {
      name = "inquirer";
      packageName = "inquirer";
      version = "3.0.6";
      src = fetchurl {
        url = "https://registry.npmjs.org/inquirer/-/inquirer-3.0.6.tgz";
        sha1 = "e04aaa9d05b7a3cb9b0f407d04375f0447190347";
      };
    };
    "int53-0.2.4" = {
      name = "int53";
      packageName = "int53";
      version = "0.2.4";
      src = fetchurl {
        url = "https://registry.npmjs.org/int53/-/int53-0.2.4.tgz";
        sha1 = "5ed8d7aad6c5c6567cae69aa7ffc4a109ee80f86";
      };
    };
    "invariant-2.2.4" = {
      name = "invariant";
      packageName = "invariant";
      version = "2.2.4";
      src = fetchurl {
        url = "https://registry.npmjs.org/invariant/-/invariant-2.2.4.tgz";
        sha512 = "phJfQVBuaJM5raOpJjSfkiD6BpbCE4Ns//LaXl6wGYtUBY83nWS6Rf9tXm2e8VaK60JEjYldbPif/A2B1C2gNA==";
      };
    };
    "ip-0.3.3" = {
      name = "ip";
      packageName = "ip";
      version = "0.3.3";
      src = fetchurl {
        url = "https://registry.npmjs.org/ip/-/ip-0.3.3.tgz";
        sha1 = "8ee8309e92f0b040d287f72efaca1a21702d3fb4";
      };
    };
    "ip-1.1.5" = {
      name = "ip";
      packageName = "ip";
      version = "1.1.5";
      src = fetchurl {
        url = "https://registry.npmjs.org/ip/-/ip-1.1.5.tgz";
        sha1 = "bdded70114290828c0a039e72ef25f5aaec4354a";
      };
    };
    "irregular-plurals-1.4.0" = {
      name = "irregular-plurals";
      packageName = "irregular-plurals";
      version = "1.4.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/irregular-plurals/-/irregular-plurals-1.4.0.tgz";
        sha1 = "2ca9b033651111855412f16be5d77c62a458a766";
      };
    };
    "is-accessor-descriptor-0.1.6" = {
      name = "is-accessor-descriptor";
      packageName = "is-accessor-descriptor";
      version = "0.1.6";
      src = fetchurl {
        url = "https://registry.npmjs.org/is-accessor-descriptor/-/is-accessor-descriptor-0.1.6.tgz";
        sha1 = "a9e12cb3ae8d876727eeef3843f8a0897b5c98d6";
      };
    };
    "is-accessor-descriptor-1.0.0" = {
      name = "is-accessor-descriptor";
      packageName = "is-accessor-descriptor";
      version = "1.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/is-accessor-descriptor/-/is-accessor-descriptor-1.0.0.tgz";
        sha512 = "m5hnHTkcVsPfqx3AKlyttIPb7J+XykHvJP2B9bZDjlhLIoEq4XoK64Vg7boZlVWYK6LUY94dYPEE7Lh0ZkZKcQ==";
      };
    };
    "is-alphabetical-1.0.2" = {
      name = "is-alphabetical";
      packageName = "is-alphabetical";
      version = "1.0.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/is-alphabetical/-/is-alphabetical-1.0.2.tgz";
        sha512 = "V0xN4BYezDHcBSKb1QHUFMlR4as/XEuCZBzMJUU4n7+Cbt33SmUnSol+pnXFvLxSHNq2CemUXNdaXV6Flg7+xg==";
      };
    };
    "is-alphanumerical-1.0.2" = {
      name = "is-alphanumerical";
      packageName = "is-alphanumerical";
      version = "1.0.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/is-alphanumerical/-/is-alphanumerical-1.0.2.tgz";
        sha512 = "pyfU/0kHdISIgslFfZN9nfY1Gk3MquQgUm1mJTjdkEPpkAKNWuBTSqFwewOpR7N351VkErCiyV71zX7mlQQqsg==";
      };
    };
    "is-binary-path-1.0.1" = {
      name = "is-binary-path";
      packageName = "is-binary-path";
      version = "1.0.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/is-binary-path/-/is-binary-path-1.0.1.tgz";
        sha1 = "75f16642b480f187a711c814161fd3a4a7655898";
      };
    };
    "is-buffer-1.1.6" = {
      name = "is-buffer";
      packageName = "is-buffer";
      version = "1.1.6";
      src = fetchurl {
        url = "https://registry.npmjs.org/is-buffer/-/is-buffer-1.1.6.tgz";
        sha512 = "NcdALwpXkTm5Zvvbk7owOUSvVvBKDgKP5/ewfXEznmQFfs4ZRmanOeKBTjRVjka3QFoN6XJ+9F3USqfHqTaU5w==";
      };
    };
    "is-callable-1.1.4" = {
      name = "is-callable";
      packageName = "is-callable";
      version = "1.1.4";
      src = fetchurl {
        url = "https://registry.npmjs.org/is-callable/-/is-callable-1.1.4.tgz";
        sha512 = "r5p9sxJjYnArLjObpjA4xu5EKI3CuKHkJXMhT7kwbpUyIFD1n5PMAsoPvWnvtZiNz7LjkYDRZhd7FlI0eMijEA==";
      };
    };
    "is-data-descriptor-0.1.4" = {
      name = "is-data-descriptor";
      packageName = "is-data-descriptor";
      version = "0.1.4";
      src = fetchurl {
        url = "https://registry.npmjs.org/is-data-descriptor/-/is-data-descriptor-0.1.4.tgz";
        sha1 = "0b5ee648388e2c860282e793f1856fec3f301b56";
      };
    };
    "is-data-descriptor-1.0.0" = {
      name = "is-data-descriptor";
      packageName = "is-data-descriptor";
      version = "1.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/is-data-descriptor/-/is-data-descriptor-1.0.0.tgz";
        sha512 = "jbRXy1FmtAoCjQkVmIVYwuuqDFUbaOeDjmed1tOGPrsMhtJA4rD9tkgA0F1qJ3gRFRXcHYVkdeaP50Q5rE/jLQ==";
      };
    };
    "is-date-object-1.0.1" = {
      name = "is-date-object";
      packageName = "is-date-object";
      version = "1.0.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/is-date-object/-/is-date-object-1.0.1.tgz";
        sha1 = "9aa20eb6aeebbff77fbd33e74ca01b33581d3a16";
      };
    };
    "is-decimal-1.0.2" = {
      name = "is-decimal";
      packageName = "is-decimal";
      version = "1.0.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/is-decimal/-/is-decimal-1.0.2.tgz";
        sha512 = "TRzl7mOCchnhchN+f3ICUCzYvL9ul7R+TYOsZ8xia++knyZAJfv/uA1FvQXsAnYIl1T3B2X5E/J7Wb1QXiIBXg==";
      };
    };
    "is-deflate-1.0.0" = {
      name = "is-deflate";
      packageName = "is-deflate";
      version = "1.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/is-deflate/-/is-deflate-1.0.0.tgz";
        sha1 = "c862901c3c161fb09dac7cdc7e784f80e98f2f14";
      };
    };
    "is-descriptor-0.1.6" = {
      name = "is-descriptor";
      packageName = "is-descriptor";
      version = "0.1.6";
      src = fetchurl {
        url = "https://registry.npmjs.org/is-descriptor/-/is-descriptor-0.1.6.tgz";
        sha512 = "avDYr0SB3DwO9zsMov0gKCESFYqCnE4hq/4z3TdUlukEy5t9C0YRq7HLrsN52NAcqXKaepeCD0n+B0arnVG3Hg==";
      };
    };
    "is-descriptor-1.0.2" = {
      name = "is-descriptor";
      packageName = "is-descriptor";
      version = "1.0.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/is-descriptor/-/is-descriptor-1.0.2.tgz";
        sha512 = "2eis5WqQGV7peooDyLmNEPUrps9+SXX5c9pL3xEB+4e9HnGuDa7mB7kHxHw4CbqS9k1T2hOH3miL8n8WtiYVtg==";
      };
    };
    "is-dotfile-1.0.3" = {
      name = "is-dotfile";
      packageName = "is-dotfile";
      version = "1.0.3";
      src = fetchurl {
        url = "https://registry.npmjs.org/is-dotfile/-/is-dotfile-1.0.3.tgz";
        sha1 = "a6a2f32ffd2dfb04f5ca25ecd0f6b83cf798a1e1";
      };
    };
    "is-electron-2.1.0" = {
      name = "is-electron";
      packageName = "is-electron";
      version = "2.1.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/is-electron/-/is-electron-2.1.0.tgz";
        sha512 = "dkg5xT383+M6zIbbXW/z7n2nz4SFUi2OSyhntnFYkRdtV+HVEfdjEK+5AWisfYgkpe3WYjTIuh7toaKmSfFVWw==";
      };
    };
    "is-equal-shallow-0.1.3" = {
      name = "is-equal-shallow";
      packageName = "is-equal-shallow";
      version = "0.1.3";
      src = fetchurl {
        url = "https://registry.npmjs.org/is-equal-shallow/-/is-equal-shallow-0.1.3.tgz";
        sha1 = "2238098fc221de0bcfa5d9eac4c45d638aa1c534";
      };
    };
    "is-extendable-0.1.1" = {
      name = "is-extendable";
      packageName = "is-extendable";
      version = "0.1.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/is-extendable/-/is-extendable-0.1.1.tgz";
        sha1 = "62b110e289a471418e3ec36a617d472e301dfc89";
      };
    };
    "is-extendable-1.0.1" = {
      name = "is-extendable";
      packageName = "is-extendable";
      version = "1.0.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/is-extendable/-/is-extendable-1.0.1.tgz";
        sha512 = "arnXMxT1hhoKo9k1LZdmlNyJdDDfy2v0fXjFlmok4+i8ul/6WlbVge9bhM74OpNPQPMGUToDtz+KXa1PneJxOA==";
      };
    };
    "is-extglob-1.0.0" = {
      name = "is-extglob";
      packageName = "is-extglob";
      version = "1.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/is-extglob/-/is-extglob-1.0.0.tgz";
        sha1 = "ac468177c4943405a092fc8f29760c6ffc6206c0";
      };
    };
    "is-finite-1.0.2" = {
      name = "is-finite";
      packageName = "is-finite";
      version = "1.0.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/is-finite/-/is-finite-1.0.2.tgz";
        sha1 = "cc6677695602be550ef11e8b4aa6305342b6d0aa";
      };
    };
    "is-fullwidth-code-point-1.0.0" = {
      name = "is-fullwidth-code-point";
      packageName = "is-fullwidth-code-point";
      version = "1.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/is-fullwidth-code-point/-/is-fullwidth-code-point-1.0.0.tgz";
        sha1 = "ef9e31386f031a7f0d643af82fde50c457ef00cb";
      };
    };
    "is-fullwidth-code-point-2.0.0" = {
      name = "is-fullwidth-code-point";
      packageName = "is-fullwidth-code-point";
      version = "2.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/is-fullwidth-code-point/-/is-fullwidth-code-point-2.0.0.tgz";
        sha1 = "a3b30a5c4f199183167aaab93beefae3ddfb654f";
      };
    };
    "is-glob-2.0.1" = {
      name = "is-glob";
      packageName = "is-glob";
      version = "2.0.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/is-glob/-/is-glob-2.0.1.tgz";
        sha1 = "d096f926a3ded5600f3fdfd91198cb0888c2d863";
      };
    };
    "is-gzip-1.0.0" = {
      name = "is-gzip";
      packageName = "is-gzip";
      version = "1.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/is-gzip/-/is-gzip-1.0.0.tgz";
        sha1 = "6ca8b07b99c77998025900e555ced8ed80879a83";
      };
    };
    "is-hexadecimal-1.0.2" = {
      name = "is-hexadecimal";
      packageName = "is-hexadecimal";
      version = "1.0.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/is-hexadecimal/-/is-hexadecimal-1.0.2.tgz";
        sha512 = "but/G3sapV3MNyqiDBLrOi4x8uCIw0RY3o/Vb5GT0sMFHrVV7731wFSVy41T5FO1og7G0gXLJh0MkgPRouko/A==";
      };
    };
    "is-my-ip-valid-1.0.0" = {
      name = "is-my-ip-valid";
      packageName = "is-my-ip-valid";
      version = "1.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/is-my-ip-valid/-/is-my-ip-valid-1.0.0.tgz";
        sha512 = "gmh/eWXROncUzRnIa1Ubrt5b8ep/MGSnfAUI3aRp+sqTCs1tv1Isl8d8F6JmkN3dXKc3ehZMrtiPN9eL03NuaQ==";
      };
    };
    "is-my-json-valid-2.19.0" = {
      name = "is-my-json-valid";
      packageName = "is-my-json-valid";
      version = "2.19.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/is-my-json-valid/-/is-my-json-valid-2.19.0.tgz";
        sha512 = "mG0f/unGX1HZ5ep4uhRaPOS8EkAY8/j6mDRMJrutq4CqhoJWYp7qAlonIPy3TV7p3ju4TK9fo/PbnoksWmsp5Q==";
      };
    };
    "is-number-2.1.0" = {
      name = "is-number";
      packageName = "is-number";
      version = "2.1.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/is-number/-/is-number-2.1.0.tgz";
        sha1 = "01fcbbb393463a548f2f466cce16dece49db908f";
      };
    };
    "is-number-3.0.0" = {
      name = "is-number";
      packageName = "is-number";
      version = "3.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/is-number/-/is-number-3.0.0.tgz";
        sha1 = "24fd6201a4782cf50561c810276afc7d12d71195";
      };
    };
    "is-number-4.0.0" = {
      name = "is-number";
      packageName = "is-number";
      version = "4.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/is-number/-/is-number-4.0.0.tgz";
        sha512 = "rSklcAIlf1OmFdyAqbnWTLVelsQ58uvZ66S/ZyawjWqIviTWCjg2PzVGw8WUA+nNuPTqb4wgA+NszrJ+08LlgQ==";
      };
    };
    "is-plain-obj-1.1.0" = {
      name = "is-plain-obj";
      packageName = "is-plain-obj";
      version = "1.1.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/is-plain-obj/-/is-plain-obj-1.1.0.tgz";
        sha1 = "71a50c8429dfca773c92a390a4a03b39fcd51d3e";
      };
    };
    "is-plain-object-2.0.4" = {
      name = "is-plain-object";
      packageName = "is-plain-object";
      version = "2.0.4";
      src = fetchurl {
        url = "https://registry.npmjs.org/is-plain-object/-/is-plain-object-2.0.4.tgz";
        sha512 = "h5PpgXkWitc38BBMYawTYMWJHFZJVnBquFE57xFpjB8pJFiF6gZ+bU+WyI/yqXiFR5mdLsgYNaPe8uao6Uv9Og==";
      };
    };
    "is-posix-bracket-0.1.1" = {
      name = "is-posix-bracket";
      packageName = "is-posix-bracket";
      version = "0.1.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/is-posix-bracket/-/is-posix-bracket-0.1.1.tgz";
        sha1 = "3334dc79774368e92f016e6fbc0a88f5cd6e6bc4";
      };
    };
    "is-primitive-2.0.0" = {
      name = "is-primitive";
      packageName = "is-primitive";
      version = "2.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/is-primitive/-/is-primitive-2.0.0.tgz";
        sha1 = "207bab91638499c07b2adf240a41a87210034575";
      };
    };
    "is-promise-2.1.0" = {
      name = "is-promise";
      packageName = "is-promise";
      version = "2.1.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/is-promise/-/is-promise-2.1.0.tgz";
        sha1 = "79a2a9ece7f096e80f36d2b2f3bc16c1ff4bf3fa";
      };
    };
    "is-property-1.0.2" = {
      name = "is-property";
      packageName = "is-property";
      version = "1.0.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/is-property/-/is-property-1.0.2.tgz";
        sha1 = "57fe1c4e48474edd65b09911f26b1cd4095dda84";
      };
    };
    "is-regex-1.0.4" = {
      name = "is-regex";
      packageName = "is-regex";
      version = "1.0.4";
      src = fetchurl {
        url = "https://registry.npmjs.org/is-regex/-/is-regex-1.0.4.tgz";
        sha1 = "5517489b547091b0930e095654ced25ee97e9491";
      };
    };
    "is-stream-1.1.0" = {
      name = "is-stream";
      packageName = "is-stream";
      version = "1.1.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/is-stream/-/is-stream-1.1.0.tgz";
        sha1 = "12d4a3dd4e68e0b79ceb8dbc84173ae80d91ca44";
      };
    };
    "is-symbol-1.0.2" = {
      name = "is-symbol";
      packageName = "is-symbol";
      version = "1.0.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/is-symbol/-/is-symbol-1.0.2.tgz";
        sha512 = "HS8bZ9ox60yCJLH9snBpIwv9pYUAkcuLhSA1oero1UB5y9aiQpRA8y2ex945AOtCZL1lJDeIk3G5LthswI46Lw==";
      };
    };
    "is-typedarray-1.0.0" = {
      name = "is-typedarray";
      packageName = "is-typedarray";
      version = "1.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/is-typedarray/-/is-typedarray-1.0.0.tgz";
        sha1 = "e479c80858df0c1b11ddda6940f96011fcda4a9a";
      };
    };
    "is-valid-domain-0.0.6" = {
      name = "is-valid-domain";
      packageName = "is-valid-domain";
      version = "0.0.6";
      src = fetchurl {
        url = "https://registry.npmjs.org/is-valid-domain/-/is-valid-domain-0.0.6.tgz";
        sha512 = "XXiNRcLcNKeb0LB3PzB39gJa8QiA+6nnc4NX9zNvFQcaITWU+64hfVqaVppbSd3tSVlJttW6sINkX3xLKPax7A==";
      };
    };
    "is-windows-1.0.2" = {
      name = "is-windows";
      packageName = "is-windows";
      version = "1.0.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/is-windows/-/is-windows-1.0.2.tgz";
        sha512 = "eXK1UInq2bPmjyX6e3VHIzMLobc4J94i4AWn+Hpq3OU5KkrRC96OAcR3PRJ/pGu6m8TRnBHP9dkXQVsT/COVIA==";
      };
    };
    "isarray-0.0.1" = {
      name = "isarray";
      packageName = "isarray";
      version = "0.0.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/isarray/-/isarray-0.0.1.tgz";
        sha1 = "8a18acfca9a8f4177e09abfc6038939b05d1eedf";
      };
    };
    "isarray-1.0.0" = {
      name = "isarray";
      packageName = "isarray";
      version = "1.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/isarray/-/isarray-1.0.0.tgz";
        sha1 = "bb935d48582cba168c06834957a54a3e07124f11";
      };
    };
    "isexe-2.0.0" = {
      name = "isexe";
      packageName = "isexe";
      version = "2.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/isexe/-/isexe-2.0.0.tgz";
        sha1 = "e8fbf374dc556ff8947a10dcb0572d633f2cfa10";
      };
    };
    "isobject-2.1.0" = {
      name = "isobject";
      packageName = "isobject";
      version = "2.1.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/isobject/-/isobject-2.1.0.tgz";
        sha1 = "f065561096a3f1da2ef46272f815c840d87e0c89";
      };
    };
    "isobject-3.0.1" = {
      name = "isobject";
      packageName = "isobject";
      version = "3.0.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/isobject/-/isobject-3.0.1.tgz";
        sha1 = "4e431e92b11a9731636aa1f9c8d1ccbcfdab78df";
      };
    };
    "isstream-0.1.2" = {
      name = "isstream";
      packageName = "isstream";
      version = "0.1.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/isstream/-/isstream-0.1.2.tgz";
        sha1 = "47e63f7af55afa6f92e1500e690eb8b8529c099a";
      };
    };
    "js-tokens-3.0.2" = {
      name = "js-tokens";
      packageName = "js-tokens";
      version = "3.0.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/js-tokens/-/js-tokens-3.0.2.tgz";
        sha1 = "9866df395102130e38f7f996bceb65443209c25b";
      };
    };
    "jsbn-0.1.1" = {
      name = "jsbn";
      packageName = "jsbn";
      version = "0.1.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/jsbn/-/jsbn-0.1.1.tgz";
        sha1 = "a5e654c2e5a2deb5f201d96cefbca80c0ef2f513";
      };
    };
    "jsesc-1.3.0" = {
      name = "jsesc";
      packageName = "jsesc";
      version = "1.3.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/jsesc/-/jsesc-1.3.0.tgz";
        sha1 = "46c3fec8c1892b12b0833db9bc7622176dbab34b";
      };
    };
    "json-buffer-2.0.11" = {
      name = "json-buffer";
      packageName = "json-buffer";
      version = "2.0.11";
      src = fetchurl {
        url = "http://registry.npmjs.org/json-buffer/-/json-buffer-2.0.11.tgz";
        sha1 = "3e441fda3098be8d1e3171ad591bc62a33e2d55f";
      };
    };
    "json-schema-0.2.3" = {
      name = "json-schema";
      packageName = "json-schema";
      version = "0.2.3";
      src = fetchurl {
        url = "https://registry.npmjs.org/json-schema/-/json-schema-0.2.3.tgz";
        sha1 = "b480c892e59a2f05954ce727bd3f2a4e882f9e13";
      };
    };
    "json-schema-traverse-0.3.1" = {
      name = "json-schema-traverse";
      packageName = "json-schema-traverse";
      version = "0.3.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/json-schema-traverse/-/json-schema-traverse-0.3.1.tgz";
        sha1 = "349a6d44c53a51de89b40805c5d5e59b417d3340";
      };
    };
    "json-stringify-safe-5.0.1" = {
      name = "json-stringify-safe";
      packageName = "json-stringify-safe";
      version = "5.0.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/json-stringify-safe/-/json-stringify-safe-5.0.1.tgz";
        sha1 = "1296a2d58fd45f19a0f6ce01d65701e2c735b6eb";
      };
    };
    "json5-0.5.1" = {
      name = "json5";
      packageName = "json5";
      version = "0.5.1";
      src = fetchurl {
        url = "http://registry.npmjs.org/json5/-/json5-0.5.1.tgz";
        sha1 = "1eade7acc012034ad84e2396767ead9fa5495821";
      };
    };
    "jsonfile-2.4.0" = {
      name = "jsonfile";
      packageName = "jsonfile";
      version = "2.4.0";
      src = fetchurl {
        url = "http://registry.npmjs.org/jsonfile/-/jsonfile-2.4.0.tgz";
        sha1 = "3736a2b428b87bbda0cc83b53fa3d633a35c2ae8";
      };
    };
    "jsonpointer-4.0.1" = {
      name = "jsonpointer";
      packageName = "jsonpointer";
      version = "4.0.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/jsonpointer/-/jsonpointer-4.0.1.tgz";
        sha1 = "4fd92cb34e0e9db3c89c8622ecf51f9b978c6cb9";
      };
    };
    "jsprim-1.4.1" = {
      name = "jsprim";
      packageName = "jsprim";
      version = "1.4.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/jsprim/-/jsprim-1.4.1.tgz";
        sha1 = "313e66bc1e5cc06e438bc1b7499c2e5c56acb6a2";
      };
    };
    "kind-of-3.2.2" = {
      name = "kind-of";
      packageName = "kind-of";
      version = "3.2.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/kind-of/-/kind-of-3.2.2.tgz";
        sha1 = "31ea21a734bab9bbb0f32466d893aea51e4a3c64";
      };
    };
    "kind-of-4.0.0" = {
      name = "kind-of";
      packageName = "kind-of";
      version = "4.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/kind-of/-/kind-of-4.0.0.tgz";
        sha1 = "20813df3d712928b207378691a45066fae72dd57";
      };
    };
    "kind-of-5.1.0" = {
      name = "kind-of";
      packageName = "kind-of";
      version = "5.1.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/kind-of/-/kind-of-5.1.0.tgz";
        sha512 = "NGEErnH6F2vUuXDh+OlbcKW7/wOcfdRHaZ7VWtqCztfHri/++YKmP51OdWeGPuqCOba6kk2OTe5d02VmTB80Pw==";
      };
    };
    "kind-of-6.0.2" = {
      name = "kind-of";
      packageName = "kind-of";
      version = "6.0.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/kind-of/-/kind-of-6.0.2.tgz";
        sha512 = "s5kLOcnH0XqDO+FvuaLX8DDjZ18CGFk7VygH40QoKPUQhW4e2rvM0rwUq0t8IQDOwYSeLK01U90OjzBTme2QqA==";
      };
    };
    "layered-graph-1.1.1" = {
      name = "layered-graph";
      packageName = "layered-graph";
      version = "1.1.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/layered-graph/-/layered-graph-1.1.1.tgz";
        sha512 = "YqnSwwiLxLdvJBi6ZrUEQEdjv+Z3S5fO1mT6ItWCfZu2tsBG22gr49Bj+hgtMeose/74apZeCx+/T9j4NgMDNA==";
      };
    };
    "level-3.0.2" = {
      name = "level";
      packageName = "level";
      version = "3.0.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/level/-/level-3.0.2.tgz";
        sha512 = "2qYbbiptPsPWGUI+AgB1gTNXqIjPpALRqrQyNx1zWYNZxhhuzEj/IE4Unu9weEBnsUEocfYe56xOGlAceb8/Fg==";
      };
    };
    "level-4.0.0" = {
      name = "level";
      packageName = "level";
      version = "4.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/level/-/level-4.0.0.tgz";
        sha512 = "4epzCOlEcJ529NOdlAYiuiakS/kZTDdiKSBNJmE1B8bsmA+zEVwcpxyH86qJSQTpOu7SODrlaD9WgPRHLkGutA==";
      };
    };
    "level-codec-6.2.0" = {
      name = "level-codec";
      packageName = "level-codec";
      version = "6.2.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/level-codec/-/level-codec-6.2.0.tgz";
        sha1 = "a4b5244bb6a4c2f723d68a1d64e980c53627d9d4";
      };
    };
    "level-codec-8.0.0" = {
      name = "level-codec";
      packageName = "level-codec";
      version = "8.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/level-codec/-/level-codec-8.0.0.tgz";
        sha512 = "gNZlo1HRHz0BWxzGCyNf7xntAs2HKOPvvRBWtXsoDvEX4vMYnSTBS6ZnxoaiX7nhxSBPpegRa8CQ/hnfGBKk3Q==";
      };
    };
    "level-codec-9.0.0" = {
      name = "level-codec";
      packageName = "level-codec";
      version = "9.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/level-codec/-/level-codec-9.0.0.tgz";
        sha512 = "OIpVvjCcZNP5SdhcNupnsI1zo5Y9Vpm+k/F1gfG5kXrtctlrwanisakweJtE0uA0OpLukRfOQae+Fg0M5Debhg==";
      };
    };
    "level-errors-1.1.2" = {
      name = "level-errors";
      packageName = "level-errors";
      version = "1.1.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/level-errors/-/level-errors-1.1.2.tgz";
        sha512 = "Sw/IJwWbPKF5Ai4Wz60B52yj0zYeqzObLh8k1Tk88jVmD51cJSKWSYpRyhVIvFzZdvsPqlH5wfhp/yxdsaQH4w==";
      };
    };
    "level-errors-2.0.0" = {
      name = "level-errors";
      packageName = "level-errors";
      version = "2.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/level-errors/-/level-errors-2.0.0.tgz";
        sha512 = "AmY4HCp9h3OiU19uG+3YWkdELgy05OTP/r23aNHaQKWv8DO787yZgsEuGVkoph40uwN+YdUKnANlrxSsoOaaxg==";
      };
    };
    "level-iterator-stream-2.0.3" = {
      name = "level-iterator-stream";
      packageName = "level-iterator-stream";
      version = "2.0.3";
      src = fetchurl {
        url = "https://registry.npmjs.org/level-iterator-stream/-/level-iterator-stream-2.0.3.tgz";
        sha512 = "I6Heg70nfF+e5Y3/qfthJFexhRw/Gi3bIymCoXAlijZdAcLaPuWSJs3KXyTYf23ID6g0o2QF62Yh+grOXY3Rig==";
      };
    };
    "level-iterator-stream-3.0.0" = {
      name = "level-iterator-stream";
      packageName = "level-iterator-stream";
      version = "3.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/level-iterator-stream/-/level-iterator-stream-3.0.0.tgz";
        sha512 = "2tpBjsNZtvST8eJIy3R9Sk13aC84omgqvT4sQObZaUb4hDyDe4woWAMudXX3eCsaydOGVaaI5WMpRRBFSzz5WA==";
      };
    };
    "level-packager-2.1.1" = {
      name = "level-packager";
      packageName = "level-packager";
      version = "2.1.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/level-packager/-/level-packager-2.1.1.tgz";
        sha512 = "6l3G6dVkmdvHwOJrEA9d9hL6SSFrzwjQoLP8HsvohOgfY/8Z9LyTKNCM5Gc84wtsUWCuIHu6r+S6WrCtTWUJCw==";
      };
    };
    "level-packager-3.1.0" = {
      name = "level-packager";
      packageName = "level-packager";
      version = "3.1.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/level-packager/-/level-packager-3.1.0.tgz";
        sha512 = "UxVEfK5WH0u0InR3WxTCSAroiorAGKzXWZT6i+nBjambmvINuXFUsFx2Ai3UIjUUtnyWhluv42jMlzUZCsAk9A==";
      };
    };
    "level-post-1.0.7" = {
      name = "level-post";
      packageName = "level-post";
      version = "1.0.7";
      src = fetchurl {
        url = "https://registry.npmjs.org/level-post/-/level-post-1.0.7.tgz";
        sha512 = "PWYqG4Q00asOrLhX7BejSajByB4EmG2GaKHfj3h5UmmZ2duciXLPGYWIjBzLECFWUGOZWlm5B20h/n3Gs3HKew==";
      };
    };
    "level-sublevel-6.6.5" = {
      name = "level-sublevel";
      packageName = "level-sublevel";
      version = "6.6.5";
      src = fetchurl {
        url = "https://registry.npmjs.org/level-sublevel/-/level-sublevel-6.6.5.tgz";
        sha512 = "SBSR60x+dghhwGUxPKS+BvV1xNqnwsEUBKmnFepPaHJ6VkBXyPK9SImGc3K2BkwBfpxlt7GKkBNlCnrdufsejA==";
      };
    };
    "leveldown-3.0.2" = {
      name = "leveldown";
      packageName = "leveldown";
      version = "3.0.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/leveldown/-/leveldown-3.0.2.tgz";
        sha512 = "+ANRScj1npQQzv6e4DYAKRjVQZZ+ahMoubKrNP68nIq+l9bYgb+WiXF+14oTcQTg2f7qE9WHGW7rBG9nGSsA+A==";
      };
    };
    "leveldown-4.0.1" = {
      name = "leveldown";
      packageName = "leveldown";
      version = "4.0.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/leveldown/-/leveldown-4.0.1.tgz";
        sha512 = "ZlBKVSsglPIPJnz4ggB8o2R0bxDxbsMzuQohbfgoFMVApyTE118DK5LNRG0cRju6rt3OkGxe0V6UYACGlq/byg==";
      };
    };
    "levelup-0.19.1" = {
      name = "levelup";
      packageName = "levelup";
      version = "0.19.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/levelup/-/levelup-0.19.1.tgz";
        sha1 = "f3a6a7205272c4b5f35e412ff004a03a0aedf50b";
      };
    };
    "levelup-2.0.2" = {
      name = "levelup";
      packageName = "levelup";
      version = "2.0.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/levelup/-/levelup-2.0.2.tgz";
        sha512 = "us+nTLUyd/eLnclYYddOCdAVw1hnymGx/9p4Jr5ThohStsjLqMVmbYiz6/SYFZEPXNF+AKQSvh6fA2e2KZpC8w==";
      };
    };
    "levelup-3.1.1" = {
      name = "levelup";
      packageName = "levelup";
      version = "3.1.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/levelup/-/levelup-3.1.1.tgz";
        sha512 = "9N10xRkUU4dShSRRFTBdNaBxofz+PGaIZO962ckboJZiNmLuhVT6FZ6ZKAsICKfUBO76ySaYU6fJWX/jnj3Lcg==";
      };
    };
    "libnested-1.3.2" = {
      name = "libnested";
      packageName = "libnested";
      version = "1.3.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/libnested/-/libnested-1.3.2.tgz";
        sha512 = "YvMQglpk/DyB8vFL5usJe6IZTqOU/fRopoUpoOt9TavYh5CaGdTp6zYqrA7DW8tHmZAr8fj+pDXbHBwlVrcVXQ==";
      };
    };
    "libsodium-0.7.3" = {
      name = "libsodium";
      packageName = "libsodium";
      version = "0.7.3";
      src = fetchurl {
        url = "https://registry.npmjs.org/libsodium/-/libsodium-0.7.3.tgz";
        sha512 = "ld+deUNqSsZYbAobUs63UyduPq8ICp/Ul/5lbvBIYpuSNWpPRU0PIxbW+xXipVZtuopR6fIz9e0tTnNuPMNeqw==";
      };
    };
    "libsodium-wrappers-0.7.3" = {
      name = "libsodium-wrappers";
      packageName = "libsodium-wrappers";
      version = "0.7.3";
      src = fetchurl {
        url = "https://registry.npmjs.org/libsodium-wrappers/-/libsodium-wrappers-0.7.3.tgz";
        sha512 = "dw5Jh6TZ5qc5rQVZe3JrSO/J05CE+DmAPnqD7Q2glBUE969xZ6o3fchnUxyPlp6ss3x0MFxmdJntveFN+XTg1g==";
      };
    };
    "lodash-4.17.11" = {
      name = "lodash";
      packageName = "lodash";
      version = "4.17.11";
      src = fetchurl {
        url = "https://registry.npmjs.org/lodash/-/lodash-4.17.11.tgz";
        sha512 = "cQKh8igo5QUhZ7lg38DYWAxMvjSAKG0A8wGSVimP07SIUEK2UO+arSRKbRZWtelMtN5V0Hkwh5ryOto/SshYIg==";
      };
    };
    "lodash.get-4.4.2" = {
      name = "lodash.get";
      packageName = "lodash.get";
      version = "4.4.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/lodash.get/-/lodash.get-4.4.2.tgz";
        sha1 = "2d177f652fa31e939b4438d5341499dfa3825e99";
      };
    };
    "lodash.startcase-4.4.0" = {
      name = "lodash.startcase";
      packageName = "lodash.startcase";
      version = "4.4.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/lodash.startcase/-/lodash.startcase-4.4.0.tgz";
        sha1 = "9436e34ed26093ed7ffae1936144350915d9add8";
      };
    };
    "log-symbols-1.0.2" = {
      name = "log-symbols";
      packageName = "log-symbols";
      version = "1.0.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/log-symbols/-/log-symbols-1.0.2.tgz";
        sha1 = "376ff7b58ea3086a0f09facc74617eca501e1a18";
      };
    };
    "log-update-1.0.2" = {
      name = "log-update";
      packageName = "log-update";
      version = "1.0.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/log-update/-/log-update-1.0.2.tgz";
        sha1 = "19929f64c4093d2d2e7075a1dad8af59c296b8d1";
      };
    };
    "longest-streak-1.0.0" = {
      name = "longest-streak";
      packageName = "longest-streak";
      version = "1.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/longest-streak/-/longest-streak-1.0.0.tgz";
        sha1 = "d06597c4d4c31b52ccb1f5d8f8fe7148eafd6965";
      };
    };
    "looper-2.0.0" = {
      name = "looper";
      packageName = "looper";
      version = "2.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/looper/-/looper-2.0.0.tgz";
        sha1 = "66cd0c774af3d4fedac53794f742db56da8f09ec";
      };
    };
    "looper-3.0.0" = {
      name = "looper";
      packageName = "looper";
      version = "3.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/looper/-/looper-3.0.0.tgz";
        sha1 = "2efa54c3b1cbaba9b94aee2e5914b0be57fbb749";
      };
    };
    "looper-4.0.0" = {
      name = "looper";
      packageName = "looper";
      version = "4.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/looper/-/looper-4.0.0.tgz";
        sha1 = "7706aded59a99edca06e6b54bb86c8ec19c95155";
      };
    };
    "loose-envify-1.4.0" = {
      name = "loose-envify";
      packageName = "loose-envify";
      version = "1.4.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/loose-envify/-/loose-envify-1.4.0.tgz";
        sha512 = "lyuxPGr/Wfhrlem2CL/UcnUc1zcqKAImBDzukY7Y5F/yQiNdko6+fRLevlw1HgMySw7f611UIY408EtxRSoK3Q==";
      };
    };
    "lossy-store-1.2.3" = {
      name = "lossy-store";
      packageName = "lossy-store";
      version = "1.2.3";
      src = fetchurl {
        url = "https://registry.npmjs.org/lossy-store/-/lossy-store-1.2.3.tgz";
        sha1 = "562e2a9203d8661f60e8712de407fbdadf275dc9";
      };
    };
    "lru-cache-4.1.3" = {
      name = "lru-cache";
      packageName = "lru-cache";
      version = "4.1.3";
      src = fetchurl {
        url = "https://registry.npmjs.org/lru-cache/-/lru-cache-4.1.3.tgz";
        sha512 = "fFEhvcgzuIoJVUF8fYr5KR0YqxD238zgObTps31YdADwPPAp82a4M8TrckkWyx7ekNlf9aBcVn81cFwwXngrJA==";
      };
    };
    "ltgt-2.1.3" = {
      name = "ltgt";
      packageName = "ltgt";
      version = "2.1.3";
      src = fetchurl {
        url = "https://registry.npmjs.org/ltgt/-/ltgt-2.1.3.tgz";
        sha1 = "10851a06d9964b971178441c23c9e52698eece34";
      };
    };
    "ltgt-2.2.1" = {
      name = "ltgt";
      packageName = "ltgt";
      version = "2.2.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/ltgt/-/ltgt-2.2.1.tgz";
        sha1 = "f35ca91c493f7b73da0e07495304f17b31f87ee5";
      };
    };
    "map-cache-0.2.2" = {
      name = "map-cache";
      packageName = "map-cache";
      version = "0.2.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/map-cache/-/map-cache-0.2.2.tgz";
        sha1 = "c32abd0bd6525d9b051645bb4f26ac5dc98a0dbf";
      };
    };
    "map-filter-reduce-2.2.1" = {
      name = "map-filter-reduce";
      packageName = "map-filter-reduce";
      version = "2.2.1";
      src = fetchurl {
        url = "http://registry.npmjs.org/map-filter-reduce/-/map-filter-reduce-2.2.1.tgz";
        sha1 = "632b127c3ae5d6ad9e21cfdd9691b63b8944fcd2";
      };
    };
    "map-filter-reduce-3.2.2" = {
      name = "map-filter-reduce";
      packageName = "map-filter-reduce";
      version = "3.2.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/map-filter-reduce/-/map-filter-reduce-3.2.2.tgz";
        sha512 = "p+NIGQbEBxlw/qWwG+NME98G/9kjOQI70hmaH8QEZtIWfTmfMYLKQW4PJChP4izPHNAxlOfv/qefP0+2ZXn84A==";
      };
    };
    "map-merge-1.1.0" = {
      name = "map-merge";
      packageName = "map-merge";
      version = "1.1.0";
      src = fetchurl {
        url = "http://registry.npmjs.org/map-merge/-/map-merge-1.1.0.tgz";
        sha1 = "6a6fc58c95d8aab46c2bdde44d515b6ee06fce34";
      };
    };
    "map-visit-1.0.0" = {
      name = "map-visit";
      packageName = "map-visit";
      version = "1.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/map-visit/-/map-visit-1.0.0.tgz";
        sha1 = "ecdca8f13144e660f1b5bd41f12f3479d98dfb8f";
      };
    };
    "markdown-table-0.4.0" = {
      name = "markdown-table";
      packageName = "markdown-table";
      version = "0.4.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/markdown-table/-/markdown-table-0.4.0.tgz";
        sha1 = "890c2c1b3bfe83fb00e4129b8e4cfe645270f9d1";
      };
    };
    "math-random-1.0.1" = {
      name = "math-random";
      packageName = "math-random";
      version = "1.0.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/math-random/-/math-random-1.0.1.tgz";
        sha1 = "8b3aac588b8a66e4975e3cdea67f7bb329601fac";
      };
    };
    "mdmanifest-1.0.8" = {
      name = "mdmanifest";
      packageName = "mdmanifest";
      version = "1.0.8";
      src = fetchurl {
        url = "https://registry.npmjs.org/mdmanifest/-/mdmanifest-1.0.8.tgz";
        sha1 = "c04891883c28c83602e1d06b05a11037e359b4c8";
      };
    };
    "micromatch-2.3.11" = {
      name = "micromatch";
      packageName = "micromatch";
      version = "2.3.11";
      src = fetchurl {
        url = "https://registry.npmjs.org/micromatch/-/micromatch-2.3.11.tgz";
        sha1 = "86677c97d1720b363431d04d0d15293bd38c1565";
      };
    };
    "micromatch-3.1.10" = {
      name = "micromatch";
      packageName = "micromatch";
      version = "3.1.10";
      src = fetchurl {
        url = "https://registry.npmjs.org/micromatch/-/micromatch-3.1.10.tgz";
        sha512 = "MWikgl9n9M3w+bpsY3He8L+w9eF9338xRl8IAO5viDizwSzziFEyUzo2xrrloB64ADbTf8uA8vRqqttDTOmccg==";
      };
    };
    "mime-1.6.0" = {
      name = "mime";
      packageName = "mime";
      version = "1.6.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/mime/-/mime-1.6.0.tgz";
        sha512 = "x0Vn8spI+wuJ1O6S7gnbaQg8Pxh4NNHb7KSINmEWKiPE4RKOplvijn+NkmYmmRgP68mc70j2EbeTFRsrswaQeg==";
      };
    };
    "mime-db-1.36.0" = {
      name = "mime-db";
      packageName = "mime-db";
      version = "1.36.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/mime-db/-/mime-db-1.36.0.tgz";
        sha512 = "L+xvyD9MkoYMXb1jAmzI/lWYAxAMCPvIBSWur0PZ5nOf5euahRLVqH//FKW9mWp2lkqUgYiXPgkzfMUFi4zVDw==";
      };
    };
    "mime-types-2.1.20" = {
      name = "mime-types";
      packageName = "mime-types";
      version = "2.1.20";
      src = fetchurl {
        url = "https://registry.npmjs.org/mime-types/-/mime-types-2.1.20.tgz";
        sha512 = "HrkrPaP9vGuWbLK1B1FfgAkbqNjIuy4eHlIYnFi7kamZyLLrGlo2mpcx0bBmNpKqBtYtAfGbodDddIgddSJC2A==";
      };
    };
    "mimic-fn-1.2.0" = {
      name = "mimic-fn";
      packageName = "mimic-fn";
      version = "1.2.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/mimic-fn/-/mimic-fn-1.2.0.tgz";
        sha512 = "jf84uxzwiuiIVKiOLpfYk7N46TSy8ubTonmneY9vrpHNAnp0QBt2BxWV9dO3/j+BoVAb+a5G6YDPW3M5HOdMWQ==";
      };
    };
    "mimic-response-1.0.1" = {
      name = "mimic-response";
      packageName = "mimic-response";
      version = "1.0.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/mimic-response/-/mimic-response-1.0.1.tgz";
        sha512 = "j5EctnkH7amfV/q5Hgmoal1g2QHFJRraOtmx0JpIqkxhBhI/lJSl1nMpQ45hVarwNETOoWEimndZ4QK0RHxuxQ==";
      };
    };
    "minimatch-3.0.4" = {
      name = "minimatch";
      packageName = "minimatch";
      version = "3.0.4";
      src = fetchurl {
        url = "https://registry.npmjs.org/minimatch/-/minimatch-3.0.4.tgz";
        sha512 = "yJHVQEhyqPLUTgt9B83PXu6W3rx4MvvHvSUvToogpwoGDOUQ+yDrR0HRot+yOCdCO7u4hX3pWft6kWBBcqh0UA==";
      };
    };
    "minimist-0.0.8" = {
      name = "minimist";
      packageName = "minimist";
      version = "0.0.8";
      src = fetchurl {
        url = "http://registry.npmjs.org/minimist/-/minimist-0.0.8.tgz";
        sha1 = "857fcabfc3397d2625b8228262e86aa7a011b05d";
      };
    };
    "minimist-1.2.0" = {
      name = "minimist";
      packageName = "minimist";
      version = "1.2.0";
      src = fetchurl {
        url = "http://registry.npmjs.org/minimist/-/minimist-1.2.0.tgz";
        sha1 = "a35008b20f41383eec1fb914f4cd5df79a264284";
      };
    };
    "mixin-deep-1.3.1" = {
      name = "mixin-deep";
      packageName = "mixin-deep";
      version = "1.3.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/mixin-deep/-/mixin-deep-1.3.1.tgz";
        sha512 = "8ZItLHeEgaqEvd5lYBXfm4EZSFCX29Jb9K+lAHhDKzReKBQKj3R+7NOF6tjqYi9t4oI8VUfaWITJQm86wnXGNQ==";
      };
    };
    "mkdirp-0.5.1" = {
      name = "mkdirp";
      packageName = "mkdirp";
      version = "0.5.1";
      src = fetchurl {
        url = "http://registry.npmjs.org/mkdirp/-/mkdirp-0.5.1.tgz";
        sha1 = "30057438eac6cf7f8c4767f38648d6697d75c903";
      };
    };
    "modify-filename-1.1.0" = {
      name = "modify-filename";
      packageName = "modify-filename";
      version = "1.1.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/modify-filename/-/modify-filename-1.1.0.tgz";
        sha1 = "9a2dec83806fbb2d975f22beec859ca26b393aa1";
      };
    };
    "monotonic-timestamp-0.0.9" = {
      name = "monotonic-timestamp";
      packageName = "monotonic-timestamp";
      version = "0.0.9";
      src = fetchurl {
        url = "https://registry.npmjs.org/monotonic-timestamp/-/monotonic-timestamp-0.0.9.tgz";
        sha1 = "5ba5adc7aac85e1d7ce77be847161ed246b39603";
      };
    };
    "ms-2.0.0" = {
      name = "ms";
      packageName = "ms";
      version = "2.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/ms/-/ms-2.0.0.tgz";
        sha1 = "5608aeadfc00be6c2901df5f9861788de0d597c8";
      };
    };
    "multiblob-1.13.1" = {
      name = "multiblob";
      packageName = "multiblob";
      version = "1.13.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/multiblob/-/multiblob-1.13.1.tgz";
        sha512 = "AvU9tbDqf3TxYgF1ldo3nVz4HoKI/ZDJBo/znLc6KCRiqr7dQv5vW3i3xh0JKZdLzgKG9JpUiKtwB8E92gn3ZQ==";
      };
    };
    "multiblob-http-0.4.2" = {
      name = "multiblob-http";
      packageName = "multiblob-http";
      version = "0.4.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/multiblob-http/-/multiblob-http-0.4.2.tgz";
        sha512 = "hVaXryaqJ3vvKjRNcOCEadzgO99nR+haxlptswr3vRvgavbK/Y/I7/Nat12WIQno2/A8+nkbE+ZcrsN3UDbtQw==";
      };
    };
    "multicb-1.2.2" = {
      name = "multicb";
      packageName = "multicb";
      version = "1.2.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/multicb/-/multicb-1.2.2.tgz";
        sha512 = "PZM4dhYFmCF6uZGWpEmoPMUqJBywS9IcAgybT2GmSpYI1BvGvoWSdbio+ik+q/YD2vodhvslESWIS3NnkKYdqQ==";
      };
    };
    "multiserver-1.13.5" = {
      name = "multiserver";
      packageName = "multiserver";
      version = "1.13.5";
      src = fetchurl {
        url = "https://registry.npmjs.org/multiserver/-/multiserver-1.13.5.tgz";
        sha512 = "1bxts3gFkHKJsGAaWR9D4nFLVH995eiEt38n/jPf1dni/FI0o6PH3hlar3ge/bMs58FX/T+DzrGNXZhEkMVFqA==";
      };
    };
    "mutant-3.22.1" = {
      name = "mutant";
      packageName = "mutant";
      version = "3.22.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/mutant/-/mutant-3.22.1.tgz";
        sha1 = "90487546f700b3c28aa80a43d1cf7d338f307581";
      };
    };
    "mutant-pull-reduce-1.1.0" = {
      name = "mutant-pull-reduce";
      packageName = "mutant-pull-reduce";
      version = "1.1.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/mutant-pull-reduce/-/mutant-pull-reduce-1.1.0.tgz";
        sha1 = "96f77027b400061364acbf2633be2e82d5440e6a";
      };
    };
    "mute-stream-0.0.7" = {
      name = "mute-stream";
      packageName = "mute-stream";
      version = "0.0.7";
      src = fetchurl {
        url = "https://registry.npmjs.org/mute-stream/-/mute-stream-0.0.7.tgz";
        sha1 = "3075ce93bc21b8fab43e1bc4da7e8115ed1e7bab";
      };
    };
    "muxrpc-6.4.1" = {
      name = "muxrpc";
      packageName = "muxrpc";
      version = "6.4.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/muxrpc/-/muxrpc-6.4.1.tgz";
        sha512 = "r8+tucKMmQiYd8NWGQqAA5r+SlYuU30D/WbYo7E/PztG/jmizQJY5NfmLIJ+GWo+dEC6kIxkr0eY+U0uZexTNg==";
      };
    };
    "muxrpc-validation-2.0.1" = {
      name = "muxrpc-validation";
      packageName = "muxrpc-validation";
      version = "2.0.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/muxrpc-validation/-/muxrpc-validation-2.0.1.tgz";
        sha1 = "cd650d172025fe9d064230aab38ca6328dd16f2f";
      };
    };
    "muxrpcli-1.1.0" = {
      name = "muxrpcli";
      packageName = "muxrpcli";
      version = "1.1.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/muxrpcli/-/muxrpcli-1.1.0.tgz";
        sha1 = "4ae9ba986ab825c4a5c12fcb71c6daa81eab5158";
      };
    };
    "mv-2.1.1" = {
      name = "mv";
      packageName = "mv";
      version = "2.1.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/mv/-/mv-2.1.1.tgz";
        sha1 = "ae6ce0d6f6d5e0a4f7d893798d03c1ea9559b6a2";
      };
    };
    "nan-2.10.0" = {
      name = "nan";
      packageName = "nan";
      version = "2.10.0";
      src = fetchurl {
        url = "http://registry.npmjs.org/nan/-/nan-2.10.0.tgz";
        sha512 = "bAdJv7fBLhWC+/Bls0Oza+mvTaNQtP+1RyhhhvD95pgUJz6XM5IzgmxOkItJ9tkoCiplvAnXI1tNmmUD/eScyA==";
      };
    };
    "nan-2.11.1" = {
      name = "nan";
      packageName = "nan";
      version = "2.11.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/nan/-/nan-2.11.1.tgz";
        sha512 = "iji6k87OSXa0CcrLl9z+ZiYSuR2o+c0bGuNmXdrhTQTakxytAFsC56SArGYoiHlJlFoHSnvmhpceZJaXkVuOtA==";
      };
    };
    "nanomatch-1.2.13" = {
      name = "nanomatch";
      packageName = "nanomatch";
      version = "1.2.13";
      src = fetchurl {
        url = "https://registry.npmjs.org/nanomatch/-/nanomatch-1.2.13.tgz";
        sha512 = "fpoe2T0RbHwBTBUOftAfBPaDEi06ufaUai0mE6Yn1kacc3SnTErfb/h+X94VXzI64rKFHYImXSvdwGGCmwOqCA==";
      };
    };
    "ncp-1.0.1" = {
      name = "ncp";
      packageName = "ncp";
      version = "1.0.1";
      src = fetchurl {
        url = "http://registry.npmjs.org/ncp/-/ncp-1.0.1.tgz";
        sha1 = "d15367e5cb87432ba117d2bf80fdf45aecfb4246";
      };
    };
    "ncp-2.0.0" = {
      name = "ncp";
      packageName = "ncp";
      version = "2.0.0";
      src = fetchurl {
        url = "http://registry.npmjs.org/ncp/-/ncp-2.0.0.tgz";
        sha1 = "195a21d6c46e361d2fb1281ba38b91e9df7bdbb3";
      };
    };
    "node-abi-2.4.5" = {
      name = "node-abi";
      packageName = "node-abi";
      version = "2.4.5";
      src = fetchurl {
        url = "https://registry.npmjs.org/node-abi/-/node-abi-2.4.5.tgz";
        sha512 = "aa/UC6Nr3+tqhHGRsAuw/edz7/q9nnetBrKWxj6rpTtm+0X9T1qU7lIEHMS3yN9JwAbRiKUbRRFy1PLz/y3aaA==";
      };
    };
    "node-fetch-1.6.3" = {
      name = "node-fetch";
      packageName = "node-fetch";
      version = "1.6.3";
      src = fetchurl {
        url = "http://registry.npmjs.org/node-fetch/-/node-fetch-1.6.3.tgz";
        sha1 = "dc234edd6489982d58e8f0db4f695029abcd8c04";
      };
    };
    "node-gyp-build-3.5.0" = {
      name = "node-gyp-build";
      packageName = "node-gyp-build";
      version = "3.5.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/node-gyp-build/-/node-gyp-build-3.5.0.tgz";
        sha512 = "qjEE8eIWVyqZhkAFUzytGpOGvLHeX5kXBB6MYyTOCPZBrBlsLyXAAzTsp/hWMbVlg8kVpzDJCZZowIrnKpwmqQ==";
      };
    };
    "node-notifier-5.2.1" = {
      name = "node-notifier";
      packageName = "node-notifier";
      version = "5.2.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/node-notifier/-/node-notifier-5.2.1.tgz";
        sha512 = "MIBs+AAd6dJ2SklbbE8RUDRlIVhU8MaNLh1A9SUZDUHPiZkWLFde6UNwG41yQHZEToHgJMXqyVZ9UcS/ReOVTg==";
      };
    };
    "non-private-ip-1.4.4" = {
      name = "non-private-ip";
      packageName = "non-private-ip";
      version = "1.4.4";
      src = fetchurl {
        url = "https://registry.npmjs.org/non-private-ip/-/non-private-ip-1.4.4.tgz";
        sha512 = "K9nTVFOGUOYutaG8ywiKpCdVu458RFxSgSJ0rribUxtf5iLM9B2+raFJgkID3p5op0+twmoQqFaPnu9KYz6qzg==";
      };
    };
    "noop-logger-0.1.1" = {
      name = "noop-logger";
      packageName = "noop-logger";
      version = "0.1.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/noop-logger/-/noop-logger-0.1.1.tgz";
        sha1 = "94a2b1633c4f1317553007d8966fd0e841b6a4c2";
      };
    };
    "normalize-path-2.1.1" = {
      name = "normalize-path";
      packageName = "normalize-path";
      version = "2.1.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/normalize-path/-/normalize-path-2.1.1.tgz";
        sha1 = "1ab28b556e198363a8c1a6f7e6fa20137fe6aed9";
      };
    };
    "normalize-uri-1.1.1" = {
      name = "normalize-uri";
      packageName = "normalize-uri";
      version = "1.1.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/normalize-uri/-/normalize-uri-1.1.1.tgz";
        sha512 = "bui9/kzRGymbkxJsZEBZgDHK2WJWGOHzR0pCr404EpkpVFTkCOYaRwQTlehUE+7oI70mWNENncCWqUxT/icfHw==";
      };
    };
    "npm-prefix-1.2.0" = {
      name = "npm-prefix";
      packageName = "npm-prefix";
      version = "1.2.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/npm-prefix/-/npm-prefix-1.2.0.tgz";
        sha1 = "e619455f7074ba54cc66d6d0d37dd9f1be6bcbc0";
      };
    };
    "npm-run-path-2.0.2" = {
      name = "npm-run-path";
      packageName = "npm-run-path";
      version = "2.0.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/npm-run-path/-/npm-run-path-2.0.2.tgz";
        sha1 = "35a9232dfa35d7067b4cb2ddf2357b1871536c5f";
      };
    };
    "npmlog-4.1.2" = {
      name = "npmlog";
      packageName = "npmlog";
      version = "4.1.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/npmlog/-/npmlog-4.1.2.tgz";
        sha512 = "2uUqazuKlTaSI/dC8AzicUck7+IrEaOnN/e0jd3Xtt1KcGpwx30v50mL7oPyr/h9bL3E4aZccVwpwP+5W9Vjkg==";
      };
    };
    "number-is-nan-1.0.1" = {
      name = "number-is-nan";
      packageName = "number-is-nan";
      version = "1.0.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/number-is-nan/-/number-is-nan-1.0.1.tgz";
        sha1 = "097b602b53422a522c1afb8790318336941a011d";
      };
    };
    "oauth-sign-0.9.0" = {
      name = "oauth-sign";
      packageName = "oauth-sign";
      version = "0.9.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/oauth-sign/-/oauth-sign-0.9.0.tgz";
        sha512 = "fexhUFFPTGV8ybAtSIGbV6gOkSv8UtRbDBnAyLQw4QPKkgNlsH2ByPGtMUqdWkos6YCRmAqViwgZrJc/mRDzZQ==";
      };
    };
    "object-assign-4.1.1" = {
      name = "object-assign";
      packageName = "object-assign";
      version = "4.1.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/object-assign/-/object-assign-4.1.1.tgz";
        sha1 = "2109adc7965887cfc05cbbd442cac8bfbb360863";
      };
    };
    "object-copy-0.1.0" = {
      name = "object-copy";
      packageName = "object-copy";
      version = "0.1.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/object-copy/-/object-copy-0.1.0.tgz";
        sha1 = "7e7d858b781bd7c991a41ba975ed3812754e998c";
      };
    };
    "object-inspect-1.6.0" = {
      name = "object-inspect";
      packageName = "object-inspect";
      version = "1.6.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/object-inspect/-/object-inspect-1.6.0.tgz";
        sha512 = "GJzfBZ6DgDAmnuaM3104jR4s1Myxr3Y3zfIyN4z3UdqN69oSRacNK8UhnobDdC+7J2AHCjGwxQubNJfE70SXXQ==";
      };
    };
    "object-keys-1.0.12" = {
      name = "object-keys";
      packageName = "object-keys";
      version = "1.0.12";
      src = fetchurl {
        url = "https://registry.npmjs.org/object-keys/-/object-keys-1.0.12.tgz";
        sha512 = "FTMyFUm2wBcGHnH2eXmz7tC6IwlqQZ6mVZ+6dm6vZ4IQIHjs6FdNsQBuKGPuUUUY6NfJw2PshC08Tn6LzLDOag==";
      };
    };
    "object-visit-1.0.1" = {
      name = "object-visit";
      packageName = "object-visit";
      version = "1.0.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/object-visit/-/object-visit-1.0.1.tgz";
        sha1 = "f79c4493af0c5377b59fe39d395e41042dd045bb";
      };
    };
    "object.omit-2.0.1" = {
      name = "object.omit";
      packageName = "object.omit";
      version = "2.0.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/object.omit/-/object.omit-2.0.1.tgz";
        sha1 = "1a9c744829f39dbb858c76ca3579ae2a54ebd1fa";
      };
    };
    "object.pick-1.3.0" = {
      name = "object.pick";
      packageName = "object.pick";
      version = "1.3.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/object.pick/-/object.pick-1.3.0.tgz";
        sha1 = "87a10ac4c1694bd2e1cbf53591a66141fb5dd747";
      };
    };
    "observ-0.2.0" = {
      name = "observ";
      packageName = "observ";
      version = "0.2.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/observ/-/observ-0.2.0.tgz";
        sha1 = "0bc39b3e29faa5f9e6caa5906cb8392df400aa68";
      };
    };
    "observ-debounce-1.1.1" = {
      name = "observ-debounce";
      packageName = "observ-debounce";
      version = "1.1.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/observ-debounce/-/observ-debounce-1.1.1.tgz";
        sha1 = "304e97c85adda70ecd7f08da450678ef90f0b707";
      };
    };
    "obv-0.0.0" = {
      name = "obv";
      packageName = "obv";
      version = "0.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/obv/-/obv-0.0.0.tgz";
        sha1 = "edeab8468f91d4193362ed7f91d0b96dd39a79c1";
      };
    };
    "obv-0.0.1" = {
      name = "obv";
      packageName = "obv";
      version = "0.0.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/obv/-/obv-0.0.1.tgz";
        sha1 = "cb236106341536f0dac4815e06708221cad7fb5e";
      };
    };
    "on-change-network-0.0.2" = {
      name = "on-change-network";
      packageName = "on-change-network";
      version = "0.0.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/on-change-network/-/on-change-network-0.0.2.tgz";
        sha1 = "d977249477f91726949d80e82346dab6ef45216b";
      };
    };
    "on-wakeup-1.0.1" = {
      name = "on-wakeup";
      packageName = "on-wakeup";
      version = "1.0.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/on-wakeup/-/on-wakeup-1.0.1.tgz";
        sha1 = "00d79d987dde7c8117bee74bb4903f6f6dafa52b";
      };
    };
    "once-1.4.0" = {
      name = "once";
      packageName = "once";
      version = "1.4.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/once/-/once-1.4.0.tgz";
        sha1 = "583b1aa775961d4b113ac17d9c50baef9dd76bd1";
      };
    };
    "onetime-1.1.0" = {
      name = "onetime";
      packageName = "onetime";
      version = "1.1.0";
      src = fetchurl {
        url = "http://registry.npmjs.org/onetime/-/onetime-1.1.0.tgz";
        sha1 = "a1f7838f8314c516f05ecefcbc4ccfe04b4ed789";
      };
    };
    "onetime-2.0.1" = {
      name = "onetime";
      packageName = "onetime";
      version = "2.0.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/onetime/-/onetime-2.0.1.tgz";
        sha1 = "067428230fd67443b2794b22bba528b6867962d4";
      };
    };
    "open-0.0.5" = {
      name = "open";
      packageName = "open";
      version = "0.0.5";
      src = fetchurl {
        url = "https://registry.npmjs.org/open/-/open-0.0.5.tgz";
        sha1 = "42c3e18ec95466b6bf0dc42f3a2945c3f0cad8fc";
      };
    };
    "opencollective-1.0.3" = {
      name = "opencollective";
      packageName = "opencollective";
      version = "1.0.3";
      src = fetchurl {
        url = "https://registry.npmjs.org/opencollective/-/opencollective-1.0.3.tgz";
        sha1 = "aee6372bc28144583690c3ca8daecfc120dd0ef1";
      };
    };
    "opencollective-postinstall-2.0.0" = {
      name = "opencollective-postinstall";
      packageName = "opencollective-postinstall";
      version = "2.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/opencollective-postinstall/-/opencollective-postinstall-2.0.0.tgz";
        sha512 = "XAe80GycLe2yRGnJsUtt+EO5lk06XYRQt4kJJe53O2kJHPZJOZ+XMF/b47HW96e6LhfKVpwnXVr/s56jhV98jg==";
      };
    };
    "opn-4.0.2" = {
      name = "opn";
      packageName = "opn";
      version = "4.0.2";
      src = fetchurl {
        url = "http://registry.npmjs.org/opn/-/opn-4.0.2.tgz";
        sha1 = "7abc22e644dff63b0a96d5ab7f2790c0f01abc95";
      };
    };
    "options-0.0.6" = {
      name = "options";
      packageName = "options";
      version = "0.0.6";
      src = fetchurl {
        url = "https://registry.npmjs.org/options/-/options-0.0.6.tgz";
        sha1 = "ec22d312806bb53e731773e7cdaefcf1c643128f";
      };
    };
    "os-homedir-1.0.2" = {
      name = "os-homedir";
      packageName = "os-homedir";
      version = "1.0.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/os-homedir/-/os-homedir-1.0.2.tgz";
        sha1 = "ffbc4988336e0e833de0c168c7ef152121aa7fb3";
      };
    };
    "os-tmpdir-1.0.2" = {
      name = "os-tmpdir";
      packageName = "os-tmpdir";
      version = "1.0.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/os-tmpdir/-/os-tmpdir-1.0.2.tgz";
        sha1 = "bbe67406c79aa85c5cfec766fe5734555dfa1274";
      };
    };
    "osenv-0.1.5" = {
      name = "osenv";
      packageName = "osenv";
      version = "0.1.5";
      src = fetchurl {
        url = "https://registry.npmjs.org/osenv/-/osenv-0.1.5.tgz";
        sha512 = "0CWcCECdMVc2Rw3U5w9ZjqX6ga6ubk1xDVKxtBQPK7wis/0F2r9T6k4ydGYhecl7YUBxBVxhL5oisPsNxAPe2g==";
      };
    };
    "p-finally-1.0.0" = {
      name = "p-finally";
      packageName = "p-finally";
      version = "1.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/p-finally/-/p-finally-1.0.0.tgz";
        sha1 = "3fbcfb15b899a44123b34b6dcc18b724336a2cae";
      };
    };
    "packet-stream-2.0.4" = {
      name = "packet-stream";
      packageName = "packet-stream";
      version = "2.0.4";
      src = fetchurl {
        url = "http://registry.npmjs.org/packet-stream/-/packet-stream-2.0.4.tgz";
        sha512 = "7+oxHdMMs6VhLvvbrDUc8QNuelE9fPKLDdToXBIKLPKOlnoBeMim+/35edp+AnFTLzk3xcogVvQ/jrZyyGsEiw==";
      };
    };
    "packet-stream-codec-1.1.2" = {
      name = "packet-stream-codec";
      packageName = "packet-stream-codec";
      version = "1.1.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/packet-stream-codec/-/packet-stream-codec-1.1.2.tgz";
        sha1 = "79b302fc144cdfbb4ab6feba7040e6a5d99c79c7";
      };
    };
    "pako-0.2.9" = {
      name = "pako";
      packageName = "pako";
      version = "0.2.9";
      src = fetchurl {
        url = "https://registry.npmjs.org/pako/-/pako-0.2.9.tgz";
        sha1 = "f3f7522f4ef782348da8161bad9ecfd51bf83a75";
      };
    };
    "parse-entities-1.2.0" = {
      name = "parse-entities";
      packageName = "parse-entities";
      version = "1.2.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/parse-entities/-/parse-entities-1.2.0.tgz";
        sha512 = "XXtDdOPLSB0sHecbEapQi6/58U/ODj/KWfIXmmMCJF/eRn8laX6LZbOyioMoETOOJoWRW8/qTSl5VQkUIfKM5g==";
      };
    };
    "parse-glob-3.0.4" = {
      name = "parse-glob";
      packageName = "parse-glob";
      version = "3.0.4";
      src = fetchurl {
        url = "https://registry.npmjs.org/parse-glob/-/parse-glob-3.0.4.tgz";
        sha1 = "b2c376cfb11f35513badd173ef0bb6e3a388391c";
      };
    };
    "pascalcase-0.1.1" = {
      name = "pascalcase";
      packageName = "pascalcase";
      version = "0.1.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/pascalcase/-/pascalcase-0.1.1.tgz";
        sha1 = "b363e55e8006ca6fe21784d2db22bd15d7917f14";
      };
    };
    "path-exists-3.0.0" = {
      name = "path-exists";
      packageName = "path-exists";
      version = "3.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/path-exists/-/path-exists-3.0.0.tgz";
        sha1 = "ce0ebeaa5f78cb18925ea7d810d7b59b010fd515";
      };
    };
    "path-is-absolute-1.0.1" = {
      name = "path-is-absolute";
      packageName = "path-is-absolute";
      version = "1.0.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/path-is-absolute/-/path-is-absolute-1.0.1.tgz";
        sha1 = "174b9268735534ffbc7ace6bf53a5a9e1b5c5f5f";
      };
    };
    "path-key-2.0.1" = {
      name = "path-key";
      packageName = "path-key";
      version = "2.0.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/path-key/-/path-key-2.0.1.tgz";
        sha1 = "411cadb574c5a140d3a4b1910d40d80cc9f40b40";
      };
    };
    "path-parse-1.0.6" = {
      name = "path-parse";
      packageName = "path-parse";
      version = "1.0.6";
      src = fetchurl {
        url = "https://registry.npmjs.org/path-parse/-/path-parse-1.0.6.tgz";
        sha512 = "GSmOT2EbHrINBf9SR7CDELwlJ8AENk3Qn7OikK4nFYAu3Ote2+JYNVvkpAEQm3/TLNEJFD/xZJjzyxg3KBWOzw==";
      };
    };
    "peek-stream-1.1.3" = {
      name = "peek-stream";
      packageName = "peek-stream";
      version = "1.1.3";
      src = fetchurl {
        url = "https://registry.npmjs.org/peek-stream/-/peek-stream-1.1.3.tgz";
        sha512 = "FhJ+YbOSBb9/rIl2ZeE/QHEsWn7PqNYt8ARAY3kIgNGOk13g9FGyIY6JIl/xB/3TFRVoTv5as0l11weORrTekA==";
      };
    };
    "performance-now-2.1.0" = {
      name = "performance-now";
      packageName = "performance-now";
      version = "2.1.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/performance-now/-/performance-now-2.1.0.tgz";
        sha1 = "6309f4e0e5fa913ec1c69307ae364b4b377c9e7b";
      };
    };
    "pify-2.3.0" = {
      name = "pify";
      packageName = "pify";
      version = "2.3.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/pify/-/pify-2.3.0.tgz";
        sha1 = "ed141a6ac043a849ea588498e7dca8b15330e90c";
      };
    };
    "pinkie-2.0.4" = {
      name = "pinkie";
      packageName = "pinkie";
      version = "2.0.4";
      src = fetchurl {
        url = "https://registry.npmjs.org/pinkie/-/pinkie-2.0.4.tgz";
        sha1 = "72556b80cfa0d48a974e80e77248e80ed4f7f870";
      };
    };
    "pinkie-promise-2.0.1" = {
      name = "pinkie-promise";
      packageName = "pinkie-promise";
      version = "2.0.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/pinkie-promise/-/pinkie-promise-2.0.1.tgz";
        sha1 = "2135d6dfa7a358c069ac9b178776288228450ffa";
      };
    };
    "pkginfo-0.3.1" = {
      name = "pkginfo";
      packageName = "pkginfo";
      version = "0.3.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/pkginfo/-/pkginfo-0.3.1.tgz";
        sha1 = "5b29f6a81f70717142e09e765bbeab97b4f81e21";
      };
    };
    "pkginfo-0.4.1" = {
      name = "pkginfo";
      packageName = "pkginfo";
      version = "0.4.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/pkginfo/-/pkginfo-0.4.1.tgz";
        sha1 = "b5418ef0439de5425fc4995042dced14fb2a84ff";
      };
    };
    "plur-2.1.2" = {
      name = "plur";
      packageName = "plur";
      version = "2.1.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/plur/-/plur-2.1.2.tgz";
        sha1 = "7482452c1a0f508e3e344eaec312c91c29dc655a";
      };
    };
    "popper.js-1.14.4" = {
      name = "popper.js";
      packageName = "popper.js";
      version = "1.14.4";
      src = fetchurl {
        url = "https://registry.npmjs.org/popper.js/-/popper.js-1.14.4.tgz";
        sha1 = "8eec1d8ff02a5a3a152dd43414a15c7b79fd69b6";
      };
    };
    "posix-character-classes-0.1.1" = {
      name = "posix-character-classes";
      packageName = "posix-character-classes";
      version = "0.1.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/posix-character-classes/-/posix-character-classes-0.1.1.tgz";
        sha1 = "01eac0fe3b5af71a2a6c02feabb8c1fef7e00eab";
      };
    };
    "prebuild-install-4.0.0" = {
      name = "prebuild-install";
      packageName = "prebuild-install";
      version = "4.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/prebuild-install/-/prebuild-install-4.0.0.tgz";
        sha512 = "7tayxeYboJX0RbVzdnKyGl2vhQRWr6qfClEXDhOkXjuaOKCw2q8aiuFhONRYVsG/czia7KhpykIlI2S2VaPunA==";
      };
    };
    "preserve-0.2.0" = {
      name = "preserve";
      packageName = "preserve";
      version = "0.2.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/preserve/-/preserve-0.2.0.tgz";
        sha1 = "815ed1f6ebc65926f865b310c0713bcb3315ce4b";
      };
    };
    "private-0.1.8" = {
      name = "private";
      packageName = "private";
      version = "0.1.8";
      src = fetchurl {
        url = "https://registry.npmjs.org/private/-/private-0.1.8.tgz";
        sha512 = "VvivMrbvd2nKkiG38qjULzlc+4Vx4wm/whI9pQD35YrARNnhxeiRktSOhSukRLFNlzg6Br/cJPet5J/u19r/mg==";
      };
    };
    "private-box-0.3.0" = {
      name = "private-box";
      packageName = "private-box";
      version = "0.3.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/private-box/-/private-box-0.3.0.tgz";
        sha512 = "zsK6DDEC+cnNiunYamcVbx4ZCLbKnzTOZa09K4Pj3/tH3nQFPUO9K2QoYy4kfxLqmoyw6RPDtACN9OYviMQZ2Q==";
      };
    };
    "process-nextick-args-2.0.0" = {
      name = "process-nextick-args";
      packageName = "process-nextick-args";
      version = "2.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/process-nextick-args/-/process-nextick-args-2.0.0.tgz";
        sha512 = "MtEC1TqN0EU5nephaJ4rAtThHtC86dNN9qCuEhtshvpVBkAW5ZO7BASN9REnF9eoXGcRub+pFuKEpOHE+HbEMw==";
      };
    };
    "progress-2.0.1" = {
      name = "progress";
      packageName = "progress";
      version = "2.0.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/progress/-/progress-2.0.1.tgz";
        sha512 = "OE+a6vzqazc+K6LxJrX5UPyKFvGnL5CYmq2jFGNIBWHpc4QyE49/YOumcrpQFJpfejmvRtbJzgO1zPmMCqlbBg==";
      };
    };
    "prompt-1.0.0" = {
      name = "prompt";
      packageName = "prompt";
      version = "1.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/prompt/-/prompt-1.0.0.tgz";
        sha1 = "8e57123c396ab988897fb327fd3aedc3e735e4fe";
      };
    };
    "prr-0.0.0" = {
      name = "prr";
      packageName = "prr";
      version = "0.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/prr/-/prr-0.0.0.tgz";
        sha1 = "1a84b85908325501411853d0081ee3fa86e2926a";
      };
    };
    "prr-1.0.1" = {
      name = "prr";
      packageName = "prr";
      version = "1.0.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/prr/-/prr-1.0.1.tgz";
        sha1 = "d3fc114ba06995a45ec6893f484ceb1d78f5f476";
      };
    };
    "pseudomap-1.0.2" = {
      name = "pseudomap";
      packageName = "pseudomap";
      version = "1.0.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/pseudomap/-/pseudomap-1.0.2.tgz";
        sha1 = "f052a28da70e618917ef0a8ac34c1ae5a68286b3";
      };
    };
    "psl-1.1.29" = {
      name = "psl";
      packageName = "psl";
      version = "1.1.29";
      src = fetchurl {
        url = "https://registry.npmjs.org/psl/-/psl-1.1.29.tgz";
        sha512 = "AeUmQ0oLN02flVHXWh9sSJF7mcdFq0ppid/JkErufc3hGIV/AMa8Fo9VgDo/cT2jFdOWoFvHp90qqBH54W+gjQ==";
      };
    };
    "pull-abortable-4.0.0" = {
      name = "pull-abortable";
      packageName = "pull-abortable";
      version = "4.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/pull-abortable/-/pull-abortable-4.0.0.tgz";
        sha1 = "7017a984c3b834de77bac38c10b776f22dfc1843";
      };
    };
    "pull-abortable-4.1.1" = {
      name = "pull-abortable";
      packageName = "pull-abortable";
      version = "4.1.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/pull-abortable/-/pull-abortable-4.1.1.tgz";
        sha1 = "b3ad5aefb4116b25916d26db89393ac98d0dcea1";
      };
    };
    "pull-box-stream-1.0.13" = {
      name = "pull-box-stream";
      packageName = "pull-box-stream";
      version = "1.0.13";
      src = fetchurl {
        url = "https://registry.npmjs.org/pull-box-stream/-/pull-box-stream-1.0.13.tgz";
        sha1 = "c3e240398eab3f5951b2ed1078c5988bf7a0a2b9";
      };
    };
    "pull-cat-1.1.11" = {
      name = "pull-cat";
      packageName = "pull-cat";
      version = "1.1.11";
      src = fetchurl {
        url = "https://registry.npmjs.org/pull-cat/-/pull-cat-1.1.11.tgz";
        sha1 = "b642dd1255da376a706b6db4fa962f5fdb74c31b";
      };
    };
    "pull-cont-0.0.0" = {
      name = "pull-cont";
      packageName = "pull-cont";
      version = "0.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/pull-cont/-/pull-cont-0.0.0.tgz";
        sha1 = "3fac48b81ac97b75ba01332088b0ce7af8c1be0e";
      };
    };
    "pull-cont-0.1.1" = {
      name = "pull-cont";
      packageName = "pull-cont";
      version = "0.1.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/pull-cont/-/pull-cont-0.1.1.tgz";
        sha1 = "df1d580e271757ba9acbaeba20de2421d660d618";
      };
    };
    "pull-core-1.1.0" = {
      name = "pull-core";
      packageName = "pull-core";
      version = "1.1.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/pull-core/-/pull-core-1.1.0.tgz";
        sha1 = "3d8127d6dac1475705c9800961f59d66c8046c8a";
      };
    };
    "pull-cursor-3.0.0" = {
      name = "pull-cursor";
      packageName = "pull-cursor";
      version = "3.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/pull-cursor/-/pull-cursor-3.0.0.tgz";
        sha512 = "95lZVSF2eSEdOmUtlOBaD9p5YOvlYeCr5FBv2ySqcj/4rpaXI6d8OH+zPHHjKAf58R8QXJRZuyfHkcCX8TZbAg==";
      };
    };
    "pull-defer-0.2.3" = {
      name = "pull-defer";
      packageName = "pull-defer";
      version = "0.2.3";
      src = fetchurl {
        url = "https://registry.npmjs.org/pull-defer/-/pull-defer-0.2.3.tgz";
        sha512 = "/An3KE7mVjZCqNhZsr22k1Tx8MACnUnHZZNPSJ0S62td8JtYr/AiRG42Vz7Syu31SoTLUzVIe61jtT/pNdjVYA==";
      };
    };
    "pull-file-0.5.0" = {
      name = "pull-file";
      packageName = "pull-file";
      version = "0.5.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/pull-file/-/pull-file-0.5.0.tgz";
        sha1 = "b3ca405306e082f9d4528288933badb2b656365b";
      };
    };
    "pull-file-1.1.0" = {
      name = "pull-file";
      packageName = "pull-file";
      version = "1.1.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/pull-file/-/pull-file-1.1.0.tgz";
        sha1 = "1dd987605d6357a0d23c1e4b826f7915a215129c";
      };
    };
    "pull-file-reader-1.0.2" = {
      name = "pull-file-reader";
      packageName = "pull-file-reader";
      version = "1.0.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/pull-file-reader/-/pull-file-reader-1.0.2.tgz";
        sha1 = "d9b0d3d2de56f1a1ebb2ce8d313e79567d92dc48";
      };
    };
    "pull-flatmap-0.0.1" = {
      name = "pull-flatmap";
      packageName = "pull-flatmap";
      version = "0.0.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/pull-flatmap/-/pull-flatmap-0.0.1.tgz";
        sha1 = "13d494453e8f6d478e7bbfade6f8fe0197fa6bb7";
      };
    };
    "pull-fs-1.1.6" = {
      name = "pull-fs";
      packageName = "pull-fs";
      version = "1.1.6";
      src = fetchurl {
        url = "https://registry.npmjs.org/pull-fs/-/pull-fs-1.1.6.tgz";
        sha1 = "f184f6a7728bb4d95641376bead69f6f66df47cd";
      };
    };
    "pull-glob-1.0.7" = {
      name = "pull-glob";
      packageName = "pull-glob";
      version = "1.0.7";
      src = fetchurl {
        url = "https://registry.npmjs.org/pull-glob/-/pull-glob-1.0.7.tgz";
        sha1 = "eef915dde644bddbea8dd2e0106d544aacbcd5c2";
      };
    };
    "pull-goodbye-0.0.2" = {
      name = "pull-goodbye";
      packageName = "pull-goodbye";
      version = "0.0.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/pull-goodbye/-/pull-goodbye-0.0.2.tgz";
        sha1 = "8d8357db55e22a710dfff0f16a8c90b45efe4171";
      };
    };
    "pull-handshake-1.1.4" = {
      name = "pull-handshake";
      packageName = "pull-handshake";
      version = "1.1.4";
      src = fetchurl {
        url = "https://registry.npmjs.org/pull-handshake/-/pull-handshake-1.1.4.tgz";
        sha1 = "6000a0fd018884cdfd737254f8cc60ab2a637791";
      };
    };
    "pull-hash-1.0.0" = {
      name = "pull-hash";
      packageName = "pull-hash";
      version = "1.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/pull-hash/-/pull-hash-1.0.0.tgz";
        sha1 = "fcad4d2507bf2c2b3231f653dc9bfb2db4f0d88c";
      };
    };
    "pull-inactivity-2.1.2" = {
      name = "pull-inactivity";
      packageName = "pull-inactivity";
      version = "2.1.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/pull-inactivity/-/pull-inactivity-2.1.2.tgz";
        sha1 = "37a3d6ebbfac292cd435f5e481e5074c8c1fad75";
      };
    };
    "pull-iterable-0.1.0" = {
      name = "pull-iterable";
      packageName = "pull-iterable";
      version = "0.1.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/pull-iterable/-/pull-iterable-0.1.0.tgz";
        sha512 = "FjhQ/STYNGwQaBhmuiZspL/+PIj+OHB1lE9OteegEWzciQhkJPx6Fwt+jqcpRDJ3kTzpt/ETSo3M5TFRpZ0pgQ==";
      };
    };
    "pull-level-2.0.4" = {
      name = "pull-level";
      packageName = "pull-level";
      version = "2.0.4";
      src = fetchurl {
        url = "https://registry.npmjs.org/pull-level/-/pull-level-2.0.4.tgz";
        sha512 = "fW6pljDeUThpq5KXwKbRG3X7Ogk3vc75d5OQU/TvXXui65ykm+Bn+fiktg+MOx2jJ85cd+sheufPL+rw9QSVZg==";
      };
    };
    "pull-live-1.0.1" = {
      name = "pull-live";
      packageName = "pull-live";
      version = "1.0.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/pull-live/-/pull-live-1.0.1.tgz";
        sha1 = "a4ecee01e330155e9124bbbcf4761f21b38f51f5";
      };
    };
    "pull-looper-1.0.0" = {
      name = "pull-looper";
      packageName = "pull-looper";
      version = "1.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/pull-looper/-/pull-looper-1.0.0.tgz";
        sha512 = "djlD60A6NGe5goLdP5pgbqzMEiWmk1bInuAzBp0QOH4vDrVwh05YDz6UP8+pOXveKEk8wHVP+rB2jBrK31QMPA==";
      };
    };
    "pull-many-1.0.8" = {
      name = "pull-many";
      packageName = "pull-many";
      version = "1.0.8";
      src = fetchurl {
        url = "https://registry.npmjs.org/pull-many/-/pull-many-1.0.8.tgz";
        sha1 = "3dadd9b6d156c545721bda8d0003dd8eaa06293e";
      };
    };
    "pull-ndjson-0.1.1" = {
      name = "pull-ndjson";
      packageName = "pull-ndjson";
      version = "0.1.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/pull-ndjson/-/pull-ndjson-0.1.1.tgz";
        sha1 = "831e06bad9aa6c5c5ebc12a897e3a0e15d49e07e";
      };
    };
    "pull-next-1.0.1" = {
      name = "pull-next";
      packageName = "pull-next";
      version = "1.0.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/pull-next/-/pull-next-1.0.1.tgz";
        sha1 = "03f4d7d19872fc1114161e88db6ecf4c65e61e56";
      };
    };
    "pull-notify-0.1.1" = {
      name = "pull-notify";
      packageName = "pull-notify";
      version = "0.1.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/pull-notify/-/pull-notify-0.1.1.tgz";
        sha1 = "6f86ff95d270b89c3ebf255b6031b7032dc99cca";
      };
    };
    "pull-pair-1.1.0" = {
      name = "pull-pair";
      packageName = "pull-pair";
      version = "1.1.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/pull-pair/-/pull-pair-1.1.0.tgz";
        sha1 = "7ee427263fdf4da825397ac0a05e1ab4b74bd76d";
      };
    };
    "pull-paramap-1.2.2" = {
      name = "pull-paramap";
      packageName = "pull-paramap";
      version = "1.2.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/pull-paramap/-/pull-paramap-1.2.2.tgz";
        sha1 = "51a4193ce9c8d7215d95adad45e2bcdb8493b23a";
      };
    };
    "pull-pause-0.0.0" = {
      name = "pull-pause";
      packageName = "pull-pause";
      version = "0.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/pull-pause/-/pull-pause-0.0.0.tgz";
        sha1 = "101a628d717e19dfbf9800e9dec8f25d30461969";
      };
    };
    "pull-ping-2.0.2" = {
      name = "pull-ping";
      packageName = "pull-ping";
      version = "2.0.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/pull-ping/-/pull-ping-2.0.2.tgz";
        sha1 = "7bc4a340167dad88f682a196c63485735c7a0894";
      };
    };
    "pull-pushable-2.2.0" = {
      name = "pull-pushable";
      packageName = "pull-pushable";
      version = "2.2.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/pull-pushable/-/pull-pushable-2.2.0.tgz";
        sha1 = "5f2f3aed47ad86919f01b12a2e99d6f1bd776581";
      };
    };
    "pull-rate-1.0.2" = {
      name = "pull-rate";
      packageName = "pull-rate";
      version = "1.0.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/pull-rate/-/pull-rate-1.0.2.tgz";
        sha1 = "17b231ad5f359f675826670172b0e590c8964e8d";
      };
    };
    "pull-reader-1.3.1" = {
      name = "pull-reader";
      packageName = "pull-reader";
      version = "1.3.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/pull-reader/-/pull-reader-1.3.1.tgz";
        sha512 = "CBkejkE5nX50SiSEzu0Qoz4POTJMS/mw8G6aj3h3M/RJoKgggLxyF0IyTZ0mmpXFlXRcLmLmIEW4xeYn7AeDYw==";
      };
    };
    "pull-sink-through-0.0.0" = {
      name = "pull-sink-through";
      packageName = "pull-sink-through";
      version = "0.0.0";
      src = fetchurl {
        url = "http://registry.npmjs.org/pull-sink-through/-/pull-sink-through-0.0.0.tgz";
        sha1 = "d3c0492f3a80b4ed204af67c4b4f935680fc5b1f";
      };
    };
    "pull-sort-1.0.1" = {
      name = "pull-sort";
      packageName = "pull-sort";
      version = "1.0.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/pull-sort/-/pull-sort-1.0.1.tgz";
        sha1 = "a8ab0c70c86f45343c9accc939fc42769ad3dc6d";
      };
    };
    "pull-split-0.2.0" = {
      name = "pull-split";
      packageName = "pull-split";
      version = "0.2.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/pull-split/-/pull-split-0.2.0.tgz";
        sha1 = "996d288531052209a831388ad0d281df3c823796";
      };
    };
    "pull-stream-2.28.4" = {
      name = "pull-stream";
      packageName = "pull-stream";
      version = "2.28.4";
      src = fetchurl {
        url = "http://registry.npmjs.org/pull-stream/-/pull-stream-2.28.4.tgz";
        sha1 = "7ea97413c1619c20bc3bdf9e10e91347b03253e4";
      };
    };
    "pull-stream-3.5.0" = {
      name = "pull-stream";
      packageName = "pull-stream";
      version = "3.5.0";
      src = fetchurl {
        url = "http://registry.npmjs.org/pull-stream/-/pull-stream-3.5.0.tgz";
        sha1 = "1ee5b6f76fd3b3a49a5afb6ded5c0320acb3cfc7";
      };
    };
    "pull-stream-3.6.9" = {
      name = "pull-stream";
      packageName = "pull-stream";
      version = "3.6.9";
      src = fetchurl {
        url = "https://registry.npmjs.org/pull-stream/-/pull-stream-3.6.9.tgz";
        sha512 = "hJn4POeBrkttshdNl0AoSCVjMVSuBwuHocMerUdoZ2+oIUzrWHFTwJMlbHND7OiKLVgvz6TFj8ZUVywUMXccbw==";
      };
    };
    "pull-stream-to-stream-1.3.4" = {
      name = "pull-stream-to-stream";
      packageName = "pull-stream-to-stream";
      version = "1.3.4";
      src = fetchurl {
        url = "https://registry.npmjs.org/pull-stream-to-stream/-/pull-stream-to-stream-1.3.4.tgz";
        sha1 = "3f81d8216bd18d2bfd1a198190471180e2738399";
      };
    };
    "pull-stringify-1.2.2" = {
      name = "pull-stringify";
      packageName = "pull-stringify";
      version = "1.2.2";
      src = fetchurl {
        url = "http://registry.npmjs.org/pull-stringify/-/pull-stringify-1.2.2.tgz";
        sha1 = "5a1c34e0075faf2f2f6d46004e36dccd33bd7c7c";
      };
    };
    "pull-through-1.0.18" = {
      name = "pull-through";
      packageName = "pull-through";
      version = "1.0.18";
      src = fetchurl {
        url = "https://registry.npmjs.org/pull-through/-/pull-through-1.0.18.tgz";
        sha1 = "8dd62314263e59cf5096eafbb127a2b6ef310735";
      };
    };
    "pull-traverse-1.0.3" = {
      name = "pull-traverse";
      packageName = "pull-traverse";
      version = "1.0.3";
      src = fetchurl {
        url = "https://registry.npmjs.org/pull-traverse/-/pull-traverse-1.0.3.tgz";
        sha1 = "74fb5d7be7fa6bd7a78e97933e199b7945866938";
      };
    };
    "pull-utf8-decoder-1.0.2" = {
      name = "pull-utf8-decoder";
      packageName = "pull-utf8-decoder";
      version = "1.0.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/pull-utf8-decoder/-/pull-utf8-decoder-1.0.2.tgz";
        sha1 = "a7afa2384d1e6415a5d602054126cc8de3bcbce7";
      };
    };
    "pull-window-2.1.4" = {
      name = "pull-window";
      packageName = "pull-window";
      version = "2.1.4";
      src = fetchurl {
        url = "https://registry.npmjs.org/pull-window/-/pull-window-2.1.4.tgz";
        sha1 = "fc3b86feebd1920c7ae297691e23f705f88552f0";
      };
    };
    "pull-write-1.1.4" = {
      name = "pull-write";
      packageName = "pull-write";
      version = "1.1.4";
      src = fetchurl {
        url = "https://registry.npmjs.org/pull-write/-/pull-write-1.1.4.tgz";
        sha1 = "dddea31493b48f6768b84a281d01eb3b531fe0b8";
      };
    };
    "pull-write-file-0.2.4" = {
      name = "pull-write-file";
      packageName = "pull-write-file";
      version = "0.2.4";
      src = fetchurl {
        url = "https://registry.npmjs.org/pull-write-file/-/pull-write-file-0.2.4.tgz";
        sha1 = "437344aeb2189f65e678ed1af37f0f760a5453ef";
      };
    };
    "pull-ws-3.3.1" = {
      name = "pull-ws";
      packageName = "pull-ws";
      version = "3.3.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/pull-ws/-/pull-ws-3.3.1.tgz";
        sha512 = "kJodbLQT+oKjcRIQO+vQNw6xWBuEo7Kxp51VMOvb6cvPvHYA+aNLzm+NmkB/5dZwbuTRYGMal9QPvH52tzM1ZA==";
      };
    };
    "pump-1.0.3" = {
      name = "pump";
      packageName = "pump";
      version = "1.0.3";
      src = fetchurl {
        url = "https://registry.npmjs.org/pump/-/pump-1.0.3.tgz";
        sha512 = "8k0JupWme55+9tCVE+FS5ULT3K6AbgqrGa58lTT49RpyfwwcGedHqaC5LlQNdEAumn/wFsu6aPwkuPMioy8kqw==";
      };
    };
    "pump-2.0.1" = {
      name = "pump";
      packageName = "pump";
      version = "2.0.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/pump/-/pump-2.0.1.tgz";
        sha512 = "ruPMNRkN3MHP1cWJc9OWr+T/xDP0jhXYCLfJcBuX54hhfIBnaQmAUMfDcG4DM5UMWByBbJY69QSphm3jtDKIkA==";
      };
    };
    "pumpify-1.5.1" = {
      name = "pumpify";
      packageName = "pumpify";
      version = "1.5.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/pumpify/-/pumpify-1.5.1.tgz";
        sha512 = "oClZI37HvuUJJxSKKrC17bZ9Cu0ZYhEAGPsPUy9KlMUmv9dKX2o77RUmq7f3XjIxbwyGwYzbzQ1L2Ks8sIradQ==";
      };
    };
    "punycode-1.4.1" = {
      name = "punycode";
      packageName = "punycode";
      version = "1.4.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/punycode/-/punycode-1.4.1.tgz";
        sha1 = "c0d5a63b2718800ad8e1eb0fa5269c84dd41845e";
      };
    };
    "pupa-1.0.0" = {
      name = "pupa";
      packageName = "pupa";
      version = "1.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/pupa/-/pupa-1.0.0.tgz";
        sha1 = "9a9568a5af7e657b8462a6e9d5328743560ceff6";
      };
    };
    "push-stream-10.0.4" = {
      name = "push-stream";
      packageName = "push-stream";
      version = "10.0.4";
      src = fetchurl {
        url = "https://registry.npmjs.org/push-stream/-/push-stream-10.0.4.tgz";
        sha512 = "IrP96RziNzT4UR7ZffM26o2NQ/Dq0dlRi1p8S/HE4+pHF6OaKWS1DyaJevsxJ6Q8bHafLqin6/pwI36FCmiV0w==";
      };
    };
    "push-stream-to-pull-stream-1.0.3" = {
      name = "push-stream-to-pull-stream";
      packageName = "push-stream-to-pull-stream";
      version = "1.0.3";
      src = fetchurl {
        url = "https://registry.npmjs.org/push-stream-to-pull-stream/-/push-stream-to-pull-stream-1.0.3.tgz";
        sha512 = "pdE/OKi/jnp9DqGgNRzLY0oVHffn/8TXJmBPzv+ikdvpkeA0J//l5d7TZk1yWwZj9P0JcOIEVDOuHzhXaeBlmw==";
      };
    };
    "qs-6.5.2" = {
      name = "qs";
      packageName = "qs";
      version = "6.5.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/qs/-/qs-6.5.2.tgz";
        sha512 = "N5ZAX4/LxJmF+7wN74pUD6qAh9/wnvdQcjq9TZjevvXzSUo7bfmw91saqMjzGS2xq91/odN2dW/WOl7qQHNDGA==";
      };
    };
    "quick-lru-1.1.0" = {
      name = "quick-lru";
      packageName = "quick-lru";
      version = "1.1.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/quick-lru/-/quick-lru-1.1.0.tgz";
        sha1 = "4360b17c61136ad38078397ff11416e186dcfbb8";
      };
    };
    "randomatic-3.1.0" = {
      name = "randomatic";
      packageName = "randomatic";
      version = "3.1.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/randomatic/-/randomatic-3.1.0.tgz";
        sha512 = "KnGPVE0lo2WoXxIZ7cPR8YBpiol4gsSuOwDSg410oHh80ZMp5EiypNqL2K4Z77vJn6lB5rap7IkAmcUlalcnBQ==";
      };
    };
    "rc-1.2.8" = {
      name = "rc";
      packageName = "rc";
      version = "1.2.8";
      src = fetchurl {
        url = "https://registry.npmjs.org/rc/-/rc-1.2.8.tgz";
        sha512 = "y3bGgqKj3QBdxLbLkomlohkvsA8gdAiUQlSBJnBhfn+BPxg4bc62d8TcBW15wavDfgexCgccckhcZvywyQYPOw==";
      };
    };
    "read-1.0.7" = {
      name = "read";
      packageName = "read";
      version = "1.0.7";
      src = fetchurl {
        url = "https://registry.npmjs.org/read/-/read-1.0.7.tgz";
        sha1 = "b3da19bd052431a97671d44a42634adf710b40c4";
      };
    };
    "readable-stream-1.0.34" = {
      name = "readable-stream";
      packageName = "readable-stream";
      version = "1.0.34";
      src = fetchurl {
        url = "http://registry.npmjs.org/readable-stream/-/readable-stream-1.0.34.tgz";
        sha1 = "125820e34bc842d2f2aaafafe4c2916ee32c157c";
      };
    };
    "readable-stream-2.3.6" = {
      name = "readable-stream";
      packageName = "readable-stream";
      version = "2.3.6";
      src = fetchurl {
        url = "http://registry.npmjs.org/readable-stream/-/readable-stream-2.3.6.tgz";
        sha512 = "tQtKA9WIAhBF3+VLAseyMqZeBjW0AHJoxOtYqSUZNJxauErmLbVm2FW1y+J/YA9dUrAC39ITejlZWhVIwawkKw==";
      };
    };
    "readdirp-2.2.1" = {
      name = "readdirp";
      packageName = "readdirp";
      version = "2.2.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/readdirp/-/readdirp-2.2.1.tgz";
        sha512 = "1JU/8q+VgFZyxwrJ+SVIOsh+KywWGpds3NTqikiKpDMZWScmAYyKIgqkO+ARvNWJfXeXR1zxz7aHF4u4CyH6vQ==";
      };
    };
    "regenerator-runtime-0.10.5" = {
      name = "regenerator-runtime";
      packageName = "regenerator-runtime";
      version = "0.10.5";
      src = fetchurl {
        url = "https://registry.npmjs.org/regenerator-runtime/-/regenerator-runtime-0.10.5.tgz";
        sha1 = "336c3efc1220adcedda2c9fab67b5a7955a33658";
      };
    };
    "regenerator-runtime-0.11.1" = {
      name = "regenerator-runtime";
      packageName = "regenerator-runtime";
      version = "0.11.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/regenerator-runtime/-/regenerator-runtime-0.11.1.tgz";
        sha512 = "MguG95oij0fC3QV3URf4V2SDYGJhJnJGqvIIgdECeODCT98wSWDAJ94SSuVpYQUoTcGUIL6L4yNB7j1DFFHSBg==";
      };
    };
    "regex-cache-0.4.4" = {
      name = "regex-cache";
      packageName = "regex-cache";
      version = "0.4.4";
      src = fetchurl {
        url = "https://registry.npmjs.org/regex-cache/-/regex-cache-0.4.4.tgz";
        sha512 = "nVIZwtCjkC9YgvWkpM55B5rBhBYRZhAaJbgcFYXXsHnbZ9UZI9nnVWYZpBlCqv9ho2eZryPnWrZGsOdPwVWXWQ==";
      };
    };
    "regex-not-1.0.2" = {
      name = "regex-not";
      packageName = "regex-not";
      version = "1.0.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/regex-not/-/regex-not-1.0.2.tgz";
        sha512 = "J6SDjUgDxQj5NusnOtdFxDwN/+HWykR8GELwctJ7mdqhcyy1xEc4SRFHUXvxTp661YaVKAjfRLZ9cCqS6tn32A==";
      };
    };
    "relative-url-1.0.2" = {
      name = "relative-url";
      packageName = "relative-url";
      version = "1.0.2";
      src = fetchurl {
        url = "http://registry.npmjs.org/relative-url/-/relative-url-1.0.2.tgz";
        sha1 = "d21c52a72d6061018bcee9f9c9fc106bf7d65287";
      };
    };
    "remark-3.2.3" = {
      name = "remark";
      packageName = "remark";
      version = "3.2.3";
      src = fetchurl {
        url = "https://registry.npmjs.org/remark/-/remark-3.2.3.tgz";
        sha1 = "802a38c3aa98c9e1e3ea015eeba211d27cb65e1f";
      };
    };
    "remark-html-2.0.2" = {
      name = "remark-html";
      packageName = "remark-html";
      version = "2.0.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/remark-html/-/remark-html-2.0.2.tgz";
        sha1 = "592a347bdd3d5881f4f080c98b5b152fb1407a92";
      };
    };
    "remove-trailing-separator-1.1.0" = {
      name = "remove-trailing-separator";
      packageName = "remove-trailing-separator";
      version = "1.1.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/remove-trailing-separator/-/remove-trailing-separator-1.1.0.tgz";
        sha1 = "c24bce2a283adad5bc3f58e0d48249b92379d8ef";
      };
    };
    "repeat-element-1.1.3" = {
      name = "repeat-element";
      packageName = "repeat-element";
      version = "1.1.3";
      src = fetchurl {
        url = "https://registry.npmjs.org/repeat-element/-/repeat-element-1.1.3.tgz";
        sha512 = "ahGq0ZnV5m5XtZLMb+vP76kcAM5nkLqk0lpqAuojSKGgQtn4eRi4ZZGm2olo2zKFH+sMsWaqOCW1dqAnOru72g==";
      };
    };
    "repeat-string-1.6.1" = {
      name = "repeat-string";
      packageName = "repeat-string";
      version = "1.6.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/repeat-string/-/repeat-string-1.6.1.tgz";
        sha1 = "8dcae470e1c88abc2d600fff4a776286da75e637";
      };
    };
    "repeating-2.0.1" = {
      name = "repeating";
      packageName = "repeating";
      version = "2.0.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/repeating/-/repeating-2.0.1.tgz";
        sha1 = "5214c53a926d3552707527fbab415dbc08d06dda";
      };
    };
    "request-2.88.0" = {
      name = "request";
      packageName = "request";
      version = "2.88.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/request/-/request-2.88.0.tgz";
        sha512 = "NAqBSrijGLZdM0WZNsInLJpkJokL72XYjUpnB0iwsRgxh7dB6COrHnTBNwN0E+lHDAJzu7kLAkDeY08z2/A0hg==";
      };
    };
    "resolve-1.7.1" = {
      name = "resolve";
      packageName = "resolve";
      version = "1.7.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/resolve/-/resolve-1.7.1.tgz";
        sha512 = "c7rwLofp8g1U+h1KNyHL/jicrKg1Ek4q+Lr33AL65uZTinUZHe30D5HlyN5V9NW0JX1D5dXQ4jqW5l7Sy/kGfw==";
      };
    };
    "resolve-url-0.2.1" = {
      name = "resolve-url";
      packageName = "resolve-url";
      version = "0.2.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/resolve-url/-/resolve-url-0.2.1.tgz";
        sha1 = "2c637fe77c893afd2a663fe21aa9080068e2052a";
      };
    };
    "restore-cursor-1.0.1" = {
      name = "restore-cursor";
      packageName = "restore-cursor";
      version = "1.0.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/restore-cursor/-/restore-cursor-1.0.1.tgz";
        sha1 = "34661f46886327fed2991479152252df92daa541";
      };
    };
    "restore-cursor-2.0.0" = {
      name = "restore-cursor";
      packageName = "restore-cursor";
      version = "2.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/restore-cursor/-/restore-cursor-2.0.0.tgz";
        sha1 = "9f7ee287f82fd326d4fd162923d62129eee0dfaf";
      };
    };
    "resumer-0.0.0" = {
      name = "resumer";
      packageName = "resumer";
      version = "0.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/resumer/-/resumer-0.0.0.tgz";
        sha1 = "f1e8f461e4064ba39e82af3cdc2a8c893d076759";
      };
    };
    "ret-0.1.15" = {
      name = "ret";
      packageName = "ret";
      version = "0.1.15";
      src = fetchurl {
        url = "https://registry.npmjs.org/ret/-/ret-0.1.15.tgz";
        sha512 = "TTlYpa+OL+vMMNG24xSlQGEJ3B/RzEfUlLct7b5G/ytav+wPrplCpVMFuwzXbkecJrb6IYo1iFb0S9v37754mg==";
      };
    };
    "revalidator-0.1.8" = {
      name = "revalidator";
      packageName = "revalidator";
      version = "0.1.8";
      src = fetchurl {
        url = "https://registry.npmjs.org/revalidator/-/revalidator-0.1.8.tgz";
        sha1 = "fece61bfa0c1b52a206bd6b18198184bdd523a3b";
      };
    };
    "rimraf-2.2.8" = {
      name = "rimraf";
      packageName = "rimraf";
      version = "2.2.8";
      src = fetchurl {
        url = "http://registry.npmjs.org/rimraf/-/rimraf-2.2.8.tgz";
        sha1 = "e439be2aaee327321952730f99a8929e4fc50582";
      };
    };
    "rimraf-2.4.5" = {
      name = "rimraf";
      packageName = "rimraf";
      version = "2.4.5";
      src = fetchurl {
        url = "http://registry.npmjs.org/rimraf/-/rimraf-2.4.5.tgz";
        sha1 = "ee710ce5d93a8fdb856fb5ea8ff0e2d75934b2da";
      };
    };
    "rimraf-2.6.2" = {
      name = "rimraf";
      packageName = "rimraf";
      version = "2.6.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/rimraf/-/rimraf-2.6.2.tgz";
        sha512 = "lreewLK/BlghmxtfH36YYVg1i8IAce4TI7oao75I1g245+6BctqTVQiBP3YUJ9C6DQOXJmkYR9X9fCLtCOJc5w==";
      };
    };
    "run-async-2.3.0" = {
      name = "run-async";
      packageName = "run-async";
      version = "2.3.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/run-async/-/run-async-2.3.0.tgz";
        sha1 = "0371ab4ae0bdd720d4166d7dfda64ff7a445a6c0";
      };
    };
    "rw-1.3.3" = {
      name = "rw";
      packageName = "rw";
      version = "1.3.3";
      src = fetchurl {
        url = "https://registry.npmjs.org/rw/-/rw-1.3.3.tgz";
        sha1 = "3f862dfa91ab766b14885ef4d01124bfda074fb4";
      };
    };
    "rx-4.1.0" = {
      name = "rx";
      packageName = "rx";
      version = "4.1.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/rx/-/rx-4.1.0.tgz";
        sha1 = "a5f13ff79ef3b740fe30aa803fb09f98805d4782";
      };
    };
    "safe-buffer-5.1.2" = {
      name = "safe-buffer";
      packageName = "safe-buffer";
      version = "5.1.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/safe-buffer/-/safe-buffer-5.1.2.tgz";
        sha512 = "Gd2UZBJDkXlY7GbJxfsE8/nvKkUEU1G38c1siN6QP6a9PT9MmHB8GnpscSmMJSoF8LOIrt8ud/wPtojys4G6+g==";
      };
    };
    "safe-regex-1.1.0" = {
      name = "safe-regex";
      packageName = "safe-regex";
      version = "1.1.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/safe-regex/-/safe-regex-1.1.0.tgz";
        sha1 = "40a3669f3b077d1e943d44629e157dd48023bf2e";
      };
    };
    "safer-buffer-2.1.2" = {
      name = "safer-buffer";
      packageName = "safer-buffer";
      version = "2.1.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/safer-buffer/-/safer-buffer-2.1.2.tgz";
        sha512 = "YZo3K82SD7Riyi0E1EQPojLz7kpepnSQI9IyPbHHg1XXXevb5dJI7tpyN2ADxGcQbHG7vcyRHk0cbwqcQriUtg==";
      };
    };
    "scuttle-shell-git://github.com/ssbc/scuttle-shell#master" = {
      name = "scuttle-shell";
      packageName = "scuttle-shell";
      version = "0.1.0";
      src = fetchgit {
        url = "git://github.com/ssbc/scuttle-shell";
        rev = "dbc0192c7e9be5790de350e90f4558546a99bc97";
        sha256 = "daa0278d9d722e57fb1534c29f4fa6f0964c0da95137cc0a29a273b3dd09b9a7";
      };
    };
    "scuttle-tag-0.3.0" = {
      name = "scuttle-tag";
      packageName = "scuttle-tag";
      version = "0.3.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/scuttle-tag/-/scuttle-tag-0.3.0.tgz";
        sha512 = "tNEM6LRQiCpzQPyryWahzvcp7aCkYgVJ7N1MveKIXAJDCCYk2qtLx4ippD4lkIHWuez5f7bTRszAO89g6zSCdg==";
      };
    };
    "scuttlebot-13.0.0" = {
      name = "scuttlebot";
      packageName = "scuttlebot";
      version = "13.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/scuttlebot/-/scuttlebot-13.0.0.tgz";
        sha512 = "niRO3ySzMcXXIrx88zBMdLZ53zvC3DALiFZL42hELL0nE3ohGlhSYQNYefgPB1KiVyMomuNvlhusw9yQsYs/dQ==";
      };
    };
    "secret-handshake-1.1.14" = {
      name = "secret-handshake";
      packageName = "secret-handshake";
      version = "1.1.14";
      src = fetchurl {
        url = "https://registry.npmjs.org/secret-handshake/-/secret-handshake-1.1.14.tgz";
        sha512 = "e4hiMTahaLiN5XKap1YrifoyT8yRu9yQEZrMTglTBgq8Lv8iChFKLpbmXYeNxy2rCnutuWaQDFbp3sBgl4NQ4g==";
      };
    };
    "secret-stack-4.2.4" = {
      name = "secret-stack";
      packageName = "secret-stack";
      version = "4.2.4";
      src = fetchurl {
        url = "https://registry.npmjs.org/secret-stack/-/secret-stack-4.2.4.tgz";
        sha512 = "HUG0YujOk20t7CeQz75dz79XmQQl1qsxEVngF+3l5ZNEHNEO6TJHNKo0OAxAWGKzSWiJDkzKLSnHqqZFNKcrPA==";
      };
    };
    "secure-scuttlebutt-18.5.0" = {
      name = "secure-scuttlebutt";
      packageName = "secure-scuttlebutt";
      version = "18.5.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/secure-scuttlebutt/-/secure-scuttlebutt-18.5.0.tgz";
        sha512 = "b50xp0XAWtd6y4ygw2RRgDxaFNgGqC7XahRt/mC4XhiCe6HoTjpt6j07HVnTDcRtLzNiCPKlFJnYySFTFay2lQ==";
      };
    };
    "semver-5.1.1" = {
      name = "semver";
      packageName = "semver";
      version = "5.1.1";
      src = fetchurl {
        url = "http://registry.npmjs.org/semver/-/semver-5.1.1.tgz";
        sha1 = "a3292a373e6f3e0798da0b20641b9a9c5bc47e19";
      };
    };
    "semver-5.6.0" = {
      name = "semver";
      packageName = "semver";
      version = "5.6.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/semver/-/semver-5.6.0.tgz";
        sha512 = "RS9R6R35NYgQn++fkDWaOmqGoj4Ek9gGs+DPxNUZKuwE183xjJroKvyo1IzVFeXvUrvmALy6FWD5xrdJT25gMg==";
      };
    };
    "separator-escape-0.0.0" = {
      name = "separator-escape";
      packageName = "separator-escape";
      version = "0.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/separator-escape/-/separator-escape-0.0.0.tgz";
        sha1 = "e433676932020454e3c14870c517ea1de56c2fa4";
      };
    };
    "set-blocking-2.0.0" = {
      name = "set-blocking";
      packageName = "set-blocking";
      version = "2.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/set-blocking/-/set-blocking-2.0.0.tgz";
        sha1 = "045f9782d011ae9a6803ddd382b24392b3d890f7";
      };
    };
    "set-value-0.4.3" = {
      name = "set-value";
      packageName = "set-value";
      version = "0.4.3";
      src = fetchurl {
        url = "https://registry.npmjs.org/set-value/-/set-value-0.4.3.tgz";
        sha1 = "7db08f9d3d22dc7f78e53af3c3bf4666ecdfccf1";
      };
    };
    "set-value-2.0.0" = {
      name = "set-value";
      packageName = "set-value";
      version = "2.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/set-value/-/set-value-2.0.0.tgz";
        sha512 = "hw0yxk9GT/Hr5yJEYnHNKYXkIA8mVJgd9ditYZCe16ZczcaELYYcfvaXesNACk2O8O0nTiPQcQhGUQj8JLzeeg==";
      };
    };
    "sha.js-2.4.11" = {
      name = "sha.js";
      packageName = "sha.js";
      version = "2.4.11";
      src = fetchurl {
        url = "http://registry.npmjs.org/sha.js/-/sha.js-2.4.11.tgz";
        sha512 = "QMEp5B7cftE7APOjk5Y6xgrbWu+WkLVQwk8JNjZ8nKRciZaByEW6MubieAiToS7+dwvrjGhH8jRXz3MVd0AYqQ==";
      };
    };
    "sha.js-2.4.5" = {
      name = "sha.js";
      packageName = "sha.js";
      version = "2.4.5";
      src = fetchurl {
        url = "http://registry.npmjs.org/sha.js/-/sha.js-2.4.5.tgz";
        sha1 = "27d171efcc82a118b99639ff581660242b506e7c";
      };
    };
    "shebang-command-1.2.0" = {
      name = "shebang-command";
      packageName = "shebang-command";
      version = "1.2.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/shebang-command/-/shebang-command-1.2.0.tgz";
        sha1 = "44aac65b695b03398968c39f363fee5deafdf1ea";
      };
    };
    "shebang-regex-1.0.0" = {
      name = "shebang-regex";
      packageName = "shebang-regex";
      version = "1.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/shebang-regex/-/shebang-regex-1.0.0.tgz";
        sha1 = "da42f49740c0b42db2ca9728571cb190c98efea3";
      };
    };
    "shell-env-0.3.0" = {
      name = "shell-env";
      packageName = "shell-env";
      version = "0.3.0";
      src = fetchurl {
        url = "http://registry.npmjs.org/shell-env/-/shell-env-0.3.0.tgz";
        sha1 = "2250339022989165bda4eb7bf383afeaaa92dc34";
      };
    };
    "shell-path-2.1.0" = {
      name = "shell-path";
      packageName = "shell-path";
      version = "2.1.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/shell-path/-/shell-path-2.1.0.tgz";
        sha1 = "ea7d06ae1070874a1bac5c65bb9bdd62e4f67a38";
      };
    };
    "shellsubstitute-1.2.0" = {
      name = "shellsubstitute";
      packageName = "shellsubstitute";
      version = "1.2.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/shellsubstitute/-/shellsubstitute-1.2.0.tgz";
        sha1 = "e4f702a50c518b0f6fe98451890d705af29b6b70";
      };
    };
    "shellwords-0.1.1" = {
      name = "shellwords";
      packageName = "shellwords";
      version = "0.1.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/shellwords/-/shellwords-0.1.1.tgz";
        sha512 = "vFwSUfQvqybiICwZY5+DAWIPLKsWO31Q91JSKl3UYv+K5c2QRPzn0qzec6QPu1Qc9eHYItiP3NdJqNVqetYAww==";
      };
    };
    "shvl-1.3.1" = {
      name = "shvl";
      packageName = "shvl";
      version = "1.3.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/shvl/-/shvl-1.3.1.tgz";
        sha512 = "+rRPP46hloYUAEImJcqprUgXu+05Ikqr4h4V+w5i2zJy37nAqtkQKufs3+3S2fDq6JNRrHMIQhB/Vaex+jgAAw==";
      };
    };
    "signal-exit-3.0.2" = {
      name = "signal-exit";
      packageName = "signal-exit";
      version = "3.0.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/signal-exit/-/signal-exit-3.0.2.tgz";
        sha1 = "b5fdc08f1287ea1178628e415e25132b73646c6d";
      };
    };
    "simple-concat-1.0.0" = {
      name = "simple-concat";
      packageName = "simple-concat";
      version = "1.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/simple-concat/-/simple-concat-1.0.0.tgz";
        sha1 = "7344cbb8b6e26fb27d66b2fc86f9f6d5997521c6";
      };
    };
    "simple-get-2.8.1" = {
      name = "simple-get";
      packageName = "simple-get";
      version = "2.8.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/simple-get/-/simple-get-2.8.1.tgz";
        sha512 = "lSSHRSw3mQNUGPAYRqo7xy9dhKmxFXIjLjp4KHpf99GEH2VH7C3AM+Qfx6du6jhfUi6Vm7XnbEVEf7Wb6N8jRw==";
      };
    };
    "slash-1.0.0" = {
      name = "slash";
      packageName = "slash";
      version = "1.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/slash/-/slash-1.0.0.tgz";
        sha1 = "c41f2f6c39fc16d1cd17ad4b5d896114ae470d55";
      };
    };
    "smart-buffer-4.0.1" = {
      name = "smart-buffer";
      packageName = "smart-buffer";
      version = "4.0.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/smart-buffer/-/smart-buffer-4.0.1.tgz";
        sha512 = "RFqinRVJVcCAL9Uh1oVqE6FZkqsyLiVOYEZ20TqIOjuX7iFVJ+zsbs4RIghnw/pTs7mZvt8ZHhvm1ZUrR4fykg==";
      };
    };
    "snapdragon-0.8.2" = {
      name = "snapdragon";
      packageName = "snapdragon";
      version = "0.8.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/snapdragon/-/snapdragon-0.8.2.tgz";
        sha512 = "FtyOnWN/wCHTVXOMwvSv26d+ko5vWlIDD6zoUJ7LW8vh+ZBC8QdljveRP+crNrtBwioEUWy/4dMtbBjA4ioNlg==";
      };
    };
    "snapdragon-node-2.1.1" = {
      name = "snapdragon-node";
      packageName = "snapdragon-node";
      version = "2.1.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/snapdragon-node/-/snapdragon-node-2.1.1.tgz";
        sha512 = "O27l4xaMYt/RSQ5TR3vpWCAB5Kb/czIcqUFOM/C4fYcLnbZUc1PkjTAMjof2pBWaSTwOUd6qUHcFGVGj7aIwnw==";
      };
    };
    "snapdragon-util-3.0.1" = {
      name = "snapdragon-util";
      packageName = "snapdragon-util";
      version = "3.0.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/snapdragon-util/-/snapdragon-util-3.0.1.tgz";
        sha512 = "mbKkMdQKsjX4BAL4bRYTj21edOf8cN7XHdYUJEe+Zn99hVEYcMvKPct1IqNe7+AZPirn8BCDOQBHQZknqmKlZQ==";
      };
    };
    "socks-2.2.1" = {
      name = "socks";
      packageName = "socks";
      version = "2.2.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/socks/-/socks-2.2.1.tgz";
        sha512 = "0GabKw7n9mI46vcNrVfs0o6XzWzjVa3h6GaSo2UPxtWAROXUWavfJWh1M4PR5tnE0dcnQXZIDFP4yrAysLze/w==";
      };
    };
    "sodium-browserify-1.2.4" = {
      name = "sodium-browserify";
      packageName = "sodium-browserify";
      version = "1.2.4";
      src = fetchurl {
        url = "https://registry.npmjs.org/sodium-browserify/-/sodium-browserify-1.2.4.tgz";
        sha512 = "IYcxKje/uf/c3a7VhZYJLlUxWMcktfbD4AjqHjUD1/VWKjj0Oq5wNbX8wjJOWVO9UhUMqJQiOn2xFbzKWBmy5w==";
      };
    };
    "sodium-browserify-tweetnacl-0.2.3" = {
      name = "sodium-browserify-tweetnacl";
      packageName = "sodium-browserify-tweetnacl";
      version = "0.2.3";
      src = fetchurl {
        url = "https://registry.npmjs.org/sodium-browserify-tweetnacl/-/sodium-browserify-tweetnacl-0.2.3.tgz";
        sha1 = "b5537ffcbb9f74ebc443b8b6a211b291e8fcbc8e";
      };
    };
    "sodium-chloride-1.1.2" = {
      name = "sodium-chloride";
      packageName = "sodium-chloride";
      version = "1.1.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/sodium-chloride/-/sodium-chloride-1.1.2.tgz";
        sha512 = "8AVzr9VHueXqfzfkzUA0aXe/Q4XG3UTmhlP6Pt+HQc5bbAPIJFo7ZIMh9tvn+99QuiMcyDJdYumegGAczl0N+g==";
      };
    };
    "sodium-native-2.2.2" = {
      name = "sodium-native";
      packageName = "sodium-native";
      version = "2.2.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/sodium-native/-/sodium-native-2.2.2.tgz";
        sha512 = "TdAa+PlmWki2Spx3TJyGFVkj6gLsxs5HV/i/j2COZ5INEaCmLz15NIHgUAT/GQ0KrG8Ddy6tkvuP7B5YJpmW6g==";
      };
    };
    "sort-keys-1.1.2" = {
      name = "sort-keys";
      packageName = "sort-keys";
      version = "1.1.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/sort-keys/-/sort-keys-1.1.2.tgz";
        sha1 = "441b6d4d346798f1b4e49e8920adfba0e543f9ad";
      };
    };
    "sort-keys-length-1.0.1" = {
      name = "sort-keys-length";
      packageName = "sort-keys-length";
      version = "1.0.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/sort-keys-length/-/sort-keys-length-1.0.1.tgz";
        sha1 = "9cb6f4f4e9e48155a6aa0671edd336ff1479a188";
      };
    };
    "source-map-0.5.7" = {
      name = "source-map";
      packageName = "source-map";
      version = "0.5.7";
      src = fetchurl {
        url = "https://registry.npmjs.org/source-map/-/source-map-0.5.7.tgz";
        sha1 = "8a039d2d1021d22d1ea14c80d8ea468ba2ef3fcc";
      };
    };
    "source-map-resolve-0.5.2" = {
      name = "source-map-resolve";
      packageName = "source-map-resolve";
      version = "0.5.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/source-map-resolve/-/source-map-resolve-0.5.2.tgz";
        sha512 = "MjqsvNwyz1s0k81Goz/9vRBe9SZdB09Bdw+/zYyO+3CuPk6fouTaxscHkgtE8jKvf01kVfl8riHzERQ/kefaSA==";
      };
    };
    "source-map-support-0.4.18" = {
      name = "source-map-support";
      packageName = "source-map-support";
      version = "0.4.18";
      src = fetchurl {
        url = "https://registry.npmjs.org/source-map-support/-/source-map-support-0.4.18.tgz";
        sha512 = "try0/JqxPLF9nOjvSta7tVondkP5dwgyLDjVoyMDlmjugT2lRZ1OfsrYTkCd2hkDnJTKRbO/Rl3orm8vlsUzbA==";
      };
    };
    "source-map-url-0.4.0" = {
      name = "source-map-url";
      packageName = "source-map-url";
      version = "0.4.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/source-map-url/-/source-map-url-0.4.0.tgz";
        sha1 = "3e935d7ddd73631b97659956d55128e87b5084a3";
      };
    };
    "split-buffer-1.0.0" = {
      name = "split-buffer";
      packageName = "split-buffer";
      version = "1.0.0";
      src = fetchurl {
        url = "http://registry.npmjs.org/split-buffer/-/split-buffer-1.0.0.tgz";
        sha1 = "b7e8e0ab51345158b72c1f6dbef2406d51f1d027";
      };
    };
    "split-string-3.1.0" = {
      name = "split-string";
      packageName = "split-string";
      version = "3.1.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/split-string/-/split-string-3.1.0.tgz";
        sha512 = "NzNVhJDYpwceVVii8/Hu6DKfD2G+NrQHlS/V/qgv763EYudVwEcMQNxd2lh+0VrUByXN/oJkl5grOhYWvQUYiw==";
      };
    };
    "ssb-about-0.1.2" = {
      name = "ssb-about";
      packageName = "ssb-about";
      version = "0.1.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/ssb-about/-/ssb-about-0.1.2.tgz";
        sha512 = "/dvDJZdvukOHTjWDAUDdi5euG3fHIgW0z8xIWI+n+C3ugDCPad24josbRBMtgJ6e5piKOzstTlumIqfekvv8YQ==";
      };
    };
    "ssb-backlinks-0.7.3" = {
      name = "ssb-backlinks";
      packageName = "ssb-backlinks";
      version = "0.7.3";
      src = fetchurl {
        url = "https://registry.npmjs.org/ssb-backlinks/-/ssb-backlinks-0.7.3.tgz";
        sha512 = "84s5phSVyZsYV0FTmBJvICPgOMuu8ouzukG8Gz2XtuOui95GBP/G7UIBURgYVS82XA6g9xPA/jf38fsMxid38Q==";
      };
    };
    "ssb-blobs-1.1.5" = {
      name = "ssb-blobs";
      packageName = "ssb-blobs";
      version = "1.1.5";
      src = fetchurl {
        url = "https://registry.npmjs.org/ssb-blobs/-/ssb-blobs-1.1.5.tgz";
        sha512 = "DeeInkFU8oN1mYlPVrqrm9tupf6wze4HuowK7N2vv/O+UeSLuYPU1p4HrxSqdAPvUabr0OtvbFA6z1T4nw+9fw==";
      };
    };
    "ssb-chess-db-1.0.5" = {
      name = "ssb-chess-db";
      packageName = "ssb-chess-db";
      version = "1.0.5";
      src = fetchurl {
        url = "https://registry.npmjs.org/ssb-chess-db/-/ssb-chess-db-1.0.5.tgz";
        sha512 = "TiUPqIWY7TqSQyqDidl152TEqSEMqv3G9UZe6WY4tdmRUgfVPpMigWp6hAKKOCt3X+BqLSknk5X/mW8wTm754g==";
      };
    };
    "ssb-client-4.6.0" = {
      name = "ssb-client";
      packageName = "ssb-client";
      version = "4.6.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/ssb-client/-/ssb-client-4.6.0.tgz";
        sha512 = "LyH5Y/U7xvafmAuG1puyhNv4G3Ew9xC67dYgRX0wwbUf5iT422WB1Cvat9qGFAu3/BQbdctXtdEQPxaAn0+hYA==";
      };
    };
    "ssb-config-2.3.6" = {
      name = "ssb-config";
      packageName = "ssb-config";
      version = "2.3.6";
      src = fetchurl {
        url = "https://registry.npmjs.org/ssb-config/-/ssb-config-2.3.6.tgz";
        sha512 = "gR6og13QBkHxoeGcqVtD4MDPi+4UM2SRadglTIgHRs24lzRhk7YyI9oCESOMYtVmR09i4X24+LruBZbVkyXLBw==";
      };
    };
    "ssb-ebt-5.2.3" = {
      name = "ssb-ebt";
      packageName = "ssb-ebt";
      version = "5.2.3";
      src = fetchurl {
        url = "https://registry.npmjs.org/ssb-ebt/-/ssb-ebt-5.2.3.tgz";
        sha512 = "LTIry3qRZRLqv3l97tcd22dNiLjZHz7Ynot0OQFG10zL4jsECSkSxMUqSwrFUTfZEySUxhAx92TDcafDy+/J3A==";
      };
    };
    "ssb-friends-3.1.3" = {
      name = "ssb-friends";
      packageName = "ssb-friends";
      version = "3.1.3";
      src = fetchurl {
        url = "https://registry.npmjs.org/ssb-friends/-/ssb-friends-3.1.3.tgz";
        sha512 = "bufgvAcqjAyjKfmh788dr3fV9YYrIgdkIhfETPHidbgIKgx15clNUzjP/s7FZk2PwwrjHyQ54kE0BR2em6u/nQ==";
      };
    };
    "ssb-keys-7.1.3" = {
      name = "ssb-keys";
      packageName = "ssb-keys";
      version = "7.1.3";
      src = fetchurl {
        url = "https://registry.npmjs.org/ssb-keys/-/ssb-keys-7.1.3.tgz";
        sha512 = "f66vIZ3LkeMx73enLTkPC9ecTUcUrjtVHvRt45nDmubGMom21Z82JQLWYbQ++09v3JG3B4XEir8inhv6AAISSQ==";
      };
    };
    "ssb-links-3.0.3" = {
      name = "ssb-links";
      packageName = "ssb-links";
      version = "3.0.3";
      src = fetchurl {
        url = "http://registry.npmjs.org/ssb-links/-/ssb-links-3.0.3.tgz";
        sha512 = "x09ShIMjwvdZI7aDZm8kc1v5YCGZa9ulCOoxrf/RYJ98s5gbTfO9CBCzeMBAeQ5kRwSuKjiOxJHdeEBkj4Y6hw==";
      };
    };
    "ssb-marked-0.7.4" = {
      name = "ssb-marked";
      packageName = "ssb-marked";
      version = "0.7.4";
      src = fetchurl {
        url = "https://registry.npmjs.org/ssb-marked/-/ssb-marked-0.7.4.tgz";
        sha1 = "31714f16548531c99a03a24e22c7e1ebbbce7875";
      };
    };
    "ssb-meme-1.0.4" = {
      name = "ssb-meme";
      packageName = "ssb-meme";
      version = "1.0.4";
      src = fetchurl {
        url = "https://registry.npmjs.org/ssb-meme/-/ssb-meme-1.0.4.tgz";
        sha512 = "r4JAfdCY7tnRzMQNETdWfcm54FOe6bJMbpanp+9dQA76daLu1Jg3EijQ4jNtnDtv1WDMq1XcDTQyEtzVICrKBg==";
      };
    };
    "ssb-msg-content-1.0.1" = {
      name = "ssb-msg-content";
      packageName = "ssb-msg-content";
      version = "1.0.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/ssb-msg-content/-/ssb-msg-content-1.0.1.tgz";
        sha512 = "M6W0Ef+jif829USmGvh6XeS4lYb/F2lgFhfEoCE/md7ESILNOGidp8frJE2uVOzSr2wVRA265tPrnVb7rYHkug==";
      };
    };
    "ssb-msgs-5.2.0" = {
      name = "ssb-msgs";
      packageName = "ssb-msgs";
      version = "5.2.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/ssb-msgs/-/ssb-msgs-5.2.0.tgz";
        sha1 = "c681da5cd70c574c922dca4f03c521538135c243";
      };
    };
    "ssb-names-3.1.3" = {
      name = "ssb-names";
      packageName = "ssb-names";
      version = "3.1.3";
      src = fetchurl {
        url = "https://registry.npmjs.org/ssb-names/-/ssb-names-3.1.3.tgz";
        sha512 = "6VNuatPnWuZWvz2axty97e7EqqZQddFMbMd2E5FpFfVWZi8hzCtvxsDc5f/4kqgSWsr4bgbJ1Ffm2shSc0hkDA==";
      };
    };
    "ssb-ooo-1.0.9" = {
      name = "ssb-ooo";
      packageName = "ssb-ooo";
      version = "1.0.9";
      src = fetchurl {
        url = "http://registry.npmjs.org/ssb-ooo/-/ssb-ooo-1.0.9.tgz";
        sha1 = "2f3d99f85b8dc7a3841e9ff40a0b0a9b3fe76064";
      };
    };
    "ssb-private-0.2.3" = {
      name = "ssb-private";
      packageName = "ssb-private";
      version = "0.2.3";
      src = fetchurl {
        url = "https://registry.npmjs.org/ssb-private/-/ssb-private-0.2.3.tgz";
        sha512 = "SiLBKOB1hxkrohzOrRWURlzj6HvPFvr9LLd5P5I5C5KU/RtaWe79nYuFgjUFJFnjWw7X4szCy32/EZMihV1l/Q==";
      };
    };
    "ssb-query-2.3.0" = {
      name = "ssb-query";
      packageName = "ssb-query";
      version = "2.3.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/ssb-query/-/ssb-query-2.3.0.tgz";
        sha512 = "y4OA2MvGl1jU7bUTYsTmMNSqlPt4eh9401THUW1DO4aFyBFEWvpa3eKJHc8aTmaph2hutPPbdKgEFsWDzw26uw==";
      };
    };
    "ssb-ref-2.11.2" = {
      name = "ssb-ref";
      packageName = "ssb-ref";
      version = "2.11.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/ssb-ref/-/ssb-ref-2.11.2.tgz";
        sha512 = "40A+o3iNAgr/sMH4V6/f3l2dhzUb5ZhTwZdrlKFu1ti+uZrKNUkH/E8j5NIZpj2rDq0PDXkACSVJgPGwltfQRA==";
      };
    };
    "ssb-ref-2.12.0" = {
      name = "ssb-ref";
      packageName = "ssb-ref";
      version = "2.12.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/ssb-ref/-/ssb-ref-2.12.0.tgz";
        sha512 = "xcVFLYgvWkxZoNDCOQHLqgHYsjmfunVkdby9OPEygjufXbiW6zpnFTBqlqEBojBetxxtVdwCgZreD9kYXED/ZA==";
      };
    };
    "ssb-search-1.1.2" = {
      name = "ssb-search";
      packageName = "ssb-search";
      version = "1.1.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/ssb-search/-/ssb-search-1.1.2.tgz";
        sha512 = "k7CCfdugGYvNMZekGJXcCYuCdf7MEP+bBZr+AsZO5KqaNb4K9CuP6W1wGoKH6vkparhaCKc85jO46EbWsEoVDQ==";
      };
    };
    "ssb-sort-1.1.0" = {
      name = "ssb-sort";
      packageName = "ssb-sort";
      version = "1.1.0";
      src = fetchurl {
        url = "http://registry.npmjs.org/ssb-sort/-/ssb-sort-1.1.0.tgz";
        sha512 = "UGn0GXkcpno7rNYWJhywmtKDnbhAHT3Nj++tMFP0pJ5shKL8SiipGYnjpZ8nVW185HNsEdsS06yJPD4o3hQyDQ==";
      };
    };
    "ssb-tags-0.2.0" = {
      name = "ssb-tags";
      packageName = "ssb-tags";
      version = "0.2.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/ssb-tags/-/ssb-tags-0.2.0.tgz";
        sha512 = "17bI/59xSmaqlJXYYjYqfKi/Px7yYB0nKlPeFgKae5t2Rultp7VVXNj833HK5iXnv6J7lTpSzxgA/Jp9Jaj7Xg==";
      };
    };
    "ssb-talequery-2.0.1" = {
      name = "ssb-talequery";
      packageName = "ssb-talequery";
      version = "2.0.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/ssb-talequery/-/ssb-talequery-2.0.1.tgz";
        sha512 = "3Y8W6pi4W6pXW8qsGM+Kbc/5A4kQBlx6itUCdbMKsO3v1NdmpldsA/4GaXKWg+8vzXjEiRL451WLpZwYhtax+w==";
      };
    };
    "ssb-threads-3.0.0" = {
      name = "ssb-threads";
      packageName = "ssb-threads";
      version = "3.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/ssb-threads/-/ssb-threads-3.0.0.tgz";
        sha512 = "Dg7x+0QwATqGUjOGFJ+tvKasiwIB1RZz5Zs/j5WmT+cnFZPc70s8Tfnka1T7YyQx759/Lkxaofvi94TSJuOSvQ==";
      };
    };
    "ssb-typescript-1.3.0" = {
      name = "ssb-typescript";
      packageName = "ssb-typescript";
      version = "1.3.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/ssb-typescript/-/ssb-typescript-1.3.0.tgz";
        sha512 = "iS7QDG2Jn/o9jK8LzxmmxOfwx87e5HWP7IYVqn7I+YZxIAWOXl0Vn2c6A8/N9VkWGF/g1sO874nDpncnquUR1A==";
      };
    };
    "ssb-unread-1.0.1" = {
      name = "ssb-unread";
      packageName = "ssb-unread";
      version = "1.0.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/ssb-unread/-/ssb-unread-1.0.1.tgz";
        sha512 = "9F1PCmZolTNROBH3SHqkxEJDn32WtDN4TZ1zTkns4JpOe/Er8vEB6NUq7VGvq4RKScIOb5L8VLJskFIQOWQzGw==";
      };
    };
    "ssb-validate-3.0.11" = {
      name = "ssb-validate";
      packageName = "ssb-validate";
      version = "3.0.11";
      src = fetchurl {
        url = "https://registry.npmjs.org/ssb-validate/-/ssb-validate-3.0.11.tgz";
        sha512 = "mZPI9HKZtqPP7Qi26B0GR7HqYmmcELEaoj5zr8TlUcULg9BOZy7f4VSzcKZ36LIkvpuK2sfA6znxIlBLq78fjg==";
      };
    };
    "ssb-web-resolver-1.1.2" = {
      name = "ssb-web-resolver";
      packageName = "ssb-web-resolver";
      version = "1.1.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/ssb-web-resolver/-/ssb-web-resolver-1.1.2.tgz";
        sha1 = "0a997480d58c9120a885463aa1c8b11e89efe15e";
      };
    };
    "ssb-ws-2.1.1" = {
      name = "ssb-ws";
      packageName = "ssb-ws";
      version = "2.1.1";
      src = fetchurl {
        url = "http://registry.npmjs.org/ssb-ws/-/ssb-ws-2.1.1.tgz";
        sha512 = "1fK/jXI6lKZadRJDr49t+6yMmWynp6PFrADs3Whmy8IslnYGl83ujhlpRIBvCn1EuVHjV7yLsIiJ8a0X2Kg0DQ==";
      };
    };
    "ssb-ws-3.0.0" = {
      name = "ssb-ws";
      packageName = "ssb-ws";
      version = "3.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/ssb-ws/-/ssb-ws-3.0.0.tgz";
        sha512 = "Qna9Oa9+MYhv+Xtqmidb6xww2JZAdO6ZzidJleWbOLJTSV2QkkB7aAFpWdYst/N78ZhThPqT/mdgEmWpaCqTbw==";
      };
    };
    "sshpk-1.15.1" = {
      name = "sshpk";
      packageName = "sshpk";
      version = "1.15.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/sshpk/-/sshpk-1.15.1.tgz";
        sha512 = "mSdgNUaidk+dRU5MhYtN9zebdzF2iG0cNPWy8HG+W8y+fT1JnSkh0fzzpjOa0L7P8i1Rscz38t0h4gPcKz43xA==";
      };
    };
    "stack-0.1.0" = {
      name = "stack";
      packageName = "stack";
      version = "0.1.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/stack/-/stack-0.1.0.tgz";
        sha1 = "e923598a9be51e617682cb21cf1b2818a449ada2";
      };
    };
    "stack-trace-0.0.10" = {
      name = "stack-trace";
      packageName = "stack-trace";
      version = "0.0.10";
      src = fetchurl {
        url = "https://registry.npmjs.org/stack-trace/-/stack-trace-0.0.10.tgz";
        sha1 = "547c70b347e8d32b4e108ea1a2a159e5fdde19c0";
      };
    };
    "static-extend-0.1.2" = {
      name = "static-extend";
      packageName = "static-extend";
      version = "0.1.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/static-extend/-/static-extend-0.1.2.tgz";
        sha1 = "60809c39cbff55337226fd5e0b520f341f1fb5c6";
      };
    };
    "statistics-3.3.0" = {
      name = "statistics";
      packageName = "statistics";
      version = "3.3.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/statistics/-/statistics-3.3.0.tgz";
        sha1 = "ec7b4750ff03ab24a64dd9b357a78316bead78aa";
      };
    };
    "stream-progressbar-1.1.1" = {
      name = "stream-progressbar";
      packageName = "stream-progressbar";
      version = "1.1.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/stream-progressbar/-/stream-progressbar-1.1.1.tgz";
        sha512 = "2O227sBklxd5d7I2pqWBBr1gwWe37dPE4ml2pr2t0dfQ0TGxaAvO4U7RwQD21nbYGrWQa+Sd5ciKnwqssAmpog==";
      };
    };
    "stream-shift-1.0.0" = {
      name = "stream-shift";
      packageName = "stream-shift";
      version = "1.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/stream-shift/-/stream-shift-1.0.0.tgz";
        sha1 = "d5c752825e5367e786f78e18e445ea223a155952";
      };
    };
    "stream-to-pull-stream-1.7.2" = {
      name = "stream-to-pull-stream";
      packageName = "stream-to-pull-stream";
      version = "1.7.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/stream-to-pull-stream/-/stream-to-pull-stream-1.7.2.tgz";
        sha1 = "757609ae1cebd33c7432d4afbe31ff78650b9dde";
      };
    };
    "string-width-1.0.2" = {
      name = "string-width";
      packageName = "string-width";
      version = "1.0.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/string-width/-/string-width-1.0.2.tgz";
        sha1 = "118bdf5b8cdc51a2a7e70d211e07e2b0b9b107d3";
      };
    };
    "string-width-2.1.1" = {
      name = "string-width";
      packageName = "string-width";
      version = "2.1.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/string-width/-/string-width-2.1.1.tgz";
        sha512 = "nOqH59deCq9SRHlxq1Aw85Jnt4w6KvLKqWVik6oA9ZklXLNIOlqg4F2yrT1MVaTjAqvVwdfeZ7w7aCvJD7ugkw==";
      };
    };
    "string.prototype.trim-1.1.2" = {
      name = "string.prototype.trim";
      packageName = "string.prototype.trim";
      version = "1.1.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/string.prototype.trim/-/string.prototype.trim-1.1.2.tgz";
        sha1 = "d04de2c89e137f4d7d206f086b5ed2fae6be8cea";
      };
    };
    "string_decoder-0.10.31" = {
      name = "string_decoder";
      packageName = "string_decoder";
      version = "0.10.31";
      src = fetchurl {
        url = "https://registry.npmjs.org/string_decoder/-/string_decoder-0.10.31.tgz";
        sha1 = "62e203bc41766c6c28c9fc84301dab1c5310fa94";
      };
    };
    "string_decoder-1.1.1" = {
      name = "string_decoder";
      packageName = "string_decoder";
      version = "1.1.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/string_decoder/-/string_decoder-1.1.1.tgz";
        sha512 = "n/ShnvDi6FHbbVfviro+WojiFzv+s8MPMHBczVePfUpDJLwoLT0ht1l4YwBCbi8pJAveEEdnkHyPyTP/mzRfwg==";
      };
    };
    "stringify-entities-1.3.2" = {
      name = "stringify-entities";
      packageName = "stringify-entities";
      version = "1.3.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/stringify-entities/-/stringify-entities-1.3.2.tgz";
        sha512 = "nrBAQClJAPN2p+uGCVJRPIPakKeKWZ9GtBCmormE7pWOSlHat7+x5A8gx85M7HM5Dt0BP3pP5RhVW77WdbJJ3A==";
      };
    };
    "strip-ansi-3.0.1" = {
      name = "strip-ansi";
      packageName = "strip-ansi";
      version = "3.0.1";
      src = fetchurl {
        url = "http://registry.npmjs.org/strip-ansi/-/strip-ansi-3.0.1.tgz";
        sha1 = "6a385fb8853d952d5ff05d0e8aaf94278dc63dcf";
      };
    };
    "strip-ansi-4.0.0" = {
      name = "strip-ansi";
      packageName = "strip-ansi";
      version = "4.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/strip-ansi/-/strip-ansi-4.0.0.tgz";
        sha1 = "a8479022eb1ac368a871389b635262c505ee368f";
      };
    };
    "strip-eof-1.0.0" = {
      name = "strip-eof";
      packageName = "strip-eof";
      version = "1.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/strip-eof/-/strip-eof-1.0.0.tgz";
        sha1 = "bb43ff5598a6eb05d89b59fcd129c983313606bf";
      };
    };
    "strip-json-comments-2.0.1" = {
      name = "strip-json-comments";
      packageName = "strip-json-comments";
      version = "2.0.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/strip-json-comments/-/strip-json-comments-2.0.1.tgz";
        sha1 = "3c531942e908c2697c0ec344858c286c7ca0a60a";
      };
    };
    "supports-color-2.0.0" = {
      name = "supports-color";
      packageName = "supports-color";
      version = "2.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/supports-color/-/supports-color-2.0.0.tgz";
        sha1 = "535d045ce6b6363fa40117084629995e9df324c7";
      };
    };
    "tape-4.9.1" = {
      name = "tape";
      packageName = "tape";
      version = "4.9.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/tape/-/tape-4.9.1.tgz";
        sha512 = "6fKIXknLpoe/Jp4rzHKFPpJUHDHDqn8jus99IfPnHIjyz78HYlefTGD3b5EkbQzuLfaEvmfPK3IolLgq2xT3kw==";
      };
    };
    "tar-fs-1.16.3" = {
      name = "tar-fs";
      packageName = "tar-fs";
      version = "1.16.3";
      src = fetchurl {
        url = "https://registry.npmjs.org/tar-fs/-/tar-fs-1.16.3.tgz";
        sha512 = "NvCeXpYx7OsmOh8zIOP/ebG55zZmxLE0etfWRbWok+q2Qo8x/vOR/IJT1taADXPe+jsiu9axDb3X4B+iIgNlKw==";
      };
    };
    "tar-stream-1.6.2" = {
      name = "tar-stream";
      packageName = "tar-stream";
      version = "1.6.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/tar-stream/-/tar-stream-1.6.2.tgz";
        sha512 = "rzS0heiNf8Xn7/mpdSVVSMAWAoy9bfb1WOTYC78Z0UQKeKa/CWS8FOq0lKGNa8DWKAn9gxjCvMLYc5PGXYlK2A==";
      };
    };
    "text-table-0.2.0" = {
      name = "text-table";
      packageName = "text-table";
      version = "0.2.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/text-table/-/text-table-0.2.0.tgz";
        sha1 = "7f5ee823ae805207c00af2df4a84ec3fcfa570b4";
      };
    };
    "through-2.3.8" = {
      name = "through";
      packageName = "through";
      version = "2.3.8";
      src = fetchurl {
        url = "http://registry.npmjs.org/through/-/through-2.3.8.tgz";
        sha1 = "0dd4c9ffaabc357960b1b724115d7e0e86a2e1f5";
      };
    };
    "through2-2.0.3" = {
      name = "through2";
      packageName = "through2";
      version = "2.0.3";
      src = fetchurl {
        url = "https://registry.npmjs.org/through2/-/through2-2.0.3.tgz";
        sha1 = "0004569b37c7c74ba39c43f3ced78d1ad94140be";
      };
    };
    "tmp-0.0.33" = {
      name = "tmp";
      packageName = "tmp";
      version = "0.0.33";
      src = fetchurl {
        url = "https://registry.npmjs.org/tmp/-/tmp-0.0.33.tgz";
        sha512 = "jRCJlojKnZ3addtTOjdIqoRuPEKBvNXcGYqzO6zWZX8KfKEpnGY5jfggJQ3EjKuu8D4bJRr0y+cYJFmYbImXGw==";
      };
    };
    "to-buffer-1.1.1" = {
      name = "to-buffer";
      packageName = "to-buffer";
      version = "1.1.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/to-buffer/-/to-buffer-1.1.1.tgz";
        sha512 = "lx9B5iv7msuFYE3dytT+KE5tap+rNYw+K4jVkb9R/asAb+pbBSM17jtunHplhBe6RRJdZx3Pn2Jph24O32mOVg==";
      };
    };
    "to-fast-properties-1.0.3" = {
      name = "to-fast-properties";
      packageName = "to-fast-properties";
      version = "1.0.3";
      src = fetchurl {
        url = "https://registry.npmjs.org/to-fast-properties/-/to-fast-properties-1.0.3.tgz";
        sha1 = "b83571fa4d8c25b82e231b06e3a3055de4ca1a47";
      };
    };
    "to-object-path-0.3.0" = {
      name = "to-object-path";
      packageName = "to-object-path";
      version = "0.3.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/to-object-path/-/to-object-path-0.3.0.tgz";
        sha1 = "297588b7b0e7e0ac08e04e672f85c1f4999e17af";
      };
    };
    "to-regex-3.0.2" = {
      name = "to-regex";
      packageName = "to-regex";
      version = "3.0.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/to-regex/-/to-regex-3.0.2.tgz";
        sha512 = "FWtleNAtZ/Ki2qtqej2CXTOayOH9bHDQF+Q48VpWyDXjbYxA4Yz8iDB31zXOBUlOHHKidDbqGVrTUvQMPmBGBw==";
      };
    };
    "to-regex-range-2.1.1" = {
      name = "to-regex-range";
      packageName = "to-regex-range";
      version = "2.1.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/to-regex-range/-/to-regex-range-2.1.1.tgz";
        sha1 = "7c80c17b9dfebe599e27367e0d4dd5590141db38";
      };
    };
    "to-vfile-1.0.0" = {
      name = "to-vfile";
      packageName = "to-vfile";
      version = "1.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/to-vfile/-/to-vfile-1.0.0.tgz";
        sha1 = "88defecd43adb2ef598625f0e3d59f7f342941ba";
      };
    };
    "tough-cookie-2.4.3" = {
      name = "tough-cookie";
      packageName = "tough-cookie";
      version = "2.4.3";
      src = fetchurl {
        url = "https://registry.npmjs.org/tough-cookie/-/tough-cookie-2.4.3.tgz";
        sha512 = "Q5srk/4vDM54WJsJio3XNn6K2sCG+CQ8G5Wz6bZhRZoAe/+TxjWB/GlFAnYEbkYVlON9FMk/fE3h2RLpPXo4lQ==";
      };
    };
    "trim-0.0.1" = {
      name = "trim";
      packageName = "trim";
      version = "0.0.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/trim/-/trim-0.0.1.tgz";
        sha1 = "5858547f6b290757ee95cccc666fb50084c460dd";
      };
    };
    "trim-lines-1.1.1" = {
      name = "trim-lines";
      packageName = "trim-lines";
      version = "1.1.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/trim-lines/-/trim-lines-1.1.1.tgz";
        sha512 = "X+eloHbgJGxczUk1WSjIvn7aC9oN3jVE3rQfRVKcgpavi3jxtCn0VVKtjOBj64Yop96UYn/ujJRpTbCdAF1vyg==";
      };
    };
    "trim-right-1.0.1" = {
      name = "trim-right";
      packageName = "trim-right";
      version = "1.0.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/trim-right/-/trim-right-1.0.1.tgz";
        sha1 = "cb2e1203067e0c8de1f614094b9fe45704ea6003";
      };
    };
    "trim-trailing-lines-1.1.1" = {
      name = "trim-trailing-lines";
      packageName = "trim-trailing-lines";
      version = "1.1.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/trim-trailing-lines/-/trim-trailing-lines-1.1.1.tgz";
        sha512 = "bWLv9BbWbbd7mlqqs2oQYnLD/U/ZqeJeJwbO0FG2zA1aTq+HTvxfHNKFa/HGCVyJpDiioUYaBhfiT6rgk+l4mg==";
      };
    };
    "tunnel-agent-0.6.0" = {
      name = "tunnel-agent";
      packageName = "tunnel-agent";
      version = "0.6.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/tunnel-agent/-/tunnel-agent-0.6.0.tgz";
        sha1 = "27a5dea06b36b04a0a9966774b290868f0fc40fd";
      };
    };
    "tweetnacl-0.14.5" = {
      name = "tweetnacl";
      packageName = "tweetnacl";
      version = "0.14.5";
      src = fetchurl {
        url = "https://registry.npmjs.org/tweetnacl/-/tweetnacl-0.14.5.tgz";
        sha1 = "5ae68177f192d4456269d108afa93ff8743f4f64";
      };
    };
    "tweetnacl-auth-0.3.1" = {
      name = "tweetnacl-auth";
      packageName = "tweetnacl-auth";
      version = "0.3.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/tweetnacl-auth/-/tweetnacl-auth-0.3.1.tgz";
        sha1 = "b75bc2df15649bb84e8b9aa3c0669c6c4bce0d25";
      };
    };
    "typedarray-0.0.6" = {
      name = "typedarray";
      packageName = "typedarray";
      version = "0.0.6";
      src = fetchurl {
        url = "https://registry.npmjs.org/typedarray/-/typedarray-0.0.6.tgz";
        sha1 = "867ac74e3864187b1d3d47d996a78ec5c8830777";
      };
    };
    "typedarray-to-buffer-3.1.5" = {
      name = "typedarray-to-buffer";
      packageName = "typedarray-to-buffer";
      version = "3.1.5";
      src = fetchurl {
        url = "https://registry.npmjs.org/typedarray-to-buffer/-/typedarray-to-buffer-3.1.5.tgz";
        sha512 = "zdu8XMNEDepKKR+XYOXAVPtWui0ly0NtohUscw+UmaHiAWT8hrV1rr//H6V+0DvJ3OQ19S979M0laLfX8rm82Q==";
      };
    };
    "typewise-1.0.3" = {
      name = "typewise";
      packageName = "typewise";
      version = "1.0.3";
      src = fetchurl {
        url = "https://registry.npmjs.org/typewise/-/typewise-1.0.3.tgz";
        sha1 = "1067936540af97937cc5dcf9922486e9fa284651";
      };
    };
    "typewise-core-1.2.0" = {
      name = "typewise-core";
      packageName = "typewise-core";
      version = "1.2.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/typewise-core/-/typewise-core-1.2.0.tgz";
        sha1 = "97eb91805c7f55d2f941748fa50d315d991ef195";
      };
    };
    "typewiselite-1.0.0" = {
      name = "typewiselite";
      packageName = "typewiselite";
      version = "1.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/typewiselite/-/typewiselite-1.0.0.tgz";
        sha1 = "c8882fa1bb1092c06005a97f34ef5c8508e3664e";
      };
    };
    "uint48be-1.0.2" = {
      name = "uint48be";
      packageName = "uint48be";
      version = "1.0.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/uint48be/-/uint48be-1.0.2.tgz";
        sha512 = "jNn1eEi81BLiZfJkjbiAKPDMj7iFrturKazqpBu0aJYLr6evgkn+9rgkX/gUwPBj5j2Ri5oUelsqC/S1zmpWBA==";
      };
    };
    "ultron-1.0.2" = {
      name = "ultron";
      packageName = "ultron";
      version = "1.0.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/ultron/-/ultron-1.0.2.tgz";
        sha1 = "ace116ab557cd197386a4e88f4685378c8b2e4fa";
      };
    };
    "unherit-1.1.1" = {
      name = "unherit";
      packageName = "unherit";
      version = "1.1.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/unherit/-/unherit-1.1.1.tgz";
        sha512 = "+XZuV691Cn4zHsK0vkKYwBEwB74T3IZIcxrgn2E4rKwTfFyI1zCh7X7grwh9Re08fdPlarIdyWgI8aVB3F5A5g==";
      };
    };
    "unified-2.1.4" = {
      name = "unified";
      packageName = "unified";
      version = "2.1.4";
      src = fetchurl {
        url = "https://registry.npmjs.org/unified/-/unified-2.1.4.tgz";
        sha1 = "14bc6cd40d98ffff75b405506bad873ecbbac3ba";
      };
    };
    "union-value-1.0.0" = {
      name = "union-value";
      packageName = "union-value";
      version = "1.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/union-value/-/union-value-1.0.0.tgz";
        sha1 = "5c71c34cb5bad5dcebe3ea0cd08207ba5aa1aea4";
      };
    };
    "unist-util-is-2.1.2" = {
      name = "unist-util-is";
      packageName = "unist-util-is";
      version = "2.1.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/unist-util-is/-/unist-util-is-2.1.2.tgz";
        sha512 = "YkXBK/H9raAmG7KXck+UUpnKiNmUdB+aBGrknfQ4EreE1banuzrKABx3jP6Z5Z3fMSPMQQmeXBlKpCbMwBkxVw==";
      };
    };
    "unist-util-visit-1.4.0" = {
      name = "unist-util-visit";
      packageName = "unist-util-visit";
      version = "1.4.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/unist-util-visit/-/unist-util-visit-1.4.0.tgz";
        sha512 = "FiGu34ziNsZA3ZUteZxSFaczIjGmksfSgdKqBfOejrrfzyUy5b7YrlzT1Bcvi+djkYDituJDy2XB7tGTeBieKw==";
      };
    };
    "unist-util-visit-parents-2.0.1" = {
      name = "unist-util-visit-parents";
      packageName = "unist-util-visit-parents";
      version = "2.0.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/unist-util-visit-parents/-/unist-util-visit-parents-2.0.1.tgz";
        sha512 = "6B0UTiMfdWql4cQ03gDTCSns+64Zkfo2OCbK31Ov0uMizEz+CJeAp0cgZVb5Fhmcd7Bct2iRNywejT0orpbqUA==";
      };
    };
    "unset-value-1.0.0" = {
      name = "unset-value";
      packageName = "unset-value";
      version = "1.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/unset-value/-/unset-value-1.0.0.tgz";
        sha1 = "8376873f7d2335179ffb1e6fc3a8ed0dfc8ab559";
      };
    };
    "untildify-2.1.0" = {
      name = "untildify";
      packageName = "untildify";
      version = "2.1.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/untildify/-/untildify-2.1.0.tgz";
        sha1 = "17eb2807987f76952e9c0485fc311d06a826a2e0";
      };
    };
    "unused-filename-1.0.0" = {
      name = "unused-filename";
      packageName = "unused-filename";
      version = "1.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/unused-filename/-/unused-filename-1.0.0.tgz";
        sha1 = "d340880f71ae2115ebaa1325bef05cc6684469c6";
      };
    };
    "urix-0.1.0" = {
      name = "urix";
      packageName = "urix";
      version = "0.1.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/urix/-/urix-0.1.0.tgz";
        sha1 = "da937f7a62e21fec1fd18d49b35c2935067a6c72";
      };
    };
    "url-join-2.0.5" = {
      name = "url-join";
      packageName = "url-join";
      version = "2.0.5";
      src = fetchurl {
        url = "https://registry.npmjs.org/url-join/-/url-join-2.0.5.tgz";
        sha1 = "5af22f18c052a000a48d7b82c5e9c2e2feeda728";
      };
    };
    "use-3.1.1" = {
      name = "use";
      packageName = "use";
      version = "3.1.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/use/-/use-3.1.1.tgz";
        sha512 = "cwESVXlO3url9YWlFW/TA9cshCEhtu7IKJ/p5soJ/gGpj7vbvFrAY/eIioQ6Dw23KjZhYgiIo8HOs1nQ2vr/oQ==";
      };
    };
    "user-home-2.0.0" = {
      name = "user-home";
      packageName = "user-home";
      version = "2.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/user-home/-/user-home-2.0.0.tgz";
        sha1 = "9c70bfd8169bc1dcbf48604e0f04b8b49cde9e9f";
      };
    };
    "util-deprecate-1.0.2" = {
      name = "util-deprecate";
      packageName = "util-deprecate";
      version = "1.0.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/util-deprecate/-/util-deprecate-1.0.2.tgz";
        sha1 = "450d4dc9fa70de732762fbd2d4a28981419a0ccf";
      };
    };
    "utile-0.3.0" = {
      name = "utile";
      packageName = "utile";
      version = "0.3.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/utile/-/utile-0.3.0.tgz";
        sha1 = "1352c340eb820e4d8ddba039a4fbfaa32ed4ef3a";
      };
    };
    "uuid-3.3.2" = {
      name = "uuid";
      packageName = "uuid";
      version = "3.3.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/uuid/-/uuid-3.3.2.tgz";
        sha512 = "yXJmeNaw3DnnKAOKJE51sL/ZaYfWJRl1pK9dr19YFCu0ObS231AB1/LbqTKRAQ5kw8A90rA6fr4riOUpTZvQZA==";
      };
    };
    "vee-validate-2.0.9" = {
      name = "vee-validate";
      packageName = "vee-validate";
      version = "2.0.9";
      src = fetchurl {
        url = "https://registry.npmjs.org/vee-validate/-/vee-validate-2.0.9.tgz";
        sha512 = "0qA3hrpF2jIBoEReWF8YkvG1ukJVS56+oyPTxOtb2OfB5d7iUuQiyboOOpXOvOViREHNXTsIcQ5XIQOMBff/wg==";
      };
    };
    "verror-1.10.0" = {
      name = "verror";
      packageName = "verror";
      version = "1.10.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/verror/-/verror-1.10.0.tgz";
        sha1 = "3a105ca17053af55d6e270c1f8288682e18da400";
      };
    };
    "vfile-1.4.0" = {
      name = "vfile";
      packageName = "vfile";
      version = "1.4.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/vfile/-/vfile-1.4.0.tgz";
        sha1 = "c0fd6fa484f8debdb771f68c31ed75d88da97fe7";
      };
    };
    "vfile-find-down-1.0.0" = {
      name = "vfile-find-down";
      packageName = "vfile-find-down";
      version = "1.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/vfile-find-down/-/vfile-find-down-1.0.0.tgz";
        sha1 = "84a4d66d03513f6140a84e0776ef0848d4f0ad95";
      };
    };
    "vfile-find-up-1.0.0" = {
      name = "vfile-find-up";
      packageName = "vfile-find-up";
      version = "1.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/vfile-find-up/-/vfile-find-up-1.0.0.tgz";
        sha1 = "5604da6fe453b34350637984eb5fe4909e280390";
      };
    };
    "vfile-reporter-1.5.0" = {
      name = "vfile-reporter";
      packageName = "vfile-reporter";
      version = "1.5.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/vfile-reporter/-/vfile-reporter-1.5.0.tgz";
        sha1 = "21a7009bfe55e24df8ff432aa5bf6f6efa74e418";
      };
    };
    "vfile-sort-1.0.0" = {
      name = "vfile-sort";
      packageName = "vfile-sort";
      version = "1.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/vfile-sort/-/vfile-sort-1.0.0.tgz";
        sha1 = "17ee491ba43e8951bb22913fcff32a7dc4d234d4";
      };
    };
    "vue-2.5.17" = {
      name = "vue";
      packageName = "vue";
      version = "2.5.17";
      src = fetchurl {
        url = "https://registry.npmjs.org/vue/-/vue-2.5.17.tgz";
        sha512 = "mFbcWoDIJi0w0Za4emyLiW72Jae0yjANHbCVquMKijcavBGypqlF7zHRgMa5k4sesdv7hv2rB4JPdZfR+TPfhQ==";
      };
    };
    "vue-electron-1.0.6" = {
      name = "vue-electron";
      packageName = "vue-electron";
      version = "1.0.6";
      src = fetchurl {
        url = "https://registry.npmjs.org/vue-electron/-/vue-electron-1.0.6.tgz";
        sha1 = "e798e03180b8933539defe31f92e53b9242b9406";
      };
    };
    "vue-functional-data-merge-2.0.7" = {
      name = "vue-functional-data-merge";
      packageName = "vue-functional-data-merge";
      version = "2.0.7";
      src = fetchurl {
        url = "https://registry.npmjs.org/vue-functional-data-merge/-/vue-functional-data-merge-2.0.7.tgz";
        sha512 = "pvLc+H+x2prwBj/uSEIITyxjz/7ZUVVK8uYbrYMmhDvMXnzh9OvQvVEwcOSBQjsubd4Eq41/CSJaWzy4hemMNQ==";
      };
    };
    "vue-i18n-7.8.1" = {
      name = "vue-i18n";
      packageName = "vue-i18n";
      version = "7.8.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/vue-i18n/-/vue-i18n-7.8.1.tgz";
        sha512 = "BzB+EAPo/iFyFn/GXd/qVdDe67jfk+gmQaWUKD5BANhUclGrFxzRExzW2pYEAbhNm2pg0F12Oo+gL2IMLDcTAw==";
      };
    };
    "vue-router-3.0.1" = {
      name = "vue-router";
      packageName = "vue-router";
      version = "3.0.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/vue-router/-/vue-router-3.0.1.tgz";
        sha512 = "vLLoY452L+JBpALMP5UHum9+7nzR9PeIBCghU9ZtJ1eWm6ieUI8Zb/DI3MYxH32bxkjzYV1LRjNv4qr8d+uX/w==";
      };
    };
    "vue-slider-component-2.7.11" = {
      name = "vue-slider-component";
      packageName = "vue-slider-component";
      version = "2.7.11";
      src = fetchurl {
        url = "https://registry.npmjs.org/vue-slider-component/-/vue-slider-component-2.7.11.tgz";
        sha512 = "4d4I2SHAOgaB1K8+RNUMlpEeBpH3c0wITJegFwUA2vSWbWE44qAoKy+mj2Ql8w7GrJfwZFMhSaNK0EABS2NMig==";
      };
    };
    "vuex-3.0.1" = {
      name = "vuex";
      packageName = "vuex";
      version = "3.0.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/vuex/-/vuex-3.0.1.tgz";
        sha512 = "wLoqz0B7DSZtgbWL1ShIBBCjv22GV5U+vcBFox658g6V0s4wZV9P4YjCNyoHSyIBpj1f29JBoNQIqD82cR4O3w==";
      };
    };
    "vuex-persistedstate-2.5.4" = {
      name = "vuex-persistedstate";
      packageName = "vuex-persistedstate";
      version = "2.5.4";
      src = fetchurl {
        url = "https://registry.npmjs.org/vuex-persistedstate/-/vuex-persistedstate-2.5.4.tgz";
        sha512 = "XYJhKIwO+ZVlTaXyxKxnplrJ88Fnvk5aDw753bxzRw5/yMKLQ6lq9CDCBex2fwZaQcLibhtgJOxGCHjy9GLSlQ==";
      };
    };
    "ware-1.3.0" = {
      name = "ware";
      packageName = "ware";
      version = "1.3.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/ware/-/ware-1.3.0.tgz";
        sha1 = "d1b14f39d2e2cb4ab8c4098f756fe4b164e473d4";
      };
    };
    "which-1.3.1" = {
      name = "which";
      packageName = "which";
      version = "1.3.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/which/-/which-1.3.1.tgz";
        sha512 = "HxJdYWq1MTIQbJ3nw0cqssHoTNU267KlrDuGZ1WYlxDStUtKUhOaJmh112/TZmHxxUfuJqPXSOm7tDyas0OSIQ==";
      };
    };
    "which-pm-runs-1.0.0" = {
      name = "which-pm-runs";
      packageName = "which-pm-runs";
      version = "1.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/which-pm-runs/-/which-pm-runs-1.0.0.tgz";
        sha1 = "670b3afbc552e0b55df6b7780ca74615f23ad1cb";
      };
    };
    "wide-align-1.1.3" = {
      name = "wide-align";
      packageName = "wide-align";
      version = "1.1.3";
      src = fetchurl {
        url = "https://registry.npmjs.org/wide-align/-/wide-align-1.1.3.tgz";
        sha512 = "QGkOQc8XL6Bt5PwnsExKBPuMKBxnGxWWW3fU55Xt4feHozMUhdUMaBCk290qpm/wG5u/RSKzwdAC4i51YigihA==";
      };
    };
    "winston-2.1.1" = {
      name = "winston";
      packageName = "winston";
      version = "2.1.1";
      src = fetchurl {
        url = "http://registry.npmjs.org/winston/-/winston-2.1.1.tgz";
        sha1 = "3c9349d196207fd1bdff9d4bc43ef72510e3a12e";
      };
    };
    "word-wrap-1.2.3" = {
      name = "word-wrap";
      packageName = "word-wrap";
      version = "1.2.3";
      src = fetchurl {
        url = "https://registry.npmjs.org/word-wrap/-/word-wrap-1.2.3.tgz";
        sha512 = "Hz/mrNwitNRh/HUAtM/VT/5VH+ygD6DV7mYKZAtHOrbs8U7lvPS6xf7EJKMF0uW1KJCl0H701g3ZGus+muE5vQ==";
      };
    };
    "wrap-fn-0.1.5" = {
      name = "wrap-fn";
      packageName = "wrap-fn";
      version = "0.1.5";
      src = fetchurl {
        url = "https://registry.npmjs.org/wrap-fn/-/wrap-fn-0.1.5.tgz";
        sha1 = "f21b6e41016ff4a7e31720dbc63a09016bdf9845";
      };
    };
    "wrappy-1.0.2" = {
      name = "wrappy";
      packageName = "wrappy";
      version = "1.0.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/wrappy/-/wrappy-1.0.2.tgz";
        sha1 = "b5243d8f3ec1aa35f1364605bc0d1036e30ab69f";
      };
    };
    "ws-1.1.5" = {
      name = "ws";
      packageName = "ws";
      version = "1.1.5";
      src = fetchurl {
        url = "https://registry.npmjs.org/ws/-/ws-1.1.5.tgz";
        sha512 = "o3KqipXNUdS7wpQzBHSe180lBGO60SoK0yVo3CYJgb2MkobuWuBX6dhkYP5ORCLd55y+SaflMOV5fqAB53ux4w==";
      };
    };
    "xtend-3.0.0" = {
      name = "xtend";
      packageName = "xtend";
      version = "3.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/xtend/-/xtend-3.0.0.tgz";
        sha1 = "5cce7407baf642cba7becda568111c493f59665a";
      };
    };
    "xtend-4.0.1" = {
      name = "xtend";
      packageName = "xtend";
      version = "4.0.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/xtend/-/xtend-4.0.1.tgz";
        sha1 = "a5c6d532be656e23db820efb943a1f04998d63af";
      };
    };
    "yallist-2.1.2" = {
      name = "yallist";
      packageName = "yallist";
      version = "2.1.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/yallist/-/yallist-2.1.2.tgz";
        sha1 = "1c11f9218f076089a47dd512f93c6699a6a81d52";
      };
    };
    "zerr-1.0.4" = {
      name = "zerr";
      packageName = "zerr";
      version = "1.0.4";
      src = fetchurl {
        url = "https://registry.npmjs.org/zerr/-/zerr-1.0.4.tgz";
        sha1 = "62814dd799eff8361f2a228f41f705c5e19de4c9";
      };
    };
  };
  args = {
    name = "talenet";
    packageName = "talenet";
    version = "0.9.0-SNAPSHOT";
    src = ./.;
    dependencies = [
      sources."abstract-leveldown-4.0.3"
      sources."adm-zip-0.4.11"
      sources."ajv-5.5.2"
      (sources."aligned-block-file-1.1.3" // {
        dependencies = [
          sources."obv-0.0.0"
        ];
      })
      sources."ansi-escapes-1.4.0"
      sources."ansi-regex-2.1.1"
      sources."ansi-styles-2.2.1"
      sources."anymatch-1.3.2"
      sources."append-batch-0.0.1"
      sources."aproba-1.2.0"
      sources."are-we-there-yet-1.1.5"
      sources."arr-diff-2.0.0"
      sources."arr-flatten-1.1.0"
      sources."arr-union-3.1.0"
      sources."array-union-1.0.2"
      sources."array-uniq-1.0.3"
      sources."array-unique-0.2.1"
      sources."arrify-1.0.1"
      sources."asn1-0.2.4"
      sources."assert-plus-1.0.0"
      sources."assign-symbols-1.0.0"
      sources."async-2.6.1"
      sources."async-each-1.0.1"
      sources."async-single-1.0.5"
      sources."async-write-2.1.0"
      sources."asynckit-0.4.0"
      sources."atob-2.1.2"
      sources."atomic-file-0.0.1"
      sources."attach-ware-1.1.1"
      sources."aws-sign2-0.7.0"
      sources."aws4-1.8.0"
      sources."babel-code-frame-6.26.0"
      sources."babel-core-6.26.3"
      sources."babel-generator-6.26.1"
      sources."babel-helper-call-delegate-6.24.1"
      sources."babel-helper-get-function-arity-6.24.1"
      sources."babel-helper-hoist-variables-6.24.1"
      sources."babel-helpers-6.24.1"
      sources."babel-messages-6.23.0"
      sources."babel-plugin-check-es2015-constants-6.22.0"
      sources."babel-plugin-transform-es2015-arrow-functions-6.22.0"
      sources."babel-plugin-transform-es2015-block-scoping-6.26.0"
      sources."babel-plugin-transform-es2015-computed-properties-6.24.1"
      sources."babel-plugin-transform-es2015-destructuring-6.23.0"
      sources."babel-plugin-transform-es2015-parameters-6.24.1"
      sources."babel-plugin-transform-es2015-shorthand-properties-6.24.1"
      sources."babel-plugin-transform-es2015-spread-6.22.0"
      sources."babel-plugin-transform-es2015-template-literals-6.22.0"
      sources."babel-polyfill-6.26.0"
      sources."babel-preset-es2040-1.1.1"
      sources."babel-register-6.26.0"
      (sources."babel-runtime-6.26.0" // {
        dependencies = [
          sources."regenerator-runtime-0.11.1"
        ];
      })
      sources."babel-template-6.26.0"
      sources."babel-traverse-6.26.0"
      sources."babel-types-6.26.0"
      sources."babylon-6.18.0"
      sources."bail-1.0.3"
      sources."balanced-match-1.0.0"
      (sources."base-0.11.2" // {
        dependencies = [
          sources."define-property-1.0.0"
          sources."isobject-3.0.1"
        ];
      })
      sources."base64-url-2.2.0"
      sources."bash-color-0.0.4"
      sources."bcrypt-pbkdf-1.0.2"
      sources."binary-extensions-1.12.0"
      sources."binary-search-1.3.4"
      sources."bindings-1.3.0"
      sources."bl-1.2.2"
      sources."blake2s-1.0.1"
      sources."bluebird-3.5.2"
      sources."bootstrap-4.1.3"
      sources."bootstrap-vue-2.0.0-rc.11"
      sources."brace-expansion-1.1.11"
      sources."braces-1.8.5"
      sources."broadcast-stream-0.2.2"
      sources."browser-split-0.0.1"
      sources."browserify-zlib-0.1.4"
      sources."buffer-alloc-1.2.0"
      sources."buffer-alloc-unsafe-1.1.0"
      sources."buffer-fill-1.0.0"
      sources."buffer-from-1.1.1"
      sources."bytewise-1.1.0"
      sources."bytewise-core-1.2.3"
      (sources."cache-base-1.0.1" // {
        dependencies = [
          sources."isobject-3.0.1"
        ];
      })
      sources."camelcase-2.1.1"
      sources."caseless-0.12.0"
      sources."ccount-1.0.3"
      sources."chalk-1.1.3"
      sources."character-entities-1.2.2"
      sources."character-entities-html4-1.1.2"
      sources."character-entities-legacy-1.1.2"
      sources."character-reference-invalid-1.1.2"
      sources."chardet-0.4.2"
      sources."charwise-3.0.1"
      sources."chloride-2.2.10"
      sources."chloride-test-1.2.2"
      sources."chokidar-1.7.0"
      sources."chownr-1.1.1"
      sources."chrome-native-messaging-0.2.0"
      (sources."class-utils-0.3.6" // {
        dependencies = [
          sources."define-property-0.2.5"
          (sources."is-accessor-descriptor-0.1.6" // {
            dependencies = [
              sources."kind-of-3.2.2"
            ];
          })
          (sources."is-data-descriptor-0.1.4" // {
            dependencies = [
              sources."kind-of-3.2.2"
            ];
          })
          sources."is-descriptor-0.1.6"
          sources."isobject-3.0.1"
          sources."kind-of-5.1.0"
        ];
      })
      sources."cli-cursor-2.1.0"
      sources."cli-width-2.2.0"
      sources."co-4.6.0"
      sources."code-point-at-1.1.0"
      sources."collapse-white-space-1.0.4"
      sources."collection-visit-1.0.0"
      sources."colors-1.3.2"
      sources."combined-stream-1.0.7"
      sources."commander-2.19.0"
      sources."compare-at-paths-1.0.0"
      sources."component-emitter-1.2.1"
      sources."concat-map-0.0.1"
      sources."concat-stream-1.6.2"
      sources."console-control-strings-1.1.0"
      sources."cont-1.0.3"
      sources."continuable-1.2.0"
      (sources."continuable-hash-0.1.4" // {
        dependencies = [
          sources."continuable-1.1.8"
        ];
      })
      (sources."continuable-list-0.1.6" // {
        dependencies = [
          sources."continuable-1.1.8"
        ];
      })
      sources."continuable-para-1.2.0"
      sources."continuable-series-1.2.0"
      sources."convert-source-map-1.6.0"
      sources."copy-descriptor-0.1.1"
      sources."core-js-2.5.7"
      sources."core-util-is-1.0.2"
      sources."cross-spawn-4.0.2"
      sources."cycle-1.0.3"
      sources."d3-5.7.0"
      sources."d3-array-1.2.4"
      sources."d3-axis-1.0.12"
      sources."d3-brush-1.0.6"
      sources."d3-chord-1.0.6"
      sources."d3-collection-1.0.7"
      sources."d3-color-1.2.3"
      sources."d3-contour-1.3.2"
      sources."d3-dispatch-1.0.5"
      sources."d3-drag-1.2.3"
      sources."d3-dsv-1.0.10"
      sources."d3-ease-1.0.5"
      sources."d3-fetch-1.1.2"
      sources."d3-force-1.1.2"
      sources."d3-format-1.3.2"
      sources."d3-geo-1.11.1"
      sources."d3-hierarchy-1.1.8"
      sources."d3-interpolate-1.3.2"
      sources."d3-path-1.0.7"
      sources."d3-polygon-1.0.5"
      sources."d3-quadtree-1.0.5"
      sources."d3-random-1.1.2"
      sources."d3-scale-2.1.2"
      sources."d3-scale-chromatic-1.3.3"
      sources."d3-selection-1.3.2"
      sources."d3-shape-1.2.2"
      sources."d3-time-1.0.10"
      sources."d3-time-format-2.1.3"
      sources."d3-timer-1.0.9"
      sources."d3-transition-1.1.3"
      sources."d3-voronoi-1.1.4"
      sources."d3-zoom-1.7.3"
      sources."dashdash-1.14.1"
      sources."debug-2.6.9"
      sources."decode-uri-component-0.2.0"
      sources."decompress-response-3.3.0"
      sources."deep-equal-1.0.1"
      sources."deep-extend-0.6.0"
      sources."deepmerge-2.2.1"
      sources."default-shell-1.0.1"
      sources."deferred-leveldown-3.0.0"
      sources."define-properties-1.1.3"
      (sources."define-property-2.0.2" // {
        dependencies = [
          sources."isobject-3.0.1"
        ];
      })
      sources."defined-1.0.0"
      sources."delayed-stream-1.0.0"
      sources."delegates-1.0.0"
      sources."depnest-1.3.0"
      sources."detab-1.0.2"
      sources."detect-indent-4.0.0"
      sources."detect-libc-1.0.3"
      sources."duplexify-3.6.1"
      sources."dynamic-dijkstra-1.0.0"
      sources."ecc-jsbn-0.1.2"
      sources."ecstatic-3.3.0"
      sources."ed2curve-0.1.4"
      sources."electron-context-menu-0.9.1"
      sources."electron-default-menu-1.0.1"
      sources."electron-dl-1.12.0"
      sources."electron-is-dev-0.1.2"
      sources."electron-window-state-4.1.1"
      sources."elegant-spinner-1.0.1"
      sources."emoji-named-characters-1.0.2"
      sources."emoji-server-1.0.0"
      sources."encoding-0.1.12"
      (sources."encoding-down-4.0.1" // {
        dependencies = [
          sources."level-codec-8.0.0"
        ];
      })
      sources."end-of-stream-1.4.1"
      sources."epidemic-broadcast-trees-6.3.4"
      sources."errno-0.1.7"
      sources."es-abstract-1.12.0"
      sources."es-to-primitive-1.2.0"
      sources."es2040-1.2.6"
      sources."escape-string-regexp-1.0.5"
      sources."esutils-2.0.2"
      sources."execa-0.5.1"
      sources."exit-hook-1.1.1"
      sources."expand-brackets-0.1.5"
      sources."expand-range-1.8.2"
      sources."expand-template-1.1.1"
      sources."explain-error-1.0.4"
      sources."ext-list-2.2.2"
      sources."ext-name-5.0.0"
      sources."extend-3.0.2"
      (sources."extend-shallow-3.0.2" // {
        dependencies = [
          sources."is-extendable-1.0.1"
        ];
      })
      sources."extend.js-0.0.2"
      sources."external-editor-2.2.0"
      sources."extglob-0.3.2"
      sources."extsprintf-1.3.0"
      sources."eyes-0.1.8"
      sources."fast-deep-equal-1.1.0"
      sources."fast-future-1.0.2"
      sources."fast-json-stable-stringify-2.0.0"
      sources."figures-2.0.0"
      sources."file-saver-1.3.8"
      sources."filename-regex-2.0.1"
      sources."fill-range-2.2.4"
      sources."fix-path-2.1.0"
      sources."flumecodec-0.0.1"
      sources."flumedb-0.5.1"
      sources."flumelog-offset-3.3.2"
      (sources."flumeview-hashtable-1.0.4" // {
        dependencies = [
          sources."atomic-file-1.1.5"
        ];
      })
      (sources."flumeview-level-3.0.6" // {
        dependencies = [
          sources."obv-0.0.0"
        ];
      })
      sources."flumeview-query-6.3.0"
      (sources."flumeview-reduce-1.3.14" // {
        dependencies = [
          sources."atomic-file-1.1.5"
          sources."flumecodec-0.0.0"
          sources."obv-0.0.0"
        ];
      })
      sources."flumeview-search-1.0.6"
      sources."for-each-0.3.3"
      sources."for-in-1.0.2"
      sources."for-own-0.1.5"
      sources."forever-agent-0.6.1"
      sources."forked-systray-3.0.8"
      sources."form-data-2.3.3"
      sources."fragment-cache-0.2.1"
      sources."fs-constants-1.0.0"
      sources."fs.realpath-1.0.0"
      sources."fsevents-1.2.4"
      sources."function-bind-1.1.1"
      (sources."gauge-2.7.4" // {
        dependencies = [
          sources."is-fullwidth-code-point-1.0.0"
          sources."string-width-1.0.2"
        ];
      })
      sources."generate-function-2.3.1"
      sources."generate-object-property-1.2.0"
      sources."get-stream-2.3.1"
      sources."get-value-2.0.6"
      sources."getpass-0.1.7"
      sources."github-from-package-0.0.0"
      sources."glob-7.1.3"
      sources."glob-base-0.3.0"
      sources."glob-parent-2.0.0"
      sources."globals-9.18.0"
      (sources."globby-4.1.0" // {
        dependencies = [
          sources."glob-6.0.4"
        ];
      })
      sources."gossip-query-0.2.2"
      sources."graceful-fs-4.1.11"
      sources."graphlib-2.1.5"
      sources."graphreduce-3.0.4"
      sources."growly-1.3.0"
      sources."gunzip-maybe-1.4.1"
      sources."har-schema-2.0.0"
      sources."har-validator-5.1.0"
      sources."has-1.0.3"
      sources."has-ansi-2.0.0"
      sources."has-network-0.0.1"
      sources."has-symbols-1.0.0"
      sources."has-unicode-2.0.1"
      (sources."has-value-1.0.0" // {
        dependencies = [
          sources."isobject-3.0.1"
        ];
      })
      (sources."has-values-1.0.0" // {
        dependencies = [
          (sources."is-number-3.0.0" // {
            dependencies = [
              sources."kind-of-3.2.2"
            ];
          })
          sources."kind-of-4.0.0"
        ];
      })
      sources."hashlru-2.2.1"
      sources."he-1.2.0"
      sources."heap-0.2.6"
      sources."highlight.js-9.13.1"
      sources."home-or-tmp-2.0.0"
      sources."hoox-0.0.1"
      sources."http-signature-1.2.0"
      sources."i-0.3.6"
      sources."iconv-lite-0.4.24"
      sources."increment-buffer-1.0.1"
      sources."inflight-1.0.6"
      sources."inherits-2.0.3"
      sources."ini-1.3.5"
      sources."inquirer-3.0.6"
      sources."int53-0.2.4"
      sources."invariant-2.2.4"
      sources."ip-0.3.3"
      sources."irregular-plurals-1.4.0"
      (sources."is-accessor-descriptor-1.0.0" // {
        dependencies = [
          sources."kind-of-6.0.2"
        ];
      })
      sources."is-alphabetical-1.0.2"
      sources."is-alphanumerical-1.0.2"
      sources."is-binary-path-1.0.1"
      sources."is-buffer-1.1.6"
      sources."is-callable-1.1.4"
      (sources."is-data-descriptor-1.0.0" // {
        dependencies = [
          sources."kind-of-6.0.2"
        ];
      })
      sources."is-date-object-1.0.1"
      sources."is-decimal-1.0.2"
      sources."is-deflate-1.0.0"
      (sources."is-descriptor-1.0.2" // {
        dependencies = [
          sources."kind-of-6.0.2"
        ];
      })
      sources."is-dotfile-1.0.3"
      sources."is-electron-2.1.0"
      sources."is-equal-shallow-0.1.3"
      sources."is-extendable-0.1.1"
      sources."is-extglob-1.0.0"
      sources."is-finite-1.0.2"
      sources."is-fullwidth-code-point-2.0.0"
      sources."is-glob-2.0.1"
      sources."is-gzip-1.0.0"
      sources."is-hexadecimal-1.0.2"
      sources."is-my-ip-valid-1.0.0"
      sources."is-my-json-valid-2.19.0"
      sources."is-number-2.1.0"
      sources."is-plain-obj-1.1.0"
      (sources."is-plain-object-2.0.4" // {
        dependencies = [
          sources."isobject-3.0.1"
        ];
      })
      sources."is-posix-bracket-0.1.1"
      sources."is-primitive-2.0.0"
      sources."is-promise-2.1.0"
      sources."is-property-1.0.2"
      sources."is-regex-1.0.4"
      sources."is-stream-1.1.0"
      sources."is-symbol-1.0.2"
      sources."is-typedarray-1.0.0"
      sources."is-valid-domain-0.0.6"
      sources."is-windows-1.0.2"
      sources."isarray-1.0.0"
      sources."isexe-2.0.0"
      sources."isobject-2.1.0"
      sources."isstream-0.1.2"
      sources."js-tokens-3.0.2"
      sources."jsbn-0.1.1"
      sources."jsesc-1.3.0"
      sources."json-buffer-2.0.11"
      sources."json-schema-0.2.3"
      sources."json-schema-traverse-0.3.1"
      sources."json-stringify-safe-5.0.1"
      sources."json5-0.5.1"
      sources."jsonfile-2.4.0"
      sources."jsonpointer-4.0.1"
      sources."jsprim-1.4.1"
      sources."kind-of-3.2.2"
      (sources."layered-graph-1.1.1" // {
        dependencies = [
          sources."pull-cont-0.1.1"
        ];
      })
      sources."level-3.0.2"
      sources."level-codec-6.2.0"
      sources."level-errors-1.1.2"
      sources."level-iterator-stream-2.0.3"
      sources."level-packager-2.1.1"
      sources."level-post-1.0.7"
      (sources."level-sublevel-6.6.5" // {
        dependencies = [
          (sources."abstract-leveldown-0.12.4" // {
            dependencies = [
              sources."xtend-3.0.0"
            ];
          })
          sources."bl-0.8.2"
          sources."deferred-leveldown-0.2.0"
          sources."isarray-0.0.1"
          (sources."levelup-0.19.1" // {
            dependencies = [
              sources."xtend-3.0.0"
            ];
          })
          sources."ltgt-2.1.3"
          sources."prr-0.0.0"
          sources."readable-stream-1.0.34"
          sources."semver-5.1.1"
          sources."string_decoder-0.10.31"
        ];
      })
      (sources."leveldown-3.0.2" // {
        dependencies = [
          sources."nan-2.10.0"
        ];
      })
      sources."levelup-2.0.2"
      sources."libnested-1.3.2"
      sources."libsodium-0.7.3"
      sources."libsodium-wrappers-0.7.3"
      sources."lodash-4.17.11"
      sources."lodash.get-4.4.2"
      sources."lodash.startcase-4.4.0"
      sources."log-symbols-1.0.2"
      (sources."log-update-1.0.2" // {
        dependencies = [
          sources."cli-cursor-1.0.2"
          sources."onetime-1.1.0"
          sources."restore-cursor-1.0.1"
        ];
      })
      sources."longest-streak-1.0.0"
      sources."looper-4.0.0"
      sources."loose-envify-1.4.0"
      sources."lossy-store-1.2.3"
      sources."lru-cache-4.1.3"
      sources."ltgt-2.2.1"
      sources."map-cache-0.2.2"
      sources."map-filter-reduce-3.2.2"
      sources."map-merge-1.1.0"
      sources."map-visit-1.0.0"
      sources."markdown-table-0.4.0"
      sources."math-random-1.0.1"
      sources."mdmanifest-1.0.8"
      sources."micromatch-2.3.11"
      sources."mime-1.6.0"
      sources."mime-db-1.36.0"
      sources."mime-types-2.1.20"
      sources."mimic-fn-1.2.0"
      sources."mimic-response-1.0.1"
      sources."minimatch-3.0.4"
      sources."minimist-1.2.0"
      (sources."mixin-deep-1.3.1" // {
        dependencies = [
          sources."is-extendable-1.0.1"
        ];
      })
      (sources."mkdirp-0.5.1" // {
        dependencies = [
          sources."minimist-0.0.8"
        ];
      })
      sources."modify-filename-1.1.0"
      sources."monotonic-timestamp-0.0.9"
      sources."ms-2.0.0"
      (sources."multiblob-1.13.1" // {
        dependencies = [
          sources."pull-file-0.5.0"
          sources."rimraf-2.2.8"
        ];
      })
      sources."multiblob-http-0.4.2"
      sources."multicb-1.2.2"
      sources."multiserver-1.13.5"
      sources."mutant-3.22.1"
      sources."mutant-pull-reduce-1.1.0"
      sources."mute-stream-0.0.7"
      sources."muxrpc-6.4.1"
      (sources."muxrpc-validation-2.0.1" // {
        dependencies = [
          sources."pull-stream-2.28.4"
        ];
      })
      (sources."muxrpcli-1.1.0" // {
        dependencies = [
          sources."pull-stream-2.28.4"
        ];
      })
      (sources."mv-2.1.1" // {
        dependencies = [
          sources."glob-6.0.4"
          sources."ncp-2.0.0"
          sources."rimraf-2.4.5"
        ];
      })
      sources."nan-2.11.1"
      (sources."nanomatch-1.2.13" // {
        dependencies = [
          sources."arr-diff-4.0.0"
          sources."array-unique-0.3.2"
          sources."kind-of-6.0.2"
        ];
      })
      sources."ncp-1.0.1"
      sources."node-abi-2.4.5"
      sources."node-fetch-1.6.3"
      sources."node-gyp-build-3.5.0"
      sources."node-notifier-5.2.1"
      (sources."non-private-ip-1.4.4" // {
        dependencies = [
          sources."ip-1.1.5"
        ];
      })
      sources."noop-logger-0.1.1"
      sources."normalize-path-2.1.1"
      sources."normalize-uri-1.1.1"
      sources."npm-prefix-1.2.0"
      sources."npm-run-path-2.0.2"
      sources."npmlog-4.1.2"
      sources."number-is-nan-1.0.1"
      sources."oauth-sign-0.9.0"
      sources."object-assign-4.1.1"
      (sources."object-copy-0.1.0" // {
        dependencies = [
          sources."define-property-0.2.5"
          sources."is-accessor-descriptor-0.1.6"
          sources."is-data-descriptor-0.1.4"
          (sources."is-descriptor-0.1.6" // {
            dependencies = [
              sources."kind-of-5.1.0"
            ];
          })
        ];
      })
      sources."object-inspect-1.6.0"
      sources."object-keys-1.0.12"
      (sources."object-visit-1.0.1" // {
        dependencies = [
          sources."isobject-3.0.1"
        ];
      })
      sources."object.omit-2.0.1"
      (sources."object.pick-1.3.0" // {
        dependencies = [
          sources."isobject-3.0.1"
        ];
      })
      sources."observ-0.2.0"
      sources."observ-debounce-1.1.1"
      sources."obv-0.0.1"
      sources."on-change-network-0.0.2"
      sources."on-wakeup-1.0.1"
      sources."once-1.4.0"
      sources."onetime-2.0.1"
      sources."open-0.0.5"
      (sources."opencollective-1.0.3" // {
        dependencies = [
          sources."babel-polyfill-6.23.0"
        ];
      })
      sources."opencollective-postinstall-2.0.0"
      sources."opn-4.0.2"
      sources."options-0.0.6"
      sources."os-homedir-1.0.2"
      sources."os-tmpdir-1.0.2"
      sources."osenv-0.1.5"
      sources."p-finally-1.0.0"
      sources."packet-stream-2.0.4"
      sources."packet-stream-codec-1.1.2"
      sources."pako-0.2.9"
      sources."parse-entities-1.2.0"
      sources."parse-glob-3.0.4"
      sources."pascalcase-0.1.1"
      sources."path-exists-3.0.0"
      sources."path-is-absolute-1.0.1"
      sources."path-key-2.0.1"
      sources."path-parse-1.0.6"
      sources."peek-stream-1.1.3"
      sources."performance-now-2.1.0"
      sources."pify-2.3.0"
      sources."pinkie-2.0.4"
      sources."pinkie-promise-2.0.1"
      sources."pkginfo-0.4.1"
      sources."plur-2.1.2"
      sources."popper.js-1.14.4"
      sources."posix-character-classes-0.1.1"
      sources."prebuild-install-4.0.0"
      sources."preserve-0.2.0"
      sources."private-0.1.8"
      sources."private-box-0.3.0"
      sources."process-nextick-args-2.0.0"
      sources."progress-2.0.1"
      sources."prompt-1.0.0"
      sources."prr-1.0.1"
      sources."pseudomap-1.0.2"
      sources."psl-1.1.29"
      sources."pull-abortable-4.1.1"
      sources."pull-box-stream-1.0.13"
      sources."pull-cat-1.1.11"
      sources."pull-cont-0.0.0"
      sources."pull-core-1.1.0"
      sources."pull-cursor-3.0.0"
      sources."pull-defer-0.2.3"
      sources."pull-file-1.1.0"
      sources."pull-file-reader-1.0.2"
      sources."pull-flatmap-0.0.1"
      (sources."pull-fs-1.1.6" // {
        dependencies = [
          sources."pull-file-0.5.0"
        ];
      })
      sources."pull-glob-1.0.7"
      (sources."pull-goodbye-0.0.2" // {
        dependencies = [
          sources."pull-stream-3.5.0"
        ];
      })
      sources."pull-handshake-1.1.4"
      sources."pull-hash-1.0.0"
      (sources."pull-inactivity-2.1.2" // {
        dependencies = [
          sources."pull-abortable-4.0.0"
        ];
      })
      sources."pull-iterable-0.1.0"
      sources."pull-level-2.0.4"
      sources."pull-live-1.0.1"
      sources."pull-looper-1.0.0"
      sources."pull-many-1.0.8"
      sources."pull-ndjson-0.1.1"
      sources."pull-next-1.0.1"
      sources."pull-notify-0.1.1"
      sources."pull-pair-1.1.0"
      sources."pull-paramap-1.2.2"
      sources."pull-pause-0.0.0"
      sources."pull-ping-2.0.2"
      sources."pull-pushable-2.2.0"
      sources."pull-rate-1.0.2"
      sources."pull-reader-1.3.1"
      sources."pull-sink-through-0.0.0"
      sources."pull-sort-1.0.1"
      sources."pull-split-0.2.0"
      sources."pull-stream-3.6.9"
      sources."pull-stream-to-stream-1.3.4"
      sources."pull-stringify-1.2.2"
      (sources."pull-through-1.0.18" // {
        dependencies = [
          sources."looper-3.0.0"
        ];
      })
      sources."pull-traverse-1.0.3"
      sources."pull-utf8-decoder-1.0.2"
      (sources."pull-window-2.1.4" // {
        dependencies = [
          sources."looper-2.0.0"
        ];
      })
      sources."pull-write-1.1.4"
      sources."pull-write-file-0.2.4"
      sources."pull-ws-3.3.1"
      sources."pump-2.0.1"
      sources."pumpify-1.5.1"
      sources."punycode-1.4.1"
      sources."pupa-1.0.0"
      sources."push-stream-10.0.4"
      sources."push-stream-to-pull-stream-1.0.3"
      sources."qs-6.5.2"
      sources."quick-lru-1.1.0"
      (sources."randomatic-3.1.0" // {
        dependencies = [
          sources."is-number-4.0.0"
          sources."kind-of-6.0.2"
        ];
      })
      sources."rc-1.2.8"
      sources."read-1.0.7"
      sources."readable-stream-2.3.6"
      (sources."readdirp-2.2.1" // {
        dependencies = [
          sources."arr-diff-4.0.0"
          sources."array-unique-0.3.2"
          (sources."braces-2.3.2" // {
            dependencies = [
              sources."extend-shallow-2.0.1"
            ];
          })
          (sources."expand-brackets-2.1.4" // {
            dependencies = [
              sources."define-property-0.2.5"
              sources."extend-shallow-2.0.1"
            ];
          })
          (sources."extglob-2.0.4" // {
            dependencies = [
              sources."define-property-1.0.0"
              sources."extend-shallow-2.0.1"
            ];
          })
          (sources."fill-range-4.0.0" // {
            dependencies = [
              sources."extend-shallow-2.0.1"
            ];
          })
          (sources."is-accessor-descriptor-0.1.6" // {
            dependencies = [
              sources."kind-of-3.2.2"
            ];
          })
          (sources."is-data-descriptor-0.1.4" // {
            dependencies = [
              sources."kind-of-3.2.2"
            ];
          })
          (sources."is-descriptor-0.1.6" // {
            dependencies = [
              sources."kind-of-5.1.0"
            ];
          })
          (sources."is-number-3.0.0" // {
            dependencies = [
              sources."kind-of-3.2.2"
            ];
          })
          sources."isobject-3.0.1"
          sources."kind-of-6.0.2"
          sources."micromatch-3.1.10"
        ];
      })
      sources."regenerator-runtime-0.10.5"
      sources."regex-cache-0.4.4"
      sources."regex-not-1.0.2"
      sources."relative-url-1.0.2"
      (sources."remark-3.2.3" // {
        dependencies = [
          sources."glob-6.0.4"
          sources."he-0.5.0"
        ];
      })
      sources."remark-html-2.0.2"
      sources."remove-trailing-separator-1.1.0"
      sources."repeat-element-1.1.3"
      sources."repeat-string-1.6.1"
      sources."repeating-2.0.1"
      sources."request-2.88.0"
      sources."resolve-1.7.1"
      sources."resolve-url-0.2.1"
      sources."restore-cursor-2.0.0"
      sources."resumer-0.0.0"
      sources."ret-0.1.15"
      sources."revalidator-0.1.8"
      sources."rimraf-2.6.2"
      sources."run-async-2.3.0"
      sources."rw-1.3.3"
      sources."rx-4.1.0"
      sources."safe-buffer-5.1.2"
      sources."safe-regex-1.1.0"
      sources."safer-buffer-2.1.2"
      sources."scuttle-shell-git://github.com/ssbc/scuttle-shell#master"
      sources."scuttle-tag-0.3.0"
      (sources."scuttlebot-13.0.0" // {
        dependencies = [
          sources."cross-spawn-5.1.0"
          sources."ssb-ws-3.0.0"
        ];
      })
      sources."secret-handshake-1.1.14"
      (sources."secret-stack-4.2.4" // {
        dependencies = [
          sources."ip-1.1.5"
        ];
      })
      (sources."secure-scuttlebutt-18.5.0" // {
        dependencies = [
          sources."deep-equal-0.2.2"
        ];
      })
      sources."semver-5.6.0"
      sources."separator-escape-0.0.0"
      sources."set-blocking-2.0.0"
      (sources."set-value-2.0.0" // {
        dependencies = [
          sources."extend-shallow-2.0.1"
        ];
      })
      sources."sha.js-2.4.5"
      sources."shebang-command-1.2.0"
      sources."shebang-regex-1.0.0"
      sources."shell-env-0.3.0"
      sources."shell-path-2.1.0"
      sources."shellsubstitute-1.2.0"
      sources."shellwords-0.1.1"
      sources."shvl-1.3.1"
      sources."signal-exit-3.0.2"
      sources."simple-concat-1.0.0"
      sources."simple-get-2.8.1"
      sources."slash-1.0.0"
      sources."smart-buffer-4.0.1"
      (sources."snapdragon-0.8.2" // {
        dependencies = [
          sources."define-property-0.2.5"
          sources."extend-shallow-2.0.1"
          (sources."is-accessor-descriptor-0.1.6" // {
            dependencies = [
              sources."kind-of-3.2.2"
            ];
          })
          (sources."is-data-descriptor-0.1.4" // {
            dependencies = [
              sources."kind-of-3.2.2"
            ];
          })
          sources."is-descriptor-0.1.6"
          sources."kind-of-5.1.0"
        ];
      })
      (sources."snapdragon-node-2.1.1" // {
        dependencies = [
          sources."define-property-1.0.0"
          sources."isobject-3.0.1"
        ];
      })
      sources."snapdragon-util-3.0.1"
      (sources."socks-2.2.1" // {
        dependencies = [
          sources."ip-1.1.5"
        ];
      })
      sources."sodium-browserify-1.2.4"
      (sources."sodium-browserify-tweetnacl-0.2.3" // {
        dependencies = [
          sources."sha.js-2.4.11"
        ];
      })
      sources."sodium-chloride-1.1.2"
      sources."sodium-native-2.2.2"
      sources."sort-keys-1.1.2"
      sources."sort-keys-length-1.0.1"
      sources."source-map-0.5.7"
      sources."source-map-resolve-0.5.2"
      sources."source-map-support-0.4.18"
      sources."source-map-url-0.4.0"
      sources."split-buffer-1.0.0"
      sources."split-string-3.1.0"
      sources."ssb-about-0.1.2"
      sources."ssb-backlinks-0.7.3"
      sources."ssb-blobs-1.1.5"
      sources."ssb-chess-db-1.0.5"
      sources."ssb-client-4.6.0"
      sources."ssb-config-2.3.6"
      sources."ssb-ebt-5.2.3"
      (sources."ssb-friends-3.1.3" // {
        dependencies = [
          sources."pull-cont-0.1.1"
        ];
      })
      sources."ssb-keys-7.1.3"
      (sources."ssb-links-3.0.3" // {
        dependencies = [
          sources."map-filter-reduce-2.2.1"
        ];
      })
      sources."ssb-marked-0.7.4"
      sources."ssb-meme-1.0.4"
      sources."ssb-msg-content-1.0.1"
      sources."ssb-msgs-5.2.0"
      sources."ssb-names-3.1.3"
      (sources."ssb-ooo-1.0.9" // {
        dependencies = [
          sources."flumedb-0.4.9"
        ];
      })
      sources."ssb-private-0.2.3"
      (sources."ssb-query-2.3.0" // {
        dependencies = [
          sources."flumeview-query-7.1.0"
        ];
      })
      (sources."ssb-ref-2.12.0" // {
        dependencies = [
          sources."ip-1.1.5"
        ];
      })
      (sources."ssb-search-1.1.2" // {
        dependencies = [
          sources."pull-cont-0.1.1"
        ];
      })
      sources."ssb-sort-1.1.0"
      sources."ssb-tags-0.2.0"
      sources."ssb-talequery-2.0.1"
      (sources."ssb-threads-3.0.0" // {
        dependencies = [
          sources."abstract-leveldown-5.0.0"
          sources."encoding-down-5.0.2"
          sources."flumeview-level-3.0.4"
          sources."ip-1.1.5"
          sources."level-codec-9.0.0"
          sources."level-errors-2.0.0"
          sources."obv-0.0.0"
          sources."ssb-ref-2.11.2"
        ];
      })
      sources."ssb-typescript-1.3.0"
      (sources."ssb-unread-1.0.1" // {
        dependencies = [
          sources."abstract-leveldown-5.0.0"
          sources."deferred-leveldown-4.0.2"
          sources."encoding-down-5.0.4"
          sources."level-4.0.0"
          sources."level-codec-9.0.0"
          sources."level-errors-2.0.0"
          sources."level-iterator-stream-3.0.0"
          sources."level-packager-3.1.0"
          sources."leveldown-4.0.1"
          sources."levelup-3.1.1"
          sources."nan-2.10.0"
        ];
      })
      sources."ssb-validate-3.0.11"
      sources."ssb-web-resolver-1.1.2"
      sources."ssb-ws-2.1.1"
      sources."sshpk-1.15.1"
      sources."stack-0.1.0"
      sources."stack-trace-0.0.10"
      (sources."static-extend-0.1.2" // {
        dependencies = [
          sources."define-property-0.2.5"
          (sources."is-accessor-descriptor-0.1.6" // {
            dependencies = [
              sources."kind-of-3.2.2"
            ];
          })
          (sources."is-data-descriptor-0.1.4" // {
            dependencies = [
              sources."kind-of-3.2.2"
            ];
          })
          sources."is-descriptor-0.1.6"
          sources."kind-of-5.1.0"
        ];
      })
      sources."statistics-3.3.0"
      sources."stream-progressbar-1.1.1"
      sources."stream-shift-1.0.0"
      (sources."stream-to-pull-stream-1.7.2" // {
        dependencies = [
          sources."looper-3.0.0"
        ];
      })
      (sources."string-width-2.1.1" // {
        dependencies = [
          sources."ansi-regex-3.0.0"
          sources."strip-ansi-4.0.0"
        ];
      })
      sources."string.prototype.trim-1.1.2"
      sources."string_decoder-1.1.1"
      sources."stringify-entities-1.3.2"
      sources."strip-ansi-3.0.1"
      sources."strip-eof-1.0.0"
      sources."strip-json-comments-2.0.1"
      sources."supports-color-2.0.0"
      sources."tape-4.9.1"
      (sources."tar-fs-1.16.3" // {
        dependencies = [
          sources."pump-1.0.3"
        ];
      })
      sources."tar-stream-1.6.2"
      sources."text-table-0.2.0"
      sources."through-2.3.8"
      sources."through2-2.0.3"
      sources."tmp-0.0.33"
      sources."to-buffer-1.1.1"
      sources."to-fast-properties-1.0.3"
      sources."to-object-path-0.3.0"
      sources."to-regex-3.0.2"
      (sources."to-regex-range-2.1.1" // {
        dependencies = [
          sources."is-number-3.0.0"
        ];
      })
      sources."to-vfile-1.0.0"
      sources."tough-cookie-2.4.3"
      sources."trim-0.0.1"
      sources."trim-lines-1.1.1"
      sources."trim-right-1.0.1"
      sources."trim-trailing-lines-1.1.1"
      sources."tunnel-agent-0.6.0"
      sources."tweetnacl-0.14.5"
      sources."tweetnacl-auth-0.3.1"
      sources."typedarray-0.0.6"
      sources."typedarray-to-buffer-3.1.5"
      sources."typewise-1.0.3"
      sources."typewise-core-1.2.0"
      sources."typewiselite-1.0.0"
      sources."uint48be-1.0.2"
      sources."ultron-1.0.2"
      sources."unherit-1.1.1"
      sources."unified-2.1.4"
      (sources."union-value-1.0.0" // {
        dependencies = [
          sources."extend-shallow-2.0.1"
          sources."set-value-0.4.3"
        ];
      })
      sources."unist-util-is-2.1.2"
      sources."unist-util-visit-1.4.0"
      sources."unist-util-visit-parents-2.0.1"
      (sources."unset-value-1.0.0" // {
        dependencies = [
          (sources."has-value-0.3.1" // {
            dependencies = [
              sources."isobject-2.1.0"
            ];
          })
          sources."has-values-0.1.4"
          sources."isobject-3.0.1"
        ];
      })
      sources."untildify-2.1.0"
      sources."unused-filename-1.0.0"
      sources."urix-0.1.0"
      sources."url-join-2.0.5"
      sources."use-3.1.1"
      sources."user-home-2.0.0"
      sources."util-deprecate-1.0.2"
      (sources."utile-0.3.0" // {
        dependencies = [
          sources."async-0.9.2"
          sources."deep-equal-0.2.2"
        ];
      })
      sources."uuid-3.3.2"
      sources."vee-validate-2.0.9"
      sources."verror-1.10.0"
      sources."vfile-1.4.0"
      sources."vfile-find-down-1.0.0"
      sources."vfile-find-up-1.0.0"
      (sources."vfile-reporter-1.5.0" // {
        dependencies = [
          sources."is-fullwidth-code-point-1.0.0"
          sources."string-width-1.0.2"
        ];
      })
      sources."vfile-sort-1.0.0"
      sources."vue-2.5.17"
      sources."vue-electron-1.0.6"
      sources."vue-functional-data-merge-2.0.7"
      sources."vue-i18n-7.8.1"
      sources."vue-router-3.0.1"
      sources."vue-slider-component-2.7.11"
      sources."vuex-3.0.1"
      sources."vuex-persistedstate-2.5.4"
      sources."ware-1.3.0"
      sources."which-1.3.1"
      sources."which-pm-runs-1.0.0"
      sources."wide-align-1.1.3"
      (sources."winston-2.1.1" // {
        dependencies = [
          sources."async-1.0.0"
          sources."colors-1.0.3"
          sources."pkginfo-0.3.1"
        ];
      })
      sources."word-wrap-1.2.3"
      (sources."wrap-fn-0.1.5" // {
        dependencies = [
          sources."co-3.1.0"
        ];
      })
      sources."wrappy-1.0.2"
      sources."ws-1.1.5"
      sources."xtend-4.0.1"
      sources."yallist-2.1.2"
      sources."zerr-1.0.4"
    ];
    buildInputs = globalBuildInputs;
    inherit propagatedBuildInputs;
    meta = {
      description = "tale:net - intergalactic skill & idea sharing community";
      homepage = https://blog.t4l3.net/;
    };
    production = true;
    bypassCache = true;
  };
in
{
  tarball = nodeEnv.buildNodeSourceDist args;
  package = nodeEnv.buildNodePackage args;
  shell = nodeEnv.buildNodeShell args;
}