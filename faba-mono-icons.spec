# Spec file for package faba-mono-icons
#
# Copyright (c) 2014 Sam Hewitt <hewittsamuel@gmail.com>
#
# All modifications and additions to the file contributed by third parties
# remain the property of their copyright owners, unless otherwise agreed
# upon. The license for this file, and modifications and additions to the
# file, is the same license as for the pristine package itself (unless the
# license for the pristine package is not an Open Source License, in which
# case the license is the MIT License). An "Open Source License" is a
# license that conforms to the Open Source Definition (Version 1.9)
# published by the Open Source Initiative.
#


Name:		faba-mono-icons
Version:	4.0
Release:	0

Summary:	Faba Icon Theme (Monochrome)
Group:		System/GUI/Other
License:    LGPL-3.0+ or CC-BY-SA-3.0

Group:      System/GUI/GNOME
Url:        http://www.mokaproject.com/faba-icon-theme
Source0:	%{name}-%{version}.tar.gz

Requires:	faba-icon-theme
BuildArch:	noarch


%description
The monochromatic panel icon sets for Faba.

%prep
%setup -q

# Delete dead icon symlinks
find -L . -type l -delete

%build

%install
install -dpm 0755 $RPM_BUILD_ROOT%{_datadir}/icons/
cp -a Faba-Mono/ $RPM_BUILD_ROOT%{_datadir}/icons/

%files
%doc AUTHORS LICENSE
%{_datadir}/icons/Faba-Mono/
