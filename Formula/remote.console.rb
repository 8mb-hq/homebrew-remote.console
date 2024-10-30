class RemoteConsole < Formula
  desc "The official remote.console CLI for sending your console output to the clouds"
  homepage "https://github.com/ericadamski"
  url "https://registry.npmjs.org/@remote.console/cli/-/cli-0.1.0-beta.7.tgz"
  sha256 "aa4b05f177097b5b21c2be0a5c7f1e774df009b93999e8857d32b8155114f060"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{libexec}", "@remote.console/cli"

    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    system "#{bin}/remote.console", "--version"
  end
end
