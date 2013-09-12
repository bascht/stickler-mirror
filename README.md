# Stickler::Mirror

Stickler mirror is a small addition to [stickler](https://github.com/copiousfreetime/stickler),
which takes care of the chore of mirroring your *complete* Gemfile with all dependencies in
a local stickler installation. This code is extracted from a [pull request](https://github.com/copiousfreetime/stickler/issues/28)
from the official stickler repository.


## Requirements

* Bundler
* A working Stickler configuration

## Installation

Just install it via:

    $ gem install stickler-mirror

## Usage

    $ bundle
    $ stickler-mirror

    Mirroring trollop-2.0...
    Asking http://localhost:6789/ to mirror trollop-2.0 from rubygems.org : OK -> http://localhost:6789/gems/trollop-2.0.gem

    Mirroring tilt-1.4.1...
    Asking http://localhost:6789/ to mirror tilt-1.4.1 from rubygems.org : OK -> http://localhost:6789/gems/tilt-1.4.1.gem

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
