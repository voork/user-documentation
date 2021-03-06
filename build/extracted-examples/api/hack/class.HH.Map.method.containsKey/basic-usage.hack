// WARNING: Contains some auto-generated boilerplate code, see:
// HHVM\UserDocumentation\MarkdownExt\ExtractedCodeBlocks\FilterBase::addBoilerplate

namespace HHVM\UserDocumentation\Api\Hack\ClassHHMapMethodContainsKey\BasicUsage;

<<__EntryPoint>>
async function _main(): Awaitable<void> {
  \init_docs_autoloader();

  $m = Map {
    'red' => '#ff0000',
    'green' => '#00ff00',
    'blue' => '#0000ff',
    'yellow' => '#ffff00',
  };

  // Prints "true", since key "red" is the first key
  \var_dump($m->containsKey('red'));

  // Prints "true", since key "yellow" is the last key
  \var_dump($m->containsKey('yellow'));

  // Prints "false", since key "blurple" isn't in the Map
  \var_dump($m->containsKey('blurple'));
}
