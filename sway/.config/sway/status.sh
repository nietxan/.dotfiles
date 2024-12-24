date_formatted=$(date "+%a %F %H:%M")

battery_status=$(cat /sys/class/power_supply/BAT0/status)

battery=$(acpi | cut -d ',' -f2 | cut -d ' ' -f2)

echo $battery_status $battery $date_formatted
