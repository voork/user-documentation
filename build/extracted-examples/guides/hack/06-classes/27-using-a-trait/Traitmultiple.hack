// WARNING: Contains some auto-generated boilerplate code, see:
// HHVM\UserDocumentation\MarkdownExt\ExtractedCodeBlocks\FilterBase::addBoilerplate

namespace HHVM\UserDocumentation\Guides\Hack\Classes\UsingATrait\Traitmultiple;

trait T1 {
  const FOO = "one";
}

trait T2 {
  const FOO = "two";
}

class A { use T1, T2; }

<<__EntryPoint>>
function main() : void {
  \init_docs_autoloader();

  echo A::FOO;
}
