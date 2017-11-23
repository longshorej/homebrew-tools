class ReactiveCli < Formula
  desc "Lightbend Reactive CLI"
  # homepage "https://www.lightbend.com/products/enterprise-suite/advanced-tooling"
  homepage "https://github.com/lightbend/reactive-cli"

  depends_on "re2"

  url "https://bintray.com/lightbend/generic/download_file?file_path=reactive-cli-0.0.1-SNAPSHOT-Mac_OS_X-x86_64.zip"
  version "0.0.1"
  sha256 "456c48d60df9a3be2a2b32c25c5e02ce6df659c11481cd072ba5266837b3c9c1"

  def install
    bin.install Dir["bin/*"]
    lib.install Dir["lib/*"]
  end

  test do
    system bin/"reactive-cli", "-help"
  end
end
