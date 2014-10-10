'use strict'

config =
  cache:
    maxAge: 12 * 60 * 60 * 1000 # 12 hours

  hkpost:
    overseaRate: 'http://app1.hongkongpost.hk/calc/eng/overseas/step2.php'

module.exports = config
