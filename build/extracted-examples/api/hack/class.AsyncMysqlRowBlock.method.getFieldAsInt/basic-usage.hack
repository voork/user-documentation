// WARNING: Contains some auto-generated boilerplate code, see:
// HHVM\UserDocumentation\MarkdownExt\ExtractedCodeBlocks\FilterBase::addBoilerplate

namespace HHVM\UserDocumentation\Api\Hack\ClassAsyncMysqlRowBlockMethodGetFieldAsInt\BasicUsage;

use \Hack\UserDocumentation\API\Examples\AsyncMysql\ConnectionInfo as CI;

async function connect(
  \AsyncMysqlConnectionPool $pool,
): Awaitable<\AsyncMysqlConnection> {
  return await $pool->connect(
    CI::$host,
    CI::$port,
    CI::$db,
    CI::$user,
    CI::$passwd,
  );
}
async function simple_query(): Awaitable<int> {
  $pool = new \AsyncMysqlConnectionPool(darray[]);
  $conn = await connect($pool);
  $result = await $conn->query('SELECT * FROM test_table WHERE userID < 50');
  $conn->close();
  // A call to $result->rowBlocks() actually pops the first element of the
  // row block Vector. So the call actually mutates the Vector.
  $row_blocks = $result->rowBlocks();
  if ($row_blocks->count() > 0) {
    // An AsyncMysqlRowBlock
    $row_block = $row_blocks[0];
    return $row_block->getFieldAsInt(0, 'age');
  } else {
    return -1;
  }
}

<<__EntryPoint>>
async function run(): Awaitable<void> {
  \init_docs_autoloader();

  $r = await simple_query();
  \var_dump($r);
}
