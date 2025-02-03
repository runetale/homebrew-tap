# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Runetaled < Formula
  desc "p2p mesh network"
  homepage "https://runetale.com/"
  version "0.0.6"
  license "BSD3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/runetale/runetale/releases/download/v0.0.6/runetaled_0.0.6_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "756c8ef7b57ba25db108ba49d305aacaa7ad526917b73b00ae5da38e743fa38c"

      def install
        bin.install "runetaled"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/runetale/runetale/releases/download/v0.0.6/runetaled_0.0.6_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "e30cbc398ec08fe9688353f169235ee8c56ac21b80439825d496ddc855d05e49"

      def install
        bin.install "runetaled"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/runetale/runetale/releases/download/v0.0.6/runetaled_0.0.6_linux_armv6.tar.gz", using: CurlDownloadStrategy
      sha256 "f1694ee1e656e19980aaa6bf7bbee666eb647e99c851bda96ac331634ab9668a"

      def install
        bin.install "runetaled"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/runetale/runetale/releases/download/v0.0.6/runetaled_0.0.6_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "5d38c734cf0bb652c91c1a6b8de7c78ee5c6a7ceef7dbb3d2d700e02a78e459f"

      def install
        bin.install "runetaled"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/runetale/runetale/releases/download/v0.0.6/runetaled_0.0.6_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "f777a6d2943afb6ab9d7a9ef178d804c39883edc3b0b2f0e86743e0c09bd7b00"

      def install
        bin.install "runetaled"
      end
    end
  end

  test do
    system "#{bin}/runetaled version"
  end
end
