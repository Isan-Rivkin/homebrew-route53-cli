class Route53Cli < Formula
  desc "Cli tool for Route53 to quickly query values of records"
  homepage "https://github.com/Isan-Rivkin/route53-cli"
  url "https://github.com/Isan-Rivkin/route53-cli/releases/download/v0.1.2/route53-cli_0.1.2_darwin_amd64.tar.gz"
  sha256 "2feda75a55f9ebf3cb2ab58e975af57606787cfba41b67d7d7f92062ca145fdc"
  license "Apache-2.0"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args
  end

  test do
    assert_match "Run as expected", shell_output(bin/"route53-cli")
  end
end
