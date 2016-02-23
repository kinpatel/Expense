package com.hero

import com.hero.Hotel
import org.apache.shiro.SecurityUtils
import com.hero.ShiroUser

class HotelFilterService {

    def userHotelList() {
		def user = ShiroUser.findByUsername(SecurityUtils.subject?.principal)
		return user.hotels
    }
}
