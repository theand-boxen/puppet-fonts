# Definition for the installation of the Naver NanumGothicCoding
define fonts::naver::definitions::nanumgothiccoding {
  include fonts::naver::nanumgothiccoding
  $fonts="/Users/${::luser}/Library/Fonts"
  $location='naver/nanumgothiccoding'
  $prefix='NanumGothicCoding'
  file { "${prefix}-${title}.ttf":
    ensure => 'present',
    path   => "${fonts}/${prefix}-${title}.ttf",
    source => "puppet:///modules/fonts/${location}/${prefix}-${title}.ttf"
  }
}
