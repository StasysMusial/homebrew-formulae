class KanbanBoard < Formula
  desc "Minimal kanban board TUI"
  homepage "https://github.com/StasysMusial/kanban-board"
  url "https://github.com/StasysMusial/kanban-board/archive/refs/tags/v1.1.1.tar.gz"
  sha256 "ee5bcd126be3bb7f0a78fd2552ee02061093444a99d8bf28cc9996d61ef427cf"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    system bin "kanban-board", "--version"
  end
end
