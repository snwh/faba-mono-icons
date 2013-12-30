#!/bin/bash

#Enter main directory
cd $HOME/dev/faba-mono-dark/Faba-Dark

DIRECTORIES=('16x16' '22x22' '24x24')

# Generate symlinks
echo 'Generating symlinks...'
for directory in "${DIRECTORIES[@]}"
do
	cd $directory
	icontool-map -c actions
	icontool-map -c apps
	icontool-map -c categories
	icontool-map -c devices
	icontool-map -c mimetypes
	icontool-map -c places
	icontool-map -c status
	cd ..
done
echo 'Done.'


# Manually generate symlinks missed by icontool

echo 'Will now generate symlinks missed by "icontool".'

DIRECTORIES=('16x16/animations' '22x22/animations' '24x24/animations')

echo 'Generating symlinks for status...'
for directory in "${DIRECTORIES[@]}"
do
	cd $directory
	# Secure network animations
	ln -sf nm-stage01-connecting01.png nm-vpn-connecting01.png
	ln -sf nm-stage01-connecting02.png nm-vpn-connecting02.png
	ln -sf nm-stage01-connecting03.png nm-vpn-connecting03.png
	ln -sf nm-stage01-connecting04.png nm-vpn-connecting04.png
	ln -sf nm-stage01-connecting05.png nm-vpn-connecting05.png
	ln -sf nm-stage01-connecting06.png nm-vpn-connecting06.png
	ln -sf nm-stage01-connecting07.png nm-vpn-connecting07.png
	ln -sf nm-stage01-connecting08.png nm-vpn-connecting08.png
	ln -sf nm-stage01-connecting09.png nm-vpn-connecting09.png
	ln -sf nm-stage01-connecting10.png nm-vpn-connecting10.png
	ln -sf nm-stage01-connecting11.png nm-vpn-connecting11.png
	ln -sf nm-stage01-connecting12.png nm-vpn-connecting12.png
	ln -sf nm-stage02-connecting01.png nm-vpn-connecting13.png
	ln -sf nm-stage02-connecting02.png nm-vpn-connecting14.png
	cd ..
	cd ..
done

DIRECTORIES=('16x16/status' '22x22/status' '24x24/status')

