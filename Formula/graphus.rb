class Graphus < Formula
  desc "Java/Spring code graph and RAG CLI"
  homepage "https://github.com/alcantaraleo/graphus"
  # Keep version in sync with the Graphus GitHub release tag.
  version "0.6.1"
  url "https://github.com/alcantaraleo/graphus/releases/download/v#{version}/graphus.jar"
  # Update this checksum for every new release.
  sha256 "e7a5ad4492e2331480e04d577a4303b2745c808e81c3181750208cb7c5ae5777"
  license "Apache-2.0"

  depends_on "openjdk@21"

  def install
    libexec.install "graphus.jar"

    bin.mkpath
    (bin/"graphus").atomic_write <<~EOS
      #!/bin/sh
      export JAVA_HOME="${JAVA_HOME:-#{Formula["openjdk@21"].opt_prefix}}"
      exec "#{Formula["openjdk@21"].opt_bin}/java" -jar "#{libexec}/graphus.jar" "$@"
    EOS
    chmod 0755, bin/"graphus"
  end

  test do
    output = shell_output("#{bin}/graphus --help")
    assert_match "Java/Spring code graph + RAG CLI", output
    assert_match "install", output
  end
end
