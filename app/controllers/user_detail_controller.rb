class UserDetailController < ApplicationController
    before_action :set_space, only: [:show, :destroy, :edit, :update]


    