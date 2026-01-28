class KanbanBoard < Formula
  desc "Minimal kanban board TUI"
  homepage "https://github.com/StasysMusial/kanban-board"
  url "https://github.com/StasysMusial/kanban-board/archive/refs/tags/v1.1.2.tar.gz"
  sha256 "6cca4ca24b5327ca06a84c0abe27e4bdbe4171a48224d3f92c2f1005e57d1c60"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    system bin "kanban-board", "--version"
  end
end
