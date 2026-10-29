class Ocagents < Formula
  desc "Universal CLI & specialist agents for Cloud Architecture, DevSecOps, SRE, and FinOps"
  homepage "https://open-cloud-agents.github.io/ocagents/"
  url "https://github.com/open-cloud-agents/ocagents/archive/refs/tags/v1.3.0.tar.gz"
  sha256 "65ac048a90b9dda10aeb3286f62f7fadf81d0da5c09c66b5d2f69db576bea01c"
  license "Apache-2.0"
  head "https://github.com/open-cloud-agents/ocagents.git", branch: "main"

  depends_on "python@3.12"

  def install
    pkgshare.install "agents", "skills", "rules", "scripts", "src"

    (bin/"ocagents").write <<~EOS
      #!/usr/bin/env bash
      export OCAGENTS_HOME="#{opt_pkgshare}"
      exec "#{Formula["python@3.12"].opt_bin}/python3.12" "#{opt_pkgshare}/src/ocagents/cli.py" "$@"
    EOS

    (bin/"oca").write <<~EOS
      #!/usr/bin/env bash
      exec "#{bin}/ocagents" "$@"
    EOS

    chmod 0755, bin/"ocagents"
    chmod 0755, bin/"oca"
  end

  test do
    assert_match "Open Cloud Agents", shell_output("#{bin}/ocagents info")
    assert_match "Principal Cloud Architect", shell_output("#{bin}/ocagents list")
  end
end
