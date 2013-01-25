module Commitshots
  class Commits
    def initialize(backend)
      @backend = backend
    end

    def each
      @backend.get_revisions.each do |line|
        parts = line.split(' ')
        id = parts[0]
        msg = line.gsub(id, '')
        @backend.checkout_revision(id)
        yield id, msg
      end
    end
  end
end

