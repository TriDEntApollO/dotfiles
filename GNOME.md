
# Gnome-Shell Theme Installation

**Note:** It's recommended to use [GNOME 46](https://release.gnome.org/46/). If you are running an older version of GNOME, you might face issues.

### Install gnome-tweaks

To use custom gnome-shell themes you need the [gnome-tweaks](https://github.com/GNOME/gnome-tweaks/tree/master) app. If already not installed then you nedd to install it.

For arch or an arch based distros, install it with pacman 

```shell
sudo pacman -S gnome-tweaks
```

For debian based distros, install it with apt

```shell
sudo apt install gnome-tweaks
```

For fedora. install it with dnf

```shell
sudo dnf install gnome-tweaks 
```

Alternatively you can install it via the gnome [Software Center](https://apps.gnome.org/Software/) [**Disclaimer**: gnome tweaks might not be available on all distros from the software center].

For other distros you can either build the package or check out the if the package is available in the distros official mirror.

### Install gnome-shell-extensions

To allow custom gnome themes you need the extensions app to turn on extensions, this should come prepackaged and installed with default gnome installation on most distros. But if for some reason you dont have it, you need to install it 

For arch or an arch based distros, install it with pacman 

```shell
sudo pacman -S gnome-shell-extensions
```

For debian based distros, install it with apt

```shell
sudo apt install gnome-shell-extensions
```

For fedora. install it with dnf

```shell
sudo dnf install gnome-extensions-app
```

Alternatively you can install it via the gnome [Software Center](https://apps.gnome.org/Software/).

For other distros you can either it form [Flathub](https://flathub.org/apps/org.gnome.Extensions) or check out the if the package is available in the distros official mirror.

### Install and enalbe user themes extension

The [User Themes](https://extensions.gnome.org/extension/19/user-themes/) is required for gnome to allow using custom user themes.

Check if **user themes** extensions is already installed by launching `gnome-extensions` either by running it from you terminal by typing this or laucnhing it form your app launcher.

If it already doesn't come pre-installed in the `System Extensions` 

![user-themes](https://github.com/TriDEntApollO/dotfiles/assets/68052236/b053e209-8f44-46cd-ae65-88bca73eea36)

You need to install it. You can either install it via the [browser extension](https://extensions.gnome.org/extension/19/user-themes/) 

![image](https://github.com/TriDEntApollO/dotfiles/assets/68052236/1f5dfa3f-5dd0-47c9-877b-99f640a0f81f)

or via the [Extension manager](https://flathub.org/apps/com.mattjakeman.ExtensionManager).

![image](https://github.com/TriDEntApollO/dotfiles/assets/68052236/37476ee9-515a-46fa-b5b2-bbdc32225997)

After installing the extention enable it either form the **extensions app** or the **extension manager app**.
