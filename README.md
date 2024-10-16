```shell
git clone https://github.com/wbthomason/packer.nvim "$env:LOCALAPPDATA\nvim-data\site\pack\packer\start\packer.nvim"

npm install -g svelte-language-server
npm install -g typescript typescript-language-server

scoop install zig # treesitter requires a c compiler
scoop install zls # install zig language server

# Old: 
dotnet tool install --global csharp-ls # install dotnet language server
# New: 
[roslyn.nvim](https://github.com/seblj/roslyn.nvim)
```

```json
# Include in svelte tsconfig.json
{
	"extends": "./.svelte-kit/tsconfig.json",
	"compilerOptions": {
		"plugins": [{
			"name": "typescript-svelte-plugin",
			"enabled": true,
			"assumeIsSvelteProject": false
		}]
	}
}
```
