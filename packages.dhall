let upstream =
      https://github.com/purescript/package-sets/releases/download/psc-0.13.6-20200404/packages.dhall sha256:f239f2e215d0cbd5c203307701748581938f74c4c78f4aeffa32c11c131ef7b6

let overrides = {=}

let additions =
    { gimel =
        { dependencies = [ "prelude", "css", "js-timers" ]
        , repo         = "https://github.com/DoctorRyner/gimel"
        , version      = "v0.1-alpha"
        }
    , gimel-router =
        { dependencies = [ "prelude" ]
        , repo         = "https://github.com/DoctorRyner/gimel-router"
        , version      = "master"
        }
    , react-mui =
        { dependencies = [ "tscompat" ]
        , repo         = "https://github.com/doolse/purescript-react-mui"
        , version      = "v3.9.313"
        }
    , tscompat =
        { dependencies = [ "prelude" ]
        , repo         = "https://github.com/doolse/purescript-tscompat"
        , version      = "v1.0.1"
        }
    }

in  upstream // overrides // additions
