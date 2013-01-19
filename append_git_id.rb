require 'grit'

module Jekyll
  class AppendGitID < Liquid::Tag
    def initialize(tag_name, resource, tokens)
      super
      @resource = resource.strip!
    end

    def render(context)
      repo = Grit::Repo.new(Dir.pwd)
      rev = repo.log("master", "#{Dir.pwd}#{@resource}").first.id_abbrev

      # todo: properly parse the resource to detect other GET parameters
      # that might already be there.
      "#{@resource}?#{rev}"
    end
  end
end

Liquid::Template.register_tag('append_git_id', Jekyll::AppendGitID)
