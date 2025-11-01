{lib}: let
  inherit (lib.options) mergeEqualOption;
  inherit (lib.types) listOf mkOptionType;
in {
  mergelessListOf = elemType: let
    super = listOf elemType;
  in
    super
    // {
      name = "mergelessListOf";
      description = "mergeless ${super.description}";
      merge = mergeEqualOption;
    };

  char = mkOptionType {
    name = "char";
    description = "character";
    descriptionClass = "noun";
    merge = mergeEqualOption;
  };

  hexColor = mkOptionType {
    name = "hex-color";
    descriptionClass = "noun";
    description = "RGB color in hex format";
  };
}
