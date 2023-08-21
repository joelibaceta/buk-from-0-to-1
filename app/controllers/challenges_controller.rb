class ChallengesController < ApplicationController
    def index
        @challenges = Challenge.all
    end

    def show
        # create challenge if it doesn't exist
        @challenge = Challenge.find_or_create_by(id: params[:id])
        return @challenge
    end

    def new
        @challenge = Challenge.new
    end

    def create
        @challenge = Challenge.new(challenge_params)
        if @challenge.save
            redirect_to @challenge
        else
            render 'new'
        end
    end

    private
    def challenge_params
        params.require(:challenge).permit(:name, :description, :map_id)
    end
end
