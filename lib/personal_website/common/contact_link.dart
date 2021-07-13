enum ContactLinks {
  sunwayCollege,
  github,
  facebook,
  twitter,
  linkedIn,
  contactMe,
}

extension ContactLinksExtension on ContactLinks {
  String? get url => {
        ContactLinks.sunwayCollege: 'https://college.sunway.edu.my/',
        ContactLinks.github: 'https://github.com/japhetobsioma',
        ContactLinks.facebook: 'https://www.facebook.com/obsiomajaphetmert/',
        ContactLinks.twitter: 'https://twitter.com/tehpajj',
        ContactLinks.linkedIn: 'https://www.linkedin.com/in/japhetmertobsioma/',
        ContactLinks.contactMe: 'mailto:japhetmerto@gmail.com?subject=Hello%20'
            'Japhet&body=Some%20body%20text%20here.',
      }[this];
}
