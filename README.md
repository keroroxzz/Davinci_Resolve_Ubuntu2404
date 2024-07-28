# Davinci_Resolve_Ubuntu2404
Additional step to run Davinci Resolve on Ubuntu 24.04

# Execution
First, try running resolve via the terminal command.

    /opt/resolve/bin/resolve

If it shows the following error message, this script could fix it.

    /opt/resolve/bin/resolve: symbol lookup error: /lib/x86_64-linux-gnu/libpango-1.0.so.0: undefined symbol: g_once_init_leave_pointer

Execute the bash file to download compatible libs from Ubuntu 22.04

    ./replace_libs.sh

# Disclaimer
This script does not secure the safety of the system, please execute the script only if you understand the risk and the script content!
