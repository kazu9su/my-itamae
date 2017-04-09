execute "Install Rust" do
  command <<-CMD
    curl https://sh.rustup.rs -sSf | sh
  CMD
end
