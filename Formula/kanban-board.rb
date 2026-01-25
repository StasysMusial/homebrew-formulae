class KanbanBoard < Formula
  desc "a minimal kanban board TUI"
  homepage "https://github.com/StasysMusial/kanban-board"
  url "https://github.com/StasysMusial/kanban-board/archive/refs/tags/v1.0.1.tar.gz"
  version "1.0.1"
  sha256 "d06d8296f62a3bf3748836a040e04d0a1f3434fc8501d57080cf76b352bf2308"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    system "kanban-board", "--version"
  end
end
