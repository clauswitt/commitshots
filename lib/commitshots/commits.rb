module Commitshots
  class Commits
    def each
      `git rev-list --reverse --all --pretty=oneline`.split("\n").each do |line|
        parts = line.split(' ')
        id = parts[0]
        msg = line.gsub(id, '')
        `git checkout #{id}`
        yield id, msg
      end
    end
  end
end

