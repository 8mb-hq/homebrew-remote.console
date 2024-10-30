class RemoteConsole < Formula
  desc "The official remote.console CLI for sending your console output to the clouds"
  homepage "https://github.com/ericadamski"
  url "https://registry.npmjs.org/@remote.console/cli/-/cli-0.1.0-beta.7.tgz"
  sha256 "53f96baf0a8b7c5f71749ecc04607193ba6bf906"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    system "#{bin}/remote.console", "--version"
  end
end
