class Cv < Formula
  desc "Custom computer vision library"
  homepage "https://github.com/YOUR_USERNAME/cv"
  url "https://github.com/YOUR_USERNAME/cv/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "PUT_SHA256_HERE"
  license "MIT"

  depends_on "cmake"

  def install
    system "cmake", "-S", ".", "-B", "build", *std_cmake_args
    system "cmake", "--build", "build"
    system "cmake", "--install", "build"
  end

  test do
    system "true"
  end
end