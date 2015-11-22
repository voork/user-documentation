<?hh

namespace Hack\UserDocumentation\API\Examples\Vector\Filter;

$colors = Vector {'red', 'green', 'blue', 'yellow'};
$primary_colors = Set {'red', 'green', 'blue'};

// Create a Vector of colors that contain the letter 'l'
$l_colors = $colors->filter($color ==> strpos($color, 'l') !== false);
var_dump($l_colors);

// Create a Vector of colors that aren't listed in $primary_colors
$non_primary_colors = $colors->filter(
  $color ==> !$primary_colors->contains($color),
);
var_dump($non_primary_colors);
