execute "Install Rust" do
  command <<-CMD
    curl -sf -L https://static.rust-lang.org/rustup.sh | sh
  CMD
  not_if "test -d /usr/local/lib/rustlib"
end
