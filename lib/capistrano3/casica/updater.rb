module Capistrano3
  module Casica
    class Updater
      attr_accessor :token, :project_id, :from_status, :to_status

      def initialize(token:,project_id:,from_status:,to_status:)
        @token = token
        @project_id = project_id
        @from_status = from_status
        @to_status = to_status
      end

      def execute
        client = ::Casica::Client.new(token: token)
        client.update_story_status(project_id: project_id, from_status: from_status, to_status: to_status)
        client.update_task_status(project_id: project_id, from_status: from_status, to_status: to_status)
      end
    end
  end
end
