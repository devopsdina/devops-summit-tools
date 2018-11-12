#
# Cookbook:: tools
# Recipe:: tools_config
#
# Copyright:: 2018, The Authors, All Rights Reserved.

powershell_package 'AzureRM' do
  action :install
  version node['azurerm']['version']
end

package 'Microsoft Visual Studio Code' do # ~FC009
  source node['vscode']['url']
  remote_file_attributes(
    path: File.join(Chef::Config[:file_cache_path], 'VSCodeSetup-stable.exe')
  )
  installer_type :custom
  options '/silent /mergetasks=!runcode' # https://github.com/Microsoft/vscode/issues/860
end
