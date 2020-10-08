echo "Quick hosts and services scan v.1"

command_exists() {
    # check if command exists and fail otherwise
    command -v "$1" >/dev/null 2>&1
    if [[ $? -ne 0 ]]; then
        echo "I require $1 but it's not installed. Abort."
        exit 1
    fi
}
for COMMAND in "awk" "nmap"; do
    command_exists "${COMMAND}"
done


./findhosts.sh
./get_services.sh

