class RankingController < ApplicationController
    
    def want
        want_rank_id=Want.group(:item_id).order("count_all desc").count.keys.first(10)
        @items=Item.find(want_rank_id).sort_by! do |item|
            want_rank_id.index(item.id)
        end
    end
    
    def have
        have_rank_id=Have.group(:item_id).order("count_all desc").count.keys.first(10)
        @items=Item.find(have_rank_id).sort_by! do |item|
            have_rank_id.index(item.id)
        end
    end
    
end
