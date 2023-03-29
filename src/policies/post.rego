package peoplefinder.POST.api.users

import input.policy.path
import input.user.properties.roles as user_roles
user_attributes = input.user.properties

default allowed = false

default visible = false

default enabled = false

allowed {
  user_attributes.roles == "superduperadmin"
}

allowed {
	some index
	data.roles[user_roles[index]].perms[path].allowed
}

visible {
	some index
	data.roles[user_roles[index]].perms[path].visible
}

enabled {
	some index
	data.roles[user_roles[index]].perms[path].enabled
}
