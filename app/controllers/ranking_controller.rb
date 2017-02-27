class RankingController < ApplicationController
    
    def want
        want_rank_id=Want.group(:item_id).order("count_all desc").count.keys.first(10)
            @items=Item.find(want_rank_id)
    end
    
    def have
        have_rank_id=Have.group(:item_id).order("count_all desc").count.keys.first(10)
            @items=Item.find(have_rank_id)
    end
    
end
