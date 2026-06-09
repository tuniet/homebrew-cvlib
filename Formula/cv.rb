class Cv < Formula
  desc "Custom computer vision library"
  homepage "https://github.com/tuniet/cvlib"
  url "https://github.com/tuniet/cvlib/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "8ba7b8429572474ce89d5cfebe1aab8ccd64a08f13b81cd43dec53308090beba  cv.tar.gz"
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
