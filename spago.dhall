{-
Welcome to a Spago project!
You can edit this file as you like.
-}
{ name = "my-project"
, dependencies =
    [ "affjax"
    , "argonaut-codecs"
    , "console"
    , "effect"
    , "psci-support"
    , "random"
    , "react-basic-hooks"
    , "tailrec"
    ]
, packages = ./packages.dhall
, sources = [ "src/**/*.purs", "test/**/*.purs" ]
}
