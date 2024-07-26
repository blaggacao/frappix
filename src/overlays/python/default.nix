pyFinal: pyPrev: {
  # frappe dependencies
  barcodenumber = pyFinal.callPackage ./barcodenumber.nix {};
  email-reply-parser = pyFinal.callPackage ./email-reply-parser.nix {};
  traceback-with-variables = pyFinal.callPackage ./traceback-with-variables {};
  uuid-utils = pyFinal.callPackage ./uuid-utils.nix {};
  sql_metadata = pyFinal.callPackage ./sql_metadata.nix {};

  # erpnext dependencies
  plaid-python = pyFinal.callPackage ./plaid-python.nix {}; # old version

  # payments dependencies
  razorpay = pyFinal.callPackage ./razorpay.nix {};
  paytmchecksum = pyFinal.callPackage ./paytmchecksum.nix {};

  # gameplan dependencies
  rembg = pyFinal.callPackage ./rembg.nix {};

  # ecommerce-integrations dependencies
  shopify-python-api = pyFinal.callPackage ./shopify-python-api.nix {};
  pyactiveresource = pyFinal.callPackage ./pyactiveresource.nix {};

  # fjsd dependency
  json-source-map = pyFinal.callPackage ./json-source-map.nix {};
}
