{ cabal, binary, crypto-pubkey-types, curl, dataenc, entropy, mtl, random, RSA
, SHA, time, utf8-string
}:

cabal.mkDerivation (self: {
  pname = "hoauth";
  version = "0.3.5";
  sha256 = "06vk3dv2dby7wadxg4qq2bzy10hl8ix2x4vpxggwd13xy3kpzjqp";
  buildDepends = [
    binary crypto-pubkey-types curl dataenc entropy mtl random RSA SHA time
    utf8-string
  ];
  doCheck = false;
  meta = {
    description = "A Haskell implementation of OAuth 1.0a protocol.";
    license = self.stdenv.lib.licenses.bsd3;
    platforms = self.ghc.meta.platforms;
  };
})