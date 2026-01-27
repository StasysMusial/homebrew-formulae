class KanbanBoard < Formula
  desc "Minimal kanban board TUI"
  homepage "https://github.com/StasysMusial/kanban-board"
  url "https://github.com/StasysMusial/kanban-board/archive/refs/tags/v1.1.0.tar.gz"
  sha256 "E217323A76667C1E527611565D6FC8E834389EFCF6B302A2C347210788BA65B6"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    system bin "kanban-board", "--version"
  end
end
