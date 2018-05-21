p6df::modules::R::version() { echo "0.0.1" }
p6df::modules::R::deps()    { 
	ModuleDeps=(
	)
}

p6df::modules::R::external::brew() {
}

p6df::modules::R::init() {

  p6df::modules::R::Renv::init
}

p6df::modules::R::Renv::init() {
    [ -n "$DISABLE_ENVS" ] && return

    export RENV_ROOT=/Users/pgollucci/.local/share/viking/Renv
    p6dfz::util::path_if $RENV_ROOT/bin

    if [ -x $RENV_ROOT/bin/renv ]; then
      export HAS_RENV=1
      eval "$(renv init - zsh)"
    fi
}

p6df::prompt::R::line() {

  env_version "rb"
}

p6df::modules::R::init
