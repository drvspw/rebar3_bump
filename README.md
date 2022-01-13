## rebar3_bump
A rebar plugin to inspired by ruby's `bump` gem. This plugin can be used to manage package version.


## Build
```
$ rebar3 compile
```

## Use
Add the plugin to your rebar config:
```erlang
{project_plugins, [
	{rebar3_bump, "0.1.0"}
]}.
```
Then set the `vsn` attribute of `.app.src`/`relx` release configuration to `{cmd, "rebar3 bump"}`. An example `.app.src` is listed below
```erlang
{application, sample_app,
 [{description, "An OTP library"},
  {vsn, {cmd, "rebar3 bump"}},
  {registered, []},
  {applications,
   [kernel,
    stdlib
   ]},
  {env,[]},
  {modules, []},

  {licenses, ["Apache 2.0"]},
  {links, []}
 ]}.
 ```

Then just call your plugin directly in an existing application:
```bash
$ rebar3 bump [major|minor|patch|pre}
```
This plugin requires a configuration file `bump.config` to be present in your project. The file will get created if not present. The plugin also automatically appends git metadata to the version.

## Release
- Make appropriate code changes
- Update version in `src/rebar3_bump.app.src`
- Update plugin version in `examples/sample_app/rebar.config`
- Commit changes and cut a new release.
- Publish to [hex.pm](https://hex.pm)

## Use plugin from github
```erlang
{project_plugins, [
	{rebar3_bump, {git, "https://github.com/drvspw/rebar3_bump.git", {tag, "<release tag>"}}}
]}.
```
The release tag can be found in [releases](https://github.com/drvspw/rebar3_bump/releases) page.
