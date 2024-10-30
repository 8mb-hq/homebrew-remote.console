class RemoteConsole < Formula
  desc "The official remote.console CLI for sending your console output to the clouds"
  homepage "https://github.com/ericadamski"
  url "https://registry.npmjs.org/@remote.console/cli/-/cli-0.1.0-beta.12.tgz"
  sha256 "be58bd17c0f2f6a05e1de589d89beb36c25cd5bad614a9e678da7b0c41b0b70f"

  # curl -o pkg.tgz $(npm view @remote.console/cli dist.tarball)
  # shasum -a 256 pkg.tgz; rm -rf pkg.tgz
  # npm view @remote.console/cli dist.tarball

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{libexec}", "@remote.console/cli"

    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    system "#{bin}/remote.console", "--version"
  end
end
