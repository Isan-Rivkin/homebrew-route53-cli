# This file was generated by GoReleaser. DO NOT EDIT.
class R53 < Formula
  desc "Cli tool for Route53 to quickly query values of records"
  homepage "https://github.com/Isan-Rivkin/route53-cli"
  version "0.2.1"
  bottle :unneeded
  if OS.mac?
    url "https://github.com/Isan-Rivkin/route53-cli/releases/download/v0.2.1/route53-cli_0.2.1_darwin_amd64.tar.gz"
    sha256 "b347fa981b32018b26e6960fbd3a112adc633e63044dbf5d9e5837742ee77a63"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/Isan-Rivkin/route53-cli/releases/download/v0.2.1/route53-cli_0.2.1_linux_amd64.tar.gz"
    sha256 "748663d233721929f4a3e42c5b1c8a7dec25a94fcf08f05dd261586d64683501"
  end
  depends_on "git"
  def install
    bin.install "r53"
  end
end
