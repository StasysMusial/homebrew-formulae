class KanbanBoard < Formula
  desc "a minimal kanban board TUI"
  homepage "https://github.com/StasysMusial/kanban-board"
  url "https://github.com/StasysMusial/kanban-board/archive/refs/tags/v1.0.0.tar.gz"
  version "1.0.0"
  sha256 "993c61f600d65a7e8e2b86f1cf1fd8cd1364e4e6dc854b51516d878616c03a19"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    system "#{bin}/kanban-board", "--version"
  end
end
