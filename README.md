# riemann.osv
So far, this is a toy project to try out to run riemann in a unikernel.

# Setup
Run ```./setup.sh``` to download and extract the current (at the time of writing this) riemann package

Alter the host riemann binds to in /riemann-0.2.10/etc/riemann.config or use port forwarding while running. I chose to copy config to ./riemann.config and alter that file.

# Run

Run the image on VirtualBox using this command:

    capstan run -p vbox

# Send data to riemann.osv
