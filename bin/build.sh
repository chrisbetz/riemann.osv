export CAPSTAN_QEMU_PATH=/usr/local/bin/qemu-system-x86_64
capstan delete riemann.osv
rm -rf ~/.capstan/repository/riemann.osv/
capstan build -v -p vbox
VBoxManage internalcommands sethduuid ~/.capstan/repository/riemann.osv/riemann.osv.vbox f01ba77d-3be1-40da-bb26-9a40ebd19327
