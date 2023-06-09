# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class R700Cli < Formula
  desc "CLI para o emulador da antena Impinj R700"
  homepage "https://github.com/nuvemtecnologia/r700.cli"
  url "https://github.com/nuvemtecnologia/r700.cli/archive/refs/tags/0.0.3.tar.gz"
  sha256 "16aff099075f72a15327bfb178a90ac223d463cd9eb4edde46b60140676c8de9"
  license ""

  depends_on "go" => :build

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test r700_cli`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
