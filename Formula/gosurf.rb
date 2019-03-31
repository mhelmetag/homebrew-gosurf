class Gosurf < Formula
  desc "CLI Client for Surfline"
  homepage "https://github.com/mhelmetag/gosurf"
  url "https://github.com/mhelmetag/gosurf/releases/download/0.0.4/gosurf_darwin_amd64"
  sha256 "e46634283c047c71c1aaec05a0fe66ac1504958a5b21b027a4a825641ac6ef13"
  version "0.0.4"

  def install
    bin.install "gosurf_darwin_amd64"
    mv bin/"gosurf_darwin_amd64", bin/"gosurf"
  end

  test do
    output = shell_output(bin/"gosurf --version")
    assert_match "gosurf version #{version}", output
  end
end