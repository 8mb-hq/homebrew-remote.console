class RemoteConsole < Formula
  desc "The official remote.console CLI for sending your console output to the clouds"
  homepage "https://github.com/ericadamski"
  url "https://registry.npmjs.org/@remote.console/cli/-/cli-0.1.0-beta.13.tgz"
  sha256 "e401b0093b2eec6d272544a4ab1f9d46927b2f2ebf56c4854e9de1ffe23f6471"

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
