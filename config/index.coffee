'use strict'

config =
  cache:
    maxAge: 24 * 60 * 60 * 1000 # 24 hours

  hkpost:
    overseaRate: 'http://app1.hongkongpost.hk/calc/eng/overseas/step2.php'

module.exports = config
