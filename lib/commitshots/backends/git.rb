module Commitshots
  module Backends
    class Git
      def get_revisions
        `git rev-list --reverse --all --pretty=oneline`.split("\n")
      end

      def checkout_revision(id)
        `git checkout #{id}`
      end
    end
  end
end

