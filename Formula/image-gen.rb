class ImageGen < Formula
  desc "Generate images with OpenAI GPT-Image models via ChatGPT credentials"
  homepage "https://github.com/tolo/image_gen_cli"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tolo/image_gen_cli/releases/download/v0.1.0/image-gen-v0.1.0-macos-arm64.tar.gz"
      sha256 "ec12adec3b955752b65d77503ba58c2c97f53820a1eaa86feeed0447b66a5a1c"
    end
    on_intel do
      url "https://github.com/tolo/image_gen_cli/releases/download/v0.1.0/image-gen-v0.1.0-macos-x64.tar.gz"
      sha256 "faebdd428b472a7b24c4a670f69603a77c148b34556e75dc1b8d10989b5a9fa2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tolo/image_gen_cli/releases/download/v0.1.0/image-gen-v0.1.0-linux-arm64.tar.gz"
      sha256 "7404196eb606c71f111a93da946d3a74062c539530709453b57ee69fd3d9f26e"
    end
    on_intel do
      url "https://github.com/tolo/image_gen_cli/releases/download/v0.1.0/image-gen-v0.1.0-linux-x64.tar.gz"
      sha256 "d3fba2d561edcc084cab7203b61ddd041b47f9885b3d415612f214606efdd642"
    end
  end

  def install
    bin.install "image-gen"
  end

  test do
    assert_match "image-gen", shell_output("#{bin}/image-gen --help")
  end
end
