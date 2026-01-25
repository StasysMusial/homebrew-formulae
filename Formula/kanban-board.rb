class KanbanBoard < Formula
  desc "a minimal kanban board TUI"
  homepage "https://github.com/StasysMusial/kanban-board"
  url "https://github.com/StasysMusial/kanban-board/archive/refs/tags/v1.0.1.tar.gz"
  version "1.0.1"
  sha256 ""
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    system "kanban-board", "--version"
  end
end
