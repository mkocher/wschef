unless system("git --version | grep 'git version'")
  include_recipe "pivotal_workstation::homebrew"
    
  execute "brew install git" do
    user WS_USER
    command "brew install git"
  end
end