module Api
  module V1
    class ItemsController < ApiController
      def index
        @items = Item.all
        respond_with @items
      end

      def show
        @item = Item.find(params[:id])
        respond_with @item
      end

      def create
      end

      def destroy
        item = Item.find(params[:id])
        item.destroy
        head :ok
      end
    end
  end
end
