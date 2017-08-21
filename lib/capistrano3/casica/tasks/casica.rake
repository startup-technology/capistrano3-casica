namespace :casica do
  desc 'Update story/task status of casica'
  task :update_status do
    on roles(:app) do
      info "casica start updating status..."

      token = fetch(:casica_token)
      project_id = fetch(:casica_project_id)
      from_status = fetch(:casica_from_status)
      to_status = fetch(:casica_to_status)

      Capistrano3::Casica::Updater.new(token: token, project_id: project_id, from_status: from_status, to_status: to_status).execute

      info "done"
    end
  end
end

after 'deploy:finished', 'casica:update_status'
