# What is indigo OS:
Indigo os (Code_Name: **Indigofera tinctoria**) is a custom [Ublue](https://universal-blue.org/) based bootc Linux distro. It simplifies the process of setting up a computer lab with stuff like
- Python
- Mysql/mariadb
- *Text Editor*:
- - [Vscodium](https://vscodium.com/)
- - [Neovim](https://neovim.io/)
- git
- other rust based cli tool [take a look in install.sh](build_files/install.sh)
- System configs
- etc

# Restrictions on the install of extensions in Vscodium:
There are restriction on installing extensions except a few extension like [Python Extension](https://open-vsx.org/extension/ms-python/python), [Vim](https://open-vsx.org/extension/vscodevim/vim):

This is done by the use of policy json in [/etc/vscodium/policy.json](system_files/etc/vscodium/policy.json), take a look at [vscode extensions docs](https://code.visualstudio.com/docs/enterprise/extensions) and [vscode enterprise policies docs](https://code.visualstudio.com/docs/enterprise/policies#_linux-json-policies)

in the [policy.json](system_files/etc/vscodium/policy.json) from lines 21:
``` json
{
  "AllowedExtensions": {
      "ms-python.python":true,
      "ms-python.vscode-pylance":true,
      "ms-python.debugpy":true,
      "ms-python.vscode-python-envs":true,
      "vscodevim.vim":true
    },
}
```

this gives us the allowed list of extensions\
the rest is all just auto generated
