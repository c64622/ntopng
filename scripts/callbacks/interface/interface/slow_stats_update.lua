--
-- (C) 2019 - ntop.org
--

local alerts_api = require("alerts_api")
local alert_consts = require("alert_consts")

local check_module = {
  key = "slow_stats_update",
  always_enabled = true,
  is_alert = true,
  anomaly_type_builder = alerts_api.slowStatsUpdateType,

  hooks = {
    min = alerts_api.anomaly_check_function,
  },
}

-- #################################################################

return check_module