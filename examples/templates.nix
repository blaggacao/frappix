{
  frappe = rec {
    path = ./templates/frappe;
    description = "Get started with a minimal Frappe-only frappix template";
    meta = {inherit description;};
  };
  erpnext = rec {
    path = ./templates/erpnext;
    description = "Get started with an ERPNext frappix template";
    meta = {inherit description;};
  };
}
