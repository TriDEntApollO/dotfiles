
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

### Install and enable user themes extension

The [User Themes](https://extensions.gnome.org/extension/19/user-themes/) is required for gnome to allow using custom user themes.

Check if **user themes** extensions is already installed by launching the **extensions app** either by running `gnome-extensions` from your terminal or laucnhing it form your app launcher.

If it already doesn't come pre-installed in the `System Extensions` 

![user-themes](https://github.com/TriDEntApollO/dotfiles/assets/68052236/b053e209-8f44-46cd-ae65-88bca73eea36)

You need to install it. You can either install it via the [browser extension](https://extensions.gnome.org/extension/19/user-themes/) 

![image](https://github.com/TriDEntApollO/dotfiles/assets/68052236/1f5dfa3f-5dd0-47c9-877b-99f640a0f81f)

or via the [Extension manager](https://flathub.org/apps/com.mattjakeman.ExtensionManager).

![image](https://github.com/TriDEntApollO/dotfiles/assets/68052236/37476ee9-515a-46fa-b5b2-bbdc32225997)

After installing the extention enable it either form the **extensions app** or the **extension manager app**.


### Changing the theme

Open the **Tweaks app** either by running `gnome-tweaks` in your terminal or launching it form your app launcher.

Click on `Appearance` on the left side menu and set your 

- **Shell** (theme) to `Graphite-teal-Dark-nord`.
- **Icons** to `Tela-circle-purple-dark`.
-  **Cursor** to `Qogir-cursors`.

![Screenshot from 2024-06-21 16-40-12](https://github.com/TriDEntApollO/dotfiles/assets/68052236/802ed28a-d6d9-44c9-a6c9-561bcb5bbda9)

**Note:** These are the options I use, the dotfiles repo ships with some more themes, icon packs and cursors other than these too. You will be able to see them in the drop down menu while selecting the options, so you can use any one of them if u want or download new ones form the internet and use them.

## Adding other themes, icons and cusrsor packs

If you want to add custom themes or themes and icon packs you downloaded form the web. 

- For adding **themes** extract the file and place the folder in the `dotfiles/.themes` directory. **[Important: your extracted theme folder should contain `index.theme` file]**

- For adding **icon packs** extarct the file and place the folder in the `dotfiles/.local/share/icons` directory. **[Important: your extracted icons folder should contain `index.theme` file]**

- For adding **cursor packs** extarct the file and place the folder in the `dotfiles/.local/share/icons` directory. **[Important: your extracted cursors folder should contain `cursors.theme` file, if the folder has a `index.theme` file instead just rename it to `cursors.theme`]**

## Set workspaces

Open the **Settings app** either by running `gnome-control-center` in your terminal or launching it from your app launcher.

Click on `Multitasking` on the left side menu and set your

- **Workspaces** to `Fixed Number of Workspaces`.
- **Number of Workspaces** to `6`.

![Screenshot from 2024-06-21 20-23-50](https://github.com/Godiesc/firefox-one/assets/68052236/00047df4-bb03-459b-8035-30c249f20dc1)



## Additionals (gnome shell extentions)

Here's a small bonus on the gnome shell extensions and the settings I use.

**Shell Extentions**

- [Forge](https://extensions.gnome.org/extension/4481/forge/)
- [Vitals](https://extensions.gnome.org/extension/1460/vitals/) ***[Required]***
- [Caffeine](https://extensions.gnome.org/extension/517/caffeine/)
- [Space Bar](https://extensions.gnome.org/extension/517/caffeine/) ***[Required]***
- [Logo Menu](https://extensions.gnome.org/extension/4451/logo-menu/) ***[Required]***
- [Color Picker](https://extensions.gnome.org/extension/3396/color-picker/) ***[Required]***
- [Search Light](https://extensions.gnome.org/extension/5489/search-light/) ***[Required]***
- [X11 Gestures](https://extensions.gnome.org/extension/4033/x11-gestures/)
- [Blur My Shell](https://extensions.gnome.org/extension/3193/blur-my-shell/) ***[Required]***
- [Just Perfection](https://extensions.gnome.org/extension/3843/just-perfection/)
- [GNOME Fuzzy App Search](https://extensions.gnome.org/extension/3956/gnome-fuzzy-app-search/)
- [Gnome 4x UI Improvements](https://extensions.gnome.org/extension/4158/gnome-40-ui-improvements/) ***[Required]***
- [AppIndicator and KStatusNotifierItem Support](https://extensions.gnome.org/extension/615/appindicator-support/) ***[Required]***

**Note:** Extentions marked as **"Required"** are needed to replicate my exact status bar.

![image](https://github.com/Godiesc/firefox-one/assets/68052236/8d9ad92c-ab83-449f-828c-18ef2eaec919)

### Space Bar settings

![image](https://github.com/Godiesc/firefox-one/assets/68052236/2347fffe-fbce-4186-a23e-3c8b3945f9aa)

### Search Light settings

![image](https://github.com/Godiesc/firefox-one/assets/68052236/059a554f-a8a0-4d62-96b8-90ff49a403ac)
![image](https://github.com/Godiesc/firefox-one/assets/68052236/3b346cba-97a2-4212-bd6d-01a4ababd187)


### Blur My Shell settings

![image](https://github.com/Godiesc/firefox-one/assets/68052236/ccd7e2aa-c2c3-4508-bab0-f85cf67b240f)
![image](https://github.com/Godiesc/firefox-one/assets/68052236/90ed1006-01d3-4878-9022-0fa5060be7bc)
![image](https://github.com/Godiesc/firefox-one/assets/68052236/23a22791-3c76-456e-980d-5a22b253b0b0)
![image](https://github.com/Godiesc/firefox-one/assets/68052236/1cb934d8-2a0d-4905-a92e-79e67cf7944e)
![image](https://github.com/Godiesc/firefox-one/assets/68052236/fa5b493d-c629-4cfd-8c68-2dbb0b8df406)
![image](https://github.com/Godiesc/firefox-one/assets/68052236/a20f9345-d822-4d04-a273-cc778b2f7604)
**Note:** Extension settings that are not shown are set to default and hence doesn't require any modifications.
