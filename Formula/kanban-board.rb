class KanbanBoard < Formula
  desc "Minimal kanban board TUI"
  homepage "https://github.com/StasysMusial/kanban-board"
  url "github.com/StasysMusial/kanban-board"
  version "1.0.1"
  sha256 "6e6351663266be990fe8928d25ad5cc92720b7c4816fccdc0b3b029c6e141c06"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    system bin "/kanban-board", "--version"
  end
end
