class VideosController < ApplicationController



        def index 
          videos = Video.all
          render json: videos, except: [:created_at, :updated_at], include: :comments, except: [:created_at, :updated_at]
      end
      
      
      
      
      def new 
        video = Video.new(video_params)
        if Video.save
            render json: video, except: [:created_at, :updated_at]
        else 
            render json: { errors: video.errors } 
        end
      end 
      
      
        def show
          render json: @video = Video.find(params[:id])
        end
      
      
      
        def create
          video = Video.new(video_params)
      
          if video.save
            render json: video, status: :created
          else
            render json: video.errors, status: :unprocessable_entity
          end
        end
      
        def edit
          @video = Video.find(params[:id])
        end
      
        def update
          video = Video.find(params[:id])
            if video.update(video_params)
              render json: video
            else 
              render json: { errors: video.errors } 
            end
        end
      
        def destroy
          @video = Video.find(params[:id])
          @video.destroy
        end
      
        private
      
        def set_video
          @video = Video.find(params[:id])
        end
      
        def video_params
          params.permit(:genre, :description)
          #add more 
        end
      
      
      
      
      
      end
end
