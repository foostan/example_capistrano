# config valid only for Capistrano 3.1
lock '3.3.5'

set :application, 'example_app'

set :deploy_from, 'files/sample'

set :deploy_to, '~/sample'
