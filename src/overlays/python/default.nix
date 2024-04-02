pyFinal: pyPrev: {
  # frappe dependencies
  barcodenumber = pyFinal.callPackage ./barcodenumber.nix {};
  email-reply-parser = pyFinal.callPackage ./email-reply-parser.nix {};
  pydantic_2 = pyFinal.callPackage ./pydantic {};
  traceback-with-variables = pyFinal.callPackage ./traceback-with-variables {};

  # indirect dependencies
  # pydantic v2
  pydantic-core = pyFinal.callPackage ./pydantic-core {};

  # erpnext dependencies
  gocardless-pro = pyFinal.callPackage ./gocardless-pro.nix {};
  plaid-python = pyFinal.callPackage ./plaid-python.nix {}; # old version

  # builder dependencies
  install-playwright = pyFinal.callPackage ./install-playwright.nix {};

  # payments dependencies
  razorpay = pyFinal.callPackage ./razorpay.nix {};
  paytmchecksum = pyFinal.callPackage ./paytmchecksum.nix {};

  # ecommerce-integrations dependencies
  shopify-python-api = pyFinal.callPackage ./shopify-python-api.nix {};
  pyactiveresource = pyFinal.callPackage ./pyactiveresource.nix {};

  # fjsd dependency
  json-source-map = pyFinal.callPackage ./json-source-map.nix {};
}
