include_recipe "../cookbooks/common/essential.rb"
include_recipe "../cookbooks/common/development.rb"
include_recipe "../cookbooks/letsencrypt.rb"
include_recipe "../cookbooks/vim.rb"
include_recipe "../cookbooks/tmux.rb"

include_recipe "../cookbooks/nodejs.rb"
include_recipe "../cookbooks/yarn.rb"
include_recipe "../cookbooks/rust.rb"

include_recipe "../cookbooks/nginx.rb"
include_recipe "../cookbooks/mysql.rb"
include_recipe "../cookbooks/anyenv/default.rb"
include_recipe "../cookbooks/anyenv/rbenv.rb"
