module Api
  module V1
    class ItemsController < ApiController
      def index
        @items = Items.all
        respond_with @items
      end
    end
  end
end
