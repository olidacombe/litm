### `litm` - Linux In The Middle

This VM is intended as a low-level packet-tracing man-in-the-middle box.  Plug in a USB ethernet adaptor to the host machine, run this guest, specifying the onboard NIC and USB NIC at the prompts.  When booted, login and use Wireshark (installed in the VM) to trace `br0`.  This should allow diagnosis of network activity during boot.

### Getting Started

Install [VirtualBox](https://www.virtualbox.org/) and [Vagrant](https://www.vagrantup.com/).  Install `vagrant-reload` plugin:

```
vagrant plugin install vagrant-reload
```

Run the VM:

```
vagrant up
```

Answer the 2 prompts to specify which interfaces to bridge (to be packet-traced later).  __Wait for the VM to reboot into a GUI before logging in__.  Login and password are both `vagrant`.
