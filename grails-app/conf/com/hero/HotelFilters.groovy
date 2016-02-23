package com.hero

import org.apache.shiro.SecurityUtils
import com.hero.ShiroUser

class HotelFilters {

    def filters = {
        all(controller:"hotel", action:'*') {
            before = {
				
            }
            after = { Map model ->

            }
            afterView = { Exception e ->

            }
        }
    }
}
