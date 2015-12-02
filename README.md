# cryptojslib-import


HTML import files for the cryptojs library to load as shared dependencies with link tags.

## Example usage

    <link rel="import" href="../cryptojslib-import/md5-min.html">
    <link rel="import" href="../cryptojslib-import/sha3-min.html">


Note that the core component, which both md5 and sha3 depend on, will only be loaded once. With script tags the 
library would be loaded twice or all dependencies should have been loaded separately.