echo 'Generating symlinks for status...'
for directory in "${DIRECTORIES[@]}"
do
	cd $directory
	ln -sf input-keyboard.png ibus-keyboard.png

	# Symbolic Batteries
	ln -sf battery-empty.png battery-empty-symbolic.png
	ln -sf battery-empty-charging.png battery-empty-charging-symbolic.png
	ln -sf battery-full.png battery-full-symbolic.png
	ln -sf battery-full-charged.png battery-full-charged-symbolic.png
	ln -sf battery-full-charging.png battery-full-charging-symbolic.png
	ln -sf battery-good.png battery-good-symbolic.png
	ln -sf battery-good-charging.png battery-good-charging-symbolic.png
	ln -sf battery-low.png battery-low-symbolic.png
	ln -sf battery-low-charging.png battery-low-charging-symbolic.png
	ln -sf battery-caution.png battery-caution-symbolic.png
	ln -sf battery-caution-charging.png battery-caution-charging-symbolic.png
	ln -sf battery-medium.png battery-medium-symbolic.png
	ln -sf battery-medium-charging.png battery-medium-charging-symbolic.png
	ln -sf battery-missing.png battery-missing-symbolic.png

	# Networking
	ln -sf nm-signal-0.png nm-signal-0-secure.png
	ln -sf nm-signal-00.png nm-signal-00-secure.png
	ln -sf nm-signal-25.png nm-signal-25-secure.png
	ln -sf nm-signal-50.png nm-signal-50-secure.png
	ln -sf nm-signal-75.png nm-signal-75-secure.png
	ln -sf nm-signal-100.png nm-signal-100-secure.png

	# XFCE Specific
	ln -sf gpm-phone-000.png xfpm-phone-000.png
	ln -sf gpm-phone-020.png xfpm-phone-020.png
	ln -sf gpm-phone-040.png xfpm-phone-040.png
	ln -sf gpm-phone-060.png xfpm-phone-060.png
	ln -sf gpm-phone-080.png xfpm-phone-080.png
	ln -sf gpm-phone-100.png xfpm-phone-100.png
	ln -sf gpm-mouse-000.png xfpm-mouse-000.png
	ln -sf gpm-mouse-020.png xfpm-mouse-020.png
	ln -sf gpm-mouse-040.png xfpm-mouse-040.png
	ln -sf gpm-mouse-060.png xfpm-mouse-060.png
	ln -sf gpm-mouse-080.png xfpm-mouse-080.png
	ln -sf gpm-mouse-100.png xfpm-mouse-100.png
	ln -sf gpm-phone-000.png xfpm-phone-000.png
	ln -sf gpm-phone-020.png xfpm-phone-020.png
	ln -sf gpm-phone-040.png xfpm-phone-040.png
	ln -sf gpm-phone-060.png xfpm-phone-060.png
	ln -sf gpm-phone-080.png xfpm-phone-080.png
	ln -sf gpm-phone-100.png xfpm-phone-100.png
	ln -sf gpm-keyboard-000.png xfpm-keyboard-000.png
	ln -sf gpm-keyboard-020.png xfpm-keyboard-020.png
	ln -sf gpm-keyboard-040.png xfpm-keyboard-040.png
	ln -sf gpm-keyboard-060.png xfpm-keyboard-060.png
	ln -sf gpm-keyboard-080.png xfpm-keyboard-080.png
	ln -sf gpm-keyboard-100.png xfpm-keyboard-100.png
	ln -sf battery-low.png xfpm-primary-040.png
	ln -sf battery-full.png xfpm-primary-100.png
	ln -sf battery-good.png xfpm-primary-080.png
	ln -sf battery-empty.png xfpm-primary-000.png
	ln -sf battery-medium.png xfpm-primary-060.png
	ln -sf battery-caution.png xfpm-primary-020.png
	ln -sf battery-missing.png xfpm-primary-missing.png
	ln -sf battery-full-charged.png xfpm-primary-charged.png
	ln -sf battery-low-charging.png xfpm-primary-040-charging.png
	ln -sf battery-full-charging.png xfpm-primary-100-charging.png
	ln -sf battery-good-charging.png xfpm-primary-080-charging.png
	ln -sf battery-empty-charging.png xfpm-primary-000-charging.png
	ln -sf battery-medium-charging.png xfpm-primary-060-charging.png
	ln -sf battery-caution-charging.png xfpm-primary-020-charging.png
	ln -sf battery-low.png xfpm-ups-040.png
	ln -sf battery-full.png xfpm-ups-100.png
	ln -sf battery-good.png xfpm-ups-080.png
	ln -sf battery-empty.png xfpm-ups-000.png
	ln -sf battery-medium.png xfpm-ups-060.png
	ln -sf battery-caution.png xfpm-ups-020.png
	ln -sf battery-missing.png xfpm-ups-missing.png
	ln -sf battery-full-charged.png xfpm-ups-charged.png
	ln -sf battery-low-charging.png xfpm-ups-040-charging.png
	ln -sf battery-full-charging.png xfpm-ups-100-charging.png
	ln -sf battery-good-charging.png xfpm-ups-080-charging.png
	ln -sf battery-empty-charging.png xfpm-ups-000-charging.png
	ln -sf battery-medium-charging.png xfpm-ups-060-charging.png
	ln -sf battery-caution-charging.png xfpm-ups-020-charging.png

	# GNOME Specific
	ln -sf battery-low.png gpm-primary-040.png
	ln -sf battery-full.png gpm-primary-100.png
	ln -sf battery-good.png gpm-primary-080.png
	ln -sf battery-empty.png gpm-primary-000.png
	ln -sf battery-medium.png gpm-primary-060.png
	ln -sf battery-caution.png gpm-primary-020.png
	ln -sf battery-missing.png gpm-primary-missing.png
	ln -sf battery-full-charged.png gpm-primary-charged.png
	ln -sf battery-low-charging.png gpm-primary-040-charging.png
	ln -sf battery-full-charging.png gpm-primary-100-charging.png
	ln -sf battery-good-charging.png gpm-primary-080-charging.png
	ln -sf battery-empty-charging.png gpm-primary-000-charging.png
	ln -sf battery-medium-charging.png gpm-primary-060-charging.png
	ln -sf battery-caution-charging.png gpm-primary-020-charging.png
	ln -sf battery-low.png gpm-ups-040.png
	ln -sf battery-full.png gpm-ups-100.png
	ln -sf battery-good.png gpm-ups-080.png
	ln -sf battery-empty.png gpm-ups-000.png
	ln -sf battery-medium.png gpm-ups-060.png
	ln -sf battery-caution.png gpm-ups-020.png
	ln -sf battery-missing.png gpm-ups-missing.png
	ln -sf battery-full-charged.png gpm-ups-charged.png
	ln -sf battery-low-charging.png gpm-ups-040-charging.png
	ln -sf battery-full-charging.png gpm-ups-100-charging.png
	ln -sf battery-good-charging.png gpm-ups-080-charging.png
	ln -sf battery-empty-charging.png gpm-ups-000-charging.png
	ln -sf battery-medium-charging.png gpm-ups-060-charging.png
	ln -sf battery-caution-charging.png gpm-ups-020-charging.png
	ln -sf battery-low.png gpm-battery-040.png
	ln -sf battery-full.png gpm-battery-100.png
	ln -sf battery-good.png gpm-battery-080.png
	ln -sf battery-empty.png gpm-battery-000.png
	ln -sf battery-medium.png gpm-battery-060.png
	ln -sf battery-caution.png gpm-battery-020.png
	ln -sf battery-missing.png gpm-battery-missing.png
	ln -sf battery-full-charged.png gpm-battery-charged.png
	ln -sf battery-low-charging.png gpm-battery-040-charging.png
	ln -sf battery-full-charging.png gpm-battery-100-charging.png
	ln -sf battery-good-charging.png gpm-battery-080-charging.png
	ln -sf battery-empty-charging.png gpm-battery-000-charging.png
	ln -sf battery-medium-charging.png gpm-battery-060-charging.png
	ln -sf battery-caution-charging.png gpm-battery-020-charging.png

	# Weather icons
	ln -sf weather-clear-night.png weather-clear-night-000.png
	ln -sf weather-clear-night.png weather-clear-night-010.png
	ln -sf weather-clear-night.png weather-clear-night-020.png
	ln -sf weather-clear-night.png weather-clear-night-030.png
	ln -sf weather-clear-night.png weather-clear-night-040.png
	ln -sf weather-clear-night.png weather-clear-night-050.png
	ln -sf weather-clear-night.png weather-clear-night-060.png
	ln -sf weather-clear-night.png weather-clear-night-070.png
	ln -sf weather-clear-night.png weather-clear-night-080.png
	ln -sf weather-clear-night.png weather-clear-night-090.png
	ln -sf weather-clear-night.png weather-clear-night-100.png
	ln -sf weather-clear-night.png weather-clear-night-110.png
	ln -sf weather-clear-night.png weather-clear-night-120.png
	ln -sf weather-clear-night.png weather-clear-night-130.png
	ln -sf weather-clear-night.png weather-clear-night-140.png
	ln -sf weather-clear-night.png weather-clear-night-150.png
	ln -sf weather-clear-night.png weather-clear-night-160.png
	ln -sf weather-clear-night.png weather-clear-night-170.png
	ln -sf weather-clear-night.png weather-clear-night-180.png
	ln -sf weather-clear-night.png weather-clear-night-190.png
	ln -sf weather-clear-night.png weather-clear-night-200.png
	ln -sf weather-clear-night.png weather-clear-night-210.png
	ln -sf weather-clear-night.png weather-clear-night-220.png
	ln -sf weather-clear-night.png weather-clear-night-230.png
	ln -sf weather-clear-night.png weather-clear-night-240.png
	ln -sf weather-clear-night.png weather-clear-night-250.png
	ln -sf weather-clear-night.png weather-clear-night-260.png
	ln -sf weather-clear-night.png weather-clear-night-270.png
	ln -sf weather-clear-night.png weather-clear-night-280.png
	ln -sf weather-clear-night.png weather-clear-night-290.png
	ln -sf weather-clear-night.png weather-clear-night-300.png
	ln -sf weather-clear-night.png weather-clear-night-310.png
	ln -sf weather-clear-night.png weather-clear-night-320.png
	ln -sf weather-clear-night.png weather-clear-night-330.png
	ln -sf weather-clear-night.png weather-clear-night-340.png
	ln -sf weather-clear-night.png weather-clear-night-350.png
	ln -sf weather-few-clouds-night.png weather-few-clouds-night-000.png
	ln -sf weather-few-clouds-night.png weather-few-clouds-night-010.png
	ln -sf weather-few-clouds-night.png weather-few-clouds-night-020.png
	ln -sf weather-few-clouds-night.png weather-few-clouds-night-030.png
	ln -sf weather-few-clouds-night.png weather-few-clouds-night-040.png
	ln -sf weather-few-clouds-night.png weather-few-clouds-night-050.png
	ln -sf weather-few-clouds-night.png weather-few-clouds-night-060.png
	ln -sf weather-few-clouds-night.png weather-few-clouds-night-070.png
	ln -sf weather-few-clouds-night.png weather-few-clouds-night-080.png
	ln -sf weather-few-clouds-night.png weather-few-clouds-night-090.png
	ln -sf weather-few-clouds-night.png weather-few-clouds-night-100.png
	ln -sf weather-few-clouds-night.png weather-few-clouds-night-110.png
	ln -sf weather-few-clouds-night.png weather-few-clouds-night-120.png
	ln -sf weather-few-clouds-night.png weather-few-clouds-night-130.png
	ln -sf weather-few-clouds-night.png weather-few-clouds-night-140.png
	ln -sf weather-few-clouds-night.png weather-few-clouds-night-150.png
	ln -sf weather-few-clouds-night.png weather-few-clouds-night-160.png
	ln -sf weather-few-clouds-night.png weather-few-clouds-night-170.png
	ln -sf weather-few-clouds-night.png weather-few-clouds-night-180.png
	ln -sf weather-few-clouds-night.png weather-few-clouds-night-190.png
	ln -sf weather-few-clouds-night.png weather-few-clouds-night-200.png
	ln -sf weather-few-clouds-night.png weather-few-clouds-night-210.png
	ln -sf weather-few-clouds-night.png weather-few-clouds-night-220.png
	ln -sf weather-few-clouds-night.png weather-few-clouds-night-230.png
	ln -sf weather-few-clouds-night.png weather-few-clouds-night-240.png
	ln -sf weather-few-clouds-night.png weather-few-clouds-night-250.png
	ln -sf weather-few-clouds-night.png weather-few-clouds-night-260.png
	ln -sf weather-few-clouds-night.png weather-few-clouds-night-270.png
	ln -sf weather-few-clouds-night.png weather-few-clouds-night-280.png
	ln -sf weather-few-clouds-night.png weather-few-clouds-night-290.png
	ln -sf weather-few-clouds-night.png weather-few-clouds-night-300.png
	ln -sf weather-few-clouds-night.png weather-few-clouds-night-310.png
	ln -sf weather-few-clouds-night.png weather-few-clouds-night-320.png
	ln -sf weather-few-clouds-night.png weather-few-clouds-night-330.png
	ln -sf weather-few-clouds-night.png weather-few-clouds-night-340.png
	ln -sf weather-few-clouds-night.png weather-few-clouds-night-350.png
	ln -sf weather-overcast.png weather-clouds.png
	ln -sf weather-overcast.png weather-clouds-night.png
	cd ..
	cd ..
done

# Clear potential link errors
symlinks -cdr $HOME/dev/faba-mono-dark/Faba-Dark

#END