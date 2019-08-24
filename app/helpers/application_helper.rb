module ApplicationHelper

  def filter_sort(filter,years,shoes,releases)

    if !filter && !years
          @releases = Shoe.select(:release_year).order(:release_year => :desc).distinct
          p 'going to the no filters'
          if request.query_parameters[:sort] == "r_date"
            shoes = Shoe.where(user_id: params[:id]).order(created_at: :desc)

          elsif request.query_parameters[:sort] == "o_date"
            shoes = Shoe.where(user_id: params[:id]).order(created_at: :asc)

          elsif request.query_parameters[:sort] == "h_price"
            shoes = Shoe.where(user_id: params[:id]).order('cost_price::integer DESC')

          elsif request.query_parameters[:sort] == "l_price"
            shoes = Shoe.where(user_id: params[:id]).order('cost_price::integer ASC')

          else
            shoes = Shoe.where(user_id: params[:id])
          end

      elsif filters && !years
          @releases = Shoe.select(:release_year).order(:release_year => :desc).distinct
          if request.query_parameters[:sort] == "r_date"
            shoes = Shoe.where(user_id: params[:id], brand_id: filters).order(created_at: :desc)

          elsif request.query_parameters[:sort] == "o_date"
            shoes = Shoe.where(user_id: params[:id], brand_id: filters).order(created_at: :asc)

          elsif request.query_parameters[:sort] == "h_price"
            shoes = Shoe.where(user_id: params[:id], brand_id: filters).order( 'cost_price::integer DESC')

          elsif request.query_parameters[:sort] == "l_price"
            shoes = Shoe.where(user_id: params[:id], brand_id: filters).order('cost_price::integer ASC')

          else
            shoes = Shoe.where(user_id: params[:id], brand_id: filters)
          end

      else
        @releases = Shoe.select(:release_year).order(:release_year => :desc).distinct
          if request.query_parameters[:sort] == "r_date"
            shoes = Shoe.where(user_id: params[:id], brand_id: filters, release_year: years).order(created_at: :desc)

          elsif request.query_parameters[:sort] == "o_date"
            shoes = Shoe.where(user_id: params[:id], brand_id: filters, release_year: years).order(created_at: :asc)

          elsif request.query_parameters[:sort] == "h_price"
            shoes = Shoe.where(user_id: params[:id], brand_id: filters, release_year: years).order('cost_price::integer DESC')

          elsif request.query_parameters[:sort] == "l_price"
            shoes = Shoe.where(user_id: params[:id], brand_id: filters, release_year: years).order('cost_price::integer ASC')

          else
            shoes = Shoe.where(user_id: params[:id], brand_id: filters, release_year: years)
          end

      end

  end
end