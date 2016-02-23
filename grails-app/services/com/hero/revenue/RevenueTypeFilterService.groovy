package com.hero.revenue

import com.hero.revenue.RevenueType
import org.apache.shiro.SecurityUtils
import com.hero.ShiroUser

class RevenueTypeFilterService {

    def revenueTypebyHotelList() {
		def user = ShiroUser.findByUsername(SecurityUtils.subject?.principal)
		
		return RevenueType.findAllByHotelInList(user.hotels)
    }
}
