# vagrant-mongodb-cluster
Simple testing of mongodb cluster setup changes using Vagrant

# Usage

``
cd vagrant-mongodb-cluster && vagrant up
...
vagrant ssh mongodb01.local

[do your thing]

vagrant destroy
```

If you need more memory, see `Vagrantfile` and search for `v.memory = 512` line, alter it to your liking. Enjoy!
