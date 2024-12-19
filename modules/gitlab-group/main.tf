####################################################################################################
# Gitlab Subgroup
####################################################################################################

resource "gitlab_group" "this" {
  name                              = "wa-ephemeral"
  path                              = lower(replace("wa-ephemeral", " ", "_"))
  description                       = "Ephemeral resources for WA"
  visibility_level                  = "private"
}