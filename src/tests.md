# Run Tests

```console
nix run .#x86_64-linux.src.tests.frappe.driver
```

# Known Failing Tests

## Expected

### Reason: read-only file system

- `frappe.tests.test_redis.TestRedisAuth`
✖ setUpClass (frappe.tests.test_rename_doc.TestRenameDoc): `OSError: [Errno 30] Read-only file system: '/nix/store/64lwwvcsxjvw98hkab1v73wvif0k8k48-python3-3.10.12-env/lib/python3.10/site-packages/frappe/custom/doctype/test_rename_document_old'`

- `frappe.tests.test_utils.TestXlsxUtils`
✖ setUpClass (frappe.tests.test_virtual_doctype.TestVirtualDoctypes): `OSError: [Errno 30] Read-only file system: '/nix/store/64lwwvcsxjvw98hkab1v73wvif0k8k48-python3-3.10.12-env/lib/python3.10/site-packages/frappe/core/doctype/virtualdoctypetest'`

## Expected (is not a git repo)

- `frappe.tests.test_utils.TestAppParser`
✖ test_app_name_parser

## ToDo: dynamically generate website theme bootstrap assest

_The website theme validation hook re-generates the website's boostrap theme dynamically,
find a way to safely allow this write operations into the assets folder._

- `frappe.website.doctype.web_template.test_web_template.TestWebTemplate`
✖ test_custom_stylesheet: `FileNotFoundError: [Errno 2] No such file or directory: 'node'`

- `frappe.website.doctype.website_theme.test_website_theme.TestWebsiteTheme`
✖ test_after_migrate_hook: `FileNotFoundError: [Errno 2] No such file or directory: 'node'`
✖ test_imports_to_ignore: `FileNotFoundError: [Errno 2] No such file or directory: 'node'`
✖ test_website_theme: `FileNotFoundError: [Errno 2] No such file or directory: 'node'`

```
frappe.exceptions.ValidationError: node:internal/modules/cjs/loader:1080  throw err;
^Error: Cannot find module '/nix/store/xc7yxz43ybqkhn3xfiywg57j2qxdik83-python3.10-frappe-15.0.0.dev0/lib/python3.10/site-packages/generate_bootstrap_theme.js'
   at Module._resolveFilename (node:internal/modules/cjs/loader:1077:15)
   at Module._load (node:internal/modules/cjs/loader:922:27)
   at Function.executeUserEntryPoint [as runMain] (node:internal/modules/run_main:81:12)
   at node:internal/main/run_main_module:23:47 {  code: 'MODULE_NOT_FOUND',  requireStack: []}Node.js v18.16.1
```

## To Investigate

- `frappe.contacts.report.addresses_and_contacts.test_addresses_and_contacts.TestAddressesAndContacts`

✖ test_get_data:

```diff
AssertionError: Lists differ: ['cd9[81 chars]ly', 0, '_Test First Name', '_Test Last Name',[73 chars]', 1] != ['cd9[81 chars]ly', 1, '_Test First Name', '_Test Last Name',[73 chars]', 1]

First differing element 7:
0
1

  ['cd96ac1d3f',
   'test address line 1',
   'test address line 2',
   'Milan',
   None,
   None,
   'Italy',
-  0,
+  1,
   '_Test First Name',
   '_Test Last Name',
   '_Test Address-Billing',
   '+91 0000000000',
   '',
   'test_contact@example.com',
   1]
```

- `frappe.integrations.doctype.connected_app.test_connected_app.TestConnectedApp`

✖ test_web_application_flow: `frappe.exceptions.LinkExistsError: Cannot delete or cancel because Connected App ad608f3281 is linked with Token Cache ad608f3281-test-connected-app@example.com`
✖ test_web_application_flow: `AssertionError: 500 != 200`

- `frappe.tests.test_commands.TestBenchBuild`

✖ test_build_assets_size_check: `AssertionError: 1 != 0`

```console
Last Command Execution Summary:
Command: <Command build>


Return Code: 1
```

- `frappe.tests.test_oauth20.TestOAuth20`

✖ test_login_using_implicit_token: `AssertionError: None is not true` for `self.assertTrue(response_dict.get("access_token"))`

- `frappe.tests.test_perf.TestPerformance`

✖ test_req_per_seconds_basic: `frappe.exceptions.PermissionError: ToDo`
