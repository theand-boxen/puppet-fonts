# Definition for the installation of the Naver D2 Coding
define fonts::naver::definitions::d2coding {
  include fonts::naver::d2coding
  $fonts="/Users/${::luser}/Library/Fonts"
  $location='naver/d2coding'
  file { "D2Coding.ttc":
    ensure => 'present',
    path   => "${fonts}/D2Coding.ttc",
    source => "puppet:///modules/fonts/${location}/D2Coding.ttc"
  }
}
