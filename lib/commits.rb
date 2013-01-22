module Commitshots
  class Commits
    def each
      commit_ids = `git rev-list --all --pretty=oneline`.split("\n")
      commit_ids.reverse!

      commit_ids.each do |line|
        parts = line.split(' ')
        id = parts[0]
        msg = line.gsub(id, '')
        `git checkout #{id}`
        yield id, msg
      end
    end
  end
end

