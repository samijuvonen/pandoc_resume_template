$for(header-includes)$
$header-includes$
$endfor$
$for(include-before)$
$include-before$
$endfor$

$firstname$ $lastname$
===========

> (email: $email$ - phone: $phone$)


SUMMARY
-----------

$summary$


EXPERIENCE
-----------

$for(experience)$

**$experience.title$**
$experience.employer$$if(experience.city)$ ($experience.city$)$endif$ *$experience.dates$*

$for(experience.description)$$experience.description$$sep$

$endfor$

$endfor$

CERTIFICATIONS
-----------

$for(certifications)$
- $certifications.cert$: $certifications.description$
$endfor$


INTERESTS
-----------

$if(interests)$$interests$$endif$


CONTACT INFORMATION
-----------

- phone: $phone$
- email: $email$
$if(homepage)$- website: http://$homepage$$endif$
$if(linkedin)$- LinkedIn: https://www.linkedin.com/in/$linkedin$$endif$
$if(github)$- GitHub: https://github.com/$github$$endif$
$if(twitter)$- Twitter: $twitter$$endif$


$for(include-after)$
$include-after$
$endfor$









