p6df::modules::R::version() { echo "0.0.1" }
p6df::modules::R::deps()    {
	ModuleDeps=(
	)
}

p6df::modules::R::external::brew() {
}

p6df::modules::R::init() {

  p6df::modules::R::Renv::init "$P6_DFZ_SRC_DIR"
}

p6df::modules::R::Renv::init() {
    local dir="$1"

    [ -n "$DISABLE_ENVS" ] && return

    RENV_ROOT=$dir/viking/Renv

    if [ -x $RENV_ROOT/bin/renv ]; then
      export RENV_ROOT
      export HAS_RENV=1

      p6dfz::util::path_if $RENV_ROOT/bin
      eval "$(renv init - zsh)"
    fi
}

p6df::prompt::R::line() {

  env_version "R"
}
