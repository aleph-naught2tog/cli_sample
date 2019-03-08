# CliSample

* `mix escript.build` will build it
* once built, run: `./cli_sample`

## different ways to run things in Elixir

These are for running an actual [`Application`](https://hexdocs.pm/elixir/Application.html).

* `mix run` is the default; it runs your `Application` (I think it can be set to other things, too)
* `mix run --no --halt` says hey, run the app, but don't exit. This is useful for a long-running thing like a server or file-watcher.

The `escript` variations are for creating a CLI executable you can use like other shell scripts. It takes a little longer because usually it bundles Elixir ITSELF into the script, meaning that it can then be run anywhere without a dependency on Elixir, which is pretty neat!

* `mix escript.build`
  * you need a `escript: [main_module: ModuleYouWouldLikeToRunThatContainsAFunctionCalledMainWithOneArgument]`
  * once built, it defaults to the directory you're in, so you can just run in by the name of the module. so if you had `escript: [main_module: FancyModule]` in your `mix.exs` under `def project...`, you would do:
    1. `mix escript.build`
    2. `./fancy_module` -- assuming you had `app: :fancy_module` in your project def in `mix.exs`

  There are other customization options.


* `iex -S mix` runs your default `mix` task in the `repl`; as a result, it loads your dependencies, etc., so you can recompile _from inside there_ and then run it as desired, but you have to call it manually as you noted.
