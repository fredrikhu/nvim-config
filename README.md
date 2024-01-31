git clone https://github.com/wbthomason/packer.nvim "$env:LOCALAPPDATA\nvim-data\site\pack\packer\start\packer.nvim"

scoop install zig # treesitter requires a c compiler
dotnet tool install --global csharp-ls # install dotnet language server
