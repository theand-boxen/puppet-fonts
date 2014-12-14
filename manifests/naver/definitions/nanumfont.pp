# Definition for the installation of the Naver NanumFont
define fonts::naver::definitions::nanumfont {
  include fonts::naver::nanumfont
  $fonts="/Users/${::luser}/Library/Fonts"
  $location='naver/nanumfont'
  file { "${title}.otf":
    ensure => 'present',
    path   => "${fonts}/${title}.otf",
    source => "puppet:///modules/fonts/${location}/${title}.otf"
  }
}
