p6df::modules::R::version() { echo "0.0.1" }
p6df::modules::R::deps()    { 
	ModuleDeps=()
}

p6df::modules::R::external::brew() {

  brew install R
}

p6df::modules::R::init() {
}

p6df::modules::R::init
