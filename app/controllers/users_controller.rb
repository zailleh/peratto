class UsersController < ApplicationController

  before_action :require_authentication, :except => [:create, :login]

  def create

  end

  def login

  end


end
