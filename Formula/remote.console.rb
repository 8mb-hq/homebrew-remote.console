class RemoteConsole < Formula
  desc "The official remote.console CLI for sending your console output to the clouds"
  homepage "https://github.com/ericadamski"
  url "https://registry.npmjs.org/@remote.console/cli/-/cli-0.1.0-beta.11.tgz"
  sha256 "058eba73cff4824136acfefb33471e56447d33c7d7710c859df26ac77cefa1a7"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{libexec}", "@remote.console/cli"

    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    system "#{bin}/remote.console", "--version"
  end
end
