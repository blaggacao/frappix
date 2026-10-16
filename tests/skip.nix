[
  {
    id = "frappe.tests.test_rename_doc.TestRenameDoc";
    #     Traceback (most recent call last):
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/tests/test_rename_doc.py", line 80, in setUpClass
    #     ).insert()
    #       ~~~~~~^^
    #     __class__ = <class 'frappe.tests.test_rename_doc.TestRenameDoc'>
    #     doc = <CustomToDo: TODO-34-04>
    #     num = 4
    #     self = <class 'frappe.tests.test_rename_doc.TestRenameDoc'>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/model/document.py", line 334, in insert
    #     self.run_post_save_methods()
    #     ~~~~~~~~~~~~~~~~~~~~~~~~~~^^
    #     d = <DocPerm: b10mrrvj2q parent=Test Rename Document Old>
    #     ignore_if_duplicate = False
    #     ignore_links = None
    #     ignore_mandatory = None
    #     ignore_permissions = None
    #     self = <DocType: Test Rename Document Old>
    #     set_child_names = True
    #     set_name = None
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/model/document.py", line 1182, in run_post_save_methods
    #     self.run_method("on_update")
    #     ~~~~~~~~~~~~~~~^^^^^^^^^^^^^
    #     self = <DocType: Test Rename Document Old>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/model/document.py", line 1016, in run_method
    #     out = Document.hook(fn)(self, *args, **kwargs)
    #     args = ()
    #     fn = <function Document.run_method.<locals>.fn at 0x76290aeb3060>
    #     kwargs = {}
    #     method = 'on_update'
    #     self = <DocType: Test Rename Document Old>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/model/document.py", line 1376, in composer
    #     return composed(self, method, *args, **kwargs)
    #     args = ()
    #     compose = <function Document.hook.<locals>.compose at 0x76290aeb3380>
    #     composed = <function Document.hook.<locals>.compose.<locals>.runner at 0x76290acf2200>
    #     doc_events = {'*': {'on_update': ['frappe.desk.notifications.clear_doctype_notifications', 'frappe.workflow.doctype.workflow_action.workflow_action.process_workflow_actions', 'frappe.core.doctype.file.utils.attach_files_to_document', 'frappe.automation.doctype.assignment_rule.assignment_rule.apply', 'frappe.automation.doctype.assignment_rule.assignment_rule.update_due_date', 'frappe.core.doctype.user_type.user_type.apply_permissions_for_non_standard_user_type', 'frappe.search.sqlite_search.update_doc_index'], 'after_rename': ['frappe.desk.notifications.clear_doctype_notifications'], 'on_cancel': ['frappe.desk.notifications.clear_doctype_notifications', 'frappe.workflow.doctype.workflow_action.workflow_action.process_workflow_actions', 'frappe.automation.doctype.assignment_rule.assignment_rule.apply'], 'on_trash': ['frappe.desk.notifications.clear_doctype_notifications', 'frappe.workflow.doctype.workflow_action.workflow_action.process_workflow_actions', 'frappe.search.sqlite_search.delete_doc_index'], 'on_update_after_submit': ['frappe.workflow.doctype.workflow_action.workflow_action.process_workflow_actions', 'frappe.automation.doctype.assignment_rule.assignment_rule.apply', 'frappe.automation.doctype.assignment_rule.assignment_rule.update_due_date', 'frappe.core.doctype.file.utils.attach_files_to_document'], 'on_change': ['frappe.social.doctype.energy_point_rule.energy_point_rule.process_energy_points', 'frappe.automation.doctype.milestone_tracker.milestone_tracker.evaluate_milestone']}, 'Event': {'after_insert': ['frappe.integrations.doctype.google_calendar.google_calendar.insert_event_in_google_calendar'], 'on_update': ['frappe.integrations.doctype.google_calendar.google_calendar.update_event_in_google_calendar'], 'on_trash': ['frappe.integrations.doctype.google_calendar.google_calendar.delete_event_from_google_calendar']}, 'Contact': {'after_insert': ['frappe.integrations.doctype.google_contacts.google_contacts.insert_contacts_to_google_contacts'], 'on_update': ['frappe.integrations.doctype.google_contacts.google_contacts.update_contacts_to_google_contacts']}, 'DocType': {'on_update': ['frappe.cache_manager.build_domain_restriced_doctype_cache']}, 'Page': {'on_update': ['frappe.cache_manager.build_domain_restriced_page_cache']}}
    #     f = <function Document.run_method.<locals>.fn at 0x76290aeb3060>
    #     handler = 'frappe.search.sqlite_search.update_doc_index'
    #     hooks = [<function build_domain_restriced_doctype_cache at 0x762912f56700>, <function clear_doctype_notifications at 0x76291007aac0>, <function process_workflow_actions at 0x76290f1e4d60>, <function attach_files_to_document at 0x7629117509a0>, <function apply at 0x76290f1f8360>, <function update_due_date at 0x76290f1f8400>, <function apply_permissions_for_non_standard_user_type at 0x76290f1f9d00>, <function update_doc_index at 0x76290fd66200>]
    #     kwargs = {}
    #     method = 'on_update'
    #     self = <DocType: Test Rename Document Old>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/model/document.py", line 1358, in runner
    #     add_to_return_value(self, fn(self, *args, **kwargs))
    #                               ~~^^^^^^^^^^^^^^^^^^^^^^^
    #     add_to_return_value = <function Document.hook.<locals>.add_to_return_value at 0x76290aeb1760>
    #     args = ()
    #     fn = <function Document.run_method.<locals>.fn at 0x76290aeb3060>
    #     hooks = (<function build_domain_restriced_doctype_cache at 0x762912f56700>, <function clear_doctype_notifications at 0x76291007aac0>, <function process_workflow_actions at 0x76290f1e4d60>, <function attach_files_to_document at 0x7629117509a0>, <function apply at 0x76290f1f8360>, <function update_due_date at 0x76290f1f8400>, <function apply_permissions_for_non_standard_user_type at 0x76290f1f9d00>, <function update_doc_index at 0x76290fd66200>)
    #     kwargs = {}
    #     method = 'on_update'
    #     self = <DocType: Test Rename Document Old>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/model/document.py", line 1013, in fn
    #     return method_object(*args, **kwargs)
    #     args = ()
    #     kwargs = {}
    #     method = 'on_update'
    #     method_object = <bound method DocType.on_update of <DocType: Test Rename Document Old>>
    #     self = <DocType: Test Rename Document Old>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/core/doctype/doctype/doctype.py", line 542, in on_update
    #     self.export_doc()
    #     ~~~~~~~~~~~~~~~^^
    #     allow_doctype_export = 1
    #     self = <DocType: Test Rename Document Old>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/core/doctype/doctype/doctype.py", line 849, in export_doc
    #     export_to_files(record_list=[["DocType", self.name]], create_init=True)
    #     ~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     export_to_files = <function export_to_files at 0x76290f9b9300>
    #     self = <DocType: Test Rename Document Old>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/modules/export_file.py", line 27, in export_to_files
    #     write_document_file(
    #     ~~~~~~~~~~~~~~~~~~~^
    #     	frappe.get_doc(record[0], record[1]),
    #      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     ...<2 lines>...
    #     	folder_name=folder_name,
    #      ^^^^^^^^^^^^^^^^^^^^^^^^
    #     )
    #     ^
    #     create_init = True
    #     folder_name = None
    #     record = ['DocType', 'Test Rename Document Old']
    #     record_list = [['DocType', 'Test Rename Document Old']]
    #     record_module = None
    #     verbose = 0
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/modules/export_file.py", line 47, in write_document_file
    #     folder = create_folder(module, doc.doctype, doc.name, create_init, is_custom_module)
    #     create_init = True
    #     doc = <DocType: Test Rename Document Old>
    #     doc_export = {'name': 'Test Rename Document Old', 'creation': datetime.datetime(2026, 8, 19, 1, 51, 37, 608229), 'modified': datetime.datetime(2026, 8, 19, 1, 51, 37, 608229), 'modified_by': 'Administrator', 'owner': 'Administrator', 'editable_grid': 1, 'module': 'Custom', 'sort_field': 'modified', 'sort_order': 'DESC', 'allow_rename': 1, 'engine': 'InnoDB', 'grid_page_length': 50, 'rows_threshold_for_grid_search': 20, 'index_web_pages_for_search': 1, 'row_format': 'Dynamic', 'doctype': 'DocType', 'permissions': [{'role': 'System Manager', 'read': 1, 'write': 1, 'create': 1, 'delete': 1, 'report': 1, 'export': 1, 'share': 1, 'print': 1, 'email': 1}], 'states': [], 'links': [], 'actions': [], 'fields': [{'fieldname': 'some_fieldname', 'label': 'Some Field', 'fieldtype': 'Data'}], 'field_order': ['some_fieldname']}
    #     folder_name = None
    #     is_custom_module = 0
    #     module = 'Custom'
    #     record_module = None
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/modules/export_file.py", line 129, in create_folder
    #     frappe.create_folder(folder)
    #     ~~~~~~~~~~~~~~~~~~~~^^^^^^^^
    #     create_init = True
    #     dn = 'test_rename_document_old'
    #     dt = 'doctype'
    #     folder = '/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/custom/doctype/test_rename_document_old'
    #     is_custom_module = 0
    #     module = 'Custom'
    #     module_path = '/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/custom'
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/__init__.py", line 635, in create_folder
    #     os.makedirs(path)
    #     ~~~~~~~~~~~^^^^^^
    #     path = '/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/custom/doctype/test_rename_document_old'
    #     touch_file = <function touch_file at 0x7629139ba5c0>
    #     with_init = False
    #   File "<frozen os>", line 228, in makedirs
    #     exist_ok = False
    #     head = '/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/custom/doctype'
    #     mode = 511
    #     name = '/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/custom/doctype/test_rename_document_old'
    #     tail = 'test_rename_document_old'
    # OSError: [Errno 30] Read-only file system: '/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/custom/doctype/test_rename_document_old'
  }
  {
    id = "frappe.tests.test_virtual_doctype.TestVirtualDoctypes";
    #     Traceback (most recent call last):
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/tests/test_virtual_doctype.py", line 91, in setUpClass
    #     cdt = new_doctype(name=TEST_CHILD_DOCTYPE_NAME, is_virtual=1, istable=1, custom=0).insert()
    #     cls = <class 'frappe.tests.test_virtual_doctype.TestVirtualDoctypes'>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/model/document.py", line 334, in insert
    #     self.run_post_save_methods()
    #     ~~~~~~~~~~~~~~~~~~~~~~~~~~^^
    #     d = <DataDocField: some_fieldname parent=VirtualDoctypeTestChild>
    #     ignore_if_duplicate = False
    #     ignore_links = None
    #     ignore_mandatory = None
    #     ignore_permissions = None
    #     self = <DocType: VirtualDoctypeTestChild>
    #     set_child_names = True
    #     set_name = None
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/model/document.py", line 1182, in run_post_save_methods
    #     self.run_method("on_update")
    #     ~~~~~~~~~~~~~~~^^^^^^^^^^^^^
    #     self = <DocType: VirtualDoctypeTestChild>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/model/document.py", line 1016, in run_method
    #     out = Document.hook(fn)(self, *args, **kwargs)
    #     args = ()
    #     fn = <function Document.run_method.<locals>.fn at 0x76290b720b80>
    #     kwargs = {}
    #     method = 'on_update'
    #     self = <DocType: VirtualDoctypeTestChild>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/model/document.py", line 1376, in composer
    #     return composed(self, method, *args, **kwargs)
    #     args = ()
    #     compose = <function Document.hook.<locals>.compose at 0x76290a67ad40>
    #     composed = <function Document.hook.<locals>.compose.<locals>.runner at 0x76290a67b560>
    #     doc_events = {'*': {'on_update': ['frappe.desk.notifications.clear_doctype_notifications', 'frappe.workflow.doctype.workflow_action.workflow_action.process_workflow_actions', 'frappe.core.doctype.file.utils.attach_files_to_document', 'frappe.automation.doctype.assignment_rule.assignment_rule.apply', 'frappe.automation.doctype.assignment_rule.assignment_rule.update_due_date', 'frappe.core.doctype.user_type.user_type.apply_permissions_for_non_standard_user_type', 'frappe.search.sqlite_search.update_doc_index'], 'after_rename': ['frappe.desk.notifications.clear_doctype_notifications'], 'on_cancel': ['frappe.desk.notifications.clear_doctype_notifications', 'frappe.workflow.doctype.workflow_action.workflow_action.process_workflow_actions', 'frappe.automation.doctype.assignment_rule.assignment_rule.apply'], 'on_trash': ['frappe.desk.notifications.clear_doctype_notifications', 'frappe.workflow.doctype.workflow_action.workflow_action.process_workflow_actions', 'frappe.search.sqlite_search.delete_doc_index'], 'on_update_after_submit': ['frappe.workflow.doctype.workflow_action.workflow_action.process_workflow_actions', 'frappe.automation.doctype.assignment_rule.assignment_rule.apply', 'frappe.automation.doctype.assignment_rule.assignment_rule.update_due_date', 'frappe.core.doctype.file.utils.attach_files_to_document'], 'on_change': ['frappe.social.doctype.energy_point_rule.energy_point_rule.process_energy_points', 'frappe.automation.doctype.milestone_tracker.milestone_tracker.evaluate_milestone']}, 'Event': {'after_insert': ['frappe.integrations.doctype.google_calendar.google_calendar.insert_event_in_google_calendar'], 'on_update': ['frappe.integrations.doctype.google_calendar.google_calendar.update_event_in_google_calendar'], 'on_trash': ['frappe.integrations.doctype.google_calendar.google_calendar.delete_event_from_google_calendar']}, 'Contact': {'after_insert': ['frappe.integrations.doctype.google_contacts.google_contacts.insert_contacts_to_google_contacts'], 'on_update': ['frappe.integrations.doctype.google_contacts.google_contacts.update_contacts_to_google_contacts']}, 'DocType': {'on_update': ['frappe.cache_manager.build_domain_restriced_doctype_cache']}, 'Page': {'on_update': ['frappe.cache_manager.build_domain_restriced_page_cache']}}
    #     f = <function Document.run_method.<locals>.fn at 0x76290b720b80>
    #     handler = 'frappe.search.sqlite_search.update_doc_index'
    #     hooks = [<function build_domain_restriced_doctype_cache at 0x762912f56700>, <function clear_doctype_notifications at 0x76291007aac0>, <function process_workflow_actions at 0x76290f1e4d60>, <function attach_files_to_document at 0x7629117509a0>, <function apply at 0x76290f1f8360>, <function update_due_date at 0x76290f1f8400>, <function apply_permissions_for_non_standard_user_type at 0x76290f1f9d00>, <function update_doc_index at 0x76290fd66200>]
    #     kwargs = {}
    #     method = 'on_update'
    #     self = <DocType: VirtualDoctypeTestChild>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/model/document.py", line 1358, in runner
    #     add_to_return_value(self, fn(self, *args, **kwargs))
    #                               ~~^^^^^^^^^^^^^^^^^^^^^^^
    #     add_to_return_value = <function Document.hook.<locals>.add_to_return_value at 0x76290a67b420>
    #     args = ()
    #     fn = <function Document.run_method.<locals>.fn at 0x76290b720b80>
    #     hooks = (<function build_domain_restriced_doctype_cache at 0x762912f56700>, <function clear_doctype_notifications at 0x76291007aac0>, <function process_workflow_actions at 0x76290f1e4d60>, <function attach_files_to_document at 0x7629117509a0>, <function apply at 0x76290f1f8360>, <function update_due_date at 0x76290f1f8400>, <function apply_permissions_for_non_standard_user_type at 0x76290f1f9d00>, <function update_doc_index at 0x76290fd66200>)
    #     kwargs = {}
    #     method = 'on_update'
    #     self = <DocType: VirtualDoctypeTestChild>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/model/document.py", line 1013, in fn
    #     return method_object(*args, **kwargs)
    #     args = ()
    #     kwargs = {}
    #     method = 'on_update'
    #     method_object = <bound method DocType.on_update of <DocType: VirtualDoctypeTestChild>>
    #     self = <DocType: VirtualDoctypeTestChild>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/core/doctype/doctype/doctype.py", line 542, in on_update
    #     self.export_doc()
    #     ~~~~~~~~~~~~~~~^^
    #     allow_doctype_export = True
    #     self = <DocType: VirtualDoctypeTestChild>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/core/doctype/doctype/doctype.py", line 849, in export_doc
    #     export_to_files(record_list=[["DocType", self.name]], create_init=True)
    #     ~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     export_to_files = <function export_to_files at 0x76290f9b9300>
    #     self = <DocType: VirtualDoctypeTestChild>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/modules/export_file.py", line 27, in export_to_files
    #     write_document_file(
    #     ~~~~~~~~~~~~~~~~~~~^
    #     	frappe.get_doc(record[0], record[1]),
    #      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     ...<2 lines>...
    #     	folder_name=folder_name,
    #      ^^^^^^^^^^^^^^^^^^^^^^^^
    #     )
    #     ^
    #     create_init = True
    #     folder_name = None
    #     record = ['DocType', 'VirtualDoctypeTestChild']
    #     record_list = [['DocType', 'VirtualDoctypeTestChild']]
    #     record_module = None
    #     verbose = 0
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/modules/export_file.py", line 47, in write_document_file
    #     folder = create_folder(module, doc.doctype, doc.name, create_init, is_custom_module)
    #     create_init = True
    #     doc = <DocType: VirtualDoctypeTestChild>
    #     doc_export = {'name': 'VirtualDoctypeTestChild', 'creation': datetime.datetime(2026, 8, 19, 1, 52, 6, 80725), 'modified': datetime.datetime(2026, 8, 19, 1, 52, 6, 80725), 'modified_by': 'Administrator', 'owner': 'Administrator', 'is_virtual': 1, 'istable': 1, 'editable_grid': 1, 'module': 'Core', 'sort_field': 'modified', 'sort_order': 'DESC', 'allow_rename': 1, 'engine': 'InnoDB', 'grid_page_length': 50, 'rows_threshold_for_grid_search': 20, 'index_web_pages_for_search': 1, 'row_format': 'Dynamic', 'doctype': 'DocType', 'permissions': [], 'states': [], 'links': [], 'actions': [], 'fields': [{'fieldname': 'some_fieldname', 'label': 'Some Field', 'fieldtype': 'Data'}], 'field_order': ['some_fieldname']}
    #     folder_name = None
    #     is_custom_module = 0
    #     module = 'Core'
    #     record_module = None
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/modules/export_file.py", line 129, in create_folder
    #     frappe.create_folder(folder)
    #     ~~~~~~~~~~~~~~~~~~~~^^^^^^^^
    #     create_init = True
    #     dn = 'virtualdoctypetestchild'
    #     dt = 'doctype'
    #     folder = '/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/core/doctype/virtualdoctypetestchild'
    #     is_custom_module = 0
    #     module = 'Core'
    #     module_path = '/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/core'
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/__init__.py", line 635, in create_folder
    #     os.makedirs(path)
    #     ~~~~~~~~~~~^^^^^^
    #     path = '/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/core/doctype/virtualdoctypetestchild'
    #     touch_file = <function touch_file at 0x7629139ba5c0>
    #     with_init = False
    #   File "<frozen os>", line 228, in makedirs
    #     exist_ok = False
    #     head = '/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/core/doctype'
    #     mode = 511
    #     name = '/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/core/doctype/virtualdoctypetestchild'
    #     tail = 'virtualdoctypetestchild'
    # OSError: [Errno 30] Read-only file system: '/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/core/doctype/virtualdoctypetestchild'
  }
  {
    id = "frappe.tests.test_email.TestEmailIntegrationTest.test_send_email";
    # Traceback (most recent call last):
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/urllib3/connection.py", line 204, in _new_conn
    #     sock = connection.create_connection(
    #         (self._dns_host, self.port),
    #     ...<2 lines>...
    #         socket_options=self.socket_options,
    #     )
    #     self = <HTTPConnection(host='localhost', port=3000) at 0x762bb6082ba0>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/urllib3/util/connection.py", line 85, in create_connection
    #     raise err
    #     address = ('localhost', 3000)
    #     af = <AddressFamily.AF_INET: 2>
    #     canonname = ''
    #     err = None
    #     family = <AddressFamily.AF_UNSPEC: 0>
    #     host = 'localhost'
    #     port = 3000
    #     proto = 6
    #     res = (<AddressFamily.AF_INET: 2>, <SocketKind.SOCK_STREAM: 1>, 6, '', ('127.0.0.1', 3000))
    #     sa = ('127.0.0.1', 3000)
    #     sock = <socket.socket [closed] fd=-1, family=2, type=1, proto=6>
    #     socket_options = [(6, 1, 1)]
    #     socktype = <SocketKind.SOCK_STREAM: 1>
    #     source_address = None
    #     timeout = None
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/urllib3/util/connection.py", line 73, in create_connection
    #     sock.connect(sa)
    #     ~~~~~~~~~~~~^^^^
    #     address = ('localhost', 3000)
    #     af = <AddressFamily.AF_INET: 2>
    #     canonname = ''
    #     err = None
    #     family = <AddressFamily.AF_UNSPEC: 0>
    #     host = 'localhost'
    #     port = 3000
    #     proto = 6
    #     res = (<AddressFamily.AF_INET: 2>, <SocketKind.SOCK_STREAM: 1>, 6, '', ('127.0.0.1', 3000))
    #     sa = ('127.0.0.1', 3000)
    #     sock = <socket.socket [closed] fd=-1, family=2, type=1, proto=6>
    #     socket_options = [(6, 1, 1)]
    #     socktype = <SocketKind.SOCK_STREAM: 1>
    #     source_address = None
    #     timeout = None
    # ConnectionRefusedError: [Errno 111] Connection refused
    #
    # The above exception was the direct cause of the following exception:
    #
    # Traceback (most recent call last):
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/urllib3/connectionpool.py", line 787, in urlopen
    #     response = self._make_request(
    #         conn,
    #     ...<10 lines>...
    #         **response_kw,
    #     )
    #     assert_same_host = False
    #     body = None
    #     body_pos = None
    #     chunked = False
    #     clean_exit = False
    #     conn = None
    #     decode_content = False
    #     destination_scheme = None
    #     err = None
    #     headers = {'User-Agent': 'python-requests/2.33.1', 'Accept-Encoding': 'gzip, deflate, br', 'Accept': '*/*', 'Connection': 'keep-alive', 'Content-Length': '0'}
    #     http_tunnel_required = False
    #     method = 'DELETE'
    #     new_e = NewConnectionError("HTTPConnection(host='localhost', port=3000): Failed to establish a new connection: [Errno 111] Connection refused")
    #     parsed_url = Url(scheme=None, auth=None, host=None, port=None, path='/api/Messages/*', query=None, fragment=None)
    #     pool_timeout = None
    #     preload_content = False
    #     redirect = False
    #     release_conn = False
    #     release_this_conn = True
    #     response_conn = <HTTPConnection(host='localhost', port=3000) at 0x762bb6082ba0>
    #     response_kw = {}
    #     retries = Retry(total=0, connect=None, read=False, redirect=None, status=None)
    #     self = <urllib3.connectionpool.HTTPConnectionPool object at 0x762bb6082e40>
    #     timeout = Timeout(connect=None, read=None, total=None)
    #     timeout_obj = Timeout(connect=None, read=None, total=None)
    #     url = '/api/Messages/*'
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/urllib3/connectionpool.py", line 493, in _make_request
    #     conn.request(
    #     ~~~~~~~~~~~~^
    #         method,
    #         ^^^^^^^
    #     ...<6 lines>...
    #         enforce_content_length=enforce_content_length,
    #         ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     )
    #     ^
    #     body = None
    #     chunked = False
    #     conn = <HTTPConnection(host='localhost', port=3000) at 0x762bb6082ba0>
    #     decode_content = False
    #     enforce_content_length = True
    #     headers = {'User-Agent': 'python-requests/2.33.1', 'Accept-Encoding': 'gzip, deflate, br', 'Accept': '*/*', 'Connection': 'keep-alive', 'Content-Length': '0'}
    #     method = 'DELETE'
    #     preload_content = False
    #     response_conn = <HTTPConnection(host='localhost', port=3000) at 0x762bb6082ba0>
    #     retries = Retry(total=0, connect=None, read=False, redirect=None, status=None)
    #     self = <urllib3.connectionpool.HTTPConnectionPool object at 0x762bb6082e40>
    #     timeout = Timeout(connect=None, read=None, total=None)
    #     timeout_obj = Timeout(connect=None, read=None, total=None)
    #     url = '/api/Messages/*'
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/urllib3/connection.py", line 500, in request
    #     self.endheaders()
    #     ~~~~~~~~~~~~~~~^^
    #     body = None
    #     chunked = False
    #     chunks = None
    #     chunks_and_cl = ChunksAndContentLength(chunks=None, content_length=None)
    #     content_length = None
    #     decode_content = False
    #     enforce_content_length = True
    #     header = 'Content-Length'
    #     header_keys = frozenset({'user-agent', 'accept-encoding', 'connection', 'content-length', 'accept'})
    #     headers = {'User-Agent': 'python-requests/2.33.1', 'Accept-Encoding': 'gzip, deflate, br', 'Accept': '*/*', 'Connection': 'keep-alive', 'Content-Length': '0'}
    #     method = 'DELETE'
    #     preload_content = False
    #     self = <HTTPConnection(host='localhost', port=3000) at 0x762bb6082ba0>
    #     skip_accept_encoding = True
    #     skip_host = False
    #     url = '/api/Messages/*'
    #     value = '0'
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/http/client.py", line 1353, in endheaders
    #     self._send_output(message_body, encode_chunked=encode_chunked)
    #     ~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     encode_chunked = False
    #     message_body = None
    #     self = <HTTPConnection(host='localhost', port=3000) at 0x762bb6082ba0>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/http/client.py", line 1113, in _send_output
    #     self.send(msg)
    #     ~~~~~~~~~^^^^^
    #     encode_chunked = False
    #     message_body = None
    #     msg = b'DELETE /api/Messages/* HTTP/1.1\r\nHost: localhost:3000\r\nUser-Agent: python-requests/2.33.1\r\nAccept-Encoding: gzip, deflate, br\r\nAccept: */*\r\nConnection: keep-alive\r\nContent-Length: 0\r\n\r\n'
    #     self = <HTTPConnection(host='localhost', port=3000) at 0x762bb6082ba0>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/http/client.py", line 1057, in send
    #     self.connect()
    #     ~~~~~~~~~~~~^^
    #     data = b'DELETE /api/Messages/* HTTP/1.1\r\nHost: localhost:3000\r\nUser-Agent: python-requests/2.33.1\r\nAccept-Encoding: gzip, deflate, br\r\nAccept: */*\r\nConnection: keep-alive\r\nContent-Length: 0\r\n\r\n'
    #     self = <HTTPConnection(host='localhost', port=3000) at 0x762bb6082ba0>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/urllib3/connection.py", line 331, in connect
    #     self.sock = self._new_conn()
    #                 ~~~~~~~~~~~~~~^^
    #     self = <HTTPConnection(host='localhost', port=3000) at 0x762bb6082ba0>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/urllib3/connection.py", line 219, in _new_conn
    #     raise NewConnectionError(
    #         self, f"Failed to establish a new connection: {e}"
    #     ) from e
    #     self = <HTTPConnection(host='localhost', port=3000) at 0x762bb6082ba0>
    # urllib3.exceptions.NewConnectionError: HTTPConnection(host='localhost', port=3000): Failed to establish a new connection: [Errno 111] Connection refused
    #
    # The above exception was the direct cause of the following exception:
    #
    # Traceback (most recent call last):
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/requests/adapters.py", line 645, in send
    #     resp = conn.urlopen(
    #         method=request.method,
    #     ...<9 lines>...
    #         chunked=chunked,
    #     )
    #     cert = None
    #     chunked = False
    #     conn = <urllib3.connectionpool.HTTPConnectionPool object at 0x762bb6082e40>
    #     proxies = OrderedDict()
    #     request = <PreparedRequest [DELETE]>
    #     self = <requests.adapters.HTTPAdapter object at 0x762bb6562f90>
    #     stream = False
    #     timeout = Timeout(connect=None, read=None, total=None)
    #     url = '/api/Messages/*'
    #     verify = '/nix/store/whcmfmd3k7l0kldanbk1iq4lk1lf5b93-nss-cacert-3.123/etc/ssl/certs/ca-bundle.crt'
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/urllib3/connectionpool.py", line 841, in urlopen
    #     retries = retries.increment(
    #         method, url, error=new_e, _pool=self, _stacktrace=sys.exc_info()[2]
    #     )
    #     assert_same_host = False
    #     body = None
    #     body_pos = None
    #     chunked = False
    #     clean_exit = False
    #     conn = None
    #     decode_content = False
    #     destination_scheme = None
    #     err = None
    #     headers = {'User-Agent': 'python-requests/2.33.1', 'Accept-Encoding': 'gzip, deflate, br', 'Accept': '*/*', 'Connection': 'keep-alive', 'Content-Length': '0'}
    #     http_tunnel_required = False
    #     method = 'DELETE'
    #     new_e = NewConnectionError("HTTPConnection(host='localhost', port=3000): Failed to establish a new connection: [Errno 111] Connection refused")
    #     parsed_url = Url(scheme=None, auth=None, host=None, port=None, path='/api/Messages/*', query=None, fragment=None)
    #     pool_timeout = None
    #     preload_content = False
    #     redirect = False
    #     release_conn = False
    #     release_this_conn = True
    #     response_conn = <HTTPConnection(host='localhost', port=3000) at 0x762bb6082ba0>
    #     response_kw = {}
    #     retries = Retry(total=0, connect=None, read=False, redirect=None, status=None)
    #     self = <urllib3.connectionpool.HTTPConnectionPool object at 0x762bb6082e40>
    #     timeout = Timeout(connect=None, read=None, total=None)
    #     timeout_obj = Timeout(connect=None, read=None, total=None)
    #     url = '/api/Messages/*'
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/urllib3/util/retry.py", line 535, in increment
    #     raise MaxRetryError(_pool, url, reason) from reason  # type: ignore[arg-type]
    #     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     _pool = <urllib3.connectionpool.HTTPConnectionPool object at 0x762bb6082e40>
    #     _stacktrace = <traceback object at 0x762bb66de900>
    #     cause = 'unknown'
    #     connect = None
    #     error = NewConnectionError("HTTPConnection(host='localhost', port=3000): Failed to establish a new connection: [Errno 111] Connection refused")
    #     history = (RequestHistory(method='DELETE', url='/api/Messages/*', error=NewConnectionError("HTTPConnection(host='localhost', port=3000): Failed to establish a new connection: [Errno 111] Connection refused"), status=None, redirect_location=None),)
    #     method = 'DELETE'
    #     new_retry = Retry(total=-1, connect=None, read=False, redirect=None, status=None)
    #     other = None
    #     read = False
    #     reason = NewConnectionError("HTTPConnection(host='localhost', port=3000): Failed to establish a new connection: [Errno 111] Connection refused")
    #     redirect = None
    #     redirect_location = None
    #     response = None
    #     self = Retry(total=0, connect=None, read=False, redirect=None, status=None)
    #     status = None
    #     status_count = None
    #     total = -1
    #     url = '/api/Messages/*'
    # urllib3.exceptions.MaxRetryError: HTTPConnectionPool(host='localhost', port=3000): Max retries exceeded with url: /api/Messages/* (Caused by NewConnectionError("HTTPConnection(host='localhost', port=3000): Failed to establish a new connection: [Errno 111] Connection refused"))
    #
    # During handling of the above exception, another exception occurred:
    #
    # Traceback (most recent call last):
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/tests/utils.py", line 58, in wrapped
    #     original(self)
    #     ~~~~~~~~^^^^^^
    #     original = <function TestEmailIntegrationTest.setUp at 0x762bb60499e0>
    #     self = <frappe.tests.test_email.TestEmailIntegrationTest testMethod=test_send_email>
    #     skip_ids = ['frappe.email.test_smtp.TestSMTP.test_smtp_ssl_session', 'frappe.email.test_smtp.TestSMTP.test_smtp_tls_session']
    #     test_id = 'frappe.tests.test_email.TestEmailIntegrationTest.test_send_email'
    #     var = 'SKIP_TESTS'
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/tests/test_email.py", line 411, in setUp
    #     requests.delete(f"{self.SMTP4DEV_WEB}/api/Messages/*")
    #     ~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     __class__ = <class 'frappe.tests.test_email.TestEmailIntegrationTest'>
    #     self = <frappe.tests.test_email.TestEmailIntegrationTest testMethod=test_send_email>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/requests/api.py", line 157, in delete
    #     return request("delete", url, **kwargs)
    #     kwargs = {}
    #     url = 'http://localhost:3000/api/Messages/*'
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/requests/api.py", line 59, in request
    #     return session.request(method=method, url=url, **kwargs)
    #            ~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     kwargs = {}
    #     method = 'delete'
    #     session = <requests.sessions.Session object at 0x762bb642de50>
    #     url = 'http://localhost:3000/api/Messages/*'
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/requests/sessions.py", line 592, in request
    #     resp = self.send(prep, **send_kwargs)
    #     allow_redirects = True
    #     auth = None
    #     cert = None
    #     cookies = None
    #     data = None
    #     files = None
    #     headers = None
    #     hooks = None
    #     json = None
    #     method = 'delete'
    #     params = None
    #     prep = <PreparedRequest [DELETE]>
    #     proxies = {}
    #     req = <Request [DELETE]>
    #     self = <requests.sessions.Session object at 0x762bb642de50>
    #     send_kwargs = {'timeout': None, 'allow_redirects': True, 'proxies': OrderedDict(), 'stream': False, 'verify': '/nix/store/whcmfmd3k7l0kldanbk1iq4lk1lf5b93-nss-cacert-3.123/etc/ssl/certs/ca-bundle.crt', 'cert': None}
    #     settings = {'proxies': OrderedDict(), 'stream': False, 'verify': '/nix/store/whcmfmd3k7l0kldanbk1iq4lk1lf5b93-nss-cacert-3.123/etc/ssl/certs/ca-bundle.crt', 'cert': None}
    #     stream = None
    #     timeout = None
    #     url = 'http://localhost:3000/api/Messages/*'
    #     verify = None
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/requests/sessions.py", line 706, in send
    #     r = adapter.send(request, **kwargs)
    #     adapter = <requests.adapters.HTTPAdapter object at 0x762bb6562f90>
    #     allow_redirects = True
    #     hooks = {'response': []}
    #     kwargs = {'timeout': None, 'proxies': OrderedDict(), 'stream': False, 'verify': '/nix/store/whcmfmd3k7l0kldanbk1iq4lk1lf5b93-nss-cacert-3.123/etc/ssl/certs/ca-bundle.crt', 'cert': None}
    #     request = <PreparedRequest [DELETE]>
    #     self = <requests.sessions.Session object at 0x762bb642de50>
    #     start = 1787114940.7136183
    #     stream = False
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/requests/adapters.py", line 678, in send
    #     raise ConnectionError(e, request=request)
    #     cert = None
    #     chunked = False
    #     conn = <urllib3.connectionpool.HTTPConnectionPool object at 0x762bb6082e40>
    #     proxies = OrderedDict()
    #     request = <PreparedRequest [DELETE]>
    #     self = <requests.adapters.HTTPAdapter object at 0x762bb6562f90>
    #     stream = False
    #     timeout = Timeout(connect=None, read=None, total=None)
    #     url = '/api/Messages/*'
    #     verify = '/nix/store/whcmfmd3k7l0kldanbk1iq4lk1lf5b93-nss-cacert-3.123/etc/ssl/certs/ca-bundle.crt'
    # requests.exceptions.ConnectionError: HTTPConnectionPool(host='localhost', port=3000): Max retries exceeded with url: /api/Messages/* (Caused by NewConnectionError("HTTPConnection(host='localhost', port=3000): Failed to establish a new connection: [Errno 111] Connection refused"))
  }
  {
    id = "frappe.tests.test_email.TestEmailIntegrationTest.test_store_attachments";
    # Traceback (most recent call last):
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/urllib3/connection.py", line 204, in _new_conn
    #     sock = connection.create_connection(
    #         (self._dns_host, self.port),
    #     ...<2 lines>...
    #         socket_options=self.socket_options,
    #     )
    #     self = <HTTPConnection(host='localhost', port=3000) at 0x762bb642e5d0>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/urllib3/util/connection.py", line 85, in create_connection
    #     raise err
    #     address = ('localhost', 3000)
    #     af = <AddressFamily.AF_INET: 2>
    #     canonname = ''
    #     err = None
    #     family = <AddressFamily.AF_UNSPEC: 0>
    #     host = 'localhost'
    #     port = 3000
    #     proto = 6
    #     res = (<AddressFamily.AF_INET: 2>, <SocketKind.SOCK_STREAM: 1>, 6, '', ('127.0.0.1', 3000))
    #     sa = ('127.0.0.1', 3000)
    #     sock = <socket.socket [closed] fd=-1, family=2, type=1, proto=6>
    #     socket_options = [(6, 1, 1)]
    #     socktype = <SocketKind.SOCK_STREAM: 1>
    #     source_address = None
    #     timeout = None
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/urllib3/util/connection.py", line 73, in create_connection
    #     sock.connect(sa)
    #     ~~~~~~~~~~~~^^^^
    #     address = ('localhost', 3000)
    #     af = <AddressFamily.AF_INET: 2>
    #     canonname = ''
    #     err = None
    #     family = <AddressFamily.AF_UNSPEC: 0>
    #     host = 'localhost'
    #     port = 3000
    #     proto = 6
    #     res = (<AddressFamily.AF_INET: 2>, <SocketKind.SOCK_STREAM: 1>, 6, '', ('127.0.0.1', 3000))
    #     sa = ('127.0.0.1', 3000)
    #     sock = <socket.socket [closed] fd=-1, family=2, type=1, proto=6>
    #     socket_options = [(6, 1, 1)]
    #     socktype = <SocketKind.SOCK_STREAM: 1>
    #     source_address = None
    #     timeout = None
    # ConnectionRefusedError: [Errno 111] Connection refused
    #
    # The above exception was the direct cause of the following exception:
    #
    # Traceback (most recent call last):
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/urllib3/connectionpool.py", line 787, in urlopen
    #     response = self._make_request(
    #         conn,
    #     ...<10 lines>...
    #         **response_kw,
    #     )
    #     assert_same_host = False
    #     body = None
    #     body_pos = None
    #     chunked = False
    #     clean_exit = False
    #     conn = None
    #     decode_content = False
    #     destination_scheme = None
    #     err = None
    #     headers = {'User-Agent': 'python-requests/2.33.1', 'Accept-Encoding': 'gzip, deflate, br', 'Accept': '*/*', 'Connection': 'keep-alive', 'Content-Length': '0'}
    #     http_tunnel_required = False
    #     method = 'DELETE'
    #     new_e = NewConnectionError("HTTPConnection(host='localhost', port=3000): Failed to establish a new connection: [Errno 111] Connection refused")
    #     parsed_url = Url(scheme=None, auth=None, host=None, port=None, path='/api/Messages/*', query=None, fragment=None)
    #     pool_timeout = None
    #     preload_content = False
    #     redirect = False
    #     release_conn = False
    #     release_this_conn = True
    #     response_conn = <HTTPConnection(host='localhost', port=3000) at 0x762bb642e5d0>
    #     response_kw = {}
    #     retries = Retry(total=0, connect=None, read=False, redirect=None, status=None)
    #     self = <urllib3.connectionpool.HTTPConnectionPool object at 0x762bb642f110>
    #     timeout = Timeout(connect=None, read=None, total=None)
    #     timeout_obj = Timeout(connect=None, read=None, total=None)
    #     url = '/api/Messages/*'
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/urllib3/connectionpool.py", line 493, in _make_request
    #     conn.request(
    #     ~~~~~~~~~~~~^
    #         method,
    #         ^^^^^^^
    #     ...<6 lines>...
    #         enforce_content_length=enforce_content_length,
    #         ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     )
    #     ^
    #     body = None
    #     chunked = False
    #     conn = <HTTPConnection(host='localhost', port=3000) at 0x762bb642e5d0>
    #     decode_content = False
    #     enforce_content_length = True
    #     headers = {'User-Agent': 'python-requests/2.33.1', 'Accept-Encoding': 'gzip, deflate, br', 'Accept': '*/*', 'Connection': 'keep-alive', 'Content-Length': '0'}
    #     method = 'DELETE'
    #     preload_content = False
    #     response_conn = <HTTPConnection(host='localhost', port=3000) at 0x762bb642e5d0>
    #     retries = Retry(total=0, connect=None, read=False, redirect=None, status=None)
    #     self = <urllib3.connectionpool.HTTPConnectionPool object at 0x762bb642f110>
    #     timeout = Timeout(connect=None, read=None, total=None)
    #     timeout_obj = Timeout(connect=None, read=None, total=None)
    #     url = '/api/Messages/*'
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/urllib3/connection.py", line 500, in request
    #     self.endheaders()
    #     ~~~~~~~~~~~~~~~^^
    #     body = None
    #     chunked = False
    #     chunks = None
    #     chunks_and_cl = ChunksAndContentLength(chunks=None, content_length=None)
    #     content_length = None
    #     decode_content = False
    #     enforce_content_length = True
    #     header = 'Content-Length'
    #     header_keys = frozenset({'user-agent', 'accept-encoding', 'connection', 'content-length', 'accept'})
    #     headers = {'User-Agent': 'python-requests/2.33.1', 'Accept-Encoding': 'gzip, deflate, br', 'Accept': '*/*', 'Connection': 'keep-alive', 'Content-Length': '0'}
    #     method = 'DELETE'
    #     preload_content = False
    #     self = <HTTPConnection(host='localhost', port=3000) at 0x762bb642e5d0>
    #     skip_accept_encoding = True
    #     skip_host = False
    #     url = '/api/Messages/*'
    #     value = '0'
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/http/client.py", line 1353, in endheaders
    #     self._send_output(message_body, encode_chunked=encode_chunked)
    #     ~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     encode_chunked = False
    #     message_body = None
    #     self = <HTTPConnection(host='localhost', port=3000) at 0x762bb642e5d0>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/http/client.py", line 1113, in _send_output
    #     self.send(msg)
    #     ~~~~~~~~~^^^^^
    #     encode_chunked = False
    #     message_body = None
    #     msg = b'DELETE /api/Messages/* HTTP/1.1\r\nHost: localhost:3000\r\nUser-Agent: python-requests/2.33.1\r\nAccept-Encoding: gzip, deflate, br\r\nAccept: */*\r\nConnection: keep-alive\r\nContent-Length: 0\r\n\r\n'
    #     self = <HTTPConnection(host='localhost', port=3000) at 0x762bb642e5d0>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/http/client.py", line 1057, in send
    #     self.connect()
    #     ~~~~~~~~~~~~^^
    #     data = b'DELETE /api/Messages/* HTTP/1.1\r\nHost: localhost:3000\r\nUser-Agent: python-requests/2.33.1\r\nAccept-Encoding: gzip, deflate, br\r\nAccept: */*\r\nConnection: keep-alive\r\nContent-Length: 0\r\n\r\n'
    #     self = <HTTPConnection(host='localhost', port=3000) at 0x762bb642e5d0>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/urllib3/connection.py", line 331, in connect
    #     self.sock = self._new_conn()
    #                 ~~~~~~~~~~~~~~^^
    #     self = <HTTPConnection(host='localhost', port=3000) at 0x762bb642e5d0>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/urllib3/connection.py", line 219, in _new_conn
    #     raise NewConnectionError(
    #         self, f"Failed to establish a new connection: {e}"
    #     ) from e
    #     self = <HTTPConnection(host='localhost', port=3000) at 0x762bb642e5d0>
    # urllib3.exceptions.NewConnectionError: HTTPConnection(host='localhost', port=3000): Failed to establish a new connection: [Errno 111] Connection refused
    #
    # The above exception was the direct cause of the following exception:
    #
    # Traceback (most recent call last):
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/requests/adapters.py", line 645, in send
    #     resp = conn.urlopen(
    #         method=request.method,
    #     ...<9 lines>...
    #         chunked=chunked,
    #     )
    #     cert = None
    #     chunked = False
    #     conn = <urllib3.connectionpool.HTTPConnectionPool object at 0x762bb642f110>
    #     proxies = OrderedDict()
    #     request = <PreparedRequest [DELETE]>
    #     self = <requests.adapters.HTTPAdapter object at 0x762bb5ed2140>
    #     stream = False
    #     timeout = Timeout(connect=None, read=None, total=None)
    #     url = '/api/Messages/*'
    #     verify = '/nix/store/whcmfmd3k7l0kldanbk1iq4lk1lf5b93-nss-cacert-3.123/etc/ssl/certs/ca-bundle.crt'
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/urllib3/connectionpool.py", line 841, in urlopen
    #     retries = retries.increment(
    #         method, url, error=new_e, _pool=self, _stacktrace=sys.exc_info()[2]
    #     )
    #     assert_same_host = False
    #     body = None
    #     body_pos = None
    #     chunked = False
    #     clean_exit = False
    #     conn = None
    #     decode_content = False
    #     destination_scheme = None
    #     err = None
    #     headers = {'User-Agent': 'python-requests/2.33.1', 'Accept-Encoding': 'gzip, deflate, br', 'Accept': '*/*', 'Connection': 'keep-alive', 'Content-Length': '0'}
    #     http_tunnel_required = False
    #     method = 'DELETE'
    #     new_e = NewConnectionError("HTTPConnection(host='localhost', port=3000): Failed to establish a new connection: [Errno 111] Connection refused")
    #     parsed_url = Url(scheme=None, auth=None, host=None, port=None, path='/api/Messages/*', query=None, fragment=None)
    #     pool_timeout = None
    #     preload_content = False
    #     redirect = False
    #     release_conn = False
    #     release_this_conn = True
    #     response_conn = <HTTPConnection(host='localhost', port=3000) at 0x762bb642e5d0>
    #     response_kw = {}
    #     retries = Retry(total=0, connect=None, read=False, redirect=None, status=None)
    #     self = <urllib3.connectionpool.HTTPConnectionPool object at 0x762bb642f110>
    #     timeout = Timeout(connect=None, read=None, total=None)
    #     timeout_obj = Timeout(connect=None, read=None, total=None)
    #     url = '/api/Messages/*'
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/urllib3/util/retry.py", line 535, in increment
    #     raise MaxRetryError(_pool, url, reason) from reason  # type: ignore[arg-type]
    #     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     _pool = <urllib3.connectionpool.HTTPConnectionPool object at 0x762bb642f110>
    #     _stacktrace = <traceback object at 0x762bb60eec80>
    #     cause = 'unknown'
    #     connect = None
    #     error = NewConnectionError("HTTPConnection(host='localhost', port=3000): Failed to establish a new connection: [Errno 111] Connection refused")
    #     history = (RequestHistory(method='DELETE', url='/api/Messages/*', error=NewConnectionError("HTTPConnection(host='localhost', port=3000): Failed to establish a new connection: [Errno 111] Connection refused"), status=None, redirect_location=None),)
    #     method = 'DELETE'
    #     new_retry = Retry(total=-1, connect=None, read=False, redirect=None, status=None)
    #     other = None
    #     read = False
    #     reason = NewConnectionError("HTTPConnection(host='localhost', port=3000): Failed to establish a new connection: [Errno 111] Connection refused")
    #     redirect = None
    #     redirect_location = None
    #     response = None
    #     self = Retry(total=0, connect=None, read=False, redirect=None, status=None)
    #     status = None
    #     status_count = None
    #     total = -1
    #     url = '/api/Messages/*'
    # urllib3.exceptions.MaxRetryError: HTTPConnectionPool(host='localhost', port=3000): Max retries exceeded with url: /api/Messages/* (Caused by NewConnectionError("HTTPConnection(host='localhost', port=3000): Failed to establish a new connection: [Errno 111] Connection refused"))
    #
    # During handling of the above exception, another exception occurred:
    #
    # Traceback (most recent call last):
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/tests/utils.py", line 58, in wrapped
    #     original(self)
    #     ~~~~~~~~^^^^^^
    #     original = <function TestEmailIntegrationTest.setUp at 0x762bb60499e0>
    #     self = <frappe.tests.test_email.TestEmailIntegrationTest testMethod=test_store_attachments>
    #     skip_ids = ['frappe.email.test_smtp.TestSMTP.test_smtp_ssl_session', 'frappe.email.test_smtp.TestSMTP.test_smtp_tls_session']
    #     test_id = 'frappe.tests.test_email.TestEmailIntegrationTest.test_store_attachments'
    #     var = 'SKIP_TESTS'
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/tests/test_email.py", line 411, in setUp
    #     requests.delete(f"{self.SMTP4DEV_WEB}/api/Messages/*")
    #     ~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     __class__ = <class 'frappe.tests.test_email.TestEmailIntegrationTest'>
    #     self = <frappe.tests.test_email.TestEmailIntegrationTest testMethod=test_store_attachments>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/requests/api.py", line 157, in delete
    #     return request("delete", url, **kwargs)
    #     kwargs = {}
    #     url = 'http://localhost:3000/api/Messages/*'
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/requests/api.py", line 59, in request
    #     return session.request(method=method, url=url, **kwargs)
    #            ~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     kwargs = {}
    #     method = 'delete'
    #     session = <requests.sessions.Session object at 0x762bb5f23ce0>
    #     url = 'http://localhost:3000/api/Messages/*'
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/requests/sessions.py", line 592, in request
    #     resp = self.send(prep, **send_kwargs)
    #     allow_redirects = True
    #     auth = None
    #     cert = None
    #     cookies = None
    #     data = None
    #     files = None
    #     headers = None
    #     hooks = None
    #     json = None
    #     method = 'delete'
    #     params = None
    #     prep = <PreparedRequest [DELETE]>
    #     proxies = {}
    #     req = <Request [DELETE]>
    #     self = <requests.sessions.Session object at 0x762bb5f23ce0>
    #     send_kwargs = {'timeout': None, 'allow_redirects': True, 'proxies': OrderedDict(), 'stream': False, 'verify': '/nix/store/whcmfmd3k7l0kldanbk1iq4lk1lf5b93-nss-cacert-3.123/etc/ssl/certs/ca-bundle.crt', 'cert': None}
    #     settings = {'proxies': OrderedDict(), 'stream': False, 'verify': '/nix/store/whcmfmd3k7l0kldanbk1iq4lk1lf5b93-nss-cacert-3.123/etc/ssl/certs/ca-bundle.crt', 'cert': None}
    #     stream = None
    #     timeout = None
    #     url = 'http://localhost:3000/api/Messages/*'
    #     verify = None
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/requests/sessions.py", line 706, in send
    #     r = adapter.send(request, **kwargs)
    #     adapter = <requests.adapters.HTTPAdapter object at 0x762bb5ed2140>
    #     allow_redirects = True
    #     hooks = {'response': []}
    #     kwargs = {'timeout': None, 'proxies': OrderedDict(), 'stream': False, 'verify': '/nix/store/whcmfmd3k7l0kldanbk1iq4lk1lf5b93-nss-cacert-3.123/etc/ssl/certs/ca-bundle.crt', 'cert': None}
    #     request = <PreparedRequest [DELETE]>
    #     self = <requests.sessions.Session object at 0x762bb5f23ce0>
    #     start = 1787114940.7250535
    #     stream = False
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/requests/adapters.py", line 678, in send
    #     raise ConnectionError(e, request=request)
    #     cert = None
    #     chunked = False
    #     conn = <urllib3.connectionpool.HTTPConnectionPool object at 0x762bb642f110>
    #     proxies = OrderedDict()
    #     request = <PreparedRequest [DELETE]>
    #     self = <requests.adapters.HTTPAdapter object at 0x762bb5ed2140>
    #     stream = False
    #     timeout = Timeout(connect=None, read=None, total=None)
    #     url = '/api/Messages/*'
    #     verify = '/nix/store/whcmfmd3k7l0kldanbk1iq4lk1lf5b93-nss-cacert-3.123/etc/ssl/certs/ca-bundle.crt'
    # requests.exceptions.ConnectionError: HTTPConnectionPool(host='localhost', port=3000): Max retries exceeded with url: /api/Messages/* (Caused by NewConnectionError("HTTPConnection(host='localhost', port=3000): Failed to establish a new connection: [Errno 111] Connection refused"))
  }

  {
    id = "frappe.tests.test_rename_doc.TestRenameDoc";
    # Traceback (most recent call last):
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/tests/test_rename_doc.py", line 80, in setUpClass
    #     ).insert()
    #       ~~~~~~^^
    #     __class__ = <class 'frappe.tests.test_rename_doc.TestRenameDoc'>
    #     doc = <CustomToDo: TODO-34-04>
    #     num = 4
    #     self = <class 'frappe.tests.test_rename_doc.TestRenameDoc'>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/model/document.py", line 334, in insert
    #     self.run_post_save_methods()
    #     ~~~~~~~~~~~~~~~~~~~~~~~~~~^^
    #     d = <DocPerm: 70hk0pd4ng parent=Test Rename Document Old>
    #     ignore_if_duplicate = False
    #     ignore_links = None
    #     ignore_mandatory = None
    #     ignore_permissions = None
    #     self = <DocType: Test Rename Document Old>
    #     set_child_names = True
    #     set_name = None
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/model/document.py", line 1182, in run_post_save_methods
    #     self.run_method("on_update")
    #     ~~~~~~~~~~~~~~~^^^^^^^^^^^^^
    #     self = <DocType: Test Rename Document Old>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/model/document.py", line 1016, in run_method
    #     out = Document.hook(fn)(self, *args, **kwargs)
    #     args = ()
    #     fn = <function Document.run_method.<locals>.fn at 0x762bb5fc6a20>
    #     kwargs = {}
    #     method = 'on_update'
    #     self = <DocType: Test Rename Document Old>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/model/document.py", line 1376, in composer
    #     return composed(self, method, *args, **kwargs)
    #     args = ()
    #     compose = <function Document.hook.<locals>.compose at 0x762bb5fc5580>
    #     composed = <function Document.hook.<locals>.compose.<locals>.runner at 0x762bb5fc7d80>
    #     doc_events = {'*': {'on_update': ['frappe.desk.notifications.clear_doctype_notifications', 'frappe.workflow.doctype.workflow_action.workflow_action.process_workflow_actions', 'frappe.core.doctype.file.utils.attach_files_to_document', 'frappe.automation.doctype.assignment_rule.assignment_rule.apply', 'frappe.automation.doctype.assignment_rule.assignment_rule.update_due_date', 'frappe.core.doctype.user_type.user_type.apply_permissions_for_non_standard_user_type', 'frappe.search.sqlite_search.update_doc_index'], 'after_rename': ['frappe.desk.notifications.clear_doctype_notifications'], 'on_cancel': ['frappe.desk.notifications.clear_doctype_notifications', 'frappe.workflow.doctype.workflow_action.workflow_action.process_workflow_actions', 'frappe.automation.doctype.assignment_rule.assignment_rule.apply'], 'on_trash': ['frappe.desk.notifications.clear_doctype_notifications', 'frappe.workflow.doctype.workflow_action.workflow_action.process_workflow_actions', 'frappe.search.sqlite_search.delete_doc_index'], 'on_update_after_submit': ['frappe.workflow.doctype.workflow_action.workflow_action.process_workflow_actions', 'frappe.automation.doctype.assignment_rule.assignment_rule.apply', 'frappe.automation.doctype.assignment_rule.assignment_rule.update_due_date', 'frappe.core.doctype.file.utils.attach_files_to_document'], 'on_change': ['frappe.social.doctype.energy_point_rule.energy_point_rule.process_energy_points', 'frappe.automation.doctype.milestone_tracker.milestone_tracker.evaluate_milestone']}, 'Event': {'after_insert': ['frappe.integrations.doctype.google_calendar.google_calendar.insert_event_in_google_calendar'], 'on_update': ['frappe.integrations.doctype.google_calendar.google_calendar.update_event_in_google_calendar'], 'on_trash': ['frappe.integrations.doctype.google_calendar.google_calendar.delete_event_from_google_calendar']}, 'Contact': {'after_insert': ['frappe.integrations.doctype.google_contacts.google_contacts.insert_contacts_to_google_contacts'], 'on_update': ['frappe.integrations.doctype.google_contacts.google_contacts.update_contacts_to_google_contacts']}, 'DocType': {'on_update': ['frappe.cache_manager.build_domain_restriced_doctype_cache']}, 'Page': {'on_update': ['frappe.cache_manager.build_domain_restriced_page_cache']}}
    #     f = <function Document.run_method.<locals>.fn at 0x762bb5fc6a20>
    #     handler = 'frappe.search.sqlite_search.update_doc_index'
    #     hooks = [<function build_domain_restriced_doctype_cache at 0x762bbb1b2700>, <function clear_doctype_notifications at 0x762bb82ced40>, <function process_workflow_actions at 0x762bb7440d60>, <function attach_files_to_document at 0x762bb99ac9a0>, <function apply at 0x762bb7454360>, <function update_due_date at 0x762bb7454400>, <function apply_permissions_for_non_standard_user_type at 0x762bb7455d00>, <function update_doc_index at 0x762bb7fba480>]
    #     kwargs = {}
    #     method = 'on_update'
    #     self = <DocType: Test Rename Document Old>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/model/document.py", line 1358, in runner
    #     add_to_return_value(self, fn(self, *args, **kwargs))
    #                               ~~^^^^^^^^^^^^^^^^^^^^^^^
    #     add_to_return_value = <function Document.hook.<locals>.add_to_return_value at 0x762bb5fc77e0>
    #     args = ()
    #     fn = <function Document.run_method.<locals>.fn at 0x762bb5fc6a20>
    #     hooks = (<function build_domain_restriced_doctype_cache at 0x762bbb1b2700>, <function clear_doctype_notifications at 0x762bb82ced40>, <function process_workflow_actions at 0x762bb7440d60>, <function attach_files_to_document at 0x762bb99ac9a0>, <function apply at 0x762bb7454360>, <function update_due_date at 0x762bb7454400>, <function apply_permissions_for_non_standard_user_type at 0x762bb7455d00>, <function update_doc_index at 0x762bb7fba480>)
    #     kwargs = {}
    #     method = 'on_update'
    #     self = <DocType: Test Rename Document Old>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/model/document.py", line 1013, in fn
    #     return method_object(*args, **kwargs)
    #     args = ()
    #     kwargs = {}
    #     method = 'on_update'
    #     method_object = <bound method DocType.on_update of <DocType: Test Rename Document Old>>
    #     self = <DocType: Test Rename Document Old>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/core/doctype/doctype/doctype.py", line 542, in on_update
    #     self.export_doc()
    #     ~~~~~~~~~~~~~~~^^
    #     allow_doctype_export = 1
    #     self = <DocType: Test Rename Document Old>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/core/doctype/doctype/doctype.py", line 849, in export_doc
    #     export_to_files(record_list=[["DocType", self.name]], create_init=True)
    #     ~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     export_to_files = <function export_to_files at 0x762bb7c19300>
    #     self = <DocType: Test Rename Document Old>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/modules/export_file.py", line 27, in export_to_files
    #     write_document_file(
    #     ~~~~~~~~~~~~~~~~~~~^
    #     	frappe.get_doc(record[0], record[1]),
    #      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     ...<2 lines>...
    #     	folder_name=folder_name,
    #      ^^^^^^^^^^^^^^^^^^^^^^^^
    #     )
    #     ^
    #     create_init = True
    #     folder_name = None
    #     record = ['DocType', 'Test Rename Document Old']
    #     record_list = [['DocType', 'Test Rename Document Old']]
    #     record_module = None
    #     verbose = 0
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/modules/export_file.py", line 47, in write_document_file
    #     folder = create_folder(module, doc.doctype, doc.name, create_init, is_custom_module)
    #     create_init = True
    #     doc = <DocType: Test Rename Document Old>
    #     doc_export = {'name': 'Test Rename Document Old', 'creation': datetime.datetime(2026, 8, 19, 0, 50, 9, 720445), 'modified': datetime.datetime(2026, 8, 19, 0, 50, 9, 720445), 'modified_by': 'Administrator', 'owner': 'Administrator', 'editable_grid': 1, 'module': 'Custom', 'sort_field': 'modified', 'sort_order': 'DESC', 'allow_rename': 1, 'engine': 'InnoDB', 'grid_page_length': 50, 'rows_threshold_for_grid_search': 20, 'index_web_pages_for_search': 1, 'row_format': 'Dynamic', 'doctype': 'DocType', 'fields': [{'fieldname': 'some_fieldname', 'label': 'Some Field', 'fieldtype': 'Data'}], 'permissions': [{'role': 'System Manager', 'read': 1, 'write': 1, 'create': 1, 'delete': 1, 'report': 1, 'export': 1, 'share': 1, 'print': 1, 'email': 1}], 'links': [], 'states': [], 'actions': [], 'field_order': ['some_fieldname']}
    #     folder_name = None
    #     is_custom_module = 0
    #     module = 'Custom'
    #     record_module = None
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/modules/export_file.py", line 129, in create_folder
    #     frappe.create_folder(folder)
    #     ~~~~~~~~~~~~~~~~~~~~^^^^^^^^
    #     create_init = True
    #     dn = 'test_rename_document_old'
    #     dt = 'doctype'
    #     folder = '/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/custom/doctype/test_rename_document_old'
    #     is_custom_module = 0
    #     module = 'Custom'
    #     module_path = '/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/custom'
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/__init__.py", line 635, in create_folder
    #     os.makedirs(path)
    #     ~~~~~~~~~~~^^^^^^
    #     path = '/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/custom/doctype/test_rename_document_old'
    #     touch_file = <function touch_file at 0x762bbbc165c0>
    #     with_init = False
    #   File "<frozen os>", line 228, in makedirs
    #     exist_ok = False
    #     head = '/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/custom/doctype'
    #     mode = 511
    #     name = '/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/custom/doctype/test_rename_document_old'
    #     tail = 'test_rename_document_old'
    # OSError: [Errno 30] Read-only file system: '/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/custom/doctype/test_rename_document_old'
  }
  {
    id = "frappe.tests.test_translate.TestTranslate.test_python_extractor";
    # Traceback (most recent call last):
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/tests/test_translate.py", line 219, in test_python_extractor
    #     self.assertEqual(expected, actual)
    #     ~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^
    #     actual = (11, 'broken on separate line', None)
    #     code = '\nfrappe._("attr")\n_("name")\nfrappe._("attr with", context="attr context")\n_("name with", context="name context")\n_("broken on",\n\tcontext="new line")\n__("This wont be captured")\n__init__("This shouldn\'t too")\n_(\n\t"broken on separate line",\n\t)\n_(not_a_string)\n_(not_a_string, context="wat")\n_lt("Communication")\n'
    #     expected = (10, 'broken on separate line', None)
    #     expected_output = [(2, 'attr', None), (3, 'name', None), (4, 'attr with', 'attr context'), (5, 'name with', 'name context'), (6, 'broken on', 'new line'), (10, 'broken on separate line', None), (15, 'Communication', None)]
    #     output = [(2, 'attr', None), (3, 'name', None), (4, 'attr with', 'attr context'), (5, 'name with', 'name context'), (6, 'broken on', 'new line'), (11, 'broken on separate line', None), (15, 'Communication', None)]
    #     self = <frappe.tests.test_translate.TestTranslate testMethod=test_python_extractor>
    # AssertionError: Tuples differ: (10, 'broken on separate line', None) != (11, 'broken on separate line', None)
    #
    # First differing element 0:
    # 10
    # 11
    #
    # - (10, 'broken on separate line', None)
    # ?   ^
    #
    # + (11, 'broken on separate line', None)
    # ?   ^
    #
    #
    # During handling of the above exception, another exception occurred:
    #
    # Traceback (most recent call last):
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/tests/test_translate.py", line 218, in test_python_extractor
    #     with self.subTest():
    #          ~~~~~~~~~~~~^^
    #     actual = (11, 'broken on separate line', None)
    #     code = '\nfrappe._("attr")\n_("name")\nfrappe._("attr with", context="attr context")\n_("name with", context="name context")\n_("broken on",\n\tcontext="new line")\n__("This wont be captured")\n__init__("This shouldn\'t too")\n_(\n\t"broken on separate line",\n\t)\n_(not_a_string)\n_(not_a_string, context="wat")\n_lt("Communication")\n'
    #     expected = (10, 'broken on separate line', None)
    #     expected_output = [(2, 'attr', None), (3, 'name', None), (4, 'attr with', 'attr context'), (5, 'name with', 'name context'), (6, 'broken on', 'new line'), (10, 'broken on separate line', None), (15, 'Communication', None)]
    #     output = [(2, 'attr', None), (3, 'name', None), (4, 'attr with', 'attr context'), (5, 'name with', 'name context'), (6, 'broken on', 'new line'), (11, 'broken on separate line', None), (15, 'Communication', None)]
    #     self = <frappe.tests.test_translate.TestTranslate testMethod=test_python_extractor>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/contextlib.py", line 162, in __exit__
    #     self.gen.throw(value)
    #     ~~~~~~~~~~~~~~^^^^^^^
    #     self = <contextlib._GeneratorContextManager object at 0x762bb2476ba0>
    #     traceback = <traceback object at 0x762bb4002e40>
    #     typ = <class 'AssertionError'>
    #     value = AssertionError("Tuples differ: (10, 'broken on separate line', None) != (11, 'broken on separate line', None)\n\nFirst differing element 0:\n10\n11\n\n- (10, 'broken on separate line', None)\n?   ^\n\n+ (11, 'broken on separate line', None)\n?   ^\n")
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/unittest/case.py", line 555, in subTest
    #     with self._outcome.testPartExecutor(self._subtest, subTest=True):
    #          ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     msg = <object object at 0x762bbd1fe2d0>
    #     params = {}
    #     params_map = _OrderedChainMap({})
    #     parent = None
    #     self = <frappe.tests.test_translate.TestTranslate testMethod=test_python_extractor>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/contextlib.py", line 162, in __exit__
    #     self.gen.throw(value)
    #     ~~~~~~~~~~~~~~^^^^^^^
    #     self = <contextlib._GeneratorContextManager object at 0x762bb28c7f50>
    #     traceback = <traceback object at 0x762bb4001d80>
    #     typ = <class 'AssertionError'>
    #     value = AssertionError("Tuples differ: (10, 'broken on separate line', None) != (11, 'broken on separate line', None)\n\nFirst differing element 0:\n10\n11\n\n- (10, 'broken on separate line', None)\n?   ^\n\n+ (11, 'broken on separate line', None)\n?   ^\n")
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/unittest/case.py", line 73, in testPartExecutor
    #     self.result.addSubTest(test_case.test_case, test_case, exc_info)
    #     ~~~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     exc_info = (<class 'AssertionError'>, AssertionError("Tuples differ: (10, 'broken on separate line', None) != (11, 'broken on separate line', None)\n\nFirst differing element 0:\n10\n11\n\n- (10, 'broken on separate line', None)\n?   ^\n\n+ (11, 'broken on separate line', None)\n?   ^\n"), <traceback object at 0x762bb4001e00>)
    #     old_success = True
    #     self = <unittest.case._Outcome object at 0x762bb2700b40>
    #     subTest = True
    #     test_case = <unittest.case._SubTest testMethod=runTest>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/unittest/runner.py", line 81, in addSubTest
    #     self._write_status(subtest, "FAIL")
    #     ~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^
    #     __class__ = <class 'unittest.runner.TextTestResult'>
    #     err = (<class 'AssertionError'>, AssertionError("Tuples differ: (10, 'broken on separate line', None) != (11, 'broken on separate line', None)\n\nFirst differing element 0:\n10\n11\n\n- (10, 'broken on separate line', None)\n?   ^\n\n+ (11, 'broken on separate line', None)\n?   ^\n"), <traceback object at 0x762bb4001e00>)
    #     self = <frappe.parallel_test_runner.ParallelTestResult run=531 errors=7 failures=2>
    #     subtest = <unittest.case._SubTest testMethod=runTest>
    #     test = <frappe.tests.test_translate.TestTranslate testMethod=test_python_extractor>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/unittest/runner.py", line 73, in _write_status
    #     self.stream.writeln(status)
    #     ^^^^^^^^^^^^^^^^^^^
    #     is_subtest = True
    #     self = <frappe.parallel_test_runner.ParallelTestResult run=531 errors=7 failures=2>
    #     status = 'FAIL'
    #     test = <unittest.case._SubTest testMethod=runTest>
    # AttributeError: '_io.TextIOWrapper' object has no attribute 'writeln'. Did you mean: 'write'?
  }
  {
    id = "frappe.tests.test_utils.TestAppParser.test_app_name_parser";
    # It seems that this test expects a git repo
    #
    # Traceback (most recent call last):
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/installer.py", line 232, in fetch_details_from_tag
    #     org, repo = org_repo
    #     ^^^^^^^^^
    #     _tag = 'healthcare'
    #     app_tag = ['healthcare']
    #     org_repo = ['healthcare']
    #     repo = 'healthcare'
    #     tag = None
    # ValueError: not enough values to unpack (expected 2, got 1)
    #
    # During handling of the above exception, another exception occurred:
    #
    # Traceback (most recent call last):
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/urllib3/response.py", line 903, in _error_catcher
    #     yield
    #     arg = 'Response may not contain content.'
    #     clean_exit = False
    #     self = <urllib3.response.HTTPResponse object at 0x762bb6cb2c50>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/urllib3/response.py", line 1049, in _raw_read
    #     raise IncompleteRead(self._fp_bytes_read, self.length_remaining)
    #     amt = 10240
    #     data = b''
    #     fp_closed = False
    #     read1 = False
    #     self = <urllib3.response.HTTPResponse object at 0x762bb6cb2c50>
    # urllib3.exceptions.IncompleteRead: IncompleteRead(2 bytes read, -2 more expected)
    #
    # The above exception was the direct cause of the following exception:
    #
    # Traceback (most recent call last):
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/requests/models.py", line 822, in generate
    #     yield from self.raw.stream(chunk_size, decode_content=True)
    #     chunk_size = 10240
    #     self = <Response [200]>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/urllib3/response.py", line 1257, in stream
    #     data = self.read(amt=amt, decode_content=decode_content)
    #     amt = 10240
    #     decode_content = True
    #     self = <urllib3.response.HTTPResponse object at 0x762bb6cb2c50>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/urllib3/response.py", line 1149, in read
    #     data = self._raw_read(amt)
    #     amt = 10240
    #     cache_content = False
    #     data = b'{}'
    #     decode_content = True
    #     decoded_data = b'{}'
    #     flush_decoder = False
    #     self = <urllib3.response.HTTPResponse object at 0x762bb6cb2c50>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/urllib3/response.py", line 1027, in _raw_read
    #     with self._error_catcher():
    #          ~~~~~~~~~~~~~~~~~~~^^
    #     amt = 10240
    #     data = b''
    #     fp_closed = False
    #     read1 = False
    #     self = <urllib3.response.HTTPResponse object at 0x762bb6cb2c50>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/contextlib.py", line 162, in __exit__
    #     self.gen.throw(value)
    #     ~~~~~~~~~~~~~~^^^^^^^
    #     self = <contextlib._GeneratorContextManager object at 0x762bb6c972a0>
    #     traceback = <traceback object at 0x762bb4c75340>
    #     typ = <class 'urllib3.exceptions.IncompleteRead'>
    #     value = IncompleteRead(2 bytes read, -2 more expected)
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/urllib3/response.py", line 927, in _error_catcher
    #     raise ProtocolError(arg, e) from e
    #     arg = 'Response may not contain content.'
    #     clean_exit = False
    #     self = <urllib3.response.HTTPResponse object at 0x762bb6cb2c50>
    # urllib3.exceptions.ProtocolError: ('Response may not contain content.', IncompleteRead(2 bytes read, -2 more expected))
    #
    # During handling of the above exception, another exception occurred:
    #
    # Traceback (most recent call last):
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/tests/test_utils.py", line 1047, in test_app_name_parser
    #     self.assertEqual("healthcare", parse_app_name("healthcare"))
    #                                    ~~~~~~~~~~~~~~^^^^^^^^^^^^^^
    #     bench_path = '/var/lib/TestProject'
    #     frappe_app = '/var/lib/TestProject/apps/frappe'
    #     self = <frappe.tests.test_utils.TestAppParser testMethod=test_app_name_parser>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/installer.py", line 264, in parse_app_name
    #     _, repo, _ = fetch_details_from_tag(name)
    #                  ~~~~~~~~~~~~~~~~~~~~~~^^^^^^
    #     name = 'healthcare'
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/installer.py", line 234, in fetch_details_from_tag
    #     org, repo = find_org(org_repo[0])
    #                 ~~~~~~~~^^^^^^^^^^^^^
    #     _tag = 'healthcare'
    #     app_tag = ['healthcare']
    #     org_repo = ['healthcare']
    #     repo = 'healthcare'
    #     tag = None
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/installer.py", line 202, in find_org
    #     response = requests.head(f"https://api.github.com/repos/{org}/{org_repo}")
    #     InvalidRemoteException = <class 'frappe.exceptions.InvalidRemoteException'>
    #     org = 'frappe'
    #     org_repo = 'healthcare'
    #     requests = <module 'requests' from '/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/requests/__init__.py'>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/requests/api.py", line 100, in head
    #     return request("head", url, **kwargs)
    #     kwargs = {'allow_redirects': False}
    #     url = 'https://api.github.com/repos/frappe/healthcare'
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/requests/api.py", line 59, in request
    #     return session.request(method=method, url=url, **kwargs)
    #            ~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     kwargs = {'allow_redirects': False}
    #     method = 'head'
    #     session = <requests.sessions.Session object at 0x762bb4ea1860>
    #     url = 'https://api.github.com/repos/frappe/healthcare'
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/requests/sessions.py", line 592, in request
    #     resp = self.send(prep, **send_kwargs)
    #     allow_redirects = False
    #     auth = None
    #     cert = None
    #     cookies = None
    #     data = None
    #     files = None
    #     headers = None
    #     hooks = None
    #     json = None
    #     method = 'head'
    #     params = None
    #     prep = <PreparedRequest [HEAD]>
    #     proxies = {}
    #     req = <Request [HEAD]>
    #     self = <requests.sessions.Session object at 0x762bb4ea1860>
    #     send_kwargs = {'timeout': None, 'allow_redirects': False, 'proxies': OrderedDict(), 'stream': False, 'verify': '/nix/store/whcmfmd3k7l0kldanbk1iq4lk1lf5b93-nss-cacert-3.123/etc/ssl/certs/ca-bundle.crt', 'cert': None}
    #     settings = {'proxies': OrderedDict(), 'stream': False, 'verify': '/nix/store/whcmfmd3k7l0kldanbk1iq4lk1lf5b93-nss-cacert-3.123/etc/ssl/certs/ca-bundle.crt', 'cert': None}
    #     stream = None
    #     timeout = None
    #     url = 'https://api.github.com/repos/frappe/healthcare'
    #     verify = None
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/requests/sessions.py", line 749, in send
    #     r.content
    #     adapter = <requests.adapters.HTTPAdapter object at 0x762bb48cfcd0>
    #     allow_redirects = False
    #     elapsed = 0.00016069412231445312
    #     history = []
    #     hooks = {'response': []}
    #     kwargs = {'timeout': None, 'proxies': OrderedDict(), 'stream': False, 'verify': '/nix/store/whcmfmd3k7l0kldanbk1iq4lk1lf5b93-nss-cacert-3.123/etc/ssl/certs/ca-bundle.crt', 'cert': None}
    #     r = <Response [200]>
    #     request = <PreparedRequest [HEAD]>
    #     self = <requests.sessions.Session object at 0x762bb4ea1860>
    #     start = 1787115034.0818489
    #     stream = False
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/requests/models.py", line 904, in content
    #     self._content = b"".join(self.iter_content(CONTENT_CHUNK_SIZE)) or b""
    #                     ~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     self = <Response [200]>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/requests/models.py", line 824, in generate
    #     raise ChunkedEncodingError(e)
    #     chunk_size = 10240
    #     self = <Response [200]>
    # requests.exceptions.ChunkedEncodingError: ('Response may not contain content.', IncompleteRead(2 bytes read, -2 more expected))
  }
  {
    id = "frappe.tests.test_virtual_doctype.TestVirtualDoctypes";
    # Traceback (most recent call last):
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/tests/test_virtual_doctype.py", line 91, in setUpClass
    #     cdt = new_doctype(name=TEST_CHILD_DOCTYPE_NAME, is_virtual=1, istable=1, custom=0).insert()
    #     cls = <class 'frappe.tests.test_virtual_doctype.TestVirtualDoctypes'>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/model/document.py", line 334, in insert
    #     self.run_post_save_methods()
    #     ~~~~~~~~~~~~~~~~~~~~~~~~~~^^
    #     d = <DataDocField: some_fieldname parent=VirtualDoctypeTestChild>
    #     ignore_if_duplicate = False
    #     ignore_links = None
    #     ignore_mandatory = None
    #     ignore_permissions = None
    #     self = <DocType: VirtualDoctypeTestChild>
    #     set_child_names = True
    #     set_name = None
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/model/document.py", line 1182, in run_post_save_methods
    #     self.run_method("on_update")
    #     ~~~~~~~~~~~~~~~^^^^^^^^^^^^^
    #     self = <DocType: VirtualDoctypeTestChild>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/model/document.py", line 1016, in run_method
    #     out = Document.hook(fn)(self, *args, **kwargs)
    #     args = ()
    #     fn = <function Document.run_method.<locals>.fn at 0x762bb4b409a0>
    #     kwargs = {}
    #     method = 'on_update'
    #     self = <DocType: VirtualDoctypeTestChild>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/model/document.py", line 1376, in composer
    #     return composed(self, method, *args, **kwargs)
    #     args = ()
    #     compose = <function Document.hook.<locals>.compose at 0x762bb38e6980>
    #     composed = <function Document.hook.<locals>.compose.<locals>.runner at 0x762bb38e71a0>
    #     doc_events = {'*': {'on_update': ['frappe.desk.notifications.clear_doctype_notifications', 'frappe.workflow.doctype.workflow_action.workflow_action.process_workflow_actions', 'frappe.core.doctype.file.utils.attach_files_to_document', 'frappe.automation.doctype.assignment_rule.assignment_rule.apply', 'frappe.automation.doctype.assignment_rule.assignment_rule.update_due_date', 'frappe.core.doctype.user_type.user_type.apply_permissions_for_non_standard_user_type', 'frappe.search.sqlite_search.update_doc_index'], 'after_rename': ['frappe.desk.notifications.clear_doctype_notifications'], 'on_cancel': ['frappe.desk.notifications.clear_doctype_notifications', 'frappe.workflow.doctype.workflow_action.workflow_action.process_workflow_actions', 'frappe.automation.doctype.assignment_rule.assignment_rule.apply'], 'on_trash': ['frappe.desk.notifications.clear_doctype_notifications', 'frappe.workflow.doctype.workflow_action.workflow_action.process_workflow_actions', 'frappe.search.sqlite_search.delete_doc_index'], 'on_update_after_submit': ['frappe.workflow.doctype.workflow_action.workflow_action.process_workflow_actions', 'frappe.automation.doctype.assignment_rule.assignment_rule.apply', 'frappe.automation.doctype.assignment_rule.assignment_rule.update_due_date', 'frappe.core.doctype.file.utils.attach_files_to_document'], 'on_change': ['frappe.social.doctype.energy_point_rule.energy_point_rule.process_energy_points', 'frappe.automation.doctype.milestone_tracker.milestone_tracker.evaluate_milestone']}, 'Event': {'after_insert': ['frappe.integrations.doctype.google_calendar.google_calendar.insert_event_in_google_calendar'], 'on_update': ['frappe.integrations.doctype.google_calendar.google_calendar.update_event_in_google_calendar'], 'on_trash': ['frappe.integrations.doctype.google_calendar.google_calendar.delete_event_from_google_calendar']}, 'Contact': {'after_insert': ['frappe.integrations.doctype.google_contacts.google_contacts.insert_contacts_to_google_contacts'], 'on_update': ['frappe.integrations.doctype.google_contacts.google_contacts.update_contacts_to_google_contacts']}, 'DocType': {'on_update': ['frappe.cache_manager.build_domain_restriced_doctype_cache']}, 'Page': {'on_update': ['frappe.cache_manager.build_domain_restriced_page_cache']}}
    #     f = <function Document.run_method.<locals>.fn at 0x762bb4b409a0>
    #     handler = 'frappe.search.sqlite_search.update_doc_index'
    #     hooks = [<function build_domain_restriced_doctype_cache at 0x762bbb1b2700>, <function clear_doctype_notifications at 0x762bb82ced40>, <function process_workflow_actions at 0x762bb7440d60>, <function attach_files_to_document at 0x762bb99ac9a0>, <function apply at 0x762bb7454360>, <function update_due_date at 0x762bb7454400>, <function apply_permissions_for_non_standard_user_type at 0x762bb7455d00>, <function update_doc_index at 0x762bb7fba480>]
    #     kwargs = {}
    #     method = 'on_update'
    #     self = <DocType: VirtualDoctypeTestChild>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/model/document.py", line 1358, in runner
    #     add_to_return_value(self, fn(self, *args, **kwargs))
    #                               ~~^^^^^^^^^^^^^^^^^^^^^^^
    #     add_to_return_value = <function Document.hook.<locals>.add_to_return_value at 0x762bb38e7060>
    #     args = ()
    #     fn = <function Document.run_method.<locals>.fn at 0x762bb4b409a0>
    #     hooks = (<function build_domain_restriced_doctype_cache at 0x762bbb1b2700>, <function clear_doctype_notifications at 0x762bb82ced40>, <function process_workflow_actions at 0x762bb7440d60>, <function attach_files_to_document at 0x762bb99ac9a0>, <function apply at 0x762bb7454360>, <function update_due_date at 0x762bb7454400>, <function apply_permissions_for_non_standard_user_type at 0x762bb7455d00>, <function update_doc_index at 0x762bb7fba480>)
    #     kwargs = {}
    #     method = 'on_update'
    #     self = <DocType: VirtualDoctypeTestChild>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/model/document.py", line 1013, in fn
    #     return method_object(*args, **kwargs)
    #     args = ()
    #     kwargs = {}
    #     method = 'on_update'
    #     method_object = <bound method DocType.on_update of <DocType: VirtualDoctypeTestChild>>
    #     self = <DocType: VirtualDoctypeTestChild>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/core/doctype/doctype/doctype.py", line 542, in on_update
    #     self.export_doc()
    #     ~~~~~~~~~~~~~~~^^
    #     allow_doctype_export = True
    #     self = <DocType: VirtualDoctypeTestChild>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/core/doctype/doctype/doctype.py", line 849, in export_doc
    #     export_to_files(record_list=[["DocType", self.name]], create_init=True)
    #     ~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     export_to_files = <function export_to_files at 0x762bb7c19300>
    #     self = <DocType: VirtualDoctypeTestChild>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/modules/export_file.py", line 27, in export_to_files
    #     write_document_file(
    #     ~~~~~~~~~~~~~~~~~~~^
    #     	frappe.get_doc(record[0], record[1]),
    #      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     ...<2 lines>...
    #     	folder_name=folder_name,
    #      ^^^^^^^^^^^^^^^^^^^^^^^^
    #     )
    #     ^
    #     create_init = True
    #     folder_name = None
    #     record = ['DocType', 'VirtualDoctypeTestChild']
    #     record_list = [['DocType', 'VirtualDoctypeTestChild']]
    #     record_module = None
    #     verbose = 0
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/modules/export_file.py", line 47, in write_document_file
    #     folder = create_folder(module, doc.doctype, doc.name, create_init, is_custom_module)
    #     create_init = True
    #     doc = <DocType: VirtualDoctypeTestChild>
    #     doc_export = {'name': 'VirtualDoctypeTestChild', 'creation': datetime.datetime(2026, 8, 19, 0, 50, 40, 557831), 'modified': datetime.datetime(2026, 8, 19, 0, 50, 40, 557831), 'modified_by': 'Administrator', 'owner': 'Administrator', 'is_virtual': 1, 'istable': 1, 'editable_grid': 1, 'module': 'Core', 'sort_field': 'modified', 'sort_order': 'DESC', 'allow_rename': 1, 'engine': 'InnoDB', 'grid_page_length': 50, 'rows_threshold_for_grid_search': 20, 'index_web_pages_for_search': 1, 'row_format': 'Dynamic', 'doctype': 'DocType', 'fields': [{'fieldname': 'some_fieldname', 'label': 'Some Field', 'fieldtype': 'Data'}], 'permissions': [], 'links': [], 'states': [], 'actions': [], 'field_order': ['some_fieldname']}
    #     folder_name = None
    #     is_custom_module = 0
    #     module = 'Core'
    #     record_module = None
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/modules/export_file.py", line 129, in create_folder
    #     frappe.create_folder(folder)
    #     ~~~~~~~~~~~~~~~~~~~~^^^^^^^^
    #     create_init = True
    #     dn = 'virtualdoctypetestchild'
    #     dt = 'doctype'
    #     folder = '/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/core/doctype/virtualdoctypetestchild'
    #     is_custom_module = 0
    #     module = 'Core'
    #     module_path = '/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/core'
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/__init__.py", line 635, in create_folder
    #     os.makedirs(path)
    #     ~~~~~~~~~~~^^^^^^
    #     path = '/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/core/doctype/virtualdoctypetestchild'
    #     touch_file = <function touch_file at 0x762bbbc165c0>
    #     with_init = False
    #   File "<frozen os>", line 228, in makedirs
    #     exist_ok = False
    #     head = '/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/core/doctype'
    #     mode = 511
    #     name = '/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/core/doctype/virtualdoctypetestchild'
    #     tail = 'virtualdoctypetestchild'
    # OSError: [Errno 30] Read-only file system: '/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/core/doctype/virtualdoctypetestchild'
  }
  {
    id = "frappe.tests.test_search.TestSearch.test_doctype_search_in_foreign_language";
    # Traceback (most recent call last):
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/tests/test_search.py", line 112, in test_doctype_search_in_foreign_language
    #     self.assertIn("User", [x["value"] for x in results])
    #     ~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     do_search = <function TestSearch.test_doctype_search_in_foreign_language.<locals>.do_search at 0x762bb2780900>
    #     results = []
    #     self = <frappe.tests.test_search.TestSearch testMethod=test_doctype_search_in_foreign_language>
    # AssertionError: 'User' not found in []
  }
  {
    id = "frappe.tests.test_search.TestSearch.test_link_search_in_foreign_language";
    # Traceback (most recent call last):
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/tests/test_search.py", line 90, in test_link_search_in_foreign_language
    #     self.assertTrue(["found"] in result)
    #     ~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^
    #     output = []
    #     result = []
    #     self = <frappe.tests.test_search.TestSearch testMethod=test_link_search_in_foreign_language>
    # AssertionError: False is not true
  }
  {
    id = "frappe.tests.test_translate.TestTranslate.test_read_language_variant";
    # Traceback (most recent call last):
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/tests/test_translate.py", line 89, in test_read_language_variant
    #     self.assertEqual(_("Mobile No"), "Celular")
    #     ~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     self = <frappe.tests.test_translate.TestTranslate testMethod=test_read_language_variant>
    # AssertionError: 'Telefone Celular' != 'Celular'
    # - Telefone Celular
    # + Celular
    #
  }
  {
    id = "frappe.tests.test_translate.TestTranslate.test_translation_with_context";
    # Traceback (most recent call last):
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/tests/test_translate.py", line 98, in test_translation_with_context
    #     self.assertEqual(_("Change"), "Changement")
    #     ~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     self = <frappe.tests.test_translate.TestTranslate testMethod=test_translation_with_context>
    # AssertionError: 'Change' != 'Changement'
    # - Change
    # + Changement
    # ?       ++++
    #
  }
  {
    id = "frappe.tests.test_utils.TestChangeLog.test_get_remote_url";
    # Traceback (most recent call last):
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/tests/test_utils.py", line 1454, in test_get_remote_url
    #     self.assertIsInstance(get_source_url("frappe"), str)
    #     ~~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     self = <frappe.tests.test_utils.TestChangeLog testMethod=test_get_remote_url>
    # AssertionError: None is not an instance of <class 'str'>
  }
  {
    id = "frappe.tests.test_website.TestWebsite.test_static_page";
    # Traceback (most recent call last):
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/tests/test_website.py", line 116, in test_static_page
    #     self.assertEqual(response.status_code, 200)
    #     ~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     response = <Response 327949 bytes [404 NOT FOUND]>
    #     self = <frappe.tests.test_website.TestWebsite testMethod=test_static_page>
    # AssertionError: 404 != 200
  }
  {
    id = "frappe.email.test_smtp.TestSMTP.test_smtp_ssl_session";
    # Test hangs
  }
  {
    id = "frappe.email.test_smtp.TestSMTP.test_smtp_tls_session";
    # Test hangs
  }
  {
    id = "frappe.tests.test_commands.TestCommands.test_restore";

    # Traceback (most recent call last):
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/tests/test_commands.py", line 262, in test_restore
    #     public_file = frappe.new_doc(
    #                   ~~~~~~~~~~~~~~^
    #     	"File", file_name=f"test_{frappe.generate_hash()}", content=frappe.generate_hash()
    #      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     ).insert()
    #     ^
    #     global_config = {'admin_password': None, 'root_login': None, 'root_password': None, 'db_type': 'mariadb'}
    #     key = 'db_type'
    #     self = <frappe.tests.test_commands.TestCommands testMethod=test_restore>
    #     site_data = {'test_site': 'commands-site-O4PN2QK.test', 'admin_password': None, 'root_login': None, 'root_password': None, 'db_type': 'mariadb'}
    #     value = 'mariadb'
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/__init__.py", line 1173, in new_doc
    #     new_doc = get_new_doc(doctype, parent_doc, parentfield, as_dict=as_dict)
    #     as_dict = False
    #     doctype = 'File'
    #     get_new_doc = <function get_new_doc at 0x7205694e2840>
    #     kwargs = {'file_name': 'test_8ed5cc5484b1d6c00c17cdbd5fb819dae8e555ff5c4eff7b33fb264c', 'content': '3808b8922227f8e0796be922950783455eb4b0a5f7aa33bb93427a17'}
    #     parent_doc = None
    #     parentfield = None
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/model/create_new.py", line 22, in get_new_doc
    #     frappe.local.new_doc_templates[doctype] = make_new_doc(doctype)
    #                                               ~~~~~~~~~~~~^^^^^^^^^
    #     as_dict = False
    #     doctype = 'File'
    #     parent_doc = None
    #     parentfield = None
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/model/create_new.py", line 35, in make_new_doc
    #     doc = frappe.get_doc({"doctype": doctype, "__islocal": 1, "owner": frappe.session.user, "docstatus": 0})
    #     doctype = 'File'
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/__init__.py", line 1316, in get_doc
    #     return frappe.model.document.get_doc(*args, **kwargs)
    #            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^
    #     args = ({'doctype': 'File', '__islocal': 1, 'owner': 'Administrator', 'docstatus': 0},)
    #     frappe = <module 'frappe' from '/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/__init__.py'>
    #     kwargs = {}
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/model/document.py", line 83, in get_doc
    #     controller = get_controller(doctype)
    #     args = ({'doctype': 'File', '__islocal': 1, 'owner': 'Administrator', 'docstatus': 0},)
    #     doctype = 'File'
    #     kwargs = {'doctype': 'File', '__islocal': 1, 'owner': 'Administrator', 'docstatus': 0}
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/model/base_document.py", line 71, in get_controller
    #     site_controllers[doctype] = import_controller(doctype)
    #                                 ~~~~~~~~~~~~~~~~~^^^^^^^^^
    #     doctype = 'File'
    #     site_controllers = {}
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/model/base_document.py", line 82, in import_controller
    #     doctype_info = frappe.db.get_value("DocType", doctype, ("module", "custom", "is_tree"), as_dict=True)
    #     Document = <class 'frappe.model.document.Document'>
    #     NestedSet = <class 'frappe.utils.nestedset.NestedSet'>
    #     doctype = 'File'
    #     module_name = 'Core'
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/database/database.py", line 517, in get_value
    #     result = self.get_values(
    #     	doctype,
    #     ...<13 lines>...
    #     	wait=wait,
    #     )
    #     as_dict = True
    #     cache = False
    #     debug = False
    #     distinct = False
    #     doctype = 'DocType'
    #     fieldname = ('module', 'custom', 'is_tree')
    #     filters = 'File'
    #     for_update = False
    #     ignore = None
    #     order_by = 'KEEP_DEFAULT_ORDERING'
    #     pluck = False
    #     run = True
    #     self = <frappe.database.mariadb.database.MariaDBDatabase object at 0x720567bece20>
    #     skip_locked = False
    #     wait = True
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/database/database.py", line 624, in get_values
    #     out = self._get_values_from_table(
    #     	fields=fields,
    #     ...<12 lines>...
    #     	wait=wait,
    #     )
    #     as_dict = True
    #     cache = False
    #     debug = False
    #     distinct = False
    #     doctype = 'DocType'
    #     fieldname = ('module', 'custom', 'is_tree')
    #     fields = ('module', 'custom', 'is_tree')
    #     filters = 'File'
    #     for_update = False
    #     ignore = None
    #     limit = 1
    #     order_by = 'modified'
    #     out = None
    #     pluck = False
    #     run = True
    #     self = <frappe.database.mariadb.database.MariaDBDatabase object at 0x720567bece20>
    #     skip_locked = False
    #     update = None
    #     wait = True
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/database/database.py", line 897, in _get_values_from_table
    #     return query.run(as_dict=as_dict, debug=debug, update=update, run=run, pluck=pluck)
    #            ~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     as_dict = True
    #     debug = False
    #     distinct = False
    #     doctype = 'DocType'
    #     fields = ('module', 'custom', 'is_tree')
    #     filters = 'File'
    #     for_update = False
    #     limit = 1
    #     order_by = 'modified'
    #     pluck = False
    #     query = SELECT `module`,`custom`,`is_tree` FROM `tabDocType` WHERE `name`='File' ORDER BY `modified` DESC LIMIT 1
    #     run = True
    #     self = <frappe.database.mariadb.database.MariaDBDatabase object at 0x720567bece20>
    #     skip_locked = False
    #     update = None
    #     wait = True
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/query_builder/utils.py", line 87, in execute_query
    #     result = frappe.db.sql(query, params, *args, **kwargs)  # nosemgrep
    #     args = ()
    #     child_queries = []
    #     execute_child_queries = <function patch_query_execute.<locals>.execute_child_queries at 0x72056c50e3e0>
    #     kwargs = {'as_dict': True, 'debug': False, 'update': None, 'run': True, 'pluck': False}
    #     params = {'param1': 'File'}
    #     prepare_query = <function patch_query_execute.<locals>.prepare_query at 0x72056c50e480>
    #     query = 'SELECT `module`,`custom`,`is_tree` FROM `tabDocType` WHERE `name`=%(param1)s ORDER BY `modified` DESC LIMIT 1'
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/database/database.py", line 207, in sql
    #     self.connect()
    #     ~~~~~~~~~~~~^^
    #     as_dict = True
    #     as_iterator = False
    #     as_list = 0
    #     auto_commit = 0
    #     debug = False
    #     explain = False
    #     ignore_ddl = 0
    #     pluck = False
    #     query = 'SELECT `module`,`custom`,`is_tree` FROM `tabDocType` WHERE `name`=%(param1)s ORDER BY `modified` DESC LIMIT 1'
    #     run = True
    #     self = <frappe.database.mariadb.database.MariaDBDatabase object at 0x720567bece20>
    #     update = None
    #     values = {'param1': 'File'}
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/database/database.py", line 112, in connect
    #     self._conn: MariadbConnection | PostgresConnection = self.get_connection()
    #                                                          ~~~~~~~~~~~~~~~~~~~^^
    #     self = <frappe.database.mariadb.database.MariaDBDatabase object at 0x720567bece20>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/database/mariadb/database.py", line 108, in get_connection
    #     conn = self._get_connection()
    #     self = <frappe.database.mariadb.database.MariaDBDatabase object at 0x720567bece20>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/database/mariadb/database.py", line 114, in _get_connection
    #     return self.create_connection()
    #            ~~~~~~~~~~~~~~~~~~~~~~^^
    #     self = <frappe.database.mariadb.database.MariaDBDatabase object at 0x720567bece20>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/database/mariadb/database.py", line 117, in create_connection
    #     return pymysql.connect(**self.get_connection_settings())
    #            ~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     self = <frappe.database.mariadb.database.MariaDBDatabase object at 0x720567bece20>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/connections.py", line 365, in __init__
    #     self.connect()
    #     ~~~~~~~~~~~~^^
    #     auth_plugin_map = None
    #     autocommit = False
    #     binary_prefix = False
    #     bind_address = None
    #     charset = 'utf8mb4'
    #     client_flag = 3842573
    #     collation = 'utf8mb4_unicode_ci'
    #     compress = None
    #     connect_timeout = 10
    #     conv = {<class 'bool'>: <function escape_bool at 0x72056c468540>, <class 'int'>: <function escape_int at 0x72056c4685e0>, <class 'float'>: <function escape_float at 0x72056c468680>, <class 'str'>: <function escape_str at 0x72056c468900>, <class 'bytes'>: <function escape_bytes at 0x72056c468860>, <class 'tuple'>: <function escape_sequence at 0x72056c468400>, <class 'list'>: <function escape_sequence at 0x72056c468400>, <class 'set'>: <function escape_sequence at 0x72056c468400>, <class 'frozenset'>: <function escape_sequence at 0x72056c468400>, <class 'dict'>: <function escape_dict at 0x72056c468360>, <class 'NoneType'>: <function escape_None at 0x72056c4689a0>, <class 'datetime.date'>: <function escape_date at 0x72056c468c20>, <class 'datetime.datetime'>: <function escape_datetime at 0x72056c468b80>, <class 'datetime.timedelta'>: <function escape_timedelta at 0x72056c468a40>, <class 'datetime.time'>: <function escape_time at 0x72056c468ae0>, <class 'time.struct_time'>: <function escape_struct_time at 0x72056c468cc0>, <class 'decimal.Decimal'>: <function Decimal2Literal at 0x72056c468d60>, 16: <function through at 0x72056c469120>, 1: <class 'int'>, 2: <class 'int'>, 3: <class 'int'>, 4: <class 'float'>, 5: <class 'float'>, 8: <class 'int'>, 9: <class 'int'>, 13: <class 'int'>, 7: <function convert_datetime at 0x72056c468ea0>, 12: <function get_datetime at 0x72056dae59e0>, 11: <function convert_timedelta at 0x72056c468f40>, 10: <function convert_date at 0x72056c469080>, 252: <function through at 0x72056c469120>, 249: <function through at 0x72056c469120>, 250: <function through at 0x72056c469120>, 251: <function through at 0x72056c469120>, 254: <function through at 0x72056c469120>, 253: <function through at 0x72056c469120>, 15: <function through at 0x72056c469120>, 0: <class 'decimal.Decimal'>, 246: <class 'float'>, <class 'frappe.utils.data.UnicodeWithAttrs'>: <function escape_string at 0x72056c468720>}
    #     cursorclass = <class 'pymysql.cursors.Cursor'>
    #     database = '_67e2925445d3a949'
    #     db = None
    #     defer_connect = False
    #     host = None
    #     init_command = None
    #     local_infile = False
    #     max_allowed_packet = 16777216
    #     named_pipe = None
    #     passwd = None
    #     password = 'hvixaLGHUiqimhDS'
    #     port = 0
    #     program_name = None
    #     read_default_file = None
    #     read_default_group = None
    #     read_timeout = None
    #     self = <pymysql.connections.Connection object at 0x720569b5f390>
    #     server_public_key = None
    #     sql_mode = None
    #     ssl = None
    #     ssl_ca = None
    #     ssl_cert = None
    #     ssl_disabled = None
    #     ssl_key = None
    #     ssl_key_password = None
    #     ssl_verify_cert = None
    #     ssl_verify_identity = None
    #     unix_socket = '/run/mysqld/mysqld.sock'
    #     use_unicode = True
    #     user = '_67e2925445d3a949'
    #     write_timeout = None
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/connections.py", line 681, in connect
    #     self._request_authentication()
    #     ~~~~~~~~~~~~~~~~~~~~~~~~~~~~^^
    #     self = <pymysql.connections.Connection object at 0x720569b5f390>
    #     sock = <socket.socket [closed] fd=-1, family=1, type=1, proto=0>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/connections.py", line 958, in _request_authentication
    #     auth_packet = self._read_packet()
    #     authresp = b'qF6\x1d\xa7}v\xe6\xa4\xbe\x1e\xd0\xdcR\x02CO\xb0gA'
    #     charset_id = 45
    #     connect_attrs = b'\x0c_client_name\x07pymysql\x0f_client_version\x051.1.2\x04_pid\x041395'
    #     data = b'\r\xa2:\x00\xff\xff\xff\x00-\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00_67e2925445d3a949\x00\x14qF6\x1d\xa7}v\xe6\xa4\xbe\x1e\xd0\xdcR\x02CO\xb0gA_67e2925445d3a949\x00mysql_native_password\x005\x0c_client_name\x07pymysql\x0f_client_version\x051.1.2\x04_pid\x041395'
    #     data_init = b'\r\xa2:\x00\xff\xff\xff\x00-\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00'
    #     k = b'_pid'
    #     plugin_name = b'mysql_native_password'
    #     self = <pymysql.connections.Connection object at 0x720569b5f390>
    #     v = b'1395'
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/connections.py", line 782, in _read_packet
    #     packet.raise_for_error()
    #     ~~~~~~~~~~~~~~~~~~~~~~^^
    #     btrh = 0
    #     btrl = 85
    #     buff = bytearray(b"\xff\x15\x04#28000Access denied for user \'_67e2925445d3a949\'@\'localhost\' (using password: YES)")
    #     bytes_to_read = 85
    #     packet = <pymysql.protocol.MysqlPacket object at 0x7205648c3b50>
    #     packet_header = b'U\x00\x00\x02'
    #     packet_number = 2
    #     packet_type = <class 'pymysql.protocol.MysqlPacket'>
    #     recv_data = b"\xff\x15\x04#28000Access denied for user '_67e2925445d3a949'@'localhost' (using password: YES)"
    #     self = <pymysql.connections.Connection object at 0x720569b5f390>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/protocol.py", line 219, in raise_for_error
    #     err.raise_mysql_exception(self._data)
    #     ~~~~~~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^
    #     errno = 1045
    #     self = <pymysql.protocol.MysqlPacket object at 0x7205648c3b50>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/err.py", line 150, in raise_mysql_exception
    #     raise errorclass(errno, errval)
    #     data = b"\xff\x15\x04#28000Access denied for user '_67e2925445d3a949'@'localhost' (using password: YES)"
    #     errno = 1045
    #     errorclass = <class 'pymysql.err.OperationalError'>
    #     errval = "Access denied for user '_67e2925445d3a949'@'localhost' (using password: YES)"
    # pymysql.err.OperationalError: (1045, "Access denied for user '_67e2925445d3a949'@'localhost' (using password: YES)")
    #
  }
  {
    id = "frappe.tests.test_commands.TestRemoveApp.test_delete_modules";

    # Traceback (most recent call last):
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/tests/test_commands.py", line 777, in test_delete_modules
    #     doctypes_to_delete = _delete_modules([test_module.module_name], dry_run=False)
    #     _delete_doctypes = <function _delete_doctypes at 0x720568e64860>
    #     _delete_modules = <function _delete_modules at 0x720568e64680>
    #     _get_module_linked_doctype_field_map = <function _get_module_linked_doctype_field_map at 0x720568e647c0>
    #     doctype_to_link_field_map = OrderedDict({'Workspace': 'module', 'Report': 'module', 'Page': 'module', 'Web Form': 'module', 'Doctype linked with module def': 'notmodule', 'Form Tour': 'module', 'Custom Field': 'module', 'Property Setter': 'module', 'Web Template': 'module', 'Number Card': 'module', 'Dashboard Chart': 'module', 'Dashboard': 'module', 'Module Onboarding': 'module', 'Dashboard Chart Source': 'module', 'Print Format': 'module', 'Web Page': 'module', 'Website Theme': 'module', 'Notification': 'module', 'Client Script': 'module', 'Server Script': 'module', 'User Type Module': 'module', 'Print Format Field Template': 'module'})
    #     module_def_linked_doctype = <DocType: Doctype linked with module def>
    #     self = <frappe.tests.test_commands.TestRemoveApp testMethod=test_delete_modules>
    #     test_module = <ModuleDef: RemoveThis>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/installer.py", line 464, in _delete_modules
    #     frappe.delete_doc("Module Def", module_name, ignore_on_trash=True, force=True)
    #     ~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     doctype = {'name': 'Doctype linked with module def', 'issingle': 0}
    #     doctype_link_field_map = OrderedDict({'Workspace': 'module', 'Report': 'module', 'Page': 'module', 'Web Form': 'module', 'Doctype linked with module def': 'notmodule', 'Form Tour': 'module', 'Custom Field': 'module', 'Property Setter': 'module', 'Web Template': 'module', 'Number Card': 'module', 'Dashboard Chart': 'module', 'Dashboard': 'module', 'Module Onboarding': 'module', 'Dashboard Chart Source': 'module', 'Print Format': 'module', 'Web Page': 'module', 'Website Theme': 'module', 'Notification': 'module', 'Client Script': 'module', 'Server Script': 'module', 'User Type Module': 'module', 'Print Format Field Template': 'module'})
    #     drop_doctypes = ['Doctype linked with module def']
    #     dry_run = False
    #     module_name = 'RemoveThis'
    #     modules = ['RemoveThis']
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/__init__.py", line 1378, in delete_doc
    #     return frappe.model.delete_doc.delete_doc(
    #            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^
    #     	doctype,
    #      ^^^^^^^^
    #     ...<8 lines>...
    #     	delete_permanently,
    #      ^^^^^^^^^^^^^^^^^^^
    #     )
    #     ^
    #     delete_permanently = False
    #     doctype = 'Module Def'
    #     flags = None
    #     for_reload = False
    #     force = True
    #     frappe = <module 'frappe' from '/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/__init__.py'>
    #     ignore_doctypes = None
    #     ignore_missing = True
    #     ignore_on_trash = True
    #     ignore_permissions = False
    #     name = 'RemoveThis'
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/model/delete_doc.py", line 154, in delete_doc
    #     frappe.enqueue(
    #     ~~~~~~~~~~~~~~^
    #     	"frappe.model.delete_doc.delete_dynamic_links",
    #      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     ...<3 lines>...
    #     	enqueue_after_commit=True,
    #      ^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     )
    #     ^
    #     delete_permanently = False
    #     doc = <ModuleDef: RemoveThis>
    #     doctype = 'Module Def'
    #     flags = None
    #     for_reload = False
    #     force = True
    #     ignore_doctypes = []
    #     ignore_missing = True
    #     ignore_on_trash = True
    #     ignore_permissions = False
    #     is_virtual = 0
    #     name = 'RemoveThis'
    #     names = ['RemoveThis']
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/__init__.py", line 2271, in enqueue
    #     return frappe.utils.background_jobs.enqueue(*args, **kwargs)
    #            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^
    #     args = ('frappe.model.delete_doc.delete_dynamic_links',)
    #     frappe = <module 'frappe' from '/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/__init__.py'>
    #     kwargs = {'doctype': 'Module Def', 'name': 'RemoveThis', 'now': True, 'enqueue_after_commit': True}
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/utils/background_jobs.py", line 120, in enqueue
    #     return frappe.call(method, **kwargs)
    #            ~~~~~~~~~~~^^^^^^^^^^^^^^^^^^
    #     at_front = False
    #     call_directly = True
    #     deduplicate = False
    #     enqueue_after_commit = True
    #     event = None
    #     is_async = True
    #     job_id = 'erp.frx.localhost::7f4005dd-7dd1-4e60-bedd-1fbd4de50a65'
    #     job_name = None
    #     kwargs = {'doctype': 'Module Def', 'name': 'RemoveThis'}
    #     method = 'frappe.model.delete_doc.delete_dynamic_links'
    #     now = True
    #     on_failure = None
    #     on_success = None
    #     queue = 'default'
    #     timeout = None
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/__init__.py", line 1762, in call
    #     return fn(*args, **newargs)
    #     args = ()
    #     fn = <function delete_dynamic_links at 0x72056a6f22a0>
    #     kwargs = {'doctype': 'Module Def', 'name': 'RemoveThis'}
    #     newargs = {'doctype': 'Module Def', 'name': 'RemoveThis'}
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/model/delete_doc.py", line 449, in delete_dynamic_links
    #     delete_references("ToDo", doctype, name, "reference_type")
    #     ~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     doctype = 'Module Def'
    #     name = 'RemoveThis'
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/model/delete_doc.py", line 473, in delete_references
    #     frappe.db.delete(
    #     ~~~~~~~~~~~~~~~~^
    #     	doctype, {reference_doctype_field: reference_doctype, reference_name_field: reference_name}
    #      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     )
    #     ^
    #     doctype = 'ToDo'
    #     reference_doctype = 'Module Def'
    #     reference_doctype_field = 'reference_type'
    #     reference_name = 'RemoveThis'
    #     reference_name_field = 'reference_name'
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/database/database.py", line 1414, in delete
    #     return query.run(**kwargs)
    #            ~~~~~~~~~^^^^^^^^^^
    #     debug = False
    #     doctype = 'ToDo'
    #     filters = {'reference_type': 'Module Def', 'reference_name': 'RemoveThis'}
    #     kwargs = {'debug': False}
    #     query = DELETE FROM `tabToDo` WHERE `reference_type`='Module Def' AND `reference_name`='RemoveThis'
    #     self = <frappe.database.mariadb.database.MariaDBDatabase object at 0x7205665b1480>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/query_builder/utils.py", line 87, in execute_query
    #     result = frappe.db.sql(query, params, *args, **kwargs)  # nosemgrep
    #     args = ()
    #     child_queries = []
    #     execute_child_queries = <function patch_query_execute.<locals>.execute_child_queries at 0x72056c50e3e0>
    #     kwargs = {'debug': False}
    #     params = {'param1': 'Module Def', 'param2': 'RemoveThis'}
    #     prepare_query = <function patch_query_execute.<locals>.prepare_query at 0x72056c50e480>
    #     query = 'DELETE FROM `tabToDo` WHERE `reference_type`=%(param1)s AND `reference_name`=%(param2)s'
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/database/database.py", line 230, in sql
    #     self._cursor.execute(query, values)
    #     ~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^
    #     as_dict = 0
    #     as_iterator = False
    #     as_list = 0
    #     auto_commit = 0
    #     debug = False
    #     explain = False
    #     ignore_ddl = 0
    #     pluck = False
    #     query = 'DELETE FROM `tabToDo` WHERE `reference_type`=%(param1)s AND `reference_name`=%(param2)s'
    #     run = True
    #     self = <frappe.database.mariadb.database.MariaDBDatabase object at 0x7205665b1480>
    #     trace_id = None
    #     update = None
    #     values = {'param1': 'Module Def', 'param2': 'RemoveThis'}
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/cursors.py", line 153, in execute
    #     result = self._query(query)
    #     args = {'param1': 'Module Def', 'param2': 'RemoveThis'}
    #     query = "DELETE FROM `tabToDo` WHERE `reference_type`='Module Def' AND `reference_name`='RemoveThis'"
    #     self = <pymysql.cursors.Cursor object at 0x72055f35fed0>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/cursors.py", line 322, in _query
    #     conn.query(q)
    #     ~~~~~~~~~~^^^
    #     conn = <pymysql.connections.Connection object at 0x720569b5f110>
    #     q = "DELETE FROM `tabToDo` WHERE `reference_type`='Module Def' AND `reference_name`='RemoveThis'"
    #     self = <pymysql.cursors.Cursor object at 0x72055f35fed0>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/connections.py", line 575, in query
    #     self._affected_rows = self._read_query_result(unbuffered=unbuffered)
    #                           ~~~~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^
    #     self = <pymysql.connections.Connection object at 0x720569b5f110>
    #     sql = b"DELETE FROM `tabToDo` WHERE `reference_type`='Module Def' AND `reference_name`='RemoveThis'"
    #     unbuffered = False
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/connections.py", line 826, in _read_query_result
    #     result.read()
    #     ~~~~~~~~~~~^^
    #     result = <pymysql.connections.MySQLResult object at 0x72055f4cd3d0>
    #     self = <pymysql.connections.Connection object at 0x720569b5f110>
    #     unbuffered = False
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/connections.py", line 1203, in read
    #     first_packet = self.connection._read_packet()
    #     self = <pymysql.connections.MySQLResult object at 0x72055f4cd3d0>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/connections.py", line 782, in _read_packet
    #     packet.raise_for_error()
    #     ~~~~~~~~~~~~~~~~~~~~~~^^
    #     btrh = 0
    #     btrl = 56
    #     buff = bytearray(b"\xffz\x04#42S02Table \'erp_frx_localhost.tabToDo\' doesn\'t exist")
    #     bytes_to_read = 56
    #     packet = <pymysql.protocol.MysqlPacket object at 0x72055f43ae00>
    #     packet_header = b'8\x00\x00\x01'
    #     packet_number = 1
    #     packet_type = <class 'pymysql.protocol.MysqlPacket'>
    #     recv_data = b"\xffz\x04#42S02Table 'erp_frx_localhost.tabToDo' doesn't exist"
    #     self = <pymysql.connections.Connection object at 0x720569b5f110>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/protocol.py", line 219, in raise_for_error
    #     err.raise_mysql_exception(self._data)
    #     ~~~~~~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^
    #     errno = 1146
    #     self = <pymysql.protocol.MysqlPacket object at 0x72055f43ae00>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/err.py", line 150, in raise_mysql_exception
    #     raise errorclass(errno, errval)
    #     data = b"\xffz\x04#42S02Table 'erp_frx_localhost.tabToDo' doesn't exist"
    #     errno = 1146
    #     errorclass = <class 'pymysql.err.ProgrammingError'>
    #     errval = "Table 'erp_frx_localhost.tabToDo' doesn't exist"
    # pymysql.err.ProgrammingError: (1146, "Table 'erp_frx_localhost.tabToDo' doesn't exist")
    #
  }
  {
    id = "";

    # Traceback (most recent call last):
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/custom/doctype/customize_form/test_customize_form.py", line 40, in tearDown
    #     frappe.delete_doc("Custom Field", self.field.name)
    #     ~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     self = <frappe.custom.doctype.customize_form.test_customize_form.TestCustomizeForm testMethod=test_change_to_autoincrement_autoname>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/__init__.py", line 1378, in delete_doc
    #     return frappe.model.delete_doc.delete_doc(
    #            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^
    #     	doctype,
    #      ^^^^^^^^
    #     ...<8 lines>...
    #     	delete_permanently,
    #      ^^^^^^^^^^^^^^^^^^^
    #     )
    #     ^
    #     delete_permanently = False
    #     doctype = 'Custom Field'
    #     flags = None
    #     for_reload = False
    #     force = False
    #     frappe = <module 'frappe' from '/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/__init__.py'>
    #     ignore_doctypes = None
    #     ignore_missing = True
    #     ignore_on_trash = False
    #     ignore_permissions = False
    #     name = 'Event-custom_test_field'
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/model/delete_doc.py", line 154, in delete_doc
    #     frappe.enqueue(
    #     ~~~~~~~~~~~~~~^
    #     	"frappe.model.delete_doc.delete_dynamic_links",
    #      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     ...<3 lines>...
    #     	enqueue_after_commit=True,
    #      ^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     )
    #     ^
    #     delete_permanently = False
    #     doc = <CustomField: Event-custom_test_field>
    #     doctype = 'Custom Field'
    #     flags = None
    #     for_reload = False
    #     force = False
    #     ignore_doctypes = []
    #     ignore_missing = True
    #     ignore_on_trash = False
    #     ignore_permissions = False
    #     is_virtual = 0
    #     name = 'Event-custom_test_field'
    #     names = ['Event-custom_test_field']
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/__init__.py", line 2271, in enqueue
    #     return frappe.utils.background_jobs.enqueue(*args, **kwargs)
    #            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^
    #     args = ('frappe.model.delete_doc.delete_dynamic_links',)
    #     frappe = <module 'frappe' from '/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/__init__.py'>
    #     kwargs = {'doctype': 'Custom Field', 'name': 'Event-custom_test_field', 'now': True, 'enqueue_after_commit': True}
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/utils/background_jobs.py", line 120, in enqueue
    #     return frappe.call(method, **kwargs)
    #            ~~~~~~~~~~~^^^^^^^^^^^^^^^^^^
    #     at_front = False
    #     call_directly = True
    #     deduplicate = False
    #     enqueue_after_commit = True
    #     event = None
    #     is_async = True
    #     job_id = 'erp.frx.localhost::5b00be91-309f-4116-bc78-46734ba2850c'
    #     job_name = None
    #     kwargs = {'doctype': 'Custom Field', 'name': 'Event-custom_test_field'}
    #     method = 'frappe.model.delete_doc.delete_dynamic_links'
    #     now = True
    #     on_failure = None
    #     on_success = None
    #     queue = 'default'
    #     timeout = None
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/__init__.py", line 1762, in call
    #     return fn(*args, **newargs)
    #     args = ()
    #     fn = <function delete_dynamic_links at 0x72056a6f22a0>
    #     kwargs = {'doctype': 'Custom Field', 'name': 'Event-custom_test_field'}
    #     newargs = {'doctype': 'Custom Field', 'name': 'Event-custom_test_field'}
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/model/delete_doc.py", line 449, in delete_dynamic_links
    #     delete_references("ToDo", doctype, name, "reference_type")
    #     ~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     doctype = 'Custom Field'
    #     name = 'Event-custom_test_field'
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/model/delete_doc.py", line 473, in delete_references
    #     frappe.db.delete(
    #     ~~~~~~~~~~~~~~~~^
    #     	doctype, {reference_doctype_field: reference_doctype, reference_name_field: reference_name}
    #      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     )
    #     ^
    #     doctype = 'ToDo'
    #     reference_doctype = 'Custom Field'
    #     reference_doctype_field = 'reference_type'
    #     reference_name = 'Event-custom_test_field'
    #     reference_name_field = 'reference_name'
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/database/database.py", line 1414, in delete
    #     return query.run(**kwargs)
    #            ~~~~~~~~~^^^^^^^^^^
    #     debug = False
    #     doctype = 'ToDo'
    #     filters = {'reference_type': 'Custom Field', 'reference_name': 'Event-custom_test_field'}
    #     kwargs = {'debug': False}
    #     query = DELETE FROM `tabToDo` WHERE `reference_type`='Custom Field' AND `reference_name`='Event-custom_test_field'
    #     self = <frappe.database.mariadb.database.MariaDBDatabase object at 0x7205665b1480>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/query_builder/utils.py", line 87, in execute_query
    #     result = frappe.db.sql(query, params, *args, **kwargs)  # nosemgrep
    #     args = ()
    #     child_queries = []
    #     execute_child_queries = <function patch_query_execute.<locals>.execute_child_queries at 0x72056c50e3e0>
    #     kwargs = {'debug': False}
    #     params = {'param1': 'Custom Field', 'param2': 'Event-custom_test_field'}
    #     prepare_query = <function patch_query_execute.<locals>.prepare_query at 0x72056c50e480>
    #     query = 'DELETE FROM `tabToDo` WHERE `reference_type`=%(param1)s AND `reference_name`=%(param2)s'
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/database/database.py", line 230, in sql
    #     self._cursor.execute(query, values)
    #     ~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^
    #     as_dict = 0
    #     as_iterator = False
    #     as_list = 0
    #     auto_commit = 0
    #     debug = False
    #     explain = False
    #     ignore_ddl = 0
    #     pluck = False
    #     query = 'DELETE FROM `tabToDo` WHERE `reference_type`=%(param1)s AND `reference_name`=%(param2)s'
    #     run = True
    #     self = <frappe.database.mariadb.database.MariaDBDatabase object at 0x7205665b1480>
    #     trace_id = None
    #     update = None
    #     values = {'param1': 'Custom Field', 'param2': 'Event-custom_test_field'}
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/cursors.py", line 153, in execute
    #     result = self._query(query)
    #     args = {'param1': 'Custom Field', 'param2': 'Event-custom_test_field'}
    #     query = "DELETE FROM `tabToDo` WHERE `reference_type`='Custom Field' AND `reference_name`='Event-custom_test_field'"
    #     self = <pymysql.cursors.Cursor object at 0x72055f41ec10>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/cursors.py", line 322, in _query
    #     conn.query(q)
    #     ~~~~~~~~~~^^^
    #     conn = <pymysql.connections.Connection object at 0x72055f567ed0>
    #     q = "DELETE FROM `tabToDo` WHERE `reference_type`='Custom Field' AND `reference_name`='Event-custom_test_field'"
    #     self = <pymysql.cursors.Cursor object at 0x72055f41ec10>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/connections.py", line 575, in query
    #     self._affected_rows = self._read_query_result(unbuffered=unbuffered)
    #                           ~~~~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^
    #     self = <pymysql.connections.Connection object at 0x72055f567ed0>
    #     sql = b"DELETE FROM `tabToDo` WHERE `reference_type`='Custom Field' AND `reference_name`='Event-custom_test_field'"
    #     unbuffered = False
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/connections.py", line 826, in _read_query_result
    #     result.read()
    #     ~~~~~~~~~~~^^
    #     result = <pymysql.connections.MySQLResult object at 0x72055feab4d0>
    #     self = <pymysql.connections.Connection object at 0x72055f567ed0>
    #     unbuffered = False
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/connections.py", line 1203, in read
    #     first_packet = self.connection._read_packet()
    #     self = <pymysql.connections.MySQLResult object at 0x72055feab4d0>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/connections.py", line 782, in _read_packet
    #     packet.raise_for_error()
    #     ~~~~~~~~~~~~~~~~~~~~~~^^
    #     btrh = 0
    #     btrl = 56
    #     buff = bytearray(b"\xffz\x04#42S02Table \'erp_frx_localhost.tabToDo\' doesn\'t exist")
    #     bytes_to_read = 56
    #     packet = <pymysql.protocol.MysqlPacket object at 0x72055f619870>
    #     packet_header = b'8\x00\x00\x01'
    #     packet_number = 1
    #     packet_type = <class 'pymysql.protocol.MysqlPacket'>
    #     recv_data = b"\xffz\x04#42S02Table 'erp_frx_localhost.tabToDo' doesn't exist"
    #     self = <pymysql.connections.Connection object at 0x72055f567ed0>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/protocol.py", line 219, in raise_for_error
    #     err.raise_mysql_exception(self._data)
    #     ~~~~~~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^
    #     errno = 1146
    #     self = <pymysql.protocol.MysqlPacket object at 0x72055f619870>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/err.py", line 150, in raise_mysql_exception
    #     raise errorclass(errno, errval)
    #     data = b"\xffz\x04#42S02Table 'erp_frx_localhost.tabToDo' doesn't exist"
    #     errno = 1146
    #     errorclass = <class 'pymysql.err.ProgrammingError'>
    #     errval = "Table 'erp_frx_localhost.tabToDo' doesn't exist"
    # pymysql.err.ProgrammingError: (1146, "Table 'erp_frx_localhost.tabToDo' doesn't exist")
    #
  }
  {
    id = "frappe.tests.test_dashboard_connections.TestDashboardConnections.test_external_doctype_link_with_dashboard_override";

    # Traceback (most recent call last):
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/custom/doctype/customize_form/test_customize_form.py", line 40, in tearDown
    #     frappe.delete_doc("Custom Field", self.field.name)
    #     ~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     self = <frappe.custom.doctype.customize_form.test_customize_form.TestCustomizeForm testMethod=test_core_doctype_customization>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/__init__.py", line 1378, in delete_doc
    #     return frappe.model.delete_doc.delete_doc(
    #            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^
    #     	doctype,
    #      ^^^^^^^^
    #     ...<8 lines>...
    #     	delete_permanently,
    #      ^^^^^^^^^^^^^^^^^^^
    #     )
    #     ^
    #     delete_permanently = False
    #     doctype = 'Custom Field'
    #     flags = None
    #     for_reload = False
    #     force = False
    #     frappe = <module 'frappe' from '/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/__init__.py'>
    #     ignore_doctypes = None
    #     ignore_missing = True
    #     ignore_on_trash = False
    #     ignore_permissions = False
    #     name = 'Event-custom_test_field'
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/model/delete_doc.py", line 154, in delete_doc
    #     frappe.enqueue(
    #     ~~~~~~~~~~~~~~^
    #     	"frappe.model.delete_doc.delete_dynamic_links",
    #      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     ...<3 lines>...
    #     	enqueue_after_commit=True,
    #      ^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     )
    #     ^
    #     delete_permanently = False
    #     doc = <CustomField: Event-custom_test_field>
    #     doctype = 'Custom Field'
    #     flags = None
    #     for_reload = False
    #     force = False
    #     ignore_doctypes = []
    #     ignore_missing = True
    #     ignore_on_trash = False
    #     ignore_permissions = False
    #     is_virtual = 0
    #     name = 'Event-custom_test_field'
    #     names = ['Event-custom_test_field']
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/__init__.py", line 2271, in enqueue
    #     return frappe.utils.background_jobs.enqueue(*args, **kwargs)
    #            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^
    #     args = ('frappe.model.delete_doc.delete_dynamic_links',)
    #     frappe = <module 'frappe' from '/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/__init__.py'>
    #     kwargs = {'doctype': 'Custom Field', 'name': 'Event-custom_test_field', 'now': True, 'enqueue_after_commit': True}
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/utils/background_jobs.py", line 120, in enqueue
    #     return frappe.call(method, **kwargs)
    #            ~~~~~~~~~~~^^^^^^^^^^^^^^^^^^
    #     at_front = False
    #     call_directly = True
    #     deduplicate = False
    #     enqueue_after_commit = True
    #     event = None
    #     is_async = True
    #     job_id = 'erp.frx.localhost::3a4d1a02-884b-4996-844d-6ed637ef8cbc'
    #     job_name = None
    #     kwargs = {'doctype': 'Custom Field', 'name': 'Event-custom_test_field'}
    #     method = 'frappe.model.delete_doc.delete_dynamic_links'
    #     now = True
    #     on_failure = None
    #     on_success = None
    #     queue = 'default'
    #     timeout = None
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/__init__.py", line 1762, in call
    #     return fn(*args, **newargs)
    #     args = ()
    #     fn = <function delete_dynamic_links at 0x72056a6f22a0>
    #     kwargs = {'doctype': 'Custom Field', 'name': 'Event-custom_test_field'}
    #     newargs = {'doctype': 'Custom Field', 'name': 'Event-custom_test_field'}
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/model/delete_doc.py", line 449, in delete_dynamic_links
    #     delete_references("ToDo", doctype, name, "reference_type")
    #     ~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     doctype = 'Custom Field'
    #     name = 'Event-custom_test_field'
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/model/delete_doc.py", line 473, in delete_references
    #     frappe.db.delete(
    #     ~~~~~~~~~~~~~~~~^
    #     	doctype, {reference_doctype_field: reference_doctype, reference_name_field: reference_name}
    #      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     )
    #     ^
    #     doctype = 'ToDo'
    #     reference_doctype = 'Custom Field'
    #     reference_doctype_field = 'reference_type'
    #     reference_name = 'Event-custom_test_field'
    #     reference_name_field = 'reference_name'
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/database/database.py", line 1414, in delete
    #     return query.run(**kwargs)
    #            ~~~~~~~~~^^^^^^^^^^
    #     debug = False
    #     doctype = 'ToDo'
    #     filters = {'reference_type': 'Custom Field', 'reference_name': 'Event-custom_test_field'}
    #     kwargs = {'debug': False}
    #     query = DELETE FROM `tabToDo` WHERE `reference_type`='Custom Field' AND `reference_name`='Event-custom_test_field'
    #     self = <frappe.database.mariadb.database.MariaDBDatabase object at 0x7205665b1480>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/query_builder/utils.py", line 87, in execute_query
    #     result = frappe.db.sql(query, params, *args, **kwargs)  # nosemgrep
    #     args = ()
    #     child_queries = []
    #     execute_child_queries = <function patch_query_execute.<locals>.execute_child_queries at 0x72056c50e3e0>
    #     kwargs = {'debug': False}
    #     params = {'param1': 'Custom Field', 'param2': 'Event-custom_test_field'}
    #     prepare_query = <function patch_query_execute.<locals>.prepare_query at 0x72056c50e480>
    #     query = 'DELETE FROM `tabToDo` WHERE `reference_type`=%(param1)s AND `reference_name`=%(param2)s'
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/database/database.py", line 230, in sql
    #     self._cursor.execute(query, values)
    #     ~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^
    #     as_dict = 0
    #     as_iterator = False
    #     as_list = 0
    #     auto_commit = 0
    #     debug = False
    #     explain = False
    #     ignore_ddl = 0
    #     pluck = False
    #     query = 'DELETE FROM `tabToDo` WHERE `reference_type`=%(param1)s AND `reference_name`=%(param2)s'
    #     run = True
    #     self = <frappe.database.mariadb.database.MariaDBDatabase object at 0x7205665b1480>
    #     trace_id = None
    #     update = None
    #     values = {'param1': 'Custom Field', 'param2': 'Event-custom_test_field'}
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/cursors.py", line 153, in execute
    #     result = self._query(query)
    #     args = {'param1': 'Custom Field', 'param2': 'Event-custom_test_field'}
    #     query = "DELETE FROM `tabToDo` WHERE `reference_type`='Custom Field' AND `reference_name`='Event-custom_test_field'"
    #     self = <pymysql.cursors.Cursor object at 0x72055f41ec10>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/cursors.py", line 322, in _query
    #     conn.query(q)
    #     ~~~~~~~~~~^^^
    #     conn = <pymysql.connections.Connection object at 0x72055f567ed0>
    #     q = "DELETE FROM `tabToDo` WHERE `reference_type`='Custom Field' AND `reference_name`='Event-custom_test_field'"
    #     self = <pymysql.cursors.Cursor object at 0x72055f41ec10>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/connections.py", line 575, in query
    #     self._affected_rows = self._read_query_result(unbuffered=unbuffered)
    #                           ~~~~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^
    #     self = <pymysql.connections.Connection object at 0x72055f567ed0>
    #     sql = b"DELETE FROM `tabToDo` WHERE `reference_type`='Custom Field' AND `reference_name`='Event-custom_test_field'"
    #     unbuffered = False
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/connections.py", line 826, in _read_query_result
    #     result.read()
    #     ~~~~~~~~~~~^^
    #     result = <pymysql.connections.MySQLResult object at 0x72055feab4d0>
    #     self = <pymysql.connections.Connection object at 0x72055f567ed0>
    #     unbuffered = False
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/connections.py", line 1203, in read
    #     first_packet = self.connection._read_packet()
    #     self = <pymysql.connections.MySQLResult object at 0x72055feab4d0>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/connections.py", line 782, in _read_packet
    #     packet.raise_for_error()
    #     ~~~~~~~~~~~~~~~~~~~~~~^^
    #     btrh = 0
    #     btrl = 56
    #     buff = bytearray(b"\xffz\x04#42S02Table \'erp_frx_localhost.tabToDo\' doesn\'t exist")
    #     bytes_to_read = 56
    #     packet = <pymysql.protocol.MysqlPacket object at 0x72055f6c8430>
    #     packet_header = b'8\x00\x00\x01'
    #     packet_number = 1
    #     packet_type = <class 'pymysql.protocol.MysqlPacket'>
    #     recv_data = b"\xffz\x04#42S02Table 'erp_frx_localhost.tabToDo' doesn't exist"
    #     self = <pymysql.connections.Connection object at 0x72055f567ed0>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/protocol.py", line 219, in raise_for_error
    #     err.raise_mysql_exception(self._data)
    #     ~~~~~~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^
    #     errno = 1146
    #     self = <pymysql.protocol.MysqlPacket object at 0x72055f6c8430>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/err.py", line 150, in raise_mysql_exception
    #     raise errorclass(errno, errval)
    #     data = b"\xffz\x04#42S02Table 'erp_frx_localhost.tabToDo' doesn't exist"
    #     errno = 1146
    #     errorclass = <class 'pymysql.err.ProgrammingError'>
    #     errval = "Table 'erp_frx_localhost.tabToDo' doesn't exist"
    # pymysql.err.ProgrammingError: (1146, "Table 'erp_frx_localhost.tabToDo' doesn't exist")
    #
  }
  {
    id = "";

    # Traceback (most recent call last):
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/custom/doctype/customize_form/test_customize_form.py", line 40, in tearDown
    #     frappe.delete_doc("Custom Field", self.field.name)
    #     ~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     self = <frappe.custom.doctype.customize_form.test_customize_form.TestCustomizeForm testMethod=test_custom_action>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/__init__.py", line 1378, in delete_doc
    #     return frappe.model.delete_doc.delete_doc(
    #            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^
    #     	doctype,
    #      ^^^^^^^^
    #     ...<8 lines>...
    #     	delete_permanently,
    #      ^^^^^^^^^^^^^^^^^^^
    #     )
    #     ^
    #     delete_permanently = False
    #     doctype = 'Custom Field'
    #     flags = None
    #     for_reload = False
    #     force = False
    #     frappe = <module 'frappe' from '/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/__init__.py'>
    #     ignore_doctypes = None
    #     ignore_missing = True
    #     ignore_on_trash = False
    #     ignore_permissions = False
    #     name = 'Event-custom_test_field'
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/model/delete_doc.py", line 154, in delete_doc
    #     frappe.enqueue(
    #     ~~~~~~~~~~~~~~^
    #     	"frappe.model.delete_doc.delete_dynamic_links",
    #      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     ...<3 lines>...
    #     	enqueue_after_commit=True,
    #      ^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     )
    #     ^
    #     delete_permanently = False
    #     doc = <CustomField: Event-custom_test_field>
    #     doctype = 'Custom Field'
    #     flags = None
    #     for_reload = False
    #     force = False
    #     ignore_doctypes = []
    #     ignore_missing = True
    #     ignore_on_trash = False
    #     ignore_permissions = False
    #     is_virtual = 0
    #     name = 'Event-custom_test_field'
    #     names = ['Event-custom_test_field']
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/__init__.py", line 2271, in enqueue
    #     return frappe.utils.background_jobs.enqueue(*args, **kwargs)
    #            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^
    #     args = ('frappe.model.delete_doc.delete_dynamic_links',)
    #     frappe = <module 'frappe' from '/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/__init__.py'>
    #     kwargs = {'doctype': 'Custom Field', 'name': 'Event-custom_test_field', 'now': True, 'enqueue_after_commit': True}
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/utils/background_jobs.py", line 120, in enqueue
    #     return frappe.call(method, **kwargs)
    #            ~~~~~~~~~~~^^^^^^^^^^^^^^^^^^
    #     at_front = False
    #     call_directly = True
    #     deduplicate = False
    #     enqueue_after_commit = True
    #     event = None
    #     is_async = True
    #     job_id = 'erp.frx.localhost::06b4a53d-b884-46d7-baa8-dd45073d99d5'
    #     job_name = None
    #     kwargs = {'doctype': 'Custom Field', 'name': 'Event-custom_test_field'}
    #     method = 'frappe.model.delete_doc.delete_dynamic_links'
    #     now = True
    #     on_failure = None
    #     on_success = None
    #     queue = 'default'
    #     timeout = None
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/__init__.py", line 1762, in call
    #     return fn(*args, **newargs)
    #     args = ()
    #     fn = <function delete_dynamic_links at 0x72056a6f22a0>
    #     kwargs = {'doctype': 'Custom Field', 'name': 'Event-custom_test_field'}
    #     newargs = {'doctype': 'Custom Field', 'name': 'Event-custom_test_field'}
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/model/delete_doc.py", line 449, in delete_dynamic_links
    #     delete_references("ToDo", doctype, name, "reference_type")
    #     ~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     doctype = 'Custom Field'
    #     name = 'Event-custom_test_field'
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/model/delete_doc.py", line 473, in delete_references
    #     frappe.db.delete(
    #     ~~~~~~~~~~~~~~~~^
    #     	doctype, {reference_doctype_field: reference_doctype, reference_name_field: reference_name}
    #      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     )
    #     ^
    #     doctype = 'ToDo'
    #     reference_doctype = 'Custom Field'
    #     reference_doctype_field = 'reference_type'
    #     reference_name = 'Event-custom_test_field'
    #     reference_name_field = 'reference_name'
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/database/database.py", line 1414, in delete
    #     return query.run(**kwargs)
    #            ~~~~~~~~~^^^^^^^^^^
    #     debug = False
    #     doctype = 'ToDo'
    #     filters = {'reference_type': 'Custom Field', 'reference_name': 'Event-custom_test_field'}
    #     kwargs = {'debug': False}
    #     query = DELETE FROM `tabToDo` WHERE `reference_type`='Custom Field' AND `reference_name`='Event-custom_test_field'
    #     self = <frappe.database.mariadb.database.MariaDBDatabase object at 0x7205665b1480>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/query_builder/utils.py", line 87, in execute_query
    #     result = frappe.db.sql(query, params, *args, **kwargs)  # nosemgrep
    #     args = ()
    #     child_queries = []
    #     execute_child_queries = <function patch_query_execute.<locals>.execute_child_queries at 0x72056c50e3e0>
    #     kwargs = {'debug': False}
    #     params = {'param1': 'Custom Field', 'param2': 'Event-custom_test_field'}
    #     prepare_query = <function patch_query_execute.<locals>.prepare_query at 0x72056c50e480>
    #     query = 'DELETE FROM `tabToDo` WHERE `reference_type`=%(param1)s AND `reference_name`=%(param2)s'
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/database/database.py", line 230, in sql
    #     self._cursor.execute(query, values)
    #     ~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^
    #     as_dict = 0
    #     as_iterator = False
    #     as_list = 0
    #     auto_commit = 0
    #     debug = False
    #     explain = False
    #     ignore_ddl = 0
    #     pluck = False
    #     query = 'DELETE FROM `tabToDo` WHERE `reference_type`=%(param1)s AND `reference_name`=%(param2)s'
    #     run = True
    #     self = <frappe.database.mariadb.database.MariaDBDatabase object at 0x7205665b1480>
    #     trace_id = None
    #     update = None
    #     values = {'param1': 'Custom Field', 'param2': 'Event-custom_test_field'}
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/cursors.py", line 153, in execute
    #     result = self._query(query)
    #     args = {'param1': 'Custom Field', 'param2': 'Event-custom_test_field'}
    #     query = "DELETE FROM `tabToDo` WHERE `reference_type`='Custom Field' AND `reference_name`='Event-custom_test_field'"
    #     self = <pymysql.cursors.Cursor object at 0x72055f41ec10>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/cursors.py", line 322, in _query
    #     conn.query(q)
    #     ~~~~~~~~~~^^^
    #     conn = <pymysql.connections.Connection object at 0x72055f567ed0>
    #     q = "DELETE FROM `tabToDo` WHERE `reference_type`='Custom Field' AND `reference_name`='Event-custom_test_field'"
    #     self = <pymysql.cursors.Cursor object at 0x72055f41ec10>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/connections.py", line 575, in query
    #     self._affected_rows = self._read_query_result(unbuffered=unbuffered)
    #                           ~~~~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^
    #     self = <pymysql.connections.Connection object at 0x72055f567ed0>
    #     sql = b"DELETE FROM `tabToDo` WHERE `reference_type`='Custom Field' AND `reference_name`='Event-custom_test_field'"
    #     unbuffered = False
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/connections.py", line 826, in _read_query_result
    #     result.read()
    #     ~~~~~~~~~~~^^
    #     result = <pymysql.connections.MySQLResult object at 0x72055f980c50>
    #     self = <pymysql.connections.Connection object at 0x72055f567ed0>
    #     unbuffered = False
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/connections.py", line 1203, in read
    #     first_packet = self.connection._read_packet()
    #     self = <pymysql.connections.MySQLResult object at 0x72055f980c50>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/connections.py", line 782, in _read_packet
    #     packet.raise_for_error()
    #     ~~~~~~~~~~~~~~~~~~~~~~^^
    #     btrh = 0
    #     btrl = 56
    #     buff = bytearray(b"\xffz\x04#42S02Table \'erp_frx_localhost.tabToDo\' doesn\'t exist")
    #     bytes_to_read = 56
    #     packet = <pymysql.protocol.MysqlPacket object at 0x72055fd7fcd0>
    #     packet_header = b'8\x00\x00\x01'
    #     packet_number = 1
    #     packet_type = <class 'pymysql.protocol.MysqlPacket'>
    #     recv_data = b"\xffz\x04#42S02Table 'erp_frx_localhost.tabToDo' doesn't exist"
    #     self = <pymysql.connections.Connection object at 0x72055f567ed0>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/protocol.py", line 219, in raise_for_error
    #     err.raise_mysql_exception(self._data)
    #     ~~~~~~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^
    #     errno = 1146
    #     self = <pymysql.protocol.MysqlPacket object at 0x72055fd7fcd0>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/err.py", line 150, in raise_mysql_exception
    #     raise errorclass(errno, errval)
    #     data = b"\xffz\x04#42S02Table 'erp_frx_localhost.tabToDo' doesn't exist"
    #     errno = 1146
    #     errorclass = <class 'pymysql.err.ProgrammingError'>
    #     errval = "Table 'erp_frx_localhost.tabToDo' doesn't exist"
    # pymysql.err.ProgrammingError: (1146, "Table 'erp_frx_localhost.tabToDo' doesn't exist")
    #
  }
  {
    id = "";

    # Traceback (most recent call last):
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/custom/doctype/customize_form/test_customize_form.py", line 421, in test_custom_field_order
    #     customize_form.save_customization()
    #     ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^^
    #     customize_form = <CustomizeForm: Customize Form>
    #     self = <frappe.custom.doctype.customize_form.test_customize_form.TestCustomizeForm testMethod=test_custom_field_order>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/utils/typing_validations.py", line 32, in wrapper
    #     return func(*args, **kwargs)
    #     apply_condition = <function whitelist.<locals>.innerfn.<locals>.<lambda> at 0x7205684df740>
    #     args = (<CustomizeForm: Customize Form>,)
    #     func = <function CustomizeForm.save_customization at 0x7205684df6a0>
    #     kwargs = {}
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/custom/doctype/customize_form/customize_form.py", line 235, in save_customization
    #     self.set_property_setters()
    #     ~~~~~~~~~~~~~~~~~~~~~~~~~^^
    #     self = <CustomizeForm: Customize Form>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/custom/doctype/customize_form/customize_form.py", line 271, in set_property_setters
    #     self.set_property_setters_for_doctype(meta)
    #     ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^^^^^^
    #     meta = <Meta: ToDo>
    #     self = <CustomizeForm: Customize Form>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/custom/doctype/customize_form/customize_form.py", line 317, in set_property_setters_for_doctype
    #     self.set_property_setter_for_field_order(meta)
    #     ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^^^^^^
    #     meta = <Meta: ToDo>
    #     prop = 'rows_threshold_for_grid_search'
    #     prop_type = 'Int'
    #     self = <CustomizeForm: Customize Form>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/custom/doctype/customize_form/customize_form.py", line 300, in set_property_setter_for_field_order
    #     frappe.make_property_setter(
    #     ~~~~~~~~~~~~~~~~~~~~~~~~~~~^
    #     	{
    #      ^
    #     ...<5 lines>...
    #     	is_system_generated=False,
    #      ^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     )
    #     ^
    #     default_order = ['assignment_rule', 'description_and_status', 'status', 'priority', 'column_break_2', 'color', 'date', 'allocated_to', 'description_section', 'description', 'section_break_6', 'reference_type', 'reference_name', 'column_break_10', 'role', 'assigned_by', 'assigned_by_full_name', 'sender']
    #     existing_order = '["assignment_rule", "description_and_status", "status", "test_delete_46664", "test_delete_5902a", "test_delete_a9b7e", "test_delete_c9825", "priority", "column_break_2", "color", "date", "allocated_to", "description_section", "description", "section_break_6", "reference_type", "reference_name", "column_break_10", "role", "assigned_by", "assigned_by_full_name", "sender"]'
    #     meta = <Meta: ToDo>
    #     new_order = ['sender', 'assignment_rule', 'description_and_status', 'status', 'priority', 'column_break_2', 'color', 'date', 'allocated_to', 'description_section', 'description', 'section_break_6', 'reference_type', 'reference_name', 'column_break_10', 'role', 'assigned_by', 'assigned_by_full_name']
    #     self = <CustomizeForm: Customize Form>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/__init__.py", line 1857, in make_property_setter
    #     ps.insert()
    #     ~~~~~~~~~^^
    #     args = {'doctype': 'ToDo', 'doctype_or_field': 'DocType', 'property': 'field_order', 'value': '["sender", "assignment_rule", "description_and_status", "status", "priority", "column_break_2", "color", "date", "allocated_to", "description_section", "description", "section_break_6", "reference_type", "reference_name", "column_break_10", "role", "assigned_by", "assigned_by_full_name"]', 'property_type': 'Data'}
    #     doctype = 'ToDo'
    #     doctype_list = ['ToDo']
    #     ignore_validate = False
    #     is_system_generated = False
    #     module = None
    #     ps = <PropertySetter: ToDo-main-field_order>
    #     validate_fields_for_doctype = True
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/model/document.py", line 309, in insert
    #     self.run_before_save_methods()
    #     ~~~~~~~~~~~~~~~~~~~~~~~~~~~~^^
    #     ignore_if_duplicate = False
    #     ignore_links = None
    #     ignore_mandatory = None
    #     ignore_permissions = None
    #     self = <PropertySetter: ToDo-main-field_order>
    #     set_child_names = True
    #     set_name = None
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/model/document.py", line 1145, in run_before_save_methods
    #     self.run_method("validate")
    #     ~~~~~~~~~~~~~~~^^^^^^^^^^^^
    #     self = <PropertySetter: ToDo-main-field_order>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/model/document.py", line 1016, in run_method
    #     out = Document.hook(fn)(self, *args, **kwargs)
    #     args = ()
    #     fn = <function Document.run_method.<locals>.fn at 0x72055f673f60>
    #     kwargs = {}
    #     method = 'validate'
    #     self = <PropertySetter: ToDo-main-field_order>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/model/document.py", line 1376, in composer
    #     return composed(self, method, *args, **kwargs)
    #     args = ()
    #     compose = <function Document.hook.<locals>.compose at 0x72055f6718a0>
    #     composed = <function Document.hook.<locals>.compose.<locals>.runner at 0x72055f672480>
    #     doc_events = {'*': {'on_update': ['frappe.desk.notifications.clear_doctype_notifications', 'frappe.workflow.doctype.workflow_action.workflow_action.process_workflow_actions', 'frappe.core.doctype.file.utils.attach_files_to_document', 'frappe.automation.doctype.assignment_rule.assignment_rule.apply', 'frappe.automation.doctype.assignment_rule.assignment_rule.update_due_date', 'frappe.core.doctype.user_type.user_type.apply_permissions_for_non_standard_user_type', 'frappe.search.sqlite_search.update_doc_index'], 'after_rename': ['frappe.desk.notifications.clear_doctype_notifications'], 'on_cancel': ['frappe.desk.notifications.clear_doctype_notifications', 'frappe.workflow.doctype.workflow_action.workflow_action.process_workflow_actions', 'frappe.automation.doctype.assignment_rule.assignment_rule.apply'], 'on_trash': ['frappe.desk.notifications.clear_doctype_notifications', 'frappe.workflow.doctype.workflow_action.workflow_action.process_workflow_actions', 'frappe.search.sqlite_search.delete_doc_index'], 'on_update_after_submit': ['frappe.workflow.doctype.workflow_action.workflow_action.process_workflow_actions', 'frappe.automation.doctype.assignment_rule.assignment_rule.apply', 'frappe.automation.doctype.assignment_rule.assignment_rule.update_due_date', 'frappe.core.doctype.file.utils.attach_files_to_document'], 'on_change': ['frappe.social.doctype.energy_point_rule.energy_point_rule.process_energy_points', 'frappe.automation.doctype.milestone_tracker.milestone_tracker.evaluate_milestone']}, 'Event': {'after_insert': ['frappe.integrations.doctype.google_calendar.google_calendar.insert_event_in_google_calendar'], 'on_update': ['frappe.integrations.doctype.google_calendar.google_calendar.update_event_in_google_calendar'], 'on_trash': ['frappe.integrations.doctype.google_calendar.google_calendar.delete_event_from_google_calendar']}, 'Contact': {'after_insert': ['frappe.integrations.doctype.google_contacts.google_contacts.insert_contacts_to_google_contacts'], 'on_update': ['frappe.integrations.doctype.google_contacts.google_contacts.update_contacts_to_google_contacts']}, 'DocType': {'on_update': ['frappe.cache_manager.build_domain_restriced_doctype_cache']}, 'Page': {'on_update': ['frappe.cache_manager.build_domain_restriced_page_cache']}}
    #     f = <function Document.run_method.<locals>.fn at 0x72055f673f60>
    #     hooks = []
    #     kwargs = {}
    #     method = 'validate'
    #     self = <PropertySetter: ToDo-main-field_order>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/model/document.py", line 1358, in runner
    #     add_to_return_value(self, fn(self, *args, **kwargs))
    #                               ~~^^^^^^^^^^^^^^^^^^^^^^^
    #     add_to_return_value = <function Document.hook.<locals>.add_to_return_value at 0x72055f671ee0>
    #     args = ()
    #     fn = <function Document.run_method.<locals>.fn at 0x72055f673f60>
    #     hooks = ()
    #     kwargs = {}
    #     method = 'validate'
    #     self = <PropertySetter: ToDo-main-field_order>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/model/document.py", line 1013, in fn
    #     return method_object(*args, **kwargs)
    #     args = ()
    #     kwargs = {}
    #     method = 'validate'
    #     method_object = <bound method PropertySetter.validate of <PropertySetter: ToDo-main-field_order>>
    #     self = <PropertySetter: ToDo-main-field_order>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/custom/doctype/property_setter/property_setter.py", line 43, in validate
    #     delete_property_setter(self.doc_type, self.property, self.field_name, self.row_name)
    #     ~~~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     self = <PropertySetter: ToDo-main-field_order>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/custom/doctype/property_setter/property_setter.py", line 104, in delete_property_setter
    #     _delete_property_setters(filters)
    #     ~~~~~~~~~~~~~~~~~~~~~~~~^^^^^^^^^
    #     doc_type = 'ToDo'
    #     field_name = None
    #     filters = {'doc_type': 'ToDo', 'property': 'field_order'}
    #     property = 'field_order'
    #     row_name = None
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/custom/doctype/property_setter/property_setter.py", line 160, in _delete_property_setters
    #     frappe.get_doc("Property Setter", ps).delete(ignore_permissions=True, force=True)
    #     ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     filters = {'doc_type': 'ToDo', 'property': 'field_order'}
    #     property_setters = ['ToDo-main-field_order']
    #     ps = 'ToDo-main-field_order'
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/model/document.py", line 1116, in delete
    #     return frappe.delete_doc(
    #            ~~~~~~~~~~~~~~~~~^
    #     	self.doctype,
    #      ^^^^^^^^^^^^^
    #     ...<4 lines>...
    #     	delete_permanently=delete_permanently,
    #      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     )
    #     ^
    #     delete_permanently = False
    #     force = True
    #     ignore_permissions = True
    #     self = <PropertySetter: ToDo-main-field_order>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/__init__.py", line 1378, in delete_doc
    #     return frappe.model.delete_doc.delete_doc(
    #            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^
    #     	doctype,
    #      ^^^^^^^^
    #     ...<8 lines>...
    #     	delete_permanently,
    #      ^^^^^^^^^^^^^^^^^^^
    #     )
    #     ^
    #     delete_permanently = False
    #     doctype = 'Property Setter'
    #     flags = {'for_update': None, 'ignore_permissions': True}
    #     for_reload = False
    #     force = True
    #     frappe = <module 'frappe' from '/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/__init__.py'>
    #     ignore_doctypes = None
    #     ignore_missing = True
    #     ignore_on_trash = False
    #     ignore_permissions = True
    #     name = 'ToDo-main-field_order'
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/model/delete_doc.py", line 154, in delete_doc
    #     frappe.enqueue(
    #     ~~~~~~~~~~~~~~^
    #     	"frappe.model.delete_doc.delete_dynamic_links",
    #      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     ...<3 lines>...
    #     	enqueue_after_commit=True,
    #      ^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     )
    #     ^
    #     delete_permanently = False
    #     doc = <PropertySetter: ToDo-main-field_order>
    #     doctype = 'Property Setter'
    #     flags = {'for_update': None, 'ignore_permissions': True}
    #     for_reload = False
    #     force = True
    #     ignore_doctypes = []
    #     ignore_missing = True
    #     ignore_on_trash = False
    #     ignore_permissions = True
    #     is_virtual = 0
    #     name = 'ToDo-main-field_order'
    #     names = ['ToDo-main-field_order']
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/__init__.py", line 2271, in enqueue
    #     return frappe.utils.background_jobs.enqueue(*args, **kwargs)
    #            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^
    #     args = ('frappe.model.delete_doc.delete_dynamic_links',)
    #     frappe = <module 'frappe' from '/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/__init__.py'>
    #     kwargs = {'doctype': 'Property Setter', 'name': 'ToDo-main-field_order', 'now': True, 'enqueue_after_commit': True}
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/utils/background_jobs.py", line 120, in enqueue
    #     return frappe.call(method, **kwargs)
    #            ~~~~~~~~~~~^^^^^^^^^^^^^^^^^^
    #     at_front = False
    #     call_directly = True
    #     deduplicate = False
    #     enqueue_after_commit = True
    #     event = None
    #     is_async = True
    #     job_id = 'erp.frx.localhost::551f0da0-ac20-470f-b499-0ccc86160234'
    #     job_name = None
    #     kwargs = {'doctype': 'Property Setter', 'name': 'ToDo-main-field_order'}
    #     method = 'frappe.model.delete_doc.delete_dynamic_links'
    #     now = True
    #     on_failure = None
    #     on_success = None
    #     queue = 'default'
    #     timeout = None
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/__init__.py", line 1762, in call
    #     return fn(*args, **newargs)
    #     args = ()
    #     fn = <function delete_dynamic_links at 0x72056a6f22a0>
    #     kwargs = {'doctype': 'Property Setter', 'name': 'ToDo-main-field_order'}
    #     newargs = {'doctype': 'Property Setter', 'name': 'ToDo-main-field_order'}
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/model/delete_doc.py", line 449, in delete_dynamic_links
    #     delete_references("ToDo", doctype, name, "reference_type")
    #     ~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     doctype = 'Property Setter'
    #     name = 'ToDo-main-field_order'
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/model/delete_doc.py", line 473, in delete_references
    #     frappe.db.delete(
    #     ~~~~~~~~~~~~~~~~^
    #     	doctype, {reference_doctype_field: reference_doctype, reference_name_field: reference_name}
    #      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     )
    #     ^
    #     doctype = 'ToDo'
    #     reference_doctype = 'Property Setter'
    #     reference_doctype_field = 'reference_type'
    #     reference_name = 'ToDo-main-field_order'
    #     reference_name_field = 'reference_name'
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/database/database.py", line 1414, in delete
    #     return query.run(**kwargs)
    #            ~~~~~~~~~^^^^^^^^^^
    #     debug = False
    #     doctype = 'ToDo'
    #     filters = {'reference_type': 'Property Setter', 'reference_name': 'ToDo-main-field_order'}
    #     kwargs = {'debug': False}
    #     query = DELETE FROM `tabToDo` WHERE `reference_type`='Property Setter' AND `reference_name`='ToDo-main-field_order'
    #     self = <frappe.database.mariadb.database.MariaDBDatabase object at 0x7205665b1480>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/query_builder/utils.py", line 87, in execute_query
    #     result = frappe.db.sql(query, params, *args, **kwargs)  # nosemgrep
    #     args = ()
    #     child_queries = []
    #     execute_child_queries = <function patch_query_execute.<locals>.execute_child_queries at 0x72056c50e3e0>
    #     kwargs = {'debug': False}
    #     params = {'param1': 'Property Setter', 'param2': 'ToDo-main-field_order'}
    #     prepare_query = <function patch_query_execute.<locals>.prepare_query at 0x72056c50e480>
    #     query = 'DELETE FROM `tabToDo` WHERE `reference_type`=%(param1)s AND `reference_name`=%(param2)s'
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/database/database.py", line 230, in sql
    #     self._cursor.execute(query, values)
    #     ~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^
    #     as_dict = 0
    #     as_iterator = False
    #     as_list = 0
    #     auto_commit = 0
    #     debug = False
    #     explain = False
    #     ignore_ddl = 0
    #     pluck = False
    #     query = 'DELETE FROM `tabToDo` WHERE `reference_type`=%(param1)s AND `reference_name`=%(param2)s'
    #     run = True
    #     self = <frappe.database.mariadb.database.MariaDBDatabase object at 0x7205665b1480>
    #     trace_id = None
    #     update = None
    #     values = {'param1': 'Property Setter', 'param2': 'ToDo-main-field_order'}
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/cursors.py", line 153, in execute
    #     result = self._query(query)
    #     args = {'param1': 'Property Setter', 'param2': 'ToDo-main-field_order'}
    #     query = "DELETE FROM `tabToDo` WHERE `reference_type`='Property Setter' AND `reference_name`='ToDo-main-field_order'"
    #     self = <pymysql.cursors.Cursor object at 0x72055f41ec10>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/cursors.py", line 322, in _query
    #     conn.query(q)
    #     ~~~~~~~~~~^^^
    #     conn = <pymysql.connections.Connection object at 0x72055f567ed0>
    #     q = "DELETE FROM `tabToDo` WHERE `reference_type`='Property Setter' AND `reference_name`='ToDo-main-field_order'"
    #     self = <pymysql.cursors.Cursor object at 0x72055f41ec10>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/connections.py", line 575, in query
    #     self._affected_rows = self._read_query_result(unbuffered=unbuffered)
    #                           ~~~~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^
    #     self = <pymysql.connections.Connection object at 0x72055f567ed0>
    #     sql = b"DELETE FROM `tabToDo` WHERE `reference_type`='Property Setter' AND `reference_name`='ToDo-main-field_order'"
    #     unbuffered = False
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/connections.py", line 826, in _read_query_result
    #     result.read()
    #     ~~~~~~~~~~~^^
    #     result = <pymysql.connections.MySQLResult object at 0x72055f301190>
    #     self = <pymysql.connections.Connection object at 0x72055f567ed0>
    #     unbuffered = False
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/connections.py", line 1203, in read
    #     first_packet = self.connection._read_packet()
    #     self = <pymysql.connections.MySQLResult object at 0x72055f301190>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/connections.py", line 782, in _read_packet
    #     packet.raise_for_error()
    #     ~~~~~~~~~~~~~~~~~~~~~~^^
    #     btrh = 0
    #     btrl = 56
    #     buff = bytearray(b"\xffz\x04#42S02Table \'erp_frx_localhost.tabToDo\' doesn\'t exist")
    #     bytes_to_read = 56
    #     packet = <pymysql.protocol.MysqlPacket object at 0x720564721750>
    #     packet_header = b'8\x00\x00\x01'
    #     packet_number = 1
    #     packet_type = <class 'pymysql.protocol.MysqlPacket'>
    #     recv_data = b"\xffz\x04#42S02Table 'erp_frx_localhost.tabToDo' doesn't exist"
    #     self = <pymysql.connections.Connection object at 0x72055f567ed0>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/protocol.py", line 219, in raise_for_error
    #     err.raise_mysql_exception(self._data)
    #     ~~~~~~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^
    #     errno = 1146
    #     self = <pymysql.protocol.MysqlPacket object at 0x720564721750>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/err.py", line 150, in raise_mysql_exception
    #     raise errorclass(errno, errval)
    #     data = b"\xffz\x04#42S02Table 'erp_frx_localhost.tabToDo' doesn't exist"
    #     errno = 1146
    #     errorclass = <class 'pymysql.err.ProgrammingError'>
    #     errval = "Table 'erp_frx_localhost.tabToDo' doesn't exist"
    # pymysql.err.ProgrammingError: (1146, "Table 'erp_frx_localhost.tabToDo' doesn't exist")
    #
  }
  {
    id = "";

    # Traceback (most recent call last):
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/custom/doctype/customize_form/test_customize_form.py", line 40, in tearDown
    #     frappe.delete_doc("Custom Field", self.field.name)
    #     ~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     self = <frappe.custom.doctype.customize_form.test_customize_form.TestCustomizeForm testMethod=test_custom_field_order>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/__init__.py", line 1378, in delete_doc
    #     return frappe.model.delete_doc.delete_doc(
    #            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^
    #     	doctype,
    #      ^^^^^^^^
    #     ...<8 lines>...
    #     	delete_permanently,
    #      ^^^^^^^^^^^^^^^^^^^
    #     )
    #     ^
    #     delete_permanently = False
    #     doctype = 'Custom Field'
    #     flags = None
    #     for_reload = False
    #     force = False
    #     frappe = <module 'frappe' from '/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/__init__.py'>
    #     ignore_doctypes = None
    #     ignore_missing = True
    #     ignore_on_trash = False
    #     ignore_permissions = False
    #     name = 'Event-custom_test_field'
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/model/delete_doc.py", line 154, in delete_doc
    #     frappe.enqueue(
    #     ~~~~~~~~~~~~~~^
    #     	"frappe.model.delete_doc.delete_dynamic_links",
    #      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     ...<3 lines>...
    #     	enqueue_after_commit=True,
    #      ^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     )
    #     ^
    #     delete_permanently = False
    #     doc = <CustomField: Event-custom_test_field>
    #     doctype = 'Custom Field'
    #     flags = None
    #     for_reload = False
    #     force = False
    #     ignore_doctypes = []
    #     ignore_missing = True
    #     ignore_on_trash = False
    #     ignore_permissions = False
    #     is_virtual = 0
    #     name = 'Event-custom_test_field'
    #     names = ['Event-custom_test_field']
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/__init__.py", line 2271, in enqueue
    #     return frappe.utils.background_jobs.enqueue(*args, **kwargs)
    #            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^
    #     args = ('frappe.model.delete_doc.delete_dynamic_links',)
    #     frappe = <module 'frappe' from '/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/__init__.py'>
    #     kwargs = {'doctype': 'Custom Field', 'name': 'Event-custom_test_field', 'now': True, 'enqueue_after_commit': True}
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/utils/background_jobs.py", line 120, in enqueue
    #     return frappe.call(method, **kwargs)
    #            ~~~~~~~~~~~^^^^^^^^^^^^^^^^^^
    #     at_front = False
    #     call_directly = True
    #     deduplicate = False
    #     enqueue_after_commit = True
    #     event = None
    #     is_async = True
    #     job_id = 'erp.frx.localhost::87aa15d1-9ffa-40b6-b461-48b920ce22ba'
    #     job_name = None
    #     kwargs = {'doctype': 'Custom Field', 'name': 'Event-custom_test_field'}
    #     method = 'frappe.model.delete_doc.delete_dynamic_links'
    #     now = True
    #     on_failure = None
    #     on_success = None
    #     queue = 'default'
    #     timeout = None
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/__init__.py", line 1762, in call
    #     return fn(*args, **newargs)
    #     args = ()
    #     fn = <function delete_dynamic_links at 0x72056a6f22a0>
    #     kwargs = {'doctype': 'Custom Field', 'name': 'Event-custom_test_field'}
    #     newargs = {'doctype': 'Custom Field', 'name': 'Event-custom_test_field'}
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/model/delete_doc.py", line 449, in delete_dynamic_links
    #     delete_references("ToDo", doctype, name, "reference_type")
    #     ~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     doctype = 'Custom Field'
    #     name = 'Event-custom_test_field'
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/model/delete_doc.py", line 473, in delete_references
    #     frappe.db.delete(
    #     ~~~~~~~~~~~~~~~~^
    #     	doctype, {reference_doctype_field: reference_doctype, reference_name_field: reference_name}
    #      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     )
    #     ^
    #     doctype = 'ToDo'
    #     reference_doctype = 'Custom Field'
    #     reference_doctype_field = 'reference_type'
    #     reference_name = 'Event-custom_test_field'
    #     reference_name_field = 'reference_name'
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/database/database.py", line 1414, in delete
    #     return query.run(**kwargs)
    #            ~~~~~~~~~^^^^^^^^^^
    #     debug = False
    #     doctype = 'ToDo'
    #     filters = {'reference_type': 'Custom Field', 'reference_name': 'Event-custom_test_field'}
    #     kwargs = {'debug': False}
    #     query = DELETE FROM `tabToDo` WHERE `reference_type`='Custom Field' AND `reference_name`='Event-custom_test_field'
    #     self = <frappe.database.mariadb.database.MariaDBDatabase object at 0x7205665b1480>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/query_builder/utils.py", line 87, in execute_query
    #     result = frappe.db.sql(query, params, *args, **kwargs)  # nosemgrep
    #     args = ()
    #     child_queries = []
    #     execute_child_queries = <function patch_query_execute.<locals>.execute_child_queries at 0x72056c50e3e0>
    #     kwargs = {'debug': False}
    #     params = {'param1': 'Custom Field', 'param2': 'Event-custom_test_field'}
    #     prepare_query = <function patch_query_execute.<locals>.prepare_query at 0x72056c50e480>
    #     query = 'DELETE FROM `tabToDo` WHERE `reference_type`=%(param1)s AND `reference_name`=%(param2)s'
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/database/database.py", line 230, in sql
    #     self._cursor.execute(query, values)
    #     ~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^
    #     as_dict = 0
    #     as_iterator = False
    #     as_list = 0
    #     auto_commit = 0
    #     debug = False
    #     explain = False
    #     ignore_ddl = 0
    #     pluck = False
    #     query = 'DELETE FROM `tabToDo` WHERE `reference_type`=%(param1)s AND `reference_name`=%(param2)s'
    #     run = True
    #     self = <frappe.database.mariadb.database.MariaDBDatabase object at 0x7205665b1480>
    #     trace_id = None
    #     update = None
    #     values = {'param1': 'Custom Field', 'param2': 'Event-custom_test_field'}
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/cursors.py", line 153, in execute
    #     result = self._query(query)
    #     args = {'param1': 'Custom Field', 'param2': 'Event-custom_test_field'}
    #     query = "DELETE FROM `tabToDo` WHERE `reference_type`='Custom Field' AND `reference_name`='Event-custom_test_field'"
    #     self = <pymysql.cursors.Cursor object at 0x72055f41ec10>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/cursors.py", line 322, in _query
    #     conn.query(q)
    #     ~~~~~~~~~~^^^
    #     conn = <pymysql.connections.Connection object at 0x72055f567ed0>
    #     q = "DELETE FROM `tabToDo` WHERE `reference_type`='Custom Field' AND `reference_name`='Event-custom_test_field'"
    #     self = <pymysql.cursors.Cursor object at 0x72055f41ec10>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/connections.py", line 575, in query
    #     self._affected_rows = self._read_query_result(unbuffered=unbuffered)
    #                           ~~~~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^
    #     self = <pymysql.connections.Connection object at 0x72055f567ed0>
    #     sql = b"DELETE FROM `tabToDo` WHERE `reference_type`='Custom Field' AND `reference_name`='Event-custom_test_field'"
    #     unbuffered = False
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/connections.py", line 826, in _read_query_result
    #     result.read()
    #     ~~~~~~~~~~~^^
    #     result = <pymysql.connections.MySQLResult object at 0x72055f983950>
    #     self = <pymysql.connections.Connection object at 0x72055f567ed0>
    #     unbuffered = False
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/connections.py", line 1203, in read
    #     first_packet = self.connection._read_packet()
    #     self = <pymysql.connections.MySQLResult object at 0x72055f983950>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/connections.py", line 782, in _read_packet
    #     packet.raise_for_error()
    #     ~~~~~~~~~~~~~~~~~~~~~~^^
    #     btrh = 0
    #     btrl = 56
    #     buff = bytearray(b"\xffz\x04#42S02Table \'erp_frx_localhost.tabToDo\' doesn\'t exist")
    #     bytes_to_read = 56
    #     packet = <pymysql.protocol.MysqlPacket object at 0x72055f532aa0>
    #     packet_header = b'8\x00\x00\x01'
    #     packet_number = 1
    #     packet_type = <class 'pymysql.protocol.MysqlPacket'>
    #     recv_data = b"\xffz\x04#42S02Table 'erp_frx_localhost.tabToDo' doesn't exist"
    #     self = <pymysql.connections.Connection object at 0x72055f567ed0>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/protocol.py", line 219, in raise_for_error
    #     err.raise_mysql_exception(self._data)
    #     ~~~~~~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^
    #     errno = 1146
    #     self = <pymysql.protocol.MysqlPacket object at 0x72055f532aa0>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/err.py", line 150, in raise_mysql_exception
    #     raise errorclass(errno, errval)
    #     data = b"\xffz\x04#42S02Table 'erp_frx_localhost.tabToDo' doesn't exist"
    #     errno = 1146
    #     errorclass = <class 'pymysql.err.ProgrammingError'>
    #     errval = "Table 'erp_frx_localhost.tabToDo' doesn't exist"
    # pymysql.err.ProgrammingError: (1146, "Table 'erp_frx_localhost.tabToDo' doesn't exist")
    #
  }
  {
    id = "";

    # Traceback (most recent call last):
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/custom/doctype/customize_form/test_customize_form.py", line 40, in tearDown
    #     frappe.delete_doc("Custom Field", self.field.name)
    #     ~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     self = <frappe.custom.doctype.customize_form.test_customize_form.TestCustomizeForm testMethod=test_custom_internal_links>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/__init__.py", line 1378, in delete_doc
    #     return frappe.model.delete_doc.delete_doc(
    #            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^
    #     	doctype,
    #      ^^^^^^^^
    #     ...<8 lines>...
    #     	delete_permanently,
    #      ^^^^^^^^^^^^^^^^^^^
    #     )
    #     ^
    #     delete_permanently = False
    #     doctype = 'Custom Field'
    #     flags = None
    #     for_reload = False
    #     force = False
    #     frappe = <module 'frappe' from '/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/__init__.py'>
    #     ignore_doctypes = None
    #     ignore_missing = True
    #     ignore_on_trash = False
    #     ignore_permissions = False
    #     name = 'Event-custom_test_field'
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/model/delete_doc.py", line 154, in delete_doc
    #     frappe.enqueue(
    #     ~~~~~~~~~~~~~~^
    #     	"frappe.model.delete_doc.delete_dynamic_links",
    #      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     ...<3 lines>...
    #     	enqueue_after_commit=True,
    #      ^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     )
    #     ^
    #     delete_permanently = False
    #     doc = <CustomField: Event-custom_test_field>
    #     doctype = 'Custom Field'
    #     flags = None
    #     for_reload = False
    #     force = False
    #     ignore_doctypes = []
    #     ignore_missing = True
    #     ignore_on_trash = False
    #     ignore_permissions = False
    #     is_virtual = 0
    #     name = 'Event-custom_test_field'
    #     names = ['Event-custom_test_field']
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/__init__.py", line 2271, in enqueue
    #     return frappe.utils.background_jobs.enqueue(*args, **kwargs)
    #            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^
    #     args = ('frappe.model.delete_doc.delete_dynamic_links',)
    #     frappe = <module 'frappe' from '/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/__init__.py'>
    #     kwargs = {'doctype': 'Custom Field', 'name': 'Event-custom_test_field', 'now': True, 'enqueue_after_commit': True}
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/utils/background_jobs.py", line 120, in enqueue
    #     return frappe.call(method, **kwargs)
    #            ~~~~~~~~~~~^^^^^^^^^^^^^^^^^^
    #     at_front = False
    #     call_directly = True
    #     deduplicate = False
    #     enqueue_after_commit = True
    #     event = None
    #     is_async = True
    #     job_id = 'erp.frx.localhost::a51fa2e8-4d17-4d15-a648-6210d973b4bc'
    #     job_name = None
    #     kwargs = {'doctype': 'Custom Field', 'name': 'Event-custom_test_field'}
    #     method = 'frappe.model.delete_doc.delete_dynamic_links'
    #     now = True
    #     on_failure = None
    #     on_success = None
    #     queue = 'default'
    #     timeout = None
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/__init__.py", line 1762, in call
    #     return fn(*args, **newargs)
    #     args = ()
    #     fn = <function delete_dynamic_links at 0x72056a6f22a0>
    #     kwargs = {'doctype': 'Custom Field', 'name': 'Event-custom_test_field'}
    #     newargs = {'doctype': 'Custom Field', 'name': 'Event-custom_test_field'}
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/model/delete_doc.py", line 449, in delete_dynamic_links
    #     delete_references("ToDo", doctype, name, "reference_type")
    #     ~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     doctype = 'Custom Field'
    #     name = 'Event-custom_test_field'
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/model/delete_doc.py", line 473, in delete_references
    #     frappe.db.delete(
    #     ~~~~~~~~~~~~~~~~^
    #     	doctype, {reference_doctype_field: reference_doctype, reference_name_field: reference_name}
    #      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     )
    #     ^
    #     doctype = 'ToDo'
    #     reference_doctype = 'Custom Field'
    #     reference_doctype_field = 'reference_type'
    #     reference_name = 'Event-custom_test_field'
    #     reference_name_field = 'reference_name'
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/database/database.py", line 1414, in delete
    #     return query.run(**kwargs)
    #            ~~~~~~~~~^^^^^^^^^^
    #     debug = False
    #     doctype = 'ToDo'
    #     filters = {'reference_type': 'Custom Field', 'reference_name': 'Event-custom_test_field'}
    #     kwargs = {'debug': False}
    #     query = DELETE FROM `tabToDo` WHERE `reference_type`='Custom Field' AND `reference_name`='Event-custom_test_field'
    #     self = <frappe.database.mariadb.database.MariaDBDatabase object at 0x7205665b1480>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/query_builder/utils.py", line 87, in execute_query
    #     result = frappe.db.sql(query, params, *args, **kwargs)  # nosemgrep
    #     args = ()
    #     child_queries = []
    #     execute_child_queries = <function patch_query_execute.<locals>.execute_child_queries at 0x72056c50e3e0>
    #     kwargs = {'debug': False}
    #     params = {'param1': 'Custom Field', 'param2': 'Event-custom_test_field'}
    #     prepare_query = <function patch_query_execute.<locals>.prepare_query at 0x72056c50e480>
    #     query = 'DELETE FROM `tabToDo` WHERE `reference_type`=%(param1)s AND `reference_name`=%(param2)s'
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/database/database.py", line 230, in sql
    #     self._cursor.execute(query, values)
    #     ~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^
    #     as_dict = 0
    #     as_iterator = False
    #     as_list = 0
    #     auto_commit = 0
    #     debug = False
    #     explain = False
    #     ignore_ddl = 0
    #     pluck = False
    #     query = 'DELETE FROM `tabToDo` WHERE `reference_type`=%(param1)s AND `reference_name`=%(param2)s'
    #     run = True
    #     self = <frappe.database.mariadb.database.MariaDBDatabase object at 0x7205665b1480>
    #     trace_id = None
    #     update = None
    #     values = {'param1': 'Custom Field', 'param2': 'Event-custom_test_field'}
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/cursors.py", line 153, in execute
    #     result = self._query(query)
    #     args = {'param1': 'Custom Field', 'param2': 'Event-custom_test_field'}
    #     query = "DELETE FROM `tabToDo` WHERE `reference_type`='Custom Field' AND `reference_name`='Event-custom_test_field'"
    #     self = <pymysql.cursors.Cursor object at 0x72055f41ec10>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/cursors.py", line 322, in _query
    #     conn.query(q)
    #     ~~~~~~~~~~^^^
    #     conn = <pymysql.connections.Connection object at 0x72055f567ed0>
    #     q = "DELETE FROM `tabToDo` WHERE `reference_type`='Custom Field' AND `reference_name`='Event-custom_test_field'"
    #     self = <pymysql.cursors.Cursor object at 0x72055f41ec10>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/connections.py", line 575, in query
    #     self._affected_rows = self._read_query_result(unbuffered=unbuffered)
    #                           ~~~~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^
    #     self = <pymysql.connections.Connection object at 0x72055f567ed0>
    #     sql = b"DELETE FROM `tabToDo` WHERE `reference_type`='Custom Field' AND `reference_name`='Event-custom_test_field'"
    #     unbuffered = False
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/connections.py", line 826, in _read_query_result
    #     result.read()
    #     ~~~~~~~~~~~^^
    #     result = <pymysql.connections.MySQLResult object at 0x72055f9825d0>
    #     self = <pymysql.connections.Connection object at 0x72055f567ed0>
    #     unbuffered = False
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/connections.py", line 1203, in read
    #     first_packet = self.connection._read_packet()
    #     self = <pymysql.connections.MySQLResult object at 0x72055f9825d0>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/connections.py", line 782, in _read_packet
    #     packet.raise_for_error()
    #     ~~~~~~~~~~~~~~~~~~~~~~^^
    #     btrh = 0
    #     btrl = 56
    #     buff = bytearray(b"\xffz\x04#42S02Table \'erp_frx_localhost.tabToDo\' doesn\'t exist")
    #     bytes_to_read = 56
    #     packet = <pymysql.protocol.MysqlPacket object at 0x72055f489690>
    #     packet_header = b'8\x00\x00\x01'
    #     packet_number = 1
    #     packet_type = <class 'pymysql.protocol.MysqlPacket'>
    #     recv_data = b"\xffz\x04#42S02Table 'erp_frx_localhost.tabToDo' doesn't exist"
    #     self = <pymysql.connections.Connection object at 0x72055f567ed0>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/protocol.py", line 219, in raise_for_error
    #     err.raise_mysql_exception(self._data)
    #     ~~~~~~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^
    #     errno = 1146
    #     self = <pymysql.protocol.MysqlPacket object at 0x72055f489690>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/err.py", line 150, in raise_mysql_exception
    #     raise errorclass(errno, errval)
    #     data = b"\xffz\x04#42S02Table 'erp_frx_localhost.tabToDo' doesn't exist"
    #     errno = 1146
    #     errorclass = <class 'pymysql.err.ProgrammingError'>
    #     errval = "Table 'erp_frx_localhost.tabToDo' doesn't exist"
    # pymysql.err.ProgrammingError: (1146, "Table 'erp_frx_localhost.tabToDo' doesn't exist")
    #
  }
  {
    id = "";

    # Traceback (most recent call last):
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/custom/doctype/customize_form/test_customize_form.py", line 385, in test_custom_label
    #     d.run_method("save_customization")
    #     ~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^
    #     d = <CustomizeForm: Customize Form>
    #     self = <frappe.custom.doctype.customize_form.test_customize_form.TestCustomizeForm testMethod=test_custom_label>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/model/document.py", line 1016, in run_method
    #     out = Document.hook(fn)(self, *args, **kwargs)
    #     args = ()
    #     fn = <function Document.run_method.<locals>.fn at 0x72055f2402c0>
    #     kwargs = {}
    #     method = 'save_customization'
    #     self = <CustomizeForm: Customize Form>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/model/document.py", line 1376, in composer
    #     return composed(self, method, *args, **kwargs)
    #     args = ()
    #     compose = <function Document.hook.<locals>.compose at 0x72055f2411c0>
    #     composed = <function Document.hook.<locals>.compose.<locals>.runner at 0x72055f241300>
    #     doc_events = {'*': {'on_update': ['frappe.desk.notifications.clear_doctype_notifications', 'frappe.workflow.doctype.workflow_action.workflow_action.process_workflow_actions', 'frappe.core.doctype.file.utils.attach_files_to_document', 'frappe.automation.doctype.assignment_rule.assignment_rule.apply', 'frappe.automation.doctype.assignment_rule.assignment_rule.update_due_date', 'frappe.core.doctype.user_type.user_type.apply_permissions_for_non_standard_user_type', 'frappe.search.sqlite_search.update_doc_index'], 'after_rename': ['frappe.desk.notifications.clear_doctype_notifications'], 'on_cancel': ['frappe.desk.notifications.clear_doctype_notifications', 'frappe.workflow.doctype.workflow_action.workflow_action.process_workflow_actions', 'frappe.automation.doctype.assignment_rule.assignment_rule.apply'], 'on_trash': ['frappe.desk.notifications.clear_doctype_notifications', 'frappe.workflow.doctype.workflow_action.workflow_action.process_workflow_actions', 'frappe.search.sqlite_search.delete_doc_index'], 'on_update_after_submit': ['frappe.workflow.doctype.workflow_action.workflow_action.process_workflow_actions', 'frappe.automation.doctype.assignment_rule.assignment_rule.apply', 'frappe.automation.doctype.assignment_rule.assignment_rule.update_due_date', 'frappe.core.doctype.file.utils.attach_files_to_document'], 'on_change': ['frappe.social.doctype.energy_point_rule.energy_point_rule.process_energy_points', 'frappe.automation.doctype.milestone_tracker.milestone_tracker.evaluate_milestone']}, 'Event': {'after_insert': ['frappe.integrations.doctype.google_calendar.google_calendar.insert_event_in_google_calendar'], 'on_update': ['frappe.integrations.doctype.google_calendar.google_calendar.update_event_in_google_calendar'], 'on_trash': ['frappe.integrations.doctype.google_calendar.google_calendar.delete_event_from_google_calendar']}, 'Contact': {'after_insert': ['frappe.integrations.doctype.google_contacts.google_contacts.insert_contacts_to_google_contacts'], 'on_update': ['frappe.integrations.doctype.google_contacts.google_contacts.update_contacts_to_google_contacts']}, 'DocType': {'on_update': ['frappe.cache_manager.build_domain_restriced_doctype_cache']}, 'Page': {'on_update': ['frappe.cache_manager.build_domain_restriced_page_cache']}}
    #     f = <function Document.run_method.<locals>.fn at 0x72055f2402c0>
    #     hooks = []
    #     kwargs = {}
    #     method = 'save_customization'
    #     self = <CustomizeForm: Customize Form>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/model/document.py", line 1358, in runner
    #     add_to_return_value(self, fn(self, *args, **kwargs))
    #                               ~~^^^^^^^^^^^^^^^^^^^^^^^
    #     add_to_return_value = <function Document.hook.<locals>.add_to_return_value at 0x72055f241260>
    #     args = ()
    #     fn = <function Document.run_method.<locals>.fn at 0x72055f2402c0>
    #     hooks = ()
    #     kwargs = {}
    #     method = 'save_customization'
    #     self = <CustomizeForm: Customize Form>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/model/document.py", line 1013, in fn
    #     return method_object(*args, **kwargs)
    #     args = ()
    #     kwargs = {}
    #     method = 'save_customization'
    #     method_object = <bound method CustomizeForm.save_customization of <CustomizeForm: Customize Form>>
    #     self = <CustomizeForm: Customize Form>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/utils/typing_validations.py", line 32, in wrapper
    #     return func(*args, **kwargs)
    #     apply_condition = <function whitelist.<locals>.innerfn.<locals>.<lambda> at 0x7205684df740>
    #     args = (<CustomizeForm: Customize Form>,)
    #     func = <function CustomizeForm.save_customization at 0x7205684df6a0>
    #     kwargs = {}
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/custom/doctype/customize_form/customize_form.py", line 237, in save_customization
    #     self.set_name_translation()
    #     ~~~~~~~~~~~~~~~~~~~~~~~~~^^
    #     self = <CustomizeForm: Customize Form>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/custom/doctype/customize_form/customize_form.py", line 196, in set_name_translation
    #     frappe.delete_doc("Translation", current.name)
    #     ~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     current = {'name': 'v9jr2sud8o', 'translated_text': 'Test Rename 2'}
    #     self = <CustomizeForm: Customize Form>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/__init__.py", line 1378, in delete_doc
    #     return frappe.model.delete_doc.delete_doc(
    #            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^
    #     	doctype,
    #      ^^^^^^^^
    #     ...<8 lines>...
    #     	delete_permanently,
    #      ^^^^^^^^^^^^^^^^^^^
    #     )
    #     ^
    #     delete_permanently = False
    #     doctype = 'Translation'
    #     flags = None
    #     for_reload = False
    #     force = False
    #     frappe = <module 'frappe' from '/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/__init__.py'>
    #     ignore_doctypes = None
    #     ignore_missing = True
    #     ignore_on_trash = False
    #     ignore_permissions = False
    #     name = 'v9jr2sud8o'
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/model/delete_doc.py", line 154, in delete_doc
    #     frappe.enqueue(
    #     ~~~~~~~~~~~~~~^
    #     	"frappe.model.delete_doc.delete_dynamic_links",
    #      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     ...<3 lines>...
    #     	enqueue_after_commit=True,
    #      ^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     )
    #     ^
    #     delete_permanently = False
    #     doc = <Translation: v9jr2sud8o>
    #     doctype = 'Translation'
    #     flags = None
    #     for_reload = False
    #     force = False
    #     ignore_doctypes = []
    #     ignore_missing = True
    #     ignore_on_trash = False
    #     ignore_permissions = False
    #     is_virtual = 0
    #     name = 'v9jr2sud8o'
    #     names = ['v9jr2sud8o']
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/__init__.py", line 2271, in enqueue
    #     return frappe.utils.background_jobs.enqueue(*args, **kwargs)
    #            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^
    #     args = ('frappe.model.delete_doc.delete_dynamic_links',)
    #     frappe = <module 'frappe' from '/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/__init__.py'>
    #     kwargs = {'doctype': 'Translation', 'name': 'v9jr2sud8o', 'now': True, 'enqueue_after_commit': True}
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/utils/background_jobs.py", line 120, in enqueue
    #     return frappe.call(method, **kwargs)
    #            ~~~~~~~~~~~^^^^^^^^^^^^^^^^^^
    #     at_front = False
    #     call_directly = True
    #     deduplicate = False
    #     enqueue_after_commit = True
    #     event = None
    #     is_async = True
    #     job_id = 'erp.frx.localhost::55aa48ea-66cb-47fb-ac0c-61aa4ee7c780'
    #     job_name = None
    #     kwargs = {'doctype': 'Translation', 'name': 'v9jr2sud8o'}
    #     method = 'frappe.model.delete_doc.delete_dynamic_links'
    #     now = True
    #     on_failure = None
    #     on_success = None
    #     queue = 'default'
    #     timeout = None
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/__init__.py", line 1762, in call
    #     return fn(*args, **newargs)
    #     args = ()
    #     fn = <function delete_dynamic_links at 0x72056a6f22a0>
    #     kwargs = {'doctype': 'Translation', 'name': 'v9jr2sud8o'}
    #     newargs = {'doctype': 'Translation', 'name': 'v9jr2sud8o'}
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/model/delete_doc.py", line 449, in delete_dynamic_links
    #     delete_references("ToDo", doctype, name, "reference_type")
    #     ~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     doctype = 'Translation'
    #     name = 'v9jr2sud8o'
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/model/delete_doc.py", line 473, in delete_references
    #     frappe.db.delete(
    #     ~~~~~~~~~~~~~~~~^
    #     	doctype, {reference_doctype_field: reference_doctype, reference_name_field: reference_name}
    #      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     )
    #     ^
    #     doctype = 'ToDo'
    #     reference_doctype = 'Translation'
    #     reference_doctype_field = 'reference_type'
    #     reference_name = 'v9jr2sud8o'
    #     reference_name_field = 'reference_name'
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/database/database.py", line 1414, in delete
    #     return query.run(**kwargs)
    #            ~~~~~~~~~^^^^^^^^^^
    #     debug = False
    #     doctype = 'ToDo'
    #     filters = {'reference_type': 'Translation', 'reference_name': 'v9jr2sud8o'}
    #     kwargs = {'debug': False}
    #     query = DELETE FROM `tabToDo` WHERE `reference_type`='Translation' AND `reference_name`='v9jr2sud8o'
    #     self = <frappe.database.mariadb.database.MariaDBDatabase object at 0x7205665b1480>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/query_builder/utils.py", line 87, in execute_query
    #     result = frappe.db.sql(query, params, *args, **kwargs)  # nosemgrep
    #     args = ()
    #     child_queries = []
    #     execute_child_queries = <function patch_query_execute.<locals>.execute_child_queries at 0x72056c50e3e0>
    #     kwargs = {'debug': False}
    #     params = {'param1': 'Translation', 'param2': 'v9jr2sud8o'}
    #     prepare_query = <function patch_query_execute.<locals>.prepare_query at 0x72056c50e480>
    #     query = 'DELETE FROM `tabToDo` WHERE `reference_type`=%(param1)s AND `reference_name`=%(param2)s'
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/database/database.py", line 230, in sql
    #     self._cursor.execute(query, values)
    #     ~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^
    #     as_dict = 0
    #     as_iterator = False
    #     as_list = 0
    #     auto_commit = 0
    #     debug = False
    #     explain = False
    #     ignore_ddl = 0
    #     pluck = False
    #     query = 'DELETE FROM `tabToDo` WHERE `reference_type`=%(param1)s AND `reference_name`=%(param2)s'
    #     run = True
    #     self = <frappe.database.mariadb.database.MariaDBDatabase object at 0x7205665b1480>
    #     trace_id = None
    #     update = None
    #     values = {'param1': 'Translation', 'param2': 'v9jr2sud8o'}
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/cursors.py", line 153, in execute
    #     result = self._query(query)
    #     args = {'param1': 'Translation', 'param2': 'v9jr2sud8o'}
    #     query = "DELETE FROM `tabToDo` WHERE `reference_type`='Translation' AND `reference_name`='v9jr2sud8o'"
    #     self = <pymysql.cursors.Cursor object at 0x72055f41ec10>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/cursors.py", line 322, in _query
    #     conn.query(q)
    #     ~~~~~~~~~~^^^
    #     conn = <pymysql.connections.Connection object at 0x72055f567ed0>
    #     q = "DELETE FROM `tabToDo` WHERE `reference_type`='Translation' AND `reference_name`='v9jr2sud8o'"
    #     self = <pymysql.cursors.Cursor object at 0x72055f41ec10>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/connections.py", line 575, in query
    #     self._affected_rows = self._read_query_result(unbuffered=unbuffered)
    #                           ~~~~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^
    #     self = <pymysql.connections.Connection object at 0x72055f567ed0>
    #     sql = b"DELETE FROM `tabToDo` WHERE `reference_type`='Translation' AND `reference_name`='v9jr2sud8o'"
    #     unbuffered = False
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/connections.py", line 826, in _read_query_result
    #     result.read()
    #     ~~~~~~~~~~~^^
    #     result = <pymysql.connections.MySQLResult object at 0x72055f3010d0>
    #     self = <pymysql.connections.Connection object at 0x72055f567ed0>
    #     unbuffered = False
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/connections.py", line 1203, in read
    #     first_packet = self.connection._read_packet()
    #     self = <pymysql.connections.MySQLResult object at 0x72055f3010d0>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/connections.py", line 782, in _read_packet
    #     packet.raise_for_error()
    #     ~~~~~~~~~~~~~~~~~~~~~~^^
    #     btrh = 0
    #     btrl = 56
    #     buff = bytearray(b"\xffz\x04#42S02Table \'erp_frx_localhost.tabToDo\' doesn\'t exist")
    #     bytes_to_read = 56
    #     packet = <pymysql.protocol.MysqlPacket object at 0x72055fdd65f0>
    #     packet_header = b'8\x00\x00\x01'
    #     packet_number = 1
    #     packet_type = <class 'pymysql.protocol.MysqlPacket'>
    #     recv_data = b"\xffz\x04#42S02Table 'erp_frx_localhost.tabToDo' doesn't exist"
    #     self = <pymysql.connections.Connection object at 0x72055f567ed0>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/protocol.py", line 219, in raise_for_error
    #     err.raise_mysql_exception(self._data)
    #     ~~~~~~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^
    #     errno = 1146
    #     self = <pymysql.protocol.MysqlPacket object at 0x72055fdd65f0>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/err.py", line 150, in raise_mysql_exception
    #     raise errorclass(errno, errval)
    #     data = b"\xffz\x04#42S02Table 'erp_frx_localhost.tabToDo' doesn't exist"
    #     errno = 1146
    #     errorclass = <class 'pymysql.err.ProgrammingError'>
    #     errval = "Table 'erp_frx_localhost.tabToDo' doesn't exist"
    # pymysql.err.ProgrammingError: (1146, "Table 'erp_frx_localhost.tabToDo' doesn't exist")
    #
  }
  {
    id = "";

    # Traceback (most recent call last):
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/custom/doctype/customize_form/test_customize_form.py", line 40, in tearDown
    #     frappe.delete_doc("Custom Field", self.field.name)
    #     ~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     self = <frappe.custom.doctype.customize_form.test_customize_form.TestCustomizeForm testMethod=test_custom_label>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/__init__.py", line 1378, in delete_doc
    #     return frappe.model.delete_doc.delete_doc(
    #            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^
    #     	doctype,
    #      ^^^^^^^^
    #     ...<8 lines>...
    #     	delete_permanently,
    #      ^^^^^^^^^^^^^^^^^^^
    #     )
    #     ^
    #     delete_permanently = False
    #     doctype = 'Custom Field'
    #     flags = None
    #     for_reload = False
    #     force = False
    #     frappe = <module 'frappe' from '/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/__init__.py'>
    #     ignore_doctypes = None
    #     ignore_missing = True
    #     ignore_on_trash = False
    #     ignore_permissions = False
    #     name = 'Event-custom_test_field'
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/model/delete_doc.py", line 154, in delete_doc
    #     frappe.enqueue(
    #     ~~~~~~~~~~~~~~^
    #     	"frappe.model.delete_doc.delete_dynamic_links",
    #      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     ...<3 lines>...
    #     	enqueue_after_commit=True,
    #      ^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     )
    #     ^
    #     delete_permanently = False
    #     doc = <CustomField: Event-custom_test_field>
    #     doctype = 'Custom Field'
    #     flags = None
    #     for_reload = False
    #     force = False
    #     ignore_doctypes = []
    #     ignore_missing = True
    #     ignore_on_trash = False
    #     ignore_permissions = False
    #     is_virtual = 0
    #     name = 'Event-custom_test_field'
    #     names = ['Event-custom_test_field']
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/__init__.py", line 2271, in enqueue
    #     return frappe.utils.background_jobs.enqueue(*args, **kwargs)
    #            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^
    #     args = ('frappe.model.delete_doc.delete_dynamic_links',)
    #     frappe = <module 'frappe' from '/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/__init__.py'>
    #     kwargs = {'doctype': 'Custom Field', 'name': 'Event-custom_test_field', 'now': True, 'enqueue_after_commit': True}
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/utils/background_jobs.py", line 120, in enqueue
    #     return frappe.call(method, **kwargs)
    #            ~~~~~~~~~~~^^^^^^^^^^^^^^^^^^
    #     at_front = False
    #     call_directly = True
    #     deduplicate = False
    #     enqueue_after_commit = True
    #     event = None
    #     is_async = True
    #     job_id = 'erp.frx.localhost::43dde702-229c-4eb4-af99-e3c3ffe73b29'
    #     job_name = None
    #     kwargs = {'doctype': 'Custom Field', 'name': 'Event-custom_test_field'}
    #     method = 'frappe.model.delete_doc.delete_dynamic_links'
    #     now = True
    #     on_failure = None
    #     on_success = None
    #     queue = 'default'
    #     timeout = None
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/__init__.py", line 1762, in call
    #     return fn(*args, **newargs)
    #     args = ()
    #     fn = <function delete_dynamic_links at 0x72056a6f22a0>
    #     kwargs = {'doctype': 'Custom Field', 'name': 'Event-custom_test_field'}
    #     newargs = {'doctype': 'Custom Field', 'name': 'Event-custom_test_field'}
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/model/delete_doc.py", line 449, in delete_dynamic_links
    #     delete_references("ToDo", doctype, name, "reference_type")
    #     ~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     doctype = 'Custom Field'
    #     name = 'Event-custom_test_field'
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/model/delete_doc.py", line 473, in delete_references
    #     frappe.db.delete(
    #     ~~~~~~~~~~~~~~~~^
    #     	doctype, {reference_doctype_field: reference_doctype, reference_name_field: reference_name}
    #      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     )
    #     ^
    #     doctype = 'ToDo'
    #     reference_doctype = 'Custom Field'
    #     reference_doctype_field = 'reference_type'
    #     reference_name = 'Event-custom_test_field'
    #     reference_name_field = 'reference_name'
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/database/database.py", line 1414, in delete
    #     return query.run(**kwargs)
    #            ~~~~~~~~~^^^^^^^^^^
    #     debug = False
    #     doctype = 'ToDo'
    #     filters = {'reference_type': 'Custom Field', 'reference_name': 'Event-custom_test_field'}
    #     kwargs = {'debug': False}
    #     query = DELETE FROM `tabToDo` WHERE `reference_type`='Custom Field' AND `reference_name`='Event-custom_test_field'
    #     self = <frappe.database.mariadb.database.MariaDBDatabase object at 0x7205665b1480>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/query_builder/utils.py", line 87, in execute_query
    #     result = frappe.db.sql(query, params, *args, **kwargs)  # nosemgrep
    #     args = ()
    #     child_queries = []
    #     execute_child_queries = <function patch_query_execute.<locals>.execute_child_queries at 0x72056c50e3e0>
    #     kwargs = {'debug': False}
    #     params = {'param1': 'Custom Field', 'param2': 'Event-custom_test_field'}
    #     prepare_query = <function patch_query_execute.<locals>.prepare_query at 0x72056c50e480>
    #     query = 'DELETE FROM `tabToDo` WHERE `reference_type`=%(param1)s AND `reference_name`=%(param2)s'
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/database/database.py", line 230, in sql
    #     self._cursor.execute(query, values)
    #     ~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^
    #     as_dict = 0
    #     as_iterator = False
    #     as_list = 0
    #     auto_commit = 0
    #     debug = False
    #     explain = False
    #     ignore_ddl = 0
    #     pluck = False
    #     query = 'DELETE FROM `tabToDo` WHERE `reference_type`=%(param1)s AND `reference_name`=%(param2)s'
    #     run = True
    #     self = <frappe.database.mariadb.database.MariaDBDatabase object at 0x7205665b1480>
    #     trace_id = None
    #     update = None
    #     values = {'param1': 'Custom Field', 'param2': 'Event-custom_test_field'}
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/cursors.py", line 153, in execute
    #     result = self._query(query)
    #     args = {'param1': 'Custom Field', 'param2': 'Event-custom_test_field'}
    #     query = "DELETE FROM `tabToDo` WHERE `reference_type`='Custom Field' AND `reference_name`='Event-custom_test_field'"
    #     self = <pymysql.cursors.Cursor object at 0x72055f41ec10>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/cursors.py", line 322, in _query
    #     conn.query(q)
    #     ~~~~~~~~~~^^^
    #     conn = <pymysql.connections.Connection object at 0x72055f567ed0>
    #     q = "DELETE FROM `tabToDo` WHERE `reference_type`='Custom Field' AND `reference_name`='Event-custom_test_field'"
    #     self = <pymysql.cursors.Cursor object at 0x72055f41ec10>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/connections.py", line 575, in query
    #     self._affected_rows = self._read_query_result(unbuffered=unbuffered)
    #                           ~~~~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^
    #     self = <pymysql.connections.Connection object at 0x72055f567ed0>
    #     sql = b"DELETE FROM `tabToDo` WHERE `reference_type`='Custom Field' AND `reference_name`='Event-custom_test_field'"
    #     unbuffered = False
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/connections.py", line 826, in _read_query_result
    #     result.read()
    #     ~~~~~~~~~~~^^
    #     result = <pymysql.connections.MySQLResult object at 0x72055f302510>
    #     self = <pymysql.connections.Connection object at 0x72055f567ed0>
    #     unbuffered = False
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/connections.py", line 1203, in read
    #     first_packet = self.connection._read_packet()
    #     self = <pymysql.connections.MySQLResult object at 0x72055f302510>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/connections.py", line 782, in _read_packet
    #     packet.raise_for_error()
    #     ~~~~~~~~~~~~~~~~~~~~~~^^
    #     btrh = 0
    #     btrl = 56
    #     buff = bytearray(b"\xffz\x04#42S02Table \'erp_frx_localhost.tabToDo\' doesn\'t exist")
    #     bytes_to_read = 56
    #     packet = <pymysql.protocol.MysqlPacket object at 0x72055f246c50>
    #     packet_header = b'8\x00\x00\x01'
    #     packet_number = 1
    #     packet_type = <class 'pymysql.protocol.MysqlPacket'>
    #     recv_data = b"\xffz\x04#42S02Table 'erp_frx_localhost.tabToDo' doesn't exist"
    #     self = <pymysql.connections.Connection object at 0x72055f567ed0>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/protocol.py", line 219, in raise_for_error
    #     err.raise_mysql_exception(self._data)
    #     ~~~~~~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^
    #     errno = 1146
    #     self = <pymysql.protocol.MysqlPacket object at 0x72055f246c50>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/err.py", line 150, in raise_mysql_exception
    #     raise errorclass(errno, errval)
    #     data = b"\xffz\x04#42S02Table 'erp_frx_localhost.tabToDo' doesn't exist"
    #     errno = 1146
    #     errorclass = <class 'pymysql.err.ProgrammingError'>
    #     errval = "Table 'erp_frx_localhost.tabToDo' doesn't exist"
    # pymysql.err.ProgrammingError: (1146, "Table 'erp_frx_localhost.tabToDo' doesn't exist")
    #
  }
  {
    id = "";

    # Traceback (most recent call last):
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/custom/doctype/customize_form/test_customize_form.py", line 40, in tearDown
    #     frappe.delete_doc("Custom Field", self.field.name)
    #     ~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     self = <frappe.custom.doctype.customize_form.test_customize_form.TestCustomizeForm testMethod=test_custom_link>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/__init__.py", line 1378, in delete_doc
    #     return frappe.model.delete_doc.delete_doc(
    #            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^
    #     	doctype,
    #      ^^^^^^^^
    #     ...<8 lines>...
    #     	delete_permanently,
    #      ^^^^^^^^^^^^^^^^^^^
    #     )
    #     ^
    #     delete_permanently = False
    #     doctype = 'Custom Field'
    #     flags = None
    #     for_reload = False
    #     force = False
    #     frappe = <module 'frappe' from '/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/__init__.py'>
    #     ignore_doctypes = None
    #     ignore_missing = True
    #     ignore_on_trash = False
    #     ignore_permissions = False
    #     name = 'Event-custom_test_field'
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/model/delete_doc.py", line 154, in delete_doc
    #     frappe.enqueue(
    #     ~~~~~~~~~~~~~~^
    #     	"frappe.model.delete_doc.delete_dynamic_links",
    #      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     ...<3 lines>...
    #     	enqueue_after_commit=True,
    #      ^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     )
    #     ^
    #     delete_permanently = False
    #     doc = <CustomField: Event-custom_test_field>
    #     doctype = 'Custom Field'
    #     flags = None
    #     for_reload = False
    #     force = False
    #     ignore_doctypes = []
    #     ignore_missing = True
    #     ignore_on_trash = False
    #     ignore_permissions = False
    #     is_virtual = 0
    #     name = 'Event-custom_test_field'
    #     names = ['Event-custom_test_field']
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/__init__.py", line 2271, in enqueue
    #     return frappe.utils.background_jobs.enqueue(*args, **kwargs)
    #            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^
    #     args = ('frappe.model.delete_doc.delete_dynamic_links',)
    #     frappe = <module 'frappe' from '/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/__init__.py'>
    #     kwargs = {'doctype': 'Custom Field', 'name': 'Event-custom_test_field', 'now': True, 'enqueue_after_commit': True}
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/utils/background_jobs.py", line 120, in enqueue
    #     return frappe.call(method, **kwargs)
    #            ~~~~~~~~~~~^^^^^^^^^^^^^^^^^^
    #     at_front = False
    #     call_directly = True
    #     deduplicate = False
    #     enqueue_after_commit = True
    #     event = None
    #     is_async = True
    #     job_id = 'erp.frx.localhost::1a65be0d-0aea-478b-9448-e677a1b0e9a4'
    #     job_name = None
    #     kwargs = {'doctype': 'Custom Field', 'name': 'Event-custom_test_field'}
    #     method = 'frappe.model.delete_doc.delete_dynamic_links'
    #     now = True
    #     on_failure = None
    #     on_success = None
    #     queue = 'default'
    #     timeout = None
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/__init__.py", line 1762, in call
    #     return fn(*args, **newargs)
    #     args = ()
    #     fn = <function delete_dynamic_links at 0x72056a6f22a0>
    #     kwargs = {'doctype': 'Custom Field', 'name': 'Event-custom_test_field'}
    #     newargs = {'doctype': 'Custom Field', 'name': 'Event-custom_test_field'}
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/model/delete_doc.py", line 449, in delete_dynamic_links
    #     delete_references("ToDo", doctype, name, "reference_type")
    #     ~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     doctype = 'Custom Field'
    #     name = 'Event-custom_test_field'
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/model/delete_doc.py", line 473, in delete_references
    #     frappe.db.delete(
    #     ~~~~~~~~~~~~~~~~^
    #     	doctype, {reference_doctype_field: reference_doctype, reference_name_field: reference_name}
    #      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     )
    #     ^
    #     doctype = 'ToDo'
    #     reference_doctype = 'Custom Field'
    #     reference_doctype_field = 'reference_type'
    #     reference_name = 'Event-custom_test_field'
    #     reference_name_field = 'reference_name'
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/database/database.py", line 1414, in delete
    #     return query.run(**kwargs)
    #            ~~~~~~~~~^^^^^^^^^^
    #     debug = False
    #     doctype = 'ToDo'
    #     filters = {'reference_type': 'Custom Field', 'reference_name': 'Event-custom_test_field'}
    #     kwargs = {'debug': False}
    #     query = DELETE FROM `tabToDo` WHERE `reference_type`='Custom Field' AND `reference_name`='Event-custom_test_field'
    #     self = <frappe.database.mariadb.database.MariaDBDatabase object at 0x7205665b1480>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/query_builder/utils.py", line 87, in execute_query
    #     result = frappe.db.sql(query, params, *args, **kwargs)  # nosemgrep
    #     args = ()
    #     child_queries = []
    #     execute_child_queries = <function patch_query_execute.<locals>.execute_child_queries at 0x72056c50e3e0>
    #     kwargs = {'debug': False}
    #     params = {'param1': 'Custom Field', 'param2': 'Event-custom_test_field'}
    #     prepare_query = <function patch_query_execute.<locals>.prepare_query at 0x72056c50e480>
    #     query = 'DELETE FROM `tabToDo` WHERE `reference_type`=%(param1)s AND `reference_name`=%(param2)s'
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/database/database.py", line 230, in sql
    #     self._cursor.execute(query, values)
    #     ~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^
    #     as_dict = 0
    #     as_iterator = False
    #     as_list = 0
    #     auto_commit = 0
    #     debug = False
    #     explain = False
    #     ignore_ddl = 0
    #     pluck = False
    #     query = 'DELETE FROM `tabToDo` WHERE `reference_type`=%(param1)s AND `reference_name`=%(param2)s'
    #     run = True
    #     self = <frappe.database.mariadb.database.MariaDBDatabase object at 0x7205665b1480>
    #     trace_id = None
    #     update = None
    #     values = {'param1': 'Custom Field', 'param2': 'Event-custom_test_field'}
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/cursors.py", line 153, in execute
    #     result = self._query(query)
    #     args = {'param1': 'Custom Field', 'param2': 'Event-custom_test_field'}
    #     query = "DELETE FROM `tabToDo` WHERE `reference_type`='Custom Field' AND `reference_name`='Event-custom_test_field'"
    #     self = <pymysql.cursors.Cursor object at 0x72055f41ec10>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/cursors.py", line 322, in _query
    #     conn.query(q)
    #     ~~~~~~~~~~^^^
    #     conn = <pymysql.connections.Connection object at 0x72055f567ed0>
    #     q = "DELETE FROM `tabToDo` WHERE `reference_type`='Custom Field' AND `reference_name`='Event-custom_test_field'"
    #     self = <pymysql.cursors.Cursor object at 0x72055f41ec10>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/connections.py", line 575, in query
    #     self._affected_rows = self._read_query_result(unbuffered=unbuffered)
    #                           ~~~~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^
    #     self = <pymysql.connections.Connection object at 0x72055f567ed0>
    #     sql = b"DELETE FROM `tabToDo` WHERE `reference_type`='Custom Field' AND `reference_name`='Event-custom_test_field'"
    #     unbuffered = False
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/connections.py", line 826, in _read_query_result
    #     result.read()
    #     ~~~~~~~~~~~^^
    #     result = <pymysql.connections.MySQLResult object at 0x72055f4cc950>
    #     self = <pymysql.connections.Connection object at 0x72055f567ed0>
    #     unbuffered = False
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/connections.py", line 1203, in read
    #     first_packet = self.connection._read_packet()
    #     self = <pymysql.connections.MySQLResult object at 0x72055f4cc950>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/connections.py", line 782, in _read_packet
    #     packet.raise_for_error()
    #     ~~~~~~~~~~~~~~~~~~~~~~^^
    #     btrh = 0
    #     btrl = 56
    #     buff = bytearray(b"\xffz\x04#42S02Table \'erp_frx_localhost.tabToDo\' doesn\'t exist")
    #     bytes_to_read = 56
    #     packet = <pymysql.protocol.MysqlPacket object at 0x72055f245330>
    #     packet_header = b'8\x00\x00\x01'
    #     packet_number = 1
    #     packet_type = <class 'pymysql.protocol.MysqlPacket'>
    #     recv_data = b"\xffz\x04#42S02Table 'erp_frx_localhost.tabToDo' doesn't exist"
    #     self = <pymysql.connections.Connection object at 0x72055f567ed0>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/protocol.py", line 219, in raise_for_error
    #     err.raise_mysql_exception(self._data)
    #     ~~~~~~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^
    #     errno = 1146
    #     self = <pymysql.protocol.MysqlPacket object at 0x72055f245330>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/err.py", line 150, in raise_mysql_exception
    #     raise errorclass(errno, errval)
    #     data = b"\xffz\x04#42S02Table 'erp_frx_localhost.tabToDo' doesn't exist"
    #     errno = 1146
    #     errorclass = <class 'pymysql.err.ProgrammingError'>
    #     errval = "Table 'erp_frx_localhost.tabToDo' doesn't exist"
    # pymysql.err.ProgrammingError: (1146, "Table 'erp_frx_localhost.tabToDo' doesn't exist")
    #
  }
  {
    id = "";

    # Traceback (most recent call last):
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/custom/doctype/customize_form/test_customize_form.py", line 40, in tearDown
    #     frappe.delete_doc("Custom Field", self.field.name)
    #     ~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     self = <frappe.custom.doctype.customize_form.test_customize_form.TestCustomizeForm testMethod=test_fetch_to_customize>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/__init__.py", line 1378, in delete_doc
    #     return frappe.model.delete_doc.delete_doc(
    #            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^
    #     	doctype,
    #      ^^^^^^^^
    #     ...<8 lines>...
    #     	delete_permanently,
    #      ^^^^^^^^^^^^^^^^^^^
    #     )
    #     ^
    #     delete_permanently = False
    #     doctype = 'Custom Field'
    #     flags = None
    #     for_reload = False
    #     force = False
    #     frappe = <module 'frappe' from '/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/__init__.py'>
    #     ignore_doctypes = None
    #     ignore_missing = True
    #     ignore_on_trash = False
    #     ignore_permissions = False
    #     name = 'Event-custom_test_field'
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/model/delete_doc.py", line 154, in delete_doc
    #     frappe.enqueue(
    #     ~~~~~~~~~~~~~~^
    #     	"frappe.model.delete_doc.delete_dynamic_links",
    #      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     ...<3 lines>...
    #     	enqueue_after_commit=True,
    #      ^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     )
    #     ^
    #     delete_permanently = False
    #     doc = <CustomField: Event-custom_test_field>
    #     doctype = 'Custom Field'
    #     flags = None
    #     for_reload = False
    #     force = False
    #     ignore_doctypes = []
    #     ignore_missing = True
    #     ignore_on_trash = False
    #     ignore_permissions = False
    #     is_virtual = 0
    #     name = 'Event-custom_test_field'
    #     names = ['Event-custom_test_field']
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/__init__.py", line 2271, in enqueue
    #     return frappe.utils.background_jobs.enqueue(*args, **kwargs)
    #            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^
    #     args = ('frappe.model.delete_doc.delete_dynamic_links',)
    #     frappe = <module 'frappe' from '/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/__init__.py'>
    #     kwargs = {'doctype': 'Custom Field', 'name': 'Event-custom_test_field', 'now': True, 'enqueue_after_commit': True}
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/utils/background_jobs.py", line 120, in enqueue
    #     return frappe.call(method, **kwargs)
    #            ~~~~~~~~~~~^^^^^^^^^^^^^^^^^^
    #     at_front = False
    #     call_directly = True
    #     deduplicate = False
    #     enqueue_after_commit = True
    #     event = None
    #     is_async = True
    #     job_id = 'erp.frx.localhost::eb8af856-beec-4fcf-9467-8da9b95378a7'
    #     job_name = None
    #     kwargs = {'doctype': 'Custom Field', 'name': 'Event-custom_test_field'}
    #     method = 'frappe.model.delete_doc.delete_dynamic_links'
    #     now = True
    #     on_failure = None
    #     on_success = None
    #     queue = 'default'
    #     timeout = None
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/__init__.py", line 1762, in call
    #     return fn(*args, **newargs)
    #     args = ()
    #     fn = <function delete_dynamic_links at 0x72056a6f22a0>
    #     kwargs = {'doctype': 'Custom Field', 'name': 'Event-custom_test_field'}
    #     newargs = {'doctype': 'Custom Field', 'name': 'Event-custom_test_field'}
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/model/delete_doc.py", line 449, in delete_dynamic_links
    #     delete_references("ToDo", doctype, name, "reference_type")
    #     ~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     doctype = 'Custom Field'
    #     name = 'Event-custom_test_field'
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/model/delete_doc.py", line 473, in delete_references
    #     frappe.db.delete(
    #     ~~~~~~~~~~~~~~~~^
    #     	doctype, {reference_doctype_field: reference_doctype, reference_name_field: reference_name}
    #      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     )
    #     ^
    #     doctype = 'ToDo'
    #     reference_doctype = 'Custom Field'
    #     reference_doctype_field = 'reference_type'
    #     reference_name = 'Event-custom_test_field'
    #     reference_name_field = 'reference_name'
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/database/database.py", line 1414, in delete
    #     return query.run(**kwargs)
    #            ~~~~~~~~~^^^^^^^^^^
    #     debug = False
    #     doctype = 'ToDo'
    #     filters = {'reference_type': 'Custom Field', 'reference_name': 'Event-custom_test_field'}
    #     kwargs = {'debug': False}
    #     query = DELETE FROM `tabToDo` WHERE `reference_type`='Custom Field' AND `reference_name`='Event-custom_test_field'
    #     self = <frappe.database.mariadb.database.MariaDBDatabase object at 0x7205665b1480>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/query_builder/utils.py", line 87, in execute_query
    #     result = frappe.db.sql(query, params, *args, **kwargs)  # nosemgrep
    #     args = ()
    #     child_queries = []
    #     execute_child_queries = <function patch_query_execute.<locals>.execute_child_queries at 0x72056c50e3e0>
    #     kwargs = {'debug': False}
    #     params = {'param1': 'Custom Field', 'param2': 'Event-custom_test_field'}
    #     prepare_query = <function patch_query_execute.<locals>.prepare_query at 0x72056c50e480>
    #     query = 'DELETE FROM `tabToDo` WHERE `reference_type`=%(param1)s AND `reference_name`=%(param2)s'
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/database/database.py", line 230, in sql
    #     self._cursor.execute(query, values)
    #     ~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^
    #     as_dict = 0
    #     as_iterator = False
    #     as_list = 0
    #     auto_commit = 0
    #     debug = False
    #     explain = False
    #     ignore_ddl = 0
    #     pluck = False
    #     query = 'DELETE FROM `tabToDo` WHERE `reference_type`=%(param1)s AND `reference_name`=%(param2)s'
    #     run = True
    #     self = <frappe.database.mariadb.database.MariaDBDatabase object at 0x7205665b1480>
    #     trace_id = None
    #     update = None
    #     values = {'param1': 'Custom Field', 'param2': 'Event-custom_test_field'}
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/cursors.py", line 153, in execute
    #     result = self._query(query)
    #     args = {'param1': 'Custom Field', 'param2': 'Event-custom_test_field'}
    #     query = "DELETE FROM `tabToDo` WHERE `reference_type`='Custom Field' AND `reference_name`='Event-custom_test_field'"
    #     self = <pymysql.cursors.Cursor object at 0x72055f41ec10>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/cursors.py", line 322, in _query
    #     conn.query(q)
    #     ~~~~~~~~~~^^^
    #     conn = <pymysql.connections.Connection object at 0x72055f567ed0>
    #     q = "DELETE FROM `tabToDo` WHERE `reference_type`='Custom Field' AND `reference_name`='Event-custom_test_field'"
    #     self = <pymysql.cursors.Cursor object at 0x72055f41ec10>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/connections.py", line 575, in query
    #     self._affected_rows = self._read_query_result(unbuffered=unbuffered)
    #                           ~~~~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^
    #     self = <pymysql.connections.Connection object at 0x72055f567ed0>
    #     sql = b"DELETE FROM `tabToDo` WHERE `reference_type`='Custom Field' AND `reference_name`='Event-custom_test_field'"
    #     unbuffered = False
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/connections.py", line 826, in _read_query_result
    #     result.read()
    #     ~~~~~~~~~~~^^
    #     result = <pymysql.connections.MySQLResult object at 0x72055f301850>
    #     self = <pymysql.connections.Connection object at 0x72055f567ed0>
    #     unbuffered = False
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/connections.py", line 1203, in read
    #     first_packet = self.connection._read_packet()
    #     self = <pymysql.connections.MySQLResult object at 0x72055f301850>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/connections.py", line 782, in _read_packet
    #     packet.raise_for_error()
    #     ~~~~~~~~~~~~~~~~~~~~~~^^
    #     btrh = 0
    #     btrl = 56
    #     buff = bytearray(b"\xffz\x04#42S02Table \'erp_frx_localhost.tabToDo\' doesn\'t exist")
    #     bytes_to_read = 56
    #     packet = <pymysql.protocol.MysqlPacket object at 0x72055f2f26e0>
    #     packet_header = b'8\x00\x00\x01'
    #     packet_number = 1
    #     packet_type = <class 'pymysql.protocol.MysqlPacket'>
    #     recv_data = b"\xffz\x04#42S02Table 'erp_frx_localhost.tabToDo' doesn't exist"
    #     self = <pymysql.connections.Connection object at 0x72055f567ed0>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/protocol.py", line 219, in raise_for_error
    #     err.raise_mysql_exception(self._data)
    #     ~~~~~~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^
    #     errno = 1146
    #     self = <pymysql.protocol.MysqlPacket object at 0x72055f2f26e0>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/err.py", line 150, in raise_mysql_exception
    #     raise errorclass(errno, errval)
    #     data = b"\xffz\x04#42S02Table 'erp_frx_localhost.tabToDo' doesn't exist"
    #     errno = 1146
    #     errorclass = <class 'pymysql.err.ProgrammingError'>
    #     errval = "Table 'erp_frx_localhost.tabToDo' doesn't exist"
    # pymysql.err.ProgrammingError: (1146, "Table 'erp_frx_localhost.tabToDo' doesn't exist")
    #
  }
  {
    id = "";

    # Traceback (most recent call last):
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/custom/doctype/customize_form/test_customize_form.py", line 184, in test_reset_to_defaults
    #     d.run_method("reset_to_defaults")
    #     ~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^
    #     d = <CustomizeForm: Customize Form>
    #     self = <frappe.custom.doctype.customize_form.test_customize_form.TestCustomizeForm testMethod=test_reset_to_defaults>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/model/document.py", line 1016, in run_method
    #     out = Document.hook(fn)(self, *args, **kwargs)
    #     args = ()
    #     fn = <function Document.run_method.<locals>.fn at 0x72055f241120>
    #     kwargs = {}
    #     method = 'reset_to_defaults'
    #     self = <CustomizeForm: Customize Form>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/model/document.py", line 1376, in composer
    #     return composed(self, method, *args, **kwargs)
    #     args = ()
    #     compose = <function Document.hook.<locals>.compose at 0x72055f35f740>
    #     composed = <function Document.hook.<locals>.compose.<locals>.runner at 0x72055f35fa60>
    #     doc_events = {'*': {'on_update': ['frappe.desk.notifications.clear_doctype_notifications', 'frappe.workflow.doctype.workflow_action.workflow_action.process_workflow_actions', 'frappe.core.doctype.file.utils.attach_files_to_document', 'frappe.automation.doctype.assignment_rule.assignment_rule.apply', 'frappe.automation.doctype.assignment_rule.assignment_rule.update_due_date', 'frappe.core.doctype.user_type.user_type.apply_permissions_for_non_standard_user_type', 'frappe.search.sqlite_search.update_doc_index'], 'after_rename': ['frappe.desk.notifications.clear_doctype_notifications'], 'on_cancel': ['frappe.desk.notifications.clear_doctype_notifications', 'frappe.workflow.doctype.workflow_action.workflow_action.process_workflow_actions', 'frappe.automation.doctype.assignment_rule.assignment_rule.apply'], 'on_trash': ['frappe.desk.notifications.clear_doctype_notifications', 'frappe.workflow.doctype.workflow_action.workflow_action.process_workflow_actions', 'frappe.search.sqlite_search.delete_doc_index'], 'on_update_after_submit': ['frappe.workflow.doctype.workflow_action.workflow_action.process_workflow_actions', 'frappe.automation.doctype.assignment_rule.assignment_rule.apply', 'frappe.automation.doctype.assignment_rule.assignment_rule.update_due_date', 'frappe.core.doctype.file.utils.attach_files_to_document'], 'on_change': ['frappe.social.doctype.energy_point_rule.energy_point_rule.process_energy_points', 'frappe.automation.doctype.milestone_tracker.milestone_tracker.evaluate_milestone']}, 'Event': {'after_insert': ['frappe.integrations.doctype.google_calendar.google_calendar.insert_event_in_google_calendar'], 'on_update': ['frappe.integrations.doctype.google_calendar.google_calendar.update_event_in_google_calendar'], 'on_trash': ['frappe.integrations.doctype.google_calendar.google_calendar.delete_event_from_google_calendar']}, 'Contact': {'after_insert': ['frappe.integrations.doctype.google_contacts.google_contacts.insert_contacts_to_google_contacts'], 'on_update': ['frappe.integrations.doctype.google_contacts.google_contacts.update_contacts_to_google_contacts']}, 'DocType': {'on_update': ['frappe.cache_manager.build_domain_restriced_doctype_cache']}, 'Page': {'on_update': ['frappe.cache_manager.build_domain_restriced_page_cache']}}
    #     f = <function Document.run_method.<locals>.fn at 0x72055f241120>
    #     hooks = []
    #     kwargs = {}
    #     method = 'reset_to_defaults'
    #     self = <CustomizeForm: Customize Form>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/model/document.py", line 1358, in runner
    #     add_to_return_value(self, fn(self, *args, **kwargs))
    #                               ~~^^^^^^^^^^^^^^^^^^^^^^^
    #     add_to_return_value = <function Document.hook.<locals>.add_to_return_value at 0x72055f240ea0>
    #     args = ()
    #     fn = <function Document.run_method.<locals>.fn at 0x72055f241120>
    #     hooks = ()
    #     kwargs = {}
    #     method = 'reset_to_defaults'
    #     self = <CustomizeForm: Customize Form>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/model/document.py", line 1013, in fn
    #     return method_object(*args, **kwargs)
    #     args = ()
    #     kwargs = {}
    #     method = 'reset_to_defaults'
    #     method_object = <bound method CustomizeForm.reset_to_defaults of <CustomizeForm: Customize Form>>
    #     self = <CustomizeForm: Customize Form>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/utils/typing_validations.py", line 32, in wrapper
    #     return func(*args, **kwargs)
    #     apply_condition = <function whitelist.<locals>.innerfn.<locals>.<lambda> at 0x720568524360>
    #     args = (<CustomizeForm: Customize Form>,)
    #     func = <function CustomizeForm.reset_to_defaults at 0x7205685242c0>
    #     kwargs = {}
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/custom/doctype/customize_form/customize_form.py", line 630, in reset_to_defaults
    #     reset_customization(self.doc_type)
    #     ~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^
    #     self = <CustomizeForm: Customize Form>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/custom/doctype/customize_form/customize_form.py", line 703, in reset_customization
    #     frappe.delete_doc("Custom Field", field)
    #     ~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^
    #     custom_fields = ['Event-custom_test_field']
    #     doctype = 'Event'
    #     field = 'Event-custom_test_field'
    #     setters = []
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/__init__.py", line 1378, in delete_doc
    #     return frappe.model.delete_doc.delete_doc(
    #            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^
    #     	doctype,
    #      ^^^^^^^^
    #     ...<8 lines>...
    #     	delete_permanently,
    #      ^^^^^^^^^^^^^^^^^^^
    #     )
    #     ^
    #     delete_permanently = False
    #     doctype = 'Custom Field'
    #     flags = None
    #     for_reload = False
    #     force = False
    #     frappe = <module 'frappe' from '/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/__init__.py'>
    #     ignore_doctypes = None
    #     ignore_missing = True
    #     ignore_on_trash = False
    #     ignore_permissions = False
    #     name = 'Event-custom_test_field'
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/model/delete_doc.py", line 154, in delete_doc
    #     frappe.enqueue(
    #     ~~~~~~~~~~~~~~^
    #     	"frappe.model.delete_doc.delete_dynamic_links",
    #      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     ...<3 lines>...
    #     	enqueue_after_commit=True,
    #      ^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     )
    #     ^
    #     delete_permanently = False
    #     doc = <CustomField: Event-custom_test_field>
    #     doctype = 'Custom Field'
    #     flags = None
    #     for_reload = False
    #     force = False
    #     ignore_doctypes = []
    #     ignore_missing = True
    #     ignore_on_trash = False
    #     ignore_permissions = False
    #     is_virtual = 0
    #     name = 'Event-custom_test_field'
    #     names = ['Event-custom_test_field']
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/__init__.py", line 2271, in enqueue
    #     return frappe.utils.background_jobs.enqueue(*args, **kwargs)
    #            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^
    #     args = ('frappe.model.delete_doc.delete_dynamic_links',)
    #     frappe = <module 'frappe' from '/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/__init__.py'>
    #     kwargs = {'doctype': 'Custom Field', 'name': 'Event-custom_test_field', 'now': True, 'enqueue_after_commit': True}
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/utils/background_jobs.py", line 120, in enqueue
    #     return frappe.call(method, **kwargs)
    #            ~~~~~~~~~~~^^^^^^^^^^^^^^^^^^
    #     at_front = False
    #     call_directly = True
    #     deduplicate = False
    #     enqueue_after_commit = True
    #     event = None
    #     is_async = True
    #     job_id = 'erp.frx.localhost::6eaad819-035b-4d4e-b810-563a52703ef2'
    #     job_name = None
    #     kwargs = {'doctype': 'Custom Field', 'name': 'Event-custom_test_field'}
    #     method = 'frappe.model.delete_doc.delete_dynamic_links'
    #     now = True
    #     on_failure = None
    #     on_success = None
    #     queue = 'default'
    #     timeout = None
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/__init__.py", line 1762, in call
    #     return fn(*args, **newargs)
    #     args = ()
    #     fn = <function delete_dynamic_links at 0x72056a6f22a0>
    #     kwargs = {'doctype': 'Custom Field', 'name': 'Event-custom_test_field'}
    #     newargs = {'doctype': 'Custom Field', 'name': 'Event-custom_test_field'}
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/model/delete_doc.py", line 449, in delete_dynamic_links
    #     delete_references("ToDo", doctype, name, "reference_type")
    #     ~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     doctype = 'Custom Field'
    #     name = 'Event-custom_test_field'
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/model/delete_doc.py", line 473, in delete_references
    #     frappe.db.delete(
    #     ~~~~~~~~~~~~~~~~^
    #     	doctype, {reference_doctype_field: reference_doctype, reference_name_field: reference_name}
    #      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     )
    #     ^
    #     doctype = 'ToDo'
    #     reference_doctype = 'Custom Field'
    #     reference_doctype_field = 'reference_type'
    #     reference_name = 'Event-custom_test_field'
    #     reference_name_field = 'reference_name'
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/database/database.py", line 1414, in delete
    #     return query.run(**kwargs)
    #            ~~~~~~~~~^^^^^^^^^^
    #     debug = False
    #     doctype = 'ToDo'
    #     filters = {'reference_type': 'Custom Field', 'reference_name': 'Event-custom_test_field'}
    #     kwargs = {'debug': False}
    #     query = DELETE FROM `tabToDo` WHERE `reference_type`='Custom Field' AND `reference_name`='Event-custom_test_field'
    #     self = <frappe.database.mariadb.database.MariaDBDatabase object at 0x7205665b1480>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/query_builder/utils.py", line 87, in execute_query
    #     result = frappe.db.sql(query, params, *args, **kwargs)  # nosemgrep
    #     args = ()
    #     child_queries = []
    #     execute_child_queries = <function patch_query_execute.<locals>.execute_child_queries at 0x72056c50e3e0>
    #     kwargs = {'debug': False}
    #     params = {'param1': 'Custom Field', 'param2': 'Event-custom_test_field'}
    #     prepare_query = <function patch_query_execute.<locals>.prepare_query at 0x72056c50e480>
    #     query = 'DELETE FROM `tabToDo` WHERE `reference_type`=%(param1)s AND `reference_name`=%(param2)s'
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/database/database.py", line 230, in sql
    #     self._cursor.execute(query, values)
    #     ~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^
    #     as_dict = 0
    #     as_iterator = False
    #     as_list = 0
    #     auto_commit = 0
    #     debug = False
    #     explain = False
    #     ignore_ddl = 0
    #     pluck = False
    #     query = 'DELETE FROM `tabToDo` WHERE `reference_type`=%(param1)s AND `reference_name`=%(param2)s'
    #     run = True
    #     self = <frappe.database.mariadb.database.MariaDBDatabase object at 0x7205665b1480>
    #     trace_id = None
    #     update = None
    #     values = {'param1': 'Custom Field', 'param2': 'Event-custom_test_field'}
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/cursors.py", line 153, in execute
    #     result = self._query(query)
    #     args = {'param1': 'Custom Field', 'param2': 'Event-custom_test_field'}
    #     query = "DELETE FROM `tabToDo` WHERE `reference_type`='Custom Field' AND `reference_name`='Event-custom_test_field'"
    #     self = <pymysql.cursors.Cursor object at 0x72055f41ec10>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/cursors.py", line 322, in _query
    #     conn.query(q)
    #     ~~~~~~~~~~^^^
    #     conn = <pymysql.connections.Connection object at 0x72055f567ed0>
    #     q = "DELETE FROM `tabToDo` WHERE `reference_type`='Custom Field' AND `reference_name`='Event-custom_test_field'"
    #     self = <pymysql.cursors.Cursor object at 0x72055f41ec10>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/connections.py", line 575, in query
    #     self._affected_rows = self._read_query_result(unbuffered=unbuffered)
    #                           ~~~~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^
    #     self = <pymysql.connections.Connection object at 0x72055f567ed0>
    #     sql = b"DELETE FROM `tabToDo` WHERE `reference_type`='Custom Field' AND `reference_name`='Event-custom_test_field'"
    #     unbuffered = False
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/connections.py", line 826, in _read_query_result
    #     result.read()
    #     ~~~~~~~~~~~^^
    #     result = <pymysql.connections.MySQLResult object at 0x72055f301550>
    #     self = <pymysql.connections.Connection object at 0x72055f567ed0>
    #     unbuffered = False
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/connections.py", line 1203, in read
    #     first_packet = self.connection._read_packet()
    #     self = <pymysql.connections.MySQLResult object at 0x72055f301550>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/connections.py", line 782, in _read_packet
    #     packet.raise_for_error()
    #     ~~~~~~~~~~~~~~~~~~~~~~^^
    #     btrh = 0
    #     btrl = 56
    #     buff = bytearray(b"\xffz\x04#42S02Table \'erp_frx_localhost.tabToDo\' doesn\'t exist")
    #     bytes_to_read = 56
    #     packet = <pymysql.protocol.MysqlPacket object at 0x72055f6e24a0>
    #     packet_header = b'8\x00\x00\x01'
    #     packet_number = 1
    #     packet_type = <class 'pymysql.protocol.MysqlPacket'>
    #     recv_data = b"\xffz\x04#42S02Table 'erp_frx_localhost.tabToDo' doesn't exist"
    #     self = <pymysql.connections.Connection object at 0x72055f567ed0>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/protocol.py", line 219, in raise_for_error
    #     err.raise_mysql_exception(self._data)
    #     ~~~~~~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^
    #     errno = 1146
    #     self = <pymysql.protocol.MysqlPacket object at 0x72055f6e24a0>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/err.py", line 150, in raise_mysql_exception
    #     raise errorclass(errno, errval)
    #     data = b"\xffz\x04#42S02Table 'erp_frx_localhost.tabToDo' doesn't exist"
    #     errno = 1146
    #     errorclass = <class 'pymysql.err.ProgrammingError'>
    #     errval = "Table 'erp_frx_localhost.tabToDo' doesn't exist"
    # pymysql.err.ProgrammingError: (1146, "Table 'erp_frx_localhost.tabToDo' doesn't exist")
    #
  }
  {
    id = "";

    # Traceback (most recent call last):
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/custom/doctype/customize_form/test_customize_form.py", line 40, in tearDown
    #     frappe.delete_doc("Custom Field", self.field.name)
    #     ~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     self = <frappe.custom.doctype.customize_form.test_customize_form.TestCustomizeForm testMethod=test_save_customization_custom_field_property>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/__init__.py", line 1378, in delete_doc
    #     return frappe.model.delete_doc.delete_doc(
    #            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^
    #     	doctype,
    #      ^^^^^^^^
    #     ...<8 lines>...
    #     	delete_permanently,
    #      ^^^^^^^^^^^^^^^^^^^
    #     )
    #     ^
    #     delete_permanently = False
    #     doctype = 'Custom Field'
    #     flags = None
    #     for_reload = False
    #     force = False
    #     frappe = <module 'frappe' from '/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/__init__.py'>
    #     ignore_doctypes = None
    #     ignore_missing = True
    #     ignore_on_trash = False
    #     ignore_permissions = False
    #     name = 'Event-custom_test_field'
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/model/delete_doc.py", line 154, in delete_doc
    #     frappe.enqueue(
    #     ~~~~~~~~~~~~~~^
    #     	"frappe.model.delete_doc.delete_dynamic_links",
    #      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     ...<3 lines>...
    #     	enqueue_after_commit=True,
    #      ^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     )
    #     ^
    #     delete_permanently = False
    #     doc = <CustomField: Event-custom_test_field>
    #     doctype = 'Custom Field'
    #     flags = None
    #     for_reload = False
    #     force = False
    #     ignore_doctypes = []
    #     ignore_missing = True
    #     ignore_on_trash = False
    #     ignore_permissions = False
    #     is_virtual = 0
    #     name = 'Event-custom_test_field'
    #     names = ['Event-custom_test_field']
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/__init__.py", line 2271, in enqueue
    #     return frappe.utils.background_jobs.enqueue(*args, **kwargs)
    #            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^
    #     args = ('frappe.model.delete_doc.delete_dynamic_links',)
    #     frappe = <module 'frappe' from '/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/__init__.py'>
    #     kwargs = {'doctype': 'Custom Field', 'name': 'Event-custom_test_field', 'now': True, 'enqueue_after_commit': True}
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/utils/background_jobs.py", line 120, in enqueue
    #     return frappe.call(method, **kwargs)
    #            ~~~~~~~~~~~^^^^^^^^^^^^^^^^^^
    #     at_front = False
    #     call_directly = True
    #     deduplicate = False
    #     enqueue_after_commit = True
    #     event = None
    #     is_async = True
    #     job_id = 'erp.frx.localhost::728c8735-ee12-4ef5-bea1-dff128cdf5de'
    #     job_name = None
    #     kwargs = {'doctype': 'Custom Field', 'name': 'Event-custom_test_field'}
    #     method = 'frappe.model.delete_doc.delete_dynamic_links'
    #     now = True
    #     on_failure = None
    #     on_success = None
    #     queue = 'default'
    #     timeout = None
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/__init__.py", line 1762, in call
    #     return fn(*args, **newargs)
    #     args = ()
    #     fn = <function delete_dynamic_links at 0x72056a6f22a0>
    #     kwargs = {'doctype': 'Custom Field', 'name': 'Event-custom_test_field'}
    #     newargs = {'doctype': 'Custom Field', 'name': 'Event-custom_test_field'}
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/model/delete_doc.py", line 449, in delete_dynamic_links
    #     delete_references("ToDo", doctype, name, "reference_type")
    #     ~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     doctype = 'Custom Field'
    #     name = 'Event-custom_test_field'
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/model/delete_doc.py", line 473, in delete_references
    #     frappe.db.delete(
    #     ~~~~~~~~~~~~~~~~^
    #     	doctype, {reference_doctype_field: reference_doctype, reference_name_field: reference_name}
    #      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     )
    #     ^
    #     doctype = 'ToDo'
    #     reference_doctype = 'Custom Field'
    #     reference_doctype_field = 'reference_type'
    #     reference_name = 'Event-custom_test_field'
    #     reference_name_field = 'reference_name'
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/database/database.py", line 1414, in delete
    #     return query.run(**kwargs)
    #            ~~~~~~~~~^^^^^^^^^^
    #     debug = False
    #     doctype = 'ToDo'
    #     filters = {'reference_type': 'Custom Field', 'reference_name': 'Event-custom_test_field'}
    #     kwargs = {'debug': False}
    #     query = DELETE FROM `tabToDo` WHERE `reference_type`='Custom Field' AND `reference_name`='Event-custom_test_field'
    #     self = <frappe.database.mariadb.database.MariaDBDatabase object at 0x7205665b1480>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/query_builder/utils.py", line 87, in execute_query
    #     result = frappe.db.sql(query, params, *args, **kwargs)  # nosemgrep
    #     args = ()
    #     child_queries = []
    #     execute_child_queries = <function patch_query_execute.<locals>.execute_child_queries at 0x72056c50e3e0>
    #     kwargs = {'debug': False}
    #     params = {'param1': 'Custom Field', 'param2': 'Event-custom_test_field'}
    #     prepare_query = <function patch_query_execute.<locals>.prepare_query at 0x72056c50e480>
    #     query = 'DELETE FROM `tabToDo` WHERE `reference_type`=%(param1)s AND `reference_name`=%(param2)s'
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/database/database.py", line 230, in sql
    #     self._cursor.execute(query, values)
    #     ~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^
    #     as_dict = 0
    #     as_iterator = False
    #     as_list = 0
    #     auto_commit = 0
    #     debug = False
    #     explain = False
    #     ignore_ddl = 0
    #     pluck = False
    #     query = 'DELETE FROM `tabToDo` WHERE `reference_type`=%(param1)s AND `reference_name`=%(param2)s'
    #     run = True
    #     self = <frappe.database.mariadb.database.MariaDBDatabase object at 0x7205665b1480>
    #     trace_id = None
    #     update = None
    #     values = {'param1': 'Custom Field', 'param2': 'Event-custom_test_field'}
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/cursors.py", line 153, in execute
    #     result = self._query(query)
    #     args = {'param1': 'Custom Field', 'param2': 'Event-custom_test_field'}
    #     query = "DELETE FROM `tabToDo` WHERE `reference_type`='Custom Field' AND `reference_name`='Event-custom_test_field'"
    #     self = <pymysql.cursors.Cursor object at 0x72055f41ec10>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/cursors.py", line 322, in _query
    #     conn.query(q)
    #     ~~~~~~~~~~^^^
    #     conn = <pymysql.connections.Connection object at 0x72055f567ed0>
    #     q = "DELETE FROM `tabToDo` WHERE `reference_type`='Custom Field' AND `reference_name`='Event-custom_test_field'"
    #     self = <pymysql.cursors.Cursor object at 0x72055f41ec10>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/connections.py", line 575, in query
    #     self._affected_rows = self._read_query_result(unbuffered=unbuffered)
    #                           ~~~~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^
    #     self = <pymysql.connections.Connection object at 0x72055f567ed0>
    #     sql = b"DELETE FROM `tabToDo` WHERE `reference_type`='Custom Field' AND `reference_name`='Event-custom_test_field'"
    #     unbuffered = False
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/connections.py", line 826, in _read_query_result
    #     result.read()
    #     ~~~~~~~~~~~^^
    #     result = <pymysql.connections.MySQLResult object at 0x72055f301550>
    #     self = <pymysql.connections.Connection object at 0x72055f567ed0>
    #     unbuffered = False
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/connections.py", line 1203, in read
    #     first_packet = self.connection._read_packet()
    #     self = <pymysql.connections.MySQLResult object at 0x72055f301550>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/connections.py", line 782, in _read_packet
    #     packet.raise_for_error()
    #     ~~~~~~~~~~~~~~~~~~~~~~^^
    #     btrh = 0
    #     btrl = 56
    #     buff = bytearray(b"\xffz\x04#42S02Table \'erp_frx_localhost.tabToDo\' doesn\'t exist")
    #     bytes_to_read = 56
    #     packet = <pymysql.protocol.MysqlPacket object at 0x72055fea3af0>
    #     packet_header = b'8\x00\x00\x01'
    #     packet_number = 1
    #     packet_type = <class 'pymysql.protocol.MysqlPacket'>
    #     recv_data = b"\xffz\x04#42S02Table 'erp_frx_localhost.tabToDo' doesn't exist"
    #     self = <pymysql.connections.Connection object at 0x72055f567ed0>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/protocol.py", line 219, in raise_for_error
    #     err.raise_mysql_exception(self._data)
    #     ~~~~~~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^
    #     errno = 1146
    #     self = <pymysql.protocol.MysqlPacket object at 0x72055fea3af0>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/err.py", line 150, in raise_mysql_exception
    #     raise errorclass(errno, errval)
    #     data = b"\xffz\x04#42S02Table 'erp_frx_localhost.tabToDo' doesn't exist"
    #     errno = 1146
    #     errorclass = <class 'pymysql.err.ProgrammingError'>
    #     errval = "Table 'erp_frx_localhost.tabToDo' doesn't exist"
    # pymysql.err.ProgrammingError: (1146, "Table 'erp_frx_localhost.tabToDo' doesn't exist")
    #
  }
  {
    id = "";

    # Traceback (most recent call last):
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/custom/doctype/customize_form/test_customize_form.py", line 115, in test_save_customization_field_property
    #     d.run_method("save_customization")
    #     ~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^
    #     d = <CustomizeForm: Customize Form>
    #     repeat_this_event_field = <CustomizeFormField: qvcdonfg5i parent=Customize Form>
    #     self = <frappe.custom.doctype.customize_form.test_customize_form.TestCustomizeForm testMethod=test_save_customization_field_property>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/model/document.py", line 1016, in run_method
    #     out = Document.hook(fn)(self, *args, **kwargs)
    #     args = ()
    #     fn = <function Document.run_method.<locals>.fn at 0x72056d2672e0>
    #     kwargs = {}
    #     method = 'save_customization'
    #     self = <CustomizeForm: Customize Form>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/model/document.py", line 1376, in composer
    #     return composed(self, method, *args, **kwargs)
    #     args = ()
    #     compose = <function Document.hook.<locals>.compose at 0x72055f41e660>
    #     composed = <function Document.hook.<locals>.compose.<locals>.runner at 0x72055f4e16c0>
    #     doc_events = {'*': {'on_update': ['frappe.desk.notifications.clear_doctype_notifications', 'frappe.workflow.doctype.workflow_action.workflow_action.process_workflow_actions', 'frappe.core.doctype.file.utils.attach_files_to_document', 'frappe.automation.doctype.assignment_rule.assignment_rule.apply', 'frappe.automation.doctype.assignment_rule.assignment_rule.update_due_date', 'frappe.core.doctype.user_type.user_type.apply_permissions_for_non_standard_user_type', 'frappe.search.sqlite_search.update_doc_index'], 'after_rename': ['frappe.desk.notifications.clear_doctype_notifications'], 'on_cancel': ['frappe.desk.notifications.clear_doctype_notifications', 'frappe.workflow.doctype.workflow_action.workflow_action.process_workflow_actions', 'frappe.automation.doctype.assignment_rule.assignment_rule.apply'], 'on_trash': ['frappe.desk.notifications.clear_doctype_notifications', 'frappe.workflow.doctype.workflow_action.workflow_action.process_workflow_actions', 'frappe.search.sqlite_search.delete_doc_index'], 'on_update_after_submit': ['frappe.workflow.doctype.workflow_action.workflow_action.process_workflow_actions', 'frappe.automation.doctype.assignment_rule.assignment_rule.apply', 'frappe.automation.doctype.assignment_rule.assignment_rule.update_due_date', 'frappe.core.doctype.file.utils.attach_files_to_document'], 'on_change': ['frappe.social.doctype.energy_point_rule.energy_point_rule.process_energy_points', 'frappe.automation.doctype.milestone_tracker.milestone_tracker.evaluate_milestone']}, 'Event': {'after_insert': ['frappe.integrations.doctype.google_calendar.google_calendar.insert_event_in_google_calendar'], 'on_update': ['frappe.integrations.doctype.google_calendar.google_calendar.update_event_in_google_calendar'], 'on_trash': ['frappe.integrations.doctype.google_calendar.google_calendar.delete_event_from_google_calendar']}, 'Contact': {'after_insert': ['frappe.integrations.doctype.google_contacts.google_contacts.insert_contacts_to_google_contacts'], 'on_update': ['frappe.integrations.doctype.google_contacts.google_contacts.update_contacts_to_google_contacts']}, 'DocType': {'on_update': ['frappe.cache_manager.build_domain_restriced_doctype_cache']}, 'Page': {'on_update': ['frappe.cache_manager.build_domain_restriced_page_cache']}}
    #     f = <function Document.run_method.<locals>.fn at 0x72056d2672e0>
    #     hooks = []
    #     kwargs = {}
    #     method = 'save_customization'
    #     self = <CustomizeForm: Customize Form>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/model/document.py", line 1358, in runner
    #     add_to_return_value(self, fn(self, *args, **kwargs))
    #                               ~~^^^^^^^^^^^^^^^^^^^^^^^
    #     add_to_return_value = <function Document.hook.<locals>.add_to_return_value at 0x72056d2647c0>
    #     args = ()
    #     fn = <function Document.run_method.<locals>.fn at 0x72056d2672e0>
    #     hooks = ()
    #     kwargs = {}
    #     method = 'save_customization'
    #     self = <CustomizeForm: Customize Form>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/model/document.py", line 1013, in fn
    #     return method_object(*args, **kwargs)
    #     args = ()
    #     kwargs = {}
    #     method = 'save_customization'
    #     method_object = <bound method CustomizeForm.save_customization of <CustomizeForm: Customize Form>>
    #     self = <CustomizeForm: Customize Form>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/utils/typing_validations.py", line 32, in wrapper
    #     return func(*args, **kwargs)
    #     apply_condition = <function whitelist.<locals>.innerfn.<locals>.<lambda> at 0x7205684df740>
    #     args = (<CustomizeForm: Customize Form>,)
    #     func = <function CustomizeForm.save_customization at 0x7205684df6a0>
    #     kwargs = {}
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/custom/doctype/customize_form/customize_form.py", line 235, in save_customization
    #     self.set_property_setters()
    #     ~~~~~~~~~~~~~~~~~~~~~~~~~^^
    #     self = <CustomizeForm: Customize Form>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/custom/doctype/customize_form/customize_form.py", line 279, in set_property_setters
    #     self.set_property_setters_for_docfield(meta, df, meta_df)
    #     ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^
    #     df = <CustomizeFormField: qvcdonfg5i parent=Customize Form>
    #     meta = <Meta: Event>
    #     meta_df = [<CheckDocField: repeat_this_event parent=Event>]
    #     self = <CustomizeForm: Customize Form>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/custom/doctype/customize_form/customize_form.py", line 325, in set_property_setters_for_docfield
    #     self.make_property_setter(prop, df.get(prop), prop_type, fieldname=df.fieldname)
    #     ~~~~~~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     df = <CustomizeFormField: qvcdonfg5i parent=Customize Form>
    #     meta = <Meta: Event>
    #     meta_df = [<CheckDocField: repeat_this_event parent=Event>]
    #     prop = 'reqd'
    #     prop_type = 'Check'
    #     self = <CustomizeForm: Customize Form>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/custom/doctype/customize_form/customize_form.py", line 536, in make_property_setter
    #     delete_property_setter(self.doc_type, prop, fieldname, row_name)
    #     ~~~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     apply_on = None
    #     fieldname = 'repeat_this_event'
    #     prop = 'reqd'
    #     property_type = 'Check'
    #     row_name = None
    #     self = <CustomizeForm: Customize Form>
    #     value = 0
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/custom/doctype/property_setter/property_setter.py", line 104, in delete_property_setter
    #     _delete_property_setters(filters)
    #     ~~~~~~~~~~~~~~~~~~~~~~~~^^^^^^^^^
    #     doc_type = 'Event'
    #     field_name = 'repeat_this_event'
    #     filters = {'doc_type': 'Event', 'property': 'reqd', 'field_name': 'repeat_this_event'}
    #     property = 'reqd'
    #     row_name = None
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/custom/doctype/property_setter/property_setter.py", line 160, in _delete_property_setters
    #     frappe.get_doc("Property Setter", ps).delete(ignore_permissions=True, force=True)
    #     ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     filters = {'doc_type': 'Event', 'property': 'reqd', 'field_name': 'repeat_this_event'}
    #     property_setters = ['Event-repeat_this_event-reqd']
    #     ps = 'Event-repeat_this_event-reqd'
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/model/document.py", line 1116, in delete
    #     return frappe.delete_doc(
    #            ~~~~~~~~~~~~~~~~~^
    #     	self.doctype,
    #      ^^^^^^^^^^^^^
    #     ...<4 lines>...
    #     	delete_permanently=delete_permanently,
    #      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     )
    #     ^
    #     delete_permanently = False
    #     force = True
    #     ignore_permissions = True
    #     self = <PropertySetter: Event-repeat_this_event-reqd>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/__init__.py", line 1378, in delete_doc
    #     return frappe.model.delete_doc.delete_doc(
    #            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^
    #     	doctype,
    #      ^^^^^^^^
    #     ...<8 lines>...
    #     	delete_permanently,
    #      ^^^^^^^^^^^^^^^^^^^
    #     )
    #     ^
    #     delete_permanently = False
    #     doctype = 'Property Setter'
    #     flags = {'for_update': None, 'ignore_permissions': True}
    #     for_reload = False
    #     force = True
    #     frappe = <module 'frappe' from '/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/__init__.py'>
    #     ignore_doctypes = None
    #     ignore_missing = True
    #     ignore_on_trash = False
    #     ignore_permissions = True
    #     name = 'Event-repeat_this_event-reqd'
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/model/delete_doc.py", line 154, in delete_doc
    #     frappe.enqueue(
    #     ~~~~~~~~~~~~~~^
    #     	"frappe.model.delete_doc.delete_dynamic_links",
    #      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     ...<3 lines>...
    #     	enqueue_after_commit=True,
    #      ^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     )
    #     ^
    #     delete_permanently = False
    #     doc = <PropertySetter: Event-repeat_this_event-reqd>
    #     doctype = 'Property Setter'
    #     flags = {'for_update': None, 'ignore_permissions': True}
    #     for_reload = False
    #     force = True
    #     ignore_doctypes = []
    #     ignore_missing = True
    #     ignore_on_trash = False
    #     ignore_permissions = True
    #     is_virtual = 0
    #     name = 'Event-repeat_this_event-reqd'
    #     names = ['Event-repeat_this_event-reqd']
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/__init__.py", line 2271, in enqueue
    #     return frappe.utils.background_jobs.enqueue(*args, **kwargs)
    #            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^
    #     args = ('frappe.model.delete_doc.delete_dynamic_links',)
    #     frappe = <module 'frappe' from '/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/__init__.py'>
    #     kwargs = {'doctype': 'Property Setter', 'name': 'Event-repeat_this_event-reqd', 'now': True, 'enqueue_after_commit': True}
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/utils/background_jobs.py", line 120, in enqueue
    #     return frappe.call(method, **kwargs)
    #            ~~~~~~~~~~~^^^^^^^^^^^^^^^^^^
    #     at_front = False
    #     call_directly = True
    #     deduplicate = False
    #     enqueue_after_commit = True
    #     event = None
    #     is_async = True
    #     job_id = 'erp.frx.localhost::878c4886-1518-4ee2-9d7a-859f3a0ebc9e'
    #     job_name = None
    #     kwargs = {'doctype': 'Property Setter', 'name': 'Event-repeat_this_event-reqd'}
    #     method = 'frappe.model.delete_doc.delete_dynamic_links'
    #     now = True
    #     on_failure = None
    #     on_success = None
    #     queue = 'default'
    #     timeout = None
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/__init__.py", line 1762, in call
    #     return fn(*args, **newargs)
    #     args = ()
    #     fn = <function delete_dynamic_links at 0x72056a6f22a0>
    #     kwargs = {'doctype': 'Property Setter', 'name': 'Event-repeat_this_event-reqd'}
    #     newargs = {'doctype': 'Property Setter', 'name': 'Event-repeat_this_event-reqd'}
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/model/delete_doc.py", line 449, in delete_dynamic_links
    #     delete_references("ToDo", doctype, name, "reference_type")
    #     ~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     doctype = 'Property Setter'
    #     name = 'Event-repeat_this_event-reqd'
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/model/delete_doc.py", line 473, in delete_references
    #     frappe.db.delete(
    #     ~~~~~~~~~~~~~~~~^
    #     	doctype, {reference_doctype_field: reference_doctype, reference_name_field: reference_name}
    #      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     )
    #     ^
    #     doctype = 'ToDo'
    #     reference_doctype = 'Property Setter'
    #     reference_doctype_field = 'reference_type'
    #     reference_name = 'Event-repeat_this_event-reqd'
    #     reference_name_field = 'reference_name'
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/database/database.py", line 1414, in delete
    #     return query.run(**kwargs)
    #            ~~~~~~~~~^^^^^^^^^^
    #     debug = False
    #     doctype = 'ToDo'
    #     filters = {'reference_type': 'Property Setter', 'reference_name': 'Event-repeat_this_event-reqd'}
    #     kwargs = {'debug': False}
    #     query = DELETE FROM `tabToDo` WHERE `reference_type`='Property Setter' AND `reference_name`='Event-repeat_this_event-reqd'
    #     self = <frappe.database.mariadb.database.MariaDBDatabase object at 0x7205665b1480>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/query_builder/utils.py", line 87, in execute_query
    #     result = frappe.db.sql(query, params, *args, **kwargs)  # nosemgrep
    #     args = ()
    #     child_queries = []
    #     execute_child_queries = <function patch_query_execute.<locals>.execute_child_queries at 0x72056c50e3e0>
    #     kwargs = {'debug': False}
    #     params = {'param1': 'Property Setter', 'param2': 'Event-repeat_this_event-reqd'}
    #     prepare_query = <function patch_query_execute.<locals>.prepare_query at 0x72056c50e480>
    #     query = 'DELETE FROM `tabToDo` WHERE `reference_type`=%(param1)s AND `reference_name`=%(param2)s'
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/database/database.py", line 230, in sql
    #     self._cursor.execute(query, values)
    #     ~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^
    #     as_dict = 0
    #     as_iterator = False
    #     as_list = 0
    #     auto_commit = 0
    #     debug = False
    #     explain = False
    #     ignore_ddl = 0
    #     pluck = False
    #     query = 'DELETE FROM `tabToDo` WHERE `reference_type`=%(param1)s AND `reference_name`=%(param2)s'
    #     run = True
    #     self = <frappe.database.mariadb.database.MariaDBDatabase object at 0x7205665b1480>
    #     trace_id = None
    #     update = None
    #     values = {'param1': 'Property Setter', 'param2': 'Event-repeat_this_event-reqd'}
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/cursors.py", line 153, in execute
    #     result = self._query(query)
    #     args = {'param1': 'Property Setter', 'param2': 'Event-repeat_this_event-reqd'}
    #     query = "DELETE FROM `tabToDo` WHERE `reference_type`='Property Setter' AND `reference_name`='Event-repeat_this_event-reqd'"
    #     self = <pymysql.cursors.Cursor object at 0x72055f41ec10>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/cursors.py", line 322, in _query
    #     conn.query(q)
    #     ~~~~~~~~~~^^^
    #     conn = <pymysql.connections.Connection object at 0x72055f567ed0>
    #     q = "DELETE FROM `tabToDo` WHERE `reference_type`='Property Setter' AND `reference_name`='Event-repeat_this_event-reqd'"
    #     self = <pymysql.cursors.Cursor object at 0x72055f41ec10>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/connections.py", line 575, in query
    #     self._affected_rows = self._read_query_result(unbuffered=unbuffered)
    #                           ~~~~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^
    #     self = <pymysql.connections.Connection object at 0x72055f567ed0>
    #     sql = b"DELETE FROM `tabToDo` WHERE `reference_type`='Property Setter' AND `reference_name`='Event-repeat_this_event-reqd'"
    #     unbuffered = False
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/connections.py", line 826, in _read_query_result
    #     result.read()
    #     ~~~~~~~~~~~^^
    #     result = <pymysql.connections.MySQLResult object at 0x72055f301310>
    #     self = <pymysql.connections.Connection object at 0x72055f567ed0>
    #     unbuffered = False
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/connections.py", line 1203, in read
    #     first_packet = self.connection._read_packet()
    #     self = <pymysql.connections.MySQLResult object at 0x72055f301310>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/connections.py", line 782, in _read_packet
    #     packet.raise_for_error()
    #     ~~~~~~~~~~~~~~~~~~~~~~^^
    #     btrh = 0
    #     btrl = 56
    #     buff = bytearray(b"\xffz\x04#42S02Table \'erp_frx_localhost.tabToDo\' doesn\'t exist")
    #     bytes_to_read = 56
    #     packet = <pymysql.protocol.MysqlPacket object at 0x72055fe63d30>
    #     packet_header = b'8\x00\x00\x01'
    #     packet_number = 1
    #     packet_type = <class 'pymysql.protocol.MysqlPacket'>
    #     recv_data = b"\xffz\x04#42S02Table 'erp_frx_localhost.tabToDo' doesn't exist"
    #     self = <pymysql.connections.Connection object at 0x72055f567ed0>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/protocol.py", line 219, in raise_for_error
    #     err.raise_mysql_exception(self._data)
    #     ~~~~~~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^
    #     errno = 1146
    #     self = <pymysql.protocol.MysqlPacket object at 0x72055fe63d30>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/err.py", line 150, in raise_mysql_exception
    #     raise errorclass(errno, errval)
    #     data = b"\xffz\x04#42S02Table 'erp_frx_localhost.tabToDo' doesn't exist"
    #     errno = 1146
    #     errorclass = <class 'pymysql.err.ProgrammingError'>
    #     errval = "Table 'erp_frx_localhost.tabToDo' doesn't exist"
    # pymysql.err.ProgrammingError: (1146, "Table 'erp_frx_localhost.tabToDo' doesn't exist")
    #
  }
  {
    id = "";

    # Traceback (most recent call last):
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/custom/doctype/customize_form/test_customize_form.py", line 40, in tearDown
    #     frappe.delete_doc("Custom Field", self.field.name)
    #     ~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     self = <frappe.custom.doctype.customize_form.test_customize_form.TestCustomizeForm testMethod=test_save_customization_field_property>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/__init__.py", line 1378, in delete_doc
    #     return frappe.model.delete_doc.delete_doc(
    #            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^
    #     	doctype,
    #      ^^^^^^^^
    #     ...<8 lines>...
    #     	delete_permanently,
    #      ^^^^^^^^^^^^^^^^^^^
    #     )
    #     ^
    #     delete_permanently = False
    #     doctype = 'Custom Field'
    #     flags = None
    #     for_reload = False
    #     force = False
    #     frappe = <module 'frappe' from '/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/__init__.py'>
    #     ignore_doctypes = None
    #     ignore_missing = True
    #     ignore_on_trash = False
    #     ignore_permissions = False
    #     name = 'Event-custom_test_field'
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/model/delete_doc.py", line 154, in delete_doc
    #     frappe.enqueue(
    #     ~~~~~~~~~~~~~~^
    #     	"frappe.model.delete_doc.delete_dynamic_links",
    #      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     ...<3 lines>...
    #     	enqueue_after_commit=True,
    #      ^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     )
    #     ^
    #     delete_permanently = False
    #     doc = <CustomField: Event-custom_test_field>
    #     doctype = 'Custom Field'
    #     flags = None
    #     for_reload = False
    #     force = False
    #     ignore_doctypes = []
    #     ignore_missing = True
    #     ignore_on_trash = False
    #     ignore_permissions = False
    #     is_virtual = 0
    #     name = 'Event-custom_test_field'
    #     names = ['Event-custom_test_field']
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/__init__.py", line 2271, in enqueue
    #     return frappe.utils.background_jobs.enqueue(*args, **kwargs)
    #            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^
    #     args = ('frappe.model.delete_doc.delete_dynamic_links',)
    #     frappe = <module 'frappe' from '/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/__init__.py'>
    #     kwargs = {'doctype': 'Custom Field', 'name': 'Event-custom_test_field', 'now': True, 'enqueue_after_commit': True}
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/utils/background_jobs.py", line 120, in enqueue
    #     return frappe.call(method, **kwargs)
    #            ~~~~~~~~~~~^^^^^^^^^^^^^^^^^^
    #     at_front = False
    #     call_directly = True
    #     deduplicate = False
    #     enqueue_after_commit = True
    #     event = None
    #     is_async = True
    #     job_id = 'erp.frx.localhost::fdb693a1-dbed-476a-a18c-af8a33ed6c4a'
    #     job_name = None
    #     kwargs = {'doctype': 'Custom Field', 'name': 'Event-custom_test_field'}
    #     method = 'frappe.model.delete_doc.delete_dynamic_links'
    #     now = True
    #     on_failure = None
    #     on_success = None
    #     queue = 'default'
    #     timeout = None
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/__init__.py", line 1762, in call
    #     return fn(*args, **newargs)
    #     args = ()
    #     fn = <function delete_dynamic_links at 0x72056a6f22a0>
    #     kwargs = {'doctype': 'Custom Field', 'name': 'Event-custom_test_field'}
    #     newargs = {'doctype': 'Custom Field', 'name': 'Event-custom_test_field'}
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/model/delete_doc.py", line 449, in delete_dynamic_links
    #     delete_references("ToDo", doctype, name, "reference_type")
    #     ~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     doctype = 'Custom Field'
    #     name = 'Event-custom_test_field'
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/model/delete_doc.py", line 473, in delete_references
    #     frappe.db.delete(
    #     ~~~~~~~~~~~~~~~~^
    #     	doctype, {reference_doctype_field: reference_doctype, reference_name_field: reference_name}
    #      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     )
    #     ^
    #     doctype = 'ToDo'
    #     reference_doctype = 'Custom Field'
    #     reference_doctype_field = 'reference_type'
    #     reference_name = 'Event-custom_test_field'
    #     reference_name_field = 'reference_name'
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/database/database.py", line 1414, in delete
    #     return query.run(**kwargs)
    #            ~~~~~~~~~^^^^^^^^^^
    #     debug = False
    #     doctype = 'ToDo'
    #     filters = {'reference_type': 'Custom Field', 'reference_name': 'Event-custom_test_field'}
    #     kwargs = {'debug': False}
    #     query = DELETE FROM `tabToDo` WHERE `reference_type`='Custom Field' AND `reference_name`='Event-custom_test_field'
    #     self = <frappe.database.mariadb.database.MariaDBDatabase object at 0x7205665b1480>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/query_builder/utils.py", line 87, in execute_query
    #     result = frappe.db.sql(query, params, *args, **kwargs)  # nosemgrep
    #     args = ()
    #     child_queries = []
    #     execute_child_queries = <function patch_query_execute.<locals>.execute_child_queries at 0x72056c50e3e0>
    #     kwargs = {'debug': False}
    #     params = {'param1': 'Custom Field', 'param2': 'Event-custom_test_field'}
    #     prepare_query = <function patch_query_execute.<locals>.prepare_query at 0x72056c50e480>
    #     query = 'DELETE FROM `tabToDo` WHERE `reference_type`=%(param1)s AND `reference_name`=%(param2)s'
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/database/database.py", line 230, in sql
    #     self._cursor.execute(query, values)
    #     ~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^
    #     as_dict = 0
    #     as_iterator = False
    #     as_list = 0
    #     auto_commit = 0
    #     debug = False
    #     explain = False
    #     ignore_ddl = 0
    #     pluck = False
    #     query = 'DELETE FROM `tabToDo` WHERE `reference_type`=%(param1)s AND `reference_name`=%(param2)s'
    #     run = True
    #     self = <frappe.database.mariadb.database.MariaDBDatabase object at 0x7205665b1480>
    #     trace_id = None
    #     update = None
    #     values = {'param1': 'Custom Field', 'param2': 'Event-custom_test_field'}
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/cursors.py", line 153, in execute
    #     result = self._query(query)
    #     args = {'param1': 'Custom Field', 'param2': 'Event-custom_test_field'}
    #     query = "DELETE FROM `tabToDo` WHERE `reference_type`='Custom Field' AND `reference_name`='Event-custom_test_field'"
    #     self = <pymysql.cursors.Cursor object at 0x72055f41ec10>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/cursors.py", line 322, in _query
    #     conn.query(q)
    #     ~~~~~~~~~~^^^
    #     conn = <pymysql.connections.Connection object at 0x72055f567ed0>
    #     q = "DELETE FROM `tabToDo` WHERE `reference_type`='Custom Field' AND `reference_name`='Event-custom_test_field'"
    #     self = <pymysql.cursors.Cursor object at 0x72055f41ec10>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/connections.py", line 575, in query
    #     self._affected_rows = self._read_query_result(unbuffered=unbuffered)
    #                           ~~~~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^
    #     self = <pymysql.connections.Connection object at 0x72055f567ed0>
    #     sql = b"DELETE FROM `tabToDo` WHERE `reference_type`='Custom Field' AND `reference_name`='Event-custom_test_field'"
    #     unbuffered = False
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/connections.py", line 826, in _read_query_result
    #     result.read()
    #     ~~~~~~~~~~~^^
    #     result = <pymysql.connections.MySQLResult object at 0x72055f302150>
    #     self = <pymysql.connections.Connection object at 0x72055f567ed0>
    #     unbuffered = False
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/connections.py", line 1203, in read
    #     first_packet = self.connection._read_packet()
    #     self = <pymysql.connections.MySQLResult object at 0x72055f302150>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/connections.py", line 782, in _read_packet
    #     packet.raise_for_error()
    #     ~~~~~~~~~~~~~~~~~~~~~~^^
    #     btrh = 0
    #     btrl = 56
    #     buff = bytearray(b"\xffz\x04#42S02Table \'erp_frx_localhost.tabToDo\' doesn\'t exist")
    #     bytes_to_read = 56
    #     packet = <pymysql.protocol.MysqlPacket object at 0x7205640c9450>
    #     packet_header = b'8\x00\x00\x01'
    #     packet_number = 1
    #     packet_type = <class 'pymysql.protocol.MysqlPacket'>
    #     recv_data = b"\xffz\x04#42S02Table 'erp_frx_localhost.tabToDo' doesn't exist"
    #     self = <pymysql.connections.Connection object at 0x72055f567ed0>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/protocol.py", line 219, in raise_for_error
    #     err.raise_mysql_exception(self._data)
    #     ~~~~~~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^
    #     errno = 1146
    #     self = <pymysql.protocol.MysqlPacket object at 0x7205640c9450>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/err.py", line 150, in raise_mysql_exception
    #     raise errorclass(errno, errval)
    #     data = b"\xffz\x04#42S02Table 'erp_frx_localhost.tabToDo' doesn't exist"
    #     errno = 1146
    #     errorclass = <class 'pymysql.err.ProgrammingError'>
    #     errval = "Table 'erp_frx_localhost.tabToDo' doesn't exist"
    # pymysql.err.ProgrammingError: (1146, "Table 'erp_frx_localhost.tabToDo' doesn't exist")
    #
  }
  {
    id = "";

    # Traceback (most recent call last):
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/custom/doctype/customize_form/test_customize_form.py", line 40, in tearDown
    #     frappe.delete_doc("Custom Field", self.field.name)
    #     ~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     self = <frappe.custom.doctype.customize_form.test_customize_form.TestCustomizeForm testMethod=test_save_customization_length_field_property>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/__init__.py", line 1378, in delete_doc
    #     return frappe.model.delete_doc.delete_doc(
    #            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^
    #     	doctype,
    #      ^^^^^^^^
    #     ...<8 lines>...
    #     	delete_permanently,
    #      ^^^^^^^^^^^^^^^^^^^
    #     )
    #     ^
    #     delete_permanently = False
    #     doctype = 'Custom Field'
    #     flags = None
    #     for_reload = False
    #     force = False
    #     frappe = <module 'frappe' from '/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/__init__.py'>
    #     ignore_doctypes = None
    #     ignore_missing = True
    #     ignore_on_trash = False
    #     ignore_permissions = False
    #     name = 'Event-custom_test_field'
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/model/delete_doc.py", line 154, in delete_doc
    #     frappe.enqueue(
    #     ~~~~~~~~~~~~~~^
    #     	"frappe.model.delete_doc.delete_dynamic_links",
    #      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     ...<3 lines>...
    #     	enqueue_after_commit=True,
    #      ^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     )
    #     ^
    #     delete_permanently = False
    #     doc = <CustomField: Event-custom_test_field>
    #     doctype = 'Custom Field'
    #     flags = None
    #     for_reload = False
    #     force = False
    #     ignore_doctypes = []
    #     ignore_missing = True
    #     ignore_on_trash = False
    #     ignore_permissions = False
    #     is_virtual = 0
    #     name = 'Event-custom_test_field'
    #     names = ['Event-custom_test_field']
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/__init__.py", line 2271, in enqueue
    #     return frappe.utils.background_jobs.enqueue(*args, **kwargs)
    #            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^
    #     args = ('frappe.model.delete_doc.delete_dynamic_links',)
    #     frappe = <module 'frappe' from '/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/__init__.py'>
    #     kwargs = {'doctype': 'Custom Field', 'name': 'Event-custom_test_field', 'now': True, 'enqueue_after_commit': True}
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/utils/background_jobs.py", line 120, in enqueue
    #     return frappe.call(method, **kwargs)
    #            ~~~~~~~~~~~^^^^^^^^^^^^^^^^^^
    #     at_front = False
    #     call_directly = True
    #     deduplicate = False
    #     enqueue_after_commit = True
    #     event = None
    #     is_async = True
    #     job_id = 'erp.frx.localhost::de96be75-886f-4014-97d7-021de10d7bd3'
    #     job_name = None
    #     kwargs = {'doctype': 'Custom Field', 'name': 'Event-custom_test_field'}
    #     method = 'frappe.model.delete_doc.delete_dynamic_links'
    #     now = True
    #     on_failure = None
    #     on_success = None
    #     queue = 'default'
    #     timeout = None
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/__init__.py", line 1762, in call
    #     return fn(*args, **newargs)
    #     args = ()
    #     fn = <function delete_dynamic_links at 0x72056a6f22a0>
    #     kwargs = {'doctype': 'Custom Field', 'name': 'Event-custom_test_field'}
    #     newargs = {'doctype': 'Custom Field', 'name': 'Event-custom_test_field'}
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/model/delete_doc.py", line 449, in delete_dynamic_links
    #     delete_references("ToDo", doctype, name, "reference_type")
    #     ~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     doctype = 'Custom Field'
    #     name = 'Event-custom_test_field'
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/model/delete_doc.py", line 473, in delete_references
    #     frappe.db.delete(
    #     ~~~~~~~~~~~~~~~~^
    #     	doctype, {reference_doctype_field: reference_doctype, reference_name_field: reference_name}
    #      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     )
    #     ^
    #     doctype = 'ToDo'
    #     reference_doctype = 'Custom Field'
    #     reference_doctype_field = 'reference_type'
    #     reference_name = 'Event-custom_test_field'
    #     reference_name_field = 'reference_name'
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/database/database.py", line 1414, in delete
    #     return query.run(**kwargs)
    #            ~~~~~~~~~^^^^^^^^^^
    #     debug = False
    #     doctype = 'ToDo'
    #     filters = {'reference_type': 'Custom Field', 'reference_name': 'Event-custom_test_field'}
    #     kwargs = {'debug': False}
    #     query = DELETE FROM `tabToDo` WHERE `reference_type`='Custom Field' AND `reference_name`='Event-custom_test_field'
    #     self = <frappe.database.mariadb.database.MariaDBDatabase object at 0x7205665b1480>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/query_builder/utils.py", line 87, in execute_query
    #     result = frappe.db.sql(query, params, *args, **kwargs)  # nosemgrep
    #     args = ()
    #     child_queries = []
    #     execute_child_queries = <function patch_query_execute.<locals>.execute_child_queries at 0x72056c50e3e0>
    #     kwargs = {'debug': False}
    #     params = {'param1': 'Custom Field', 'param2': 'Event-custom_test_field'}
    #     prepare_query = <function patch_query_execute.<locals>.prepare_query at 0x72056c50e480>
    #     query = 'DELETE FROM `tabToDo` WHERE `reference_type`=%(param1)s AND `reference_name`=%(param2)s'
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/database/database.py", line 230, in sql
    #     self._cursor.execute(query, values)
    #     ~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^
    #     as_dict = 0
    #     as_iterator = False
    #     as_list = 0
    #     auto_commit = 0
    #     debug = False
    #     explain = False
    #     ignore_ddl = 0
    #     pluck = False
    #     query = 'DELETE FROM `tabToDo` WHERE `reference_type`=%(param1)s AND `reference_name`=%(param2)s'
    #     run = True
    #     self = <frappe.database.mariadb.database.MariaDBDatabase object at 0x7205665b1480>
    #     trace_id = None
    #     update = None
    #     values = {'param1': 'Custom Field', 'param2': 'Event-custom_test_field'}
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/cursors.py", line 153, in execute
    #     result = self._query(query)
    #     args = {'param1': 'Custom Field', 'param2': 'Event-custom_test_field'}
    #     query = "DELETE FROM `tabToDo` WHERE `reference_type`='Custom Field' AND `reference_name`='Event-custom_test_field'"
    #     self = <pymysql.cursors.Cursor object at 0x72055f41ec10>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/cursors.py", line 322, in _query
    #     conn.query(q)
    #     ~~~~~~~~~~^^^
    #     conn = <pymysql.connections.Connection object at 0x72055f567ed0>
    #     q = "DELETE FROM `tabToDo` WHERE `reference_type`='Custom Field' AND `reference_name`='Event-custom_test_field'"
    #     self = <pymysql.cursors.Cursor object at 0x72055f41ec10>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/connections.py", line 575, in query
    #     self._affected_rows = self._read_query_result(unbuffered=unbuffered)
    #                           ~~~~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^
    #     self = <pymysql.connections.Connection object at 0x72055f567ed0>
    #     sql = b"DELETE FROM `tabToDo` WHERE `reference_type`='Custom Field' AND `reference_name`='Event-custom_test_field'"
    #     unbuffered = False
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/connections.py", line 826, in _read_query_result
    #     result.read()
    #     ~~~~~~~~~~~^^
    #     result = <pymysql.connections.MySQLResult object at 0x72055f3010d0>
    #     self = <pymysql.connections.Connection object at 0x72055f567ed0>
    #     unbuffered = False
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/connections.py", line 1203, in read
    #     first_packet = self.connection._read_packet()
    #     self = <pymysql.connections.MySQLResult object at 0x72055f3010d0>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/connections.py", line 782, in _read_packet
    #     packet.raise_for_error()
    #     ~~~~~~~~~~~~~~~~~~~~~~^^
    #     btrh = 0
    #     btrl = 56
    #     buff = bytearray(b"\xffz\x04#42S02Table \'erp_frx_localhost.tabToDo\' doesn\'t exist")
    #     bytes_to_read = 56
    #     packet = <pymysql.protocol.MysqlPacket object at 0x7205641b38e0>
    #     packet_header = b'8\x00\x00\x01'
    #     packet_number = 1
    #     packet_type = <class 'pymysql.protocol.MysqlPacket'>
    #     recv_data = b"\xffz\x04#42S02Table 'erp_frx_localhost.tabToDo' doesn't exist"
    #     self = <pymysql.connections.Connection object at 0x72055f567ed0>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/protocol.py", line 219, in raise_for_error
    #     err.raise_mysql_exception(self._data)
    #     ~~~~~~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^
    #     errno = 1146
    #     self = <pymysql.protocol.MysqlPacket object at 0x7205641b38e0>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/err.py", line 150, in raise_mysql_exception
    #     raise errorclass(errno, errval)
    #     data = b"\xffz\x04#42S02Table 'erp_frx_localhost.tabToDo' doesn't exist"
    #     errno = 1146
    #     errorclass = <class 'pymysql.err.ProgrammingError'>
    #     errval = "Table 'erp_frx_localhost.tabToDo' doesn't exist"
    # pymysql.err.ProgrammingError: (1146, "Table 'erp_frx_localhost.tabToDo' doesn't exist")
    #
  }
  {
    id = "";

    # Traceback (most recent call last):
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/custom/doctype/customize_form/test_customize_form.py", line 167, in test_save_customization_new_field
    #     frappe.delete_doc("Custom Field", custom_field_name)
    #     ~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     custom_field_name = 'Event-custom_test_add_custom_field_via_customize_form'
    #     d = <CustomizeForm: Customize Form>
    #     last_fieldname = 'custom_test_field'
    #     self = <frappe.custom.doctype.customize_form.test_customize_form.TestCustomizeForm testMethod=test_save_customization_new_field>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/__init__.py", line 1378, in delete_doc
    #     return frappe.model.delete_doc.delete_doc(
    #            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^
    #     	doctype,
    #      ^^^^^^^^
    #     ...<8 lines>...
    #     	delete_permanently,
    #      ^^^^^^^^^^^^^^^^^^^
    #     )
    #     ^
    #     delete_permanently = False
    #     doctype = 'Custom Field'
    #     flags = None
    #     for_reload = False
    #     force = False
    #     frappe = <module 'frappe' from '/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/__init__.py'>
    #     ignore_doctypes = None
    #     ignore_missing = True
    #     ignore_on_trash = False
    #     ignore_permissions = False
    #     name = 'Event-custom_test_add_custom_field_via_customize_form'
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/model/delete_doc.py", line 154, in delete_doc
    #     frappe.enqueue(
    #     ~~~~~~~~~~~~~~^
    #     	"frappe.model.delete_doc.delete_dynamic_links",
    #      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     ...<3 lines>...
    #     	enqueue_after_commit=True,
    #      ^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     )
    #     ^
    #     delete_permanently = False
    #     doc = <CustomField: Event-custom_test_add_custom_field_via_customize_form>
    #     doctype = 'Custom Field'
    #     flags = None
    #     for_reload = False
    #     force = False
    #     ignore_doctypes = []
    #     ignore_missing = True
    #     ignore_on_trash = False
    #     ignore_permissions = False
    #     is_virtual = 0
    #     name = 'Event-custom_test_add_custom_field_via_customize_form'
    #     names = ['Event-custom_test_add_custom_field_via_customize_form']
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/__init__.py", line 2271, in enqueue
    #     return frappe.utils.background_jobs.enqueue(*args, **kwargs)
    #            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^
    #     args = ('frappe.model.delete_doc.delete_dynamic_links',)
    #     frappe = <module 'frappe' from '/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/__init__.py'>
    #     kwargs = {'doctype': 'Custom Field', 'name': 'Event-custom_test_add_custom_field_via_customize_form', 'now': True, 'enqueue_after_commit': True}
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/utils/background_jobs.py", line 120, in enqueue
    #     return frappe.call(method, **kwargs)
    #            ~~~~~~~~~~~^^^^^^^^^^^^^^^^^^
    #     at_front = False
    #     call_directly = True
    #     deduplicate = False
    #     enqueue_after_commit = True
    #     event = None
    #     is_async = True
    #     job_id = 'erp.frx.localhost::f8dd69fa-4f33-4c1f-8f69-18c645716c7e'
    #     job_name = None
    #     kwargs = {'doctype': 'Custom Field', 'name': 'Event-custom_test_add_custom_field_via_customize_form'}
    #     method = 'frappe.model.delete_doc.delete_dynamic_links'
    #     now = True
    #     on_failure = None
    #     on_success = None
    #     queue = 'default'
    #     timeout = None
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/__init__.py", line 1762, in call
    #     return fn(*args, **newargs)
    #     args = ()
    #     fn = <function delete_dynamic_links at 0x72056a6f22a0>
    #     kwargs = {'doctype': 'Custom Field', 'name': 'Event-custom_test_add_custom_field_via_customize_form'}
    #     newargs = {'doctype': 'Custom Field', 'name': 'Event-custom_test_add_custom_field_via_customize_form'}
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/model/delete_doc.py", line 449, in delete_dynamic_links
    #     delete_references("ToDo", doctype, name, "reference_type")
    #     ~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     doctype = 'Custom Field'
    #     name = 'Event-custom_test_add_custom_field_via_customize_form'
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/model/delete_doc.py", line 473, in delete_references
    #     frappe.db.delete(
    #     ~~~~~~~~~~~~~~~~^
    #     	doctype, {reference_doctype_field: reference_doctype, reference_name_field: reference_name}
    #      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     )
    #     ^
    #     doctype = 'ToDo'
    #     reference_doctype = 'Custom Field'
    #     reference_doctype_field = 'reference_type'
    #     reference_name = 'Event-custom_test_add_custom_field_via_customize_form'
    #     reference_name_field = 'reference_name'
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/database/database.py", line 1414, in delete
    #     return query.run(**kwargs)
    #            ~~~~~~~~~^^^^^^^^^^
    #     debug = False
    #     doctype = 'ToDo'
    #     filters = {'reference_type': 'Custom Field', 'reference_name': 'Event-custom_test_add_custom_field_via_customize_form'}
    #     kwargs = {'debug': False}
    #     query = DELETE FROM `tabToDo` WHERE `reference_type`='Custom Field' AND `reference_name`='Event-custom_test_add_custom_field_via_customize_form'
    #     self = <frappe.database.mariadb.database.MariaDBDatabase object at 0x7205665b1480>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/query_builder/utils.py", line 87, in execute_query
    #     result = frappe.db.sql(query, params, *args, **kwargs)  # nosemgrep
    #     args = ()
    #     child_queries = []
    #     execute_child_queries = <function patch_query_execute.<locals>.execute_child_queries at 0x72056c50e3e0>
    #     kwargs = {'debug': False}
    #     params = {'param1': 'Custom Field', 'param2': 'Event-custom_test_add_custom_field_via_customize_form'}
    #     prepare_query = <function patch_query_execute.<locals>.prepare_query at 0x72056c50e480>
    #     query = 'DELETE FROM `tabToDo` WHERE `reference_type`=%(param1)s AND `reference_name`=%(param2)s'
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/database/database.py", line 230, in sql
    #     self._cursor.execute(query, values)
    #     ~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^
    #     as_dict = 0
    #     as_iterator = False
    #     as_list = 0
    #     auto_commit = 0
    #     debug = False
    #     explain = False
    #     ignore_ddl = 0
    #     pluck = False
    #     query = 'DELETE FROM `tabToDo` WHERE `reference_type`=%(param1)s AND `reference_name`=%(param2)s'
    #     run = True
    #     self = <frappe.database.mariadb.database.MariaDBDatabase object at 0x7205665b1480>
    #     trace_id = None
    #     update = None
    #     values = {'param1': 'Custom Field', 'param2': 'Event-custom_test_add_custom_field_via_customize_form'}
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/cursors.py", line 153, in execute
    #     result = self._query(query)
    #     args = {'param1': 'Custom Field', 'param2': 'Event-custom_test_add_custom_field_via_customize_form'}
    #     query = "DELETE FROM `tabToDo` WHERE `reference_type`='Custom Field' AND `reference_name`='Event-custom_test_add_custom_field_via_customize_form'"
    #     self = <pymysql.cursors.Cursor object at 0x72055f41ec10>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/cursors.py", line 322, in _query
    #     conn.query(q)
    #     ~~~~~~~~~~^^^
    #     conn = <pymysql.connections.Connection object at 0x72055f567ed0>
    #     q = "DELETE FROM `tabToDo` WHERE `reference_type`='Custom Field' AND `reference_name`='Event-custom_test_add_custom_field_via_customize_form'"
    #     self = <pymysql.cursors.Cursor object at 0x72055f41ec10>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/connections.py", line 575, in query
    #     self._affected_rows = self._read_query_result(unbuffered=unbuffered)
    #                           ~~~~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^
    #     self = <pymysql.connections.Connection object at 0x72055f567ed0>
    #     sql = b"DELETE FROM `tabToDo` WHERE `reference_type`='Custom Field' AND `reference_name`='Event-custom_test_add_custom_field_via_customize_form'"
    #     unbuffered = False
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/connections.py", line 826, in _read_query_result
    #     result.read()
    #     ~~~~~~~~~~~^^
    #     result = <pymysql.connections.MySQLResult object at 0x72055f300b90>
    #     self = <pymysql.connections.Connection object at 0x72055f567ed0>
    #     unbuffered = False
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/connections.py", line 1203, in read
    #     first_packet = self.connection._read_packet()
    #     self = <pymysql.connections.MySQLResult object at 0x72055f300b90>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/connections.py", line 782, in _read_packet
    #     packet.raise_for_error()
    #     ~~~~~~~~~~~~~~~~~~~~~~^^
    #     btrh = 0
    #     btrl = 56
    #     buff = bytearray(b"\xffz\x04#42S02Table \'erp_frx_localhost.tabToDo\' doesn\'t exist")
    #     bytes_to_read = 56
    #     packet = <pymysql.protocol.MysqlPacket object at 0x7205641d08e0>
    #     packet_header = b'8\x00\x00\x01'
    #     packet_number = 1
    #     packet_type = <class 'pymysql.protocol.MysqlPacket'>
    #     recv_data = b"\xffz\x04#42S02Table 'erp_frx_localhost.tabToDo' doesn't exist"
    #     self = <pymysql.connections.Connection object at 0x72055f567ed0>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/protocol.py", line 219, in raise_for_error
    #     err.raise_mysql_exception(self._data)
    #     ~~~~~~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^
    #     errno = 1146
    #     self = <pymysql.protocol.MysqlPacket object at 0x7205641d08e0>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/err.py", line 150, in raise_mysql_exception
    #     raise errorclass(errno, errval)
    #     data = b"\xffz\x04#42S02Table 'erp_frx_localhost.tabToDo' doesn't exist"
    #     errno = 1146
    #     errorclass = <class 'pymysql.err.ProgrammingError'>
    #     errval = "Table 'erp_frx_localhost.tabToDo' doesn't exist"
    # pymysql.err.ProgrammingError: (1146, "Table 'erp_frx_localhost.tabToDo' doesn't exist")
    #
  }
  {
    id = "";

    # Traceback (most recent call last):
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/custom/doctype/customize_form/test_customize_form.py", line 40, in tearDown
    #     frappe.delete_doc("Custom Field", self.field.name)
    #     ~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     self = <frappe.custom.doctype.customize_form.test_customize_form.TestCustomizeForm testMethod=test_save_customization_new_field>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/__init__.py", line 1378, in delete_doc
    #     return frappe.model.delete_doc.delete_doc(
    #            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^
    #     	doctype,
    #      ^^^^^^^^
    #     ...<8 lines>...
    #     	delete_permanently,
    #      ^^^^^^^^^^^^^^^^^^^
    #     )
    #     ^
    #     delete_permanently = False
    #     doctype = 'Custom Field'
    #     flags = None
    #     for_reload = False
    #     force = False
    #     frappe = <module 'frappe' from '/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/__init__.py'>
    #     ignore_doctypes = None
    #     ignore_missing = True
    #     ignore_on_trash = False
    #     ignore_permissions = False
    #     name = 'Event-custom_test_field'
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/model/delete_doc.py", line 154, in delete_doc
    #     frappe.enqueue(
    #     ~~~~~~~~~~~~~~^
    #     	"frappe.model.delete_doc.delete_dynamic_links",
    #      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     ...<3 lines>...
    #     	enqueue_after_commit=True,
    #      ^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     )
    #     ^
    #     delete_permanently = False
    #     doc = <CustomField: Event-custom_test_field>
    #     doctype = 'Custom Field'
    #     flags = None
    #     for_reload = False
    #     force = False
    #     ignore_doctypes = []
    #     ignore_missing = True
    #     ignore_on_trash = False
    #     ignore_permissions = False
    #     is_virtual = 0
    #     name = 'Event-custom_test_field'
    #     names = ['Event-custom_test_field']
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/__init__.py", line 2271, in enqueue
    #     return frappe.utils.background_jobs.enqueue(*args, **kwargs)
    #            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^
    #     args = ('frappe.model.delete_doc.delete_dynamic_links',)
    #     frappe = <module 'frappe' from '/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/__init__.py'>
    #     kwargs = {'doctype': 'Custom Field', 'name': 'Event-custom_test_field', 'now': True, 'enqueue_after_commit': True}
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/utils/background_jobs.py", line 120, in enqueue
    #     return frappe.call(method, **kwargs)
    #            ~~~~~~~~~~~^^^^^^^^^^^^^^^^^^
    #     at_front = False
    #     call_directly = True
    #     deduplicate = False
    #     enqueue_after_commit = True
    #     event = None
    #     is_async = True
    #     job_id = 'erp.frx.localhost::d67593a8-cbe1-4217-83b0-8b4cc8b8d810'
    #     job_name = None
    #     kwargs = {'doctype': 'Custom Field', 'name': 'Event-custom_test_field'}
    #     method = 'frappe.model.delete_doc.delete_dynamic_links'
    #     now = True
    #     on_failure = None
    #     on_success = None
    #     queue = 'default'
    #     timeout = None
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/__init__.py", line 1762, in call
    #     return fn(*args, **newargs)
    #     args = ()
    #     fn = <function delete_dynamic_links at 0x72056a6f22a0>
    #     kwargs = {'doctype': 'Custom Field', 'name': 'Event-custom_test_field'}
    #     newargs = {'doctype': 'Custom Field', 'name': 'Event-custom_test_field'}
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/model/delete_doc.py", line 449, in delete_dynamic_links
    #     delete_references("ToDo", doctype, name, "reference_type")
    #     ~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     doctype = 'Custom Field'
    #     name = 'Event-custom_test_field'
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/model/delete_doc.py", line 473, in delete_references
    #     frappe.db.delete(
    #     ~~~~~~~~~~~~~~~~^
    #     	doctype, {reference_doctype_field: reference_doctype, reference_name_field: reference_name}
    #      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     )
    #     ^
    #     doctype = 'ToDo'
    #     reference_doctype = 'Custom Field'
    #     reference_doctype_field = 'reference_type'
    #     reference_name = 'Event-custom_test_field'
    #     reference_name_field = 'reference_name'
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/database/database.py", line 1414, in delete
    #     return query.run(**kwargs)
    #            ~~~~~~~~~^^^^^^^^^^
    #     debug = False
    #     doctype = 'ToDo'
    #     filters = {'reference_type': 'Custom Field', 'reference_name': 'Event-custom_test_field'}
    #     kwargs = {'debug': False}
    #     query = DELETE FROM `tabToDo` WHERE `reference_type`='Custom Field' AND `reference_name`='Event-custom_test_field'
    #     self = <frappe.database.mariadb.database.MariaDBDatabase object at 0x7205665b1480>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/query_builder/utils.py", line 87, in execute_query
    #     result = frappe.db.sql(query, params, *args, **kwargs)  # nosemgrep
    #     args = ()
    #     child_queries = []
    #     execute_child_queries = <function patch_query_execute.<locals>.execute_child_queries at 0x72056c50e3e0>
    #     kwargs = {'debug': False}
    #     params = {'param1': 'Custom Field', 'param2': 'Event-custom_test_field'}
    #     prepare_query = <function patch_query_execute.<locals>.prepare_query at 0x72056c50e480>
    #     query = 'DELETE FROM `tabToDo` WHERE `reference_type`=%(param1)s AND `reference_name`=%(param2)s'
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/database/database.py", line 230, in sql
    #     self._cursor.execute(query, values)
    #     ~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^
    #     as_dict = 0
    #     as_iterator = False
    #     as_list = 0
    #     auto_commit = 0
    #     debug = False
    #     explain = False
    #     ignore_ddl = 0
    #     pluck = False
    #     query = 'DELETE FROM `tabToDo` WHERE `reference_type`=%(param1)s AND `reference_name`=%(param2)s'
    #     run = True
    #     self = <frappe.database.mariadb.database.MariaDBDatabase object at 0x7205665b1480>
    #     trace_id = None
    #     update = None
    #     values = {'param1': 'Custom Field', 'param2': 'Event-custom_test_field'}
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/cursors.py", line 153, in execute
    #     result = self._query(query)
    #     args = {'param1': 'Custom Field', 'param2': 'Event-custom_test_field'}
    #     query = "DELETE FROM `tabToDo` WHERE `reference_type`='Custom Field' AND `reference_name`='Event-custom_test_field'"
    #     self = <pymysql.cursors.Cursor object at 0x72055f41ec10>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/cursors.py", line 322, in _query
    #     conn.query(q)
    #     ~~~~~~~~~~^^^
    #     conn = <pymysql.connections.Connection object at 0x72055f567ed0>
    #     q = "DELETE FROM `tabToDo` WHERE `reference_type`='Custom Field' AND `reference_name`='Event-custom_test_field'"
    #     self = <pymysql.cursors.Cursor object at 0x72055f41ec10>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/connections.py", line 575, in query
    #     self._affected_rows = self._read_query_result(unbuffered=unbuffered)
    #                           ~~~~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^
    #     self = <pymysql.connections.Connection object at 0x72055f567ed0>
    #     sql = b"DELETE FROM `tabToDo` WHERE `reference_type`='Custom Field' AND `reference_name`='Event-custom_test_field'"
    #     unbuffered = False
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/connections.py", line 826, in _read_query_result
    #     result.read()
    #     ~~~~~~~~~~~^^
    #     result = <pymysql.connections.MySQLResult object at 0x72055f300b90>
    #     self = <pymysql.connections.Connection object at 0x72055f567ed0>
    #     unbuffered = False
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/connections.py", line 1203, in read
    #     first_packet = self.connection._read_packet()
    #     self = <pymysql.connections.MySQLResult object at 0x72055f300b90>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/connections.py", line 782, in _read_packet
    #     packet.raise_for_error()
    #     ~~~~~~~~~~~~~~~~~~~~~~^^
    #     btrh = 0
    #     btrl = 56
    #     buff = bytearray(b"\xffz\x04#42S02Table \'erp_frx_localhost.tabToDo\' doesn\'t exist")
    #     bytes_to_read = 56
    #     packet = <pymysql.protocol.MysqlPacket object at 0x72055f6491e0>
    #     packet_header = b'8\x00\x00\x01'
    #     packet_number = 1
    #     packet_type = <class 'pymysql.protocol.MysqlPacket'>
    #     recv_data = b"\xffz\x04#42S02Table 'erp_frx_localhost.tabToDo' doesn't exist"
    #     self = <pymysql.connections.Connection object at 0x72055f567ed0>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/protocol.py", line 219, in raise_for_error
    #     err.raise_mysql_exception(self._data)
    #     ~~~~~~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^
    #     errno = 1146
    #     self = <pymysql.protocol.MysqlPacket object at 0x72055f6491e0>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/err.py", line 150, in raise_mysql_exception
    #     raise errorclass(errno, errval)
    #     data = b"\xffz\x04#42S02Table 'erp_frx_localhost.tabToDo' doesn't exist"
    #     errno = 1146
    #     errorclass = <class 'pymysql.err.ProgrammingError'>
    #     errval = "Table 'erp_frx_localhost.tabToDo' doesn't exist"
    # pymysql.err.ProgrammingError: (1146, "Table 'erp_frx_localhost.tabToDo' doesn't exist")
    #
  }
  {
    id = "";

    # Traceback (most recent call last):
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/custom/doctype/customize_form/test_customize_form.py", line 84, in test_save_customization_property
    #     d.run_method("save_customization")
    #     ~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^
    #     d = <CustomizeForm: Customize Form>
    #     self = <frappe.custom.doctype.customize_form.test_customize_form.TestCustomizeForm testMethod=test_save_customization_property>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/model/document.py", line 1016, in run_method
    #     out = Document.hook(fn)(self, *args, **kwargs)
    #     args = ()
    #     fn = <function Document.run_method.<locals>.fn at 0x72056505f740>
    #     kwargs = {}
    #     method = 'save_customization'
    #     self = <CustomizeForm: Customize Form>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/model/document.py", line 1376, in composer
    #     return composed(self, method, *args, **kwargs)
    #     args = ()
    #     compose = <function Document.hook.<locals>.compose at 0x72055f7de0c0>
    #     composed = <function Document.hook.<locals>.compose.<locals>.runner at 0x72055f35a840>
    #     doc_events = {'*': {'on_update': ['frappe.desk.notifications.clear_doctype_notifications', 'frappe.workflow.doctype.workflow_action.workflow_action.process_workflow_actions', 'frappe.core.doctype.file.utils.attach_files_to_document', 'frappe.automation.doctype.assignment_rule.assignment_rule.apply', 'frappe.automation.doctype.assignment_rule.assignment_rule.update_due_date', 'frappe.core.doctype.user_type.user_type.apply_permissions_for_non_standard_user_type', 'frappe.search.sqlite_search.update_doc_index'], 'after_rename': ['frappe.desk.notifications.clear_doctype_notifications'], 'on_cancel': ['frappe.desk.notifications.clear_doctype_notifications', 'frappe.workflow.doctype.workflow_action.workflow_action.process_workflow_actions', 'frappe.automation.doctype.assignment_rule.assignment_rule.apply'], 'on_trash': ['frappe.desk.notifications.clear_doctype_notifications', 'frappe.workflow.doctype.workflow_action.workflow_action.process_workflow_actions', 'frappe.search.sqlite_search.delete_doc_index'], 'on_update_after_submit': ['frappe.workflow.doctype.workflow_action.workflow_action.process_workflow_actions', 'frappe.automation.doctype.assignment_rule.assignment_rule.apply', 'frappe.automation.doctype.assignment_rule.assignment_rule.update_due_date', 'frappe.core.doctype.file.utils.attach_files_to_document'], 'on_change': ['frappe.social.doctype.energy_point_rule.energy_point_rule.process_energy_points', 'frappe.automation.doctype.milestone_tracker.milestone_tracker.evaluate_milestone']}, 'Event': {'after_insert': ['frappe.integrations.doctype.google_calendar.google_calendar.insert_event_in_google_calendar'], 'on_update': ['frappe.integrations.doctype.google_calendar.google_calendar.update_event_in_google_calendar'], 'on_trash': ['frappe.integrations.doctype.google_calendar.google_calendar.delete_event_from_google_calendar']}, 'Contact': {'after_insert': ['frappe.integrations.doctype.google_contacts.google_contacts.insert_contacts_to_google_contacts'], 'on_update': ['frappe.integrations.doctype.google_contacts.google_contacts.update_contacts_to_google_contacts']}, 'DocType': {'on_update': ['frappe.cache_manager.build_domain_restriced_doctype_cache']}, 'Page': {'on_update': ['frappe.cache_manager.build_domain_restriced_page_cache']}}
    #     f = <function Document.run_method.<locals>.fn at 0x72056505f740>
    #     hooks = []
    #     kwargs = {}
    #     method = 'save_customization'
    #     self = <CustomizeForm: Customize Form>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/model/document.py", line 1358, in runner
    #     add_to_return_value(self, fn(self, *args, **kwargs))
    #                               ~~^^^^^^^^^^^^^^^^^^^^^^^
    #     add_to_return_value = <function Document.hook.<locals>.add_to_return_value at 0x72056505f100>
    #     args = ()
    #     fn = <function Document.run_method.<locals>.fn at 0x72056505f740>
    #     hooks = ()
    #     kwargs = {}
    #     method = 'save_customization'
    #     self = <CustomizeForm: Customize Form>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/model/document.py", line 1013, in fn
    #     return method_object(*args, **kwargs)
    #     args = ()
    #     kwargs = {}
    #     method = 'save_customization'
    #     method_object = <bound method CustomizeForm.save_customization of <CustomizeForm: Customize Form>>
    #     self = <CustomizeForm: Customize Form>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/utils/typing_validations.py", line 32, in wrapper
    #     return func(*args, **kwargs)
    #     apply_condition = <function whitelist.<locals>.innerfn.<locals>.<lambda> at 0x7205684df740>
    #     args = (<CustomizeForm: Customize Form>,)
    #     func = <function CustomizeForm.save_customization at 0x7205684df6a0>
    #     kwargs = {}
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/custom/doctype/customize_form/customize_form.py", line 235, in save_customization
    #     self.set_property_setters()
    #     ~~~~~~~~~~~~~~~~~~~~~~~~~^^
    #     self = <CustomizeForm: Customize Form>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/custom/doctype/customize_form/customize_form.py", line 271, in set_property_setters
    #     self.set_property_setters_for_doctype(meta)
    #     ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^^^^^^
    #     meta = <Meta: Event>
    #     self = <CustomizeForm: Customize Form>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/custom/doctype/customize_form/customize_form.py", line 315, in set_property_setters_for_doctype
    #     self.make_property_setter(prop, self.get(prop), prop_type)
    #     ~~~~~~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     meta = <Meta: Event>
    #     prop = 'allow_copy'
    #     prop_type = 'Check'
    #     self = <CustomizeForm: Customize Form>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/custom/doctype/customize_form/customize_form.py", line 536, in make_property_setter
    #     delete_property_setter(self.doc_type, prop, fieldname, row_name)
    #     ~~~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     apply_on = None
    #     fieldname = None
    #     prop = 'allow_copy'
    #     property_type = 'Check'
    #     row_name = None
    #     self = <CustomizeForm: Customize Form>
    #     value = 0
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/custom/doctype/property_setter/property_setter.py", line 104, in delete_property_setter
    #     _delete_property_setters(filters)
    #     ~~~~~~~~~~~~~~~~~~~~~~~~^^^^^^^^^
    #     doc_type = 'Event'
    #     field_name = None
    #     filters = {'doc_type': 'Event', 'property': 'allow_copy'}
    #     property = 'allow_copy'
    #     row_name = None
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/custom/doctype/property_setter/property_setter.py", line 160, in _delete_property_setters
    #     frappe.get_doc("Property Setter", ps).delete(ignore_permissions=True, force=True)
    #     ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     filters = {'doc_type': 'Event', 'property': 'allow_copy'}
    #     property_setters = ['Event-main-allow_copy']
    #     ps = 'Event-main-allow_copy'
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/model/document.py", line 1116, in delete
    #     return frappe.delete_doc(
    #            ~~~~~~~~~~~~~~~~~^
    #     	self.doctype,
    #      ^^^^^^^^^^^^^
    #     ...<4 lines>...
    #     	delete_permanently=delete_permanently,
    #      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     )
    #     ^
    #     delete_permanently = False
    #     force = True
    #     ignore_permissions = True
    #     self = <PropertySetter: Event-main-allow_copy>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/__init__.py", line 1378, in delete_doc
    #     return frappe.model.delete_doc.delete_doc(
    #            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^
    #     	doctype,
    #      ^^^^^^^^
    #     ...<8 lines>...
    #     	delete_permanently,
    #      ^^^^^^^^^^^^^^^^^^^
    #     )
    #     ^
    #     delete_permanently = False
    #     doctype = 'Property Setter'
    #     flags = {'for_update': None, 'ignore_permissions': True}
    #     for_reload = False
    #     force = True
    #     frappe = <module 'frappe' from '/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/__init__.py'>
    #     ignore_doctypes = None
    #     ignore_missing = True
    #     ignore_on_trash = False
    #     ignore_permissions = True
    #     name = 'Event-main-allow_copy'
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/model/delete_doc.py", line 154, in delete_doc
    #     frappe.enqueue(
    #     ~~~~~~~~~~~~~~^
    #     	"frappe.model.delete_doc.delete_dynamic_links",
    #      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     ...<3 lines>...
    #     	enqueue_after_commit=True,
    #      ^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     )
    #     ^
    #     delete_permanently = False
    #     doc = <PropertySetter: Event-main-allow_copy>
    #     doctype = 'Property Setter'
    #     flags = {'for_update': None, 'ignore_permissions': True}
    #     for_reload = False
    #     force = True
    #     ignore_doctypes = []
    #     ignore_missing = True
    #     ignore_on_trash = False
    #     ignore_permissions = True
    #     is_virtual = 0
    #     name = 'Event-main-allow_copy'
    #     names = ['Event-main-allow_copy']
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/__init__.py", line 2271, in enqueue
    #     return frappe.utils.background_jobs.enqueue(*args, **kwargs)
    #            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^
    #     args = ('frappe.model.delete_doc.delete_dynamic_links',)
    #     frappe = <module 'frappe' from '/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/__init__.py'>
    #     kwargs = {'doctype': 'Property Setter', 'name': 'Event-main-allow_copy', 'now': True, 'enqueue_after_commit': True}
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/utils/background_jobs.py", line 120, in enqueue
    #     return frappe.call(method, **kwargs)
    #            ~~~~~~~~~~~^^^^^^^^^^^^^^^^^^
    #     at_front = False
    #     call_directly = True
    #     deduplicate = False
    #     enqueue_after_commit = True
    #     event = None
    #     is_async = True
    #     job_id = 'erp.frx.localhost::8da369a9-fa2e-45a9-a9d6-046ae988bc2c'
    #     job_name = None
    #     kwargs = {'doctype': 'Property Setter', 'name': 'Event-main-allow_copy'}
    #     method = 'frappe.model.delete_doc.delete_dynamic_links'
    #     now = True
    #     on_failure = None
    #     on_success = None
    #     queue = 'default'
    #     timeout = None
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/__init__.py", line 1762, in call
    #     return fn(*args, **newargs)
    #     args = ()
    #     fn = <function delete_dynamic_links at 0x72056a6f22a0>
    #     kwargs = {'doctype': 'Property Setter', 'name': 'Event-main-allow_copy'}
    #     newargs = {'doctype': 'Property Setter', 'name': 'Event-main-allow_copy'}
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/model/delete_doc.py", line 449, in delete_dynamic_links
    #     delete_references("ToDo", doctype, name, "reference_type")
    #     ~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     doctype = 'Property Setter'
    #     name = 'Event-main-allow_copy'
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/model/delete_doc.py", line 473, in delete_references
    #     frappe.db.delete(
    #     ~~~~~~~~~~~~~~~~^
    #     	doctype, {reference_doctype_field: reference_doctype, reference_name_field: reference_name}
    #      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     )
    #     ^
    #     doctype = 'ToDo'
    #     reference_doctype = 'Property Setter'
    #     reference_doctype_field = 'reference_type'
    #     reference_name = 'Event-main-allow_copy'
    #     reference_name_field = 'reference_name'
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/database/database.py", line 1414, in delete
    #     return query.run(**kwargs)
    #            ~~~~~~~~~^^^^^^^^^^
    #     debug = False
    #     doctype = 'ToDo'
    #     filters = {'reference_type': 'Property Setter', 'reference_name': 'Event-main-allow_copy'}
    #     kwargs = {'debug': False}
    #     query = DELETE FROM `tabToDo` WHERE `reference_type`='Property Setter' AND `reference_name`='Event-main-allow_copy'
    #     self = <frappe.database.mariadb.database.MariaDBDatabase object at 0x7205665b1480>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/query_builder/utils.py", line 87, in execute_query
    #     result = frappe.db.sql(query, params, *args, **kwargs)  # nosemgrep
    #     args = ()
    #     child_queries = []
    #     execute_child_queries = <function patch_query_execute.<locals>.execute_child_queries at 0x72056c50e3e0>
    #     kwargs = {'debug': False}
    #     params = {'param1': 'Property Setter', 'param2': 'Event-main-allow_copy'}
    #     prepare_query = <function patch_query_execute.<locals>.prepare_query at 0x72056c50e480>
    #     query = 'DELETE FROM `tabToDo` WHERE `reference_type`=%(param1)s AND `reference_name`=%(param2)s'
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/database/database.py", line 230, in sql
    #     self._cursor.execute(query, values)
    #     ~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^
    #     as_dict = 0
    #     as_iterator = False
    #     as_list = 0
    #     auto_commit = 0
    #     debug = False
    #     explain = False
    #     ignore_ddl = 0
    #     pluck = False
    #     query = 'DELETE FROM `tabToDo` WHERE `reference_type`=%(param1)s AND `reference_name`=%(param2)s'
    #     run = True
    #     self = <frappe.database.mariadb.database.MariaDBDatabase object at 0x7205665b1480>
    #     trace_id = None
    #     update = None
    #     values = {'param1': 'Property Setter', 'param2': 'Event-main-allow_copy'}
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/cursors.py", line 153, in execute
    #     result = self._query(query)
    #     args = {'param1': 'Property Setter', 'param2': 'Event-main-allow_copy'}
    #     query = "DELETE FROM `tabToDo` WHERE `reference_type`='Property Setter' AND `reference_name`='Event-main-allow_copy'"
    #     self = <pymysql.cursors.Cursor object at 0x72055f41ec10>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/cursors.py", line 322, in _query
    #     conn.query(q)
    #     ~~~~~~~~~~^^^
    #     conn = <pymysql.connections.Connection object at 0x72055f567ed0>
    #     q = "DELETE FROM `tabToDo` WHERE `reference_type`='Property Setter' AND `reference_name`='Event-main-allow_copy'"
    #     self = <pymysql.cursors.Cursor object at 0x72055f41ec10>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/connections.py", line 575, in query
    #     self._affected_rows = self._read_query_result(unbuffered=unbuffered)
    #                           ~~~~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^
    #     self = <pymysql.connections.Connection object at 0x72055f567ed0>
    #     sql = b"DELETE FROM `tabToDo` WHERE `reference_type`='Property Setter' AND `reference_name`='Event-main-allow_copy'"
    #     unbuffered = False
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/connections.py", line 826, in _read_query_result
    #     result.read()
    #     ~~~~~~~~~~~^^
    #     result = <pymysql.connections.MySQLResult object at 0x72055f301190>
    #     self = <pymysql.connections.Connection object at 0x72055f567ed0>
    #     unbuffered = False
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/connections.py", line 1203, in read
    #     first_packet = self.connection._read_packet()
    #     self = <pymysql.connections.MySQLResult object at 0x72055f301190>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/connections.py", line 782, in _read_packet
    #     packet.raise_for_error()
    #     ~~~~~~~~~~~~~~~~~~~~~~^^
    #     btrh = 0
    #     btrl = 56
    #     buff = bytearray(b"\xffz\x04#42S02Table \'erp_frx_localhost.tabToDo\' doesn\'t exist")
    #     bytes_to_read = 56
    #     packet = <pymysql.protocol.MysqlPacket object at 0x72055f429360>
    #     packet_header = b'8\x00\x00\x01'
    #     packet_number = 1
    #     packet_type = <class 'pymysql.protocol.MysqlPacket'>
    #     recv_data = b"\xffz\x04#42S02Table 'erp_frx_localhost.tabToDo' doesn't exist"
    #     self = <pymysql.connections.Connection object at 0x72055f567ed0>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/protocol.py", line 219, in raise_for_error
    #     err.raise_mysql_exception(self._data)
    #     ~~~~~~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^
    #     errno = 1146
    #     self = <pymysql.protocol.MysqlPacket object at 0x72055f429360>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/err.py", line 150, in raise_mysql_exception
    #     raise errorclass(errno, errval)
    #     data = b"\xffz\x04#42S02Table 'erp_frx_localhost.tabToDo' doesn't exist"
    #     errno = 1146
    #     errorclass = <class 'pymysql.err.ProgrammingError'>
    #     errval = "Table 'erp_frx_localhost.tabToDo' doesn't exist"
    # pymysql.err.ProgrammingError: (1146, "Table 'erp_frx_localhost.tabToDo' doesn't exist")
    #
  }
  {
    id = "";

    # Traceback (most recent call last):
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/custom/doctype/customize_form/test_customize_form.py", line 40, in tearDown
    #     frappe.delete_doc("Custom Field", self.field.name)
    #     ~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     self = <frappe.custom.doctype.customize_form.test_customize_form.TestCustomizeForm testMethod=test_save_customization_property>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/__init__.py", line 1378, in delete_doc
    #     return frappe.model.delete_doc.delete_doc(
    #            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^
    #     	doctype,
    #      ^^^^^^^^
    #     ...<8 lines>...
    #     	delete_permanently,
    #      ^^^^^^^^^^^^^^^^^^^
    #     )
    #     ^
    #     delete_permanently = False
    #     doctype = 'Custom Field'
    #     flags = None
    #     for_reload = False
    #     force = False
    #     frappe = <module 'frappe' from '/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/__init__.py'>
    #     ignore_doctypes = None
    #     ignore_missing = True
    #     ignore_on_trash = False
    #     ignore_permissions = False
    #     name = 'Event-custom_test_field'
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/model/delete_doc.py", line 154, in delete_doc
    #     frappe.enqueue(
    #     ~~~~~~~~~~~~~~^
    #     	"frappe.model.delete_doc.delete_dynamic_links",
    #      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     ...<3 lines>...
    #     	enqueue_after_commit=True,
    #      ^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     )
    #     ^
    #     delete_permanently = False
    #     doc = <CustomField: Event-custom_test_field>
    #     doctype = 'Custom Field'
    #     flags = None
    #     for_reload = False
    #     force = False
    #     ignore_doctypes = []
    #     ignore_missing = True
    #     ignore_on_trash = False
    #     ignore_permissions = False
    #     is_virtual = 0
    #     name = 'Event-custom_test_field'
    #     names = ['Event-custom_test_field']
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/__init__.py", line 2271, in enqueue
    #     return frappe.utils.background_jobs.enqueue(*args, **kwargs)
    #            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^
    #     args = ('frappe.model.delete_doc.delete_dynamic_links',)
    #     frappe = <module 'frappe' from '/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/__init__.py'>
    #     kwargs = {'doctype': 'Custom Field', 'name': 'Event-custom_test_field', 'now': True, 'enqueue_after_commit': True}
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/utils/background_jobs.py", line 120, in enqueue
    #     return frappe.call(method, **kwargs)
    #            ~~~~~~~~~~~^^^^^^^^^^^^^^^^^^
    #     at_front = False
    #     call_directly = True
    #     deduplicate = False
    #     enqueue_after_commit = True
    #     event = None
    #     is_async = True
    #     job_id = 'erp.frx.localhost::c10883cd-d71f-4344-8cbf-8e88b3bf0358'
    #     job_name = None
    #     kwargs = {'doctype': 'Custom Field', 'name': 'Event-custom_test_field'}
    #     method = 'frappe.model.delete_doc.delete_dynamic_links'
    #     now = True
    #     on_failure = None
    #     on_success = None
    #     queue = 'default'
    #     timeout = None
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/__init__.py", line 1762, in call
    #     return fn(*args, **newargs)
    #     args = ()
    #     fn = <function delete_dynamic_links at 0x72056a6f22a0>
    #     kwargs = {'doctype': 'Custom Field', 'name': 'Event-custom_test_field'}
    #     newargs = {'doctype': 'Custom Field', 'name': 'Event-custom_test_field'}
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/model/delete_doc.py", line 449, in delete_dynamic_links
    #     delete_references("ToDo", doctype, name, "reference_type")
    #     ~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     doctype = 'Custom Field'
    #     name = 'Event-custom_test_field'
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/model/delete_doc.py", line 473, in delete_references
    #     frappe.db.delete(
    #     ~~~~~~~~~~~~~~~~^
    #     	doctype, {reference_doctype_field: reference_doctype, reference_name_field: reference_name}
    #      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     )
    #     ^
    #     doctype = 'ToDo'
    #     reference_doctype = 'Custom Field'
    #     reference_doctype_field = 'reference_type'
    #     reference_name = 'Event-custom_test_field'
    #     reference_name_field = 'reference_name'
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/database/database.py", line 1414, in delete
    #     return query.run(**kwargs)
    #            ~~~~~~~~~^^^^^^^^^^
    #     debug = False
    #     doctype = 'ToDo'
    #     filters = {'reference_type': 'Custom Field', 'reference_name': 'Event-custom_test_field'}
    #     kwargs = {'debug': False}
    #     query = DELETE FROM `tabToDo` WHERE `reference_type`='Custom Field' AND `reference_name`='Event-custom_test_field'
    #     self = <frappe.database.mariadb.database.MariaDBDatabase object at 0x7205665b1480>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/query_builder/utils.py", line 87, in execute_query
    #     result = frappe.db.sql(query, params, *args, **kwargs)  # nosemgrep
    #     args = ()
    #     child_queries = []
    #     execute_child_queries = <function patch_query_execute.<locals>.execute_child_queries at 0x72056c50e3e0>
    #     kwargs = {'debug': False}
    #     params = {'param1': 'Custom Field', 'param2': 'Event-custom_test_field'}
    #     prepare_query = <function patch_query_execute.<locals>.prepare_query at 0x72056c50e480>
    #     query = 'DELETE FROM `tabToDo` WHERE `reference_type`=%(param1)s AND `reference_name`=%(param2)s'
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/database/database.py", line 230, in sql
    #     self._cursor.execute(query, values)
    #     ~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^
    #     as_dict = 0
    #     as_iterator = False
    #     as_list = 0
    #     auto_commit = 0
    #     debug = False
    #     explain = False
    #     ignore_ddl = 0
    #     pluck = False
    #     query = 'DELETE FROM `tabToDo` WHERE `reference_type`=%(param1)s AND `reference_name`=%(param2)s'
    #     run = True
    #     self = <frappe.database.mariadb.database.MariaDBDatabase object at 0x7205665b1480>
    #     trace_id = None
    #     update = None
    #     values = {'param1': 'Custom Field', 'param2': 'Event-custom_test_field'}
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/cursors.py", line 153, in execute
    #     result = self._query(query)
    #     args = {'param1': 'Custom Field', 'param2': 'Event-custom_test_field'}
    #     query = "DELETE FROM `tabToDo` WHERE `reference_type`='Custom Field' AND `reference_name`='Event-custom_test_field'"
    #     self = <pymysql.cursors.Cursor object at 0x72055f41ec10>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/cursors.py", line 322, in _query
    #     conn.query(q)
    #     ~~~~~~~~~~^^^
    #     conn = <pymysql.connections.Connection object at 0x72055f567ed0>
    #     q = "DELETE FROM `tabToDo` WHERE `reference_type`='Custom Field' AND `reference_name`='Event-custom_test_field'"
    #     self = <pymysql.cursors.Cursor object at 0x72055f41ec10>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/connections.py", line 575, in query
    #     self._affected_rows = self._read_query_result(unbuffered=unbuffered)
    #                           ~~~~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^
    #     self = <pymysql.connections.Connection object at 0x72055f567ed0>
    #     sql = b"DELETE FROM `tabToDo` WHERE `reference_type`='Custom Field' AND `reference_name`='Event-custom_test_field'"
    #     unbuffered = False
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/connections.py", line 826, in _read_query_result
    #     result.read()
    #     ~~~~~~~~~~~^^
    #     result = <pymysql.connections.MySQLResult object at 0x72055f301610>
    #     self = <pymysql.connections.Connection object at 0x72055f567ed0>
    #     unbuffered = False
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/connections.py", line 1203, in read
    #     first_packet = self.connection._read_packet()
    #     self = <pymysql.connections.MySQLResult object at 0x72055f301610>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/connections.py", line 782, in _read_packet
    #     packet.raise_for_error()
    #     ~~~~~~~~~~~~~~~~~~~~~~^^
    #     btrh = 0
    #     btrl = 56
    #     buff = bytearray(b"\xffz\x04#42S02Table \'erp_frx_localhost.tabToDo\' doesn\'t exist")
    #     bytes_to_read = 56
    #     packet = <pymysql.protocol.MysqlPacket object at 0x72055fe35780>
    #     packet_header = b'8\x00\x00\x01'
    #     packet_number = 1
    #     packet_type = <class 'pymysql.protocol.MysqlPacket'>
    #     recv_data = b"\xffz\x04#42S02Table 'erp_frx_localhost.tabToDo' doesn't exist"
    #     self = <pymysql.connections.Connection object at 0x72055f567ed0>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/protocol.py", line 219, in raise_for_error
    #     err.raise_mysql_exception(self._data)
    #     ~~~~~~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^
    #     errno = 1146
    #     self = <pymysql.protocol.MysqlPacket object at 0x72055fe35780>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/err.py", line 150, in raise_mysql_exception
    #     raise errorclass(errno, errval)
    #     data = b"\xffz\x04#42S02Table 'erp_frx_localhost.tabToDo' doesn't exist"
    #     errno = 1146
    #     errorclass = <class 'pymysql.err.ProgrammingError'>
    #     errval = "Table 'erp_frx_localhost.tabToDo' doesn't exist"
    # pymysql.err.ProgrammingError: (1146, "Table 'erp_frx_localhost.tabToDo' doesn't exist")
    #
  }
  {
    id = "";

    # Traceback (most recent call last):
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/custom/doctype/customize_form/test_customize_form.py", line 174, in test_save_customization_remove_field
    #     d.run_method("save_customization")
    #     ~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^
    #     custom_field = <CustomizeFormField: Event-custom_test_field parent=Customize Form>
    #     d = <CustomizeForm: Customize Form>
    #     self = <frappe.custom.doctype.customize_form.test_customize_form.TestCustomizeForm testMethod=test_save_customization_remove_field>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/model/document.py", line 1016, in run_method
    #     out = Document.hook(fn)(self, *args, **kwargs)
    #     args = ()
    #     fn = <function Document.run_method.<locals>.fn at 0x72055f3ba660>
    #     kwargs = {}
    #     method = 'save_customization'
    #     self = <CustomizeForm: Customize Form>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/model/document.py", line 1376, in composer
    #     return composed(self, method, *args, **kwargs)
    #     args = ()
    #     compose = <function Document.hook.<locals>.compose at 0x72055f3bbba0>
    #     composed = <function Document.hook.<locals>.compose.<locals>.runner at 0x72055f3ba7a0>
    #     doc_events = {'*': {'on_update': ['frappe.desk.notifications.clear_doctype_notifications', 'frappe.workflow.doctype.workflow_action.workflow_action.process_workflow_actions', 'frappe.core.doctype.file.utils.attach_files_to_document', 'frappe.automation.doctype.assignment_rule.assignment_rule.apply', 'frappe.automation.doctype.assignment_rule.assignment_rule.update_due_date', 'frappe.core.doctype.user_type.user_type.apply_permissions_for_non_standard_user_type', 'frappe.search.sqlite_search.update_doc_index'], 'after_rename': ['frappe.desk.notifications.clear_doctype_notifications'], 'on_cancel': ['frappe.desk.notifications.clear_doctype_notifications', 'frappe.workflow.doctype.workflow_action.workflow_action.process_workflow_actions', 'frappe.automation.doctype.assignment_rule.assignment_rule.apply'], 'on_trash': ['frappe.desk.notifications.clear_doctype_notifications', 'frappe.workflow.doctype.workflow_action.workflow_action.process_workflow_actions', 'frappe.search.sqlite_search.delete_doc_index'], 'on_update_after_submit': ['frappe.workflow.doctype.workflow_action.workflow_action.process_workflow_actions', 'frappe.automation.doctype.assignment_rule.assignment_rule.apply', 'frappe.automation.doctype.assignment_rule.assignment_rule.update_due_date', 'frappe.core.doctype.file.utils.attach_files_to_document'], 'on_change': ['frappe.social.doctype.energy_point_rule.energy_point_rule.process_energy_points', 'frappe.automation.doctype.milestone_tracker.milestone_tracker.evaluate_milestone']}, 'Event': {'after_insert': ['frappe.integrations.doctype.google_calendar.google_calendar.insert_event_in_google_calendar'], 'on_update': ['frappe.integrations.doctype.google_calendar.google_calendar.update_event_in_google_calendar'], 'on_trash': ['frappe.integrations.doctype.google_calendar.google_calendar.delete_event_from_google_calendar']}, 'Contact': {'after_insert': ['frappe.integrations.doctype.google_contacts.google_contacts.insert_contacts_to_google_contacts'], 'on_update': ['frappe.integrations.doctype.google_contacts.google_contacts.update_contacts_to_google_contacts']}, 'DocType': {'on_update': ['frappe.cache_manager.build_domain_restriced_doctype_cache']}, 'Page': {'on_update': ['frappe.cache_manager.build_domain_restriced_page_cache']}}
    #     f = <function Document.run_method.<locals>.fn at 0x72055f3ba660>
    #     hooks = []
    #     kwargs = {}
    #     method = 'save_customization'
    #     self = <CustomizeForm: Customize Form>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/model/document.py", line 1358, in runner
    #     add_to_return_value(self, fn(self, *args, **kwargs))
    #                               ~~^^^^^^^^^^^^^^^^^^^^^^^
    #     add_to_return_value = <function Document.hook.<locals>.add_to_return_value at 0x72055f3ba840>
    #     args = ()
    #     fn = <function Document.run_method.<locals>.fn at 0x72055f3ba660>
    #     hooks = ()
    #     kwargs = {}
    #     method = 'save_customization'
    #     self = <CustomizeForm: Customize Form>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/model/document.py", line 1013, in fn
    #     return method_object(*args, **kwargs)
    #     args = ()
    #     kwargs = {}
    #     method = 'save_customization'
    #     method_object = <bound method CustomizeForm.save_customization of <CustomizeForm: Customize Form>>
    #     self = <CustomizeForm: Customize Form>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/utils/typing_validations.py", line 32, in wrapper
    #     return func(*args, **kwargs)
    #     apply_condition = <function whitelist.<locals>.innerfn.<locals>.<lambda> at 0x7205684df740>
    #     args = (<CustomizeForm: Customize Form>,)
    #     func = <function CustomizeForm.save_customization at 0x7205684df6a0>
    #     kwargs = {}
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/custom/doctype/customize_form/customize_form.py", line 236, in save_customization
    #     self.update_custom_fields()
    #     ~~~~~~~~~~~~~~~~~~~~~~~~~^^
    #     self = <CustomizeForm: Customize Form>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/custom/doctype/customize_form/customize_form.py", line 473, in update_custom_fields
    #     self.delete_custom_fields()
    #     ~~~~~~~~~~~~~~~~~~~~~~~~~^^
    #     df = <CustomizeFormField: qvc7eehqdu parent=Customize Form>
    #     i = 47
    #     self = <CustomizeForm: Customize Form>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/custom/doctype/customize_form/customize_form.py", line 533, in delete_custom_fields
    #     frappe.delete_doc("Custom Field", df.name)
    #     ~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^
    #     df = <SelectDocField: custom_test_field parent=Event>
    #     fieldname = 'custom_test_field'
    #     fields_to_remove = {'custom_test_field'}
    #     meta = <Meta: Event>
    #     self = <CustomizeForm: Customize Form>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/__init__.py", line 1378, in delete_doc
    #     return frappe.model.delete_doc.delete_doc(
    #            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^
    #     	doctype,
    #      ^^^^^^^^
    #     ...<8 lines>...
    #     	delete_permanently,
    #      ^^^^^^^^^^^^^^^^^^^
    #     )
    #     ^
    #     delete_permanently = False
    #     doctype = 'Custom Field'
    #     flags = None
    #     for_reload = False
    #     force = False
    #     frappe = <module 'frappe' from '/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/__init__.py'>
    #     ignore_doctypes = None
    #     ignore_missing = True
    #     ignore_on_trash = False
    #     ignore_permissions = False
    #     name = 'Event-custom_test_field'
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/model/delete_doc.py", line 154, in delete_doc
    #     frappe.enqueue(
    #     ~~~~~~~~~~~~~~^
    #     	"frappe.model.delete_doc.delete_dynamic_links",
    #      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     ...<3 lines>...
    #     	enqueue_after_commit=True,
    #      ^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     )
    #     ^
    #     delete_permanently = False
    #     doc = <CustomField: Event-custom_test_field>
    #     doctype = 'Custom Field'
    #     flags = None
    #     for_reload = False
    #     force = False
    #     ignore_doctypes = []
    #     ignore_missing = True
    #     ignore_on_trash = False
    #     ignore_permissions = False
    #     is_virtual = 0
    #     name = 'Event-custom_test_field'
    #     names = ['Event-custom_test_field']
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/__init__.py", line 2271, in enqueue
    #     return frappe.utils.background_jobs.enqueue(*args, **kwargs)
    #            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^
    #     args = ('frappe.model.delete_doc.delete_dynamic_links',)
    #     frappe = <module 'frappe' from '/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/__init__.py'>
    #     kwargs = {'doctype': 'Custom Field', 'name': 'Event-custom_test_field', 'now': True, 'enqueue_after_commit': True}
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/utils/background_jobs.py", line 120, in enqueue
    #     return frappe.call(method, **kwargs)
    #            ~~~~~~~~~~~^^^^^^^^^^^^^^^^^^
    #     at_front = False
    #     call_directly = True
    #     deduplicate = False
    #     enqueue_after_commit = True
    #     event = None
    #     is_async = True
    #     job_id = 'erp.frx.localhost::d9c08f6b-d076-4124-8ad9-7ca545c7c6f4'
    #     job_name = None
    #     kwargs = {'doctype': 'Custom Field', 'name': 'Event-custom_test_field'}
    #     method = 'frappe.model.delete_doc.delete_dynamic_links'
    #     now = True
    #     on_failure = None
    #     on_success = None
    #     queue = 'default'
    #     timeout = None
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/__init__.py", line 1762, in call
    #     return fn(*args, **newargs)
    #     args = ()
    #     fn = <function delete_dynamic_links at 0x72056a6f22a0>
    #     kwargs = {'doctype': 'Custom Field', 'name': 'Event-custom_test_field'}
    #     newargs = {'doctype': 'Custom Field', 'name': 'Event-custom_test_field'}
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/model/delete_doc.py", line 449, in delete_dynamic_links
    #     delete_references("ToDo", doctype, name, "reference_type")
    #     ~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     doctype = 'Custom Field'
    #     name = 'Event-custom_test_field'
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/model/delete_doc.py", line 473, in delete_references
    #     frappe.db.delete(
    #     ~~~~~~~~~~~~~~~~^
    #     	doctype, {reference_doctype_field: reference_doctype, reference_name_field: reference_name}
    #      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     )
    #     ^
    #     doctype = 'ToDo'
    #     reference_doctype = 'Custom Field'
    #     reference_doctype_field = 'reference_type'
    #     reference_name = 'Event-custom_test_field'
    #     reference_name_field = 'reference_name'
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/database/database.py", line 1414, in delete
    #     return query.run(**kwargs)
    #            ~~~~~~~~~^^^^^^^^^^
    #     debug = False
    #     doctype = 'ToDo'
    #     filters = {'reference_type': 'Custom Field', 'reference_name': 'Event-custom_test_field'}
    #     kwargs = {'debug': False}
    #     query = DELETE FROM `tabToDo` WHERE `reference_type`='Custom Field' AND `reference_name`='Event-custom_test_field'
    #     self = <frappe.database.mariadb.database.MariaDBDatabase object at 0x7205665b1480>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/query_builder/utils.py", line 87, in execute_query
    #     result = frappe.db.sql(query, params, *args, **kwargs)  # nosemgrep
    #     args = ()
    #     child_queries = []
    #     execute_child_queries = <function patch_query_execute.<locals>.execute_child_queries at 0x72056c50e3e0>
    #     kwargs = {'debug': False}
    #     params = {'param1': 'Custom Field', 'param2': 'Event-custom_test_field'}
    #     prepare_query = <function patch_query_execute.<locals>.prepare_query at 0x72056c50e480>
    #     query = 'DELETE FROM `tabToDo` WHERE `reference_type`=%(param1)s AND `reference_name`=%(param2)s'
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/database/database.py", line 230, in sql
    #     self._cursor.execute(query, values)
    #     ~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^
    #     as_dict = 0
    #     as_iterator = False
    #     as_list = 0
    #     auto_commit = 0
    #     debug = False
    #     explain = False
    #     ignore_ddl = 0
    #     pluck = False
    #     query = 'DELETE FROM `tabToDo` WHERE `reference_type`=%(param1)s AND `reference_name`=%(param2)s'
    #     run = True
    #     self = <frappe.database.mariadb.database.MariaDBDatabase object at 0x7205665b1480>
    #     trace_id = None
    #     update = None
    #     values = {'param1': 'Custom Field', 'param2': 'Event-custom_test_field'}
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/cursors.py", line 153, in execute
    #     result = self._query(query)
    #     args = {'param1': 'Custom Field', 'param2': 'Event-custom_test_field'}
    #     query = "DELETE FROM `tabToDo` WHERE `reference_type`='Custom Field' AND `reference_name`='Event-custom_test_field'"
    #     self = <pymysql.cursors.Cursor object at 0x72055f41ec10>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/cursors.py", line 322, in _query
    #     conn.query(q)
    #     ~~~~~~~~~~^^^
    #     conn = <pymysql.connections.Connection object at 0x72055f567ed0>
    #     q = "DELETE FROM `tabToDo` WHERE `reference_type`='Custom Field' AND `reference_name`='Event-custom_test_field'"
    #     self = <pymysql.cursors.Cursor object at 0x72055f41ec10>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/connections.py", line 575, in query
    #     self._affected_rows = self._read_query_result(unbuffered=unbuffered)
    #                           ~~~~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^
    #     self = <pymysql.connections.Connection object at 0x72055f567ed0>
    #     sql = b"DELETE FROM `tabToDo` WHERE `reference_type`='Custom Field' AND `reference_name`='Event-custom_test_field'"
    #     unbuffered = False
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/connections.py", line 826, in _read_query_result
    #     result.read()
    #     ~~~~~~~~~~~^^
    #     result = <pymysql.connections.MySQLResult object at 0x72055f301190>
    #     self = <pymysql.connections.Connection object at 0x72055f567ed0>
    #     unbuffered = False
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/connections.py", line 1203, in read
    #     first_packet = self.connection._read_packet()
    #     self = <pymysql.connections.MySQLResult object at 0x72055f301190>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/connections.py", line 782, in _read_packet
    #     packet.raise_for_error()
    #     ~~~~~~~~~~~~~~~~~~~~~~^^
    #     btrh = 0
    #     btrl = 56
    #     buff = bytearray(b"\xffz\x04#42S02Table \'erp_frx_localhost.tabToDo\' doesn\'t exist")
    #     bytes_to_read = 56
    #     packet = <pymysql.protocol.MysqlPacket object at 0x72055f4280d0>
    #     packet_header = b'8\x00\x00\x01'
    #     packet_number = 1
    #     packet_type = <class 'pymysql.protocol.MysqlPacket'>
    #     recv_data = b"\xffz\x04#42S02Table 'erp_frx_localhost.tabToDo' doesn't exist"
    #     self = <pymysql.connections.Connection object at 0x72055f567ed0>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/protocol.py", line 219, in raise_for_error
    #     err.raise_mysql_exception(self._data)
    #     ~~~~~~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^
    #     errno = 1146
    #     self = <pymysql.protocol.MysqlPacket object at 0x72055f4280d0>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/err.py", line 150, in raise_mysql_exception
    #     raise errorclass(errno, errval)
    #     data = b"\xffz\x04#42S02Table 'erp_frx_localhost.tabToDo' doesn't exist"
    #     errno = 1146
    #     errorclass = <class 'pymysql.err.ProgrammingError'>
    #     errval = "Table 'erp_frx_localhost.tabToDo' doesn't exist"
    # pymysql.err.ProgrammingError: (1146, "Table 'erp_frx_localhost.tabToDo' doesn't exist")
    #
  }
  {
    id = "";

    # Traceback (most recent call last):
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/custom/doctype/customize_form/test_customize_form.py", line 40, in tearDown
    #     frappe.delete_doc("Custom Field", self.field.name)
    #     ~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     self = <frappe.custom.doctype.customize_form.test_customize_form.TestCustomizeForm testMethod=test_set_allow_on_submit>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/__init__.py", line 1378, in delete_doc
    #     return frappe.model.delete_doc.delete_doc(
    #            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^
    #     	doctype,
    #      ^^^^^^^^
    #     ...<8 lines>...
    #     	delete_permanently,
    #      ^^^^^^^^^^^^^^^^^^^
    #     )
    #     ^
    #     delete_permanently = False
    #     doctype = 'Custom Field'
    #     flags = None
    #     for_reload = False
    #     force = False
    #     frappe = <module 'frappe' from '/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/__init__.py'>
    #     ignore_doctypes = None
    #     ignore_missing = True
    #     ignore_on_trash = False
    #     ignore_permissions = False
    #     name = 'Event-custom_test_field'
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/model/delete_doc.py", line 154, in delete_doc
    #     frappe.enqueue(
    #     ~~~~~~~~~~~~~~^
    #     	"frappe.model.delete_doc.delete_dynamic_links",
    #      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     ...<3 lines>...
    #     	enqueue_after_commit=True,
    #      ^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     )
    #     ^
    #     delete_permanently = False
    #     doc = <CustomField: Event-custom_test_field>
    #     doctype = 'Custom Field'
    #     flags = None
    #     for_reload = False
    #     force = False
    #     ignore_doctypes = []
    #     ignore_missing = True
    #     ignore_on_trash = False
    #     ignore_permissions = False
    #     is_virtual = 0
    #     name = 'Event-custom_test_field'
    #     names = ['Event-custom_test_field']
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/__init__.py", line 2271, in enqueue
    #     return frappe.utils.background_jobs.enqueue(*args, **kwargs)
    #            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^
    #     args = ('frappe.model.delete_doc.delete_dynamic_links',)
    #     frappe = <module 'frappe' from '/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/__init__.py'>
    #     kwargs = {'doctype': 'Custom Field', 'name': 'Event-custom_test_field', 'now': True, 'enqueue_after_commit': True}
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/utils/background_jobs.py", line 120, in enqueue
    #     return frappe.call(method, **kwargs)
    #            ~~~~~~~~~~~^^^^^^^^^^^^^^^^^^
    #     at_front = False
    #     call_directly = True
    #     deduplicate = False
    #     enqueue_after_commit = True
    #     event = None
    #     is_async = True
    #     job_id = 'erp.frx.localhost::5e921d70-0351-46b3-bde6-a2b98e75ee06'
    #     job_name = None
    #     kwargs = {'doctype': 'Custom Field', 'name': 'Event-custom_test_field'}
    #     method = 'frappe.model.delete_doc.delete_dynamic_links'
    #     now = True
    #     on_failure = None
    #     on_success = None
    #     queue = 'default'
    #     timeout = None
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/__init__.py", line 1762, in call
    #     return fn(*args, **newargs)
    #     args = ()
    #     fn = <function delete_dynamic_links at 0x72056a6f22a0>
    #     kwargs = {'doctype': 'Custom Field', 'name': 'Event-custom_test_field'}
    #     newargs = {'doctype': 'Custom Field', 'name': 'Event-custom_test_field'}
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/model/delete_doc.py", line 449, in delete_dynamic_links
    #     delete_references("ToDo", doctype, name, "reference_type")
    #     ~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     doctype = 'Custom Field'
    #     name = 'Event-custom_test_field'
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/model/delete_doc.py", line 473, in delete_references
    #     frappe.db.delete(
    #     ~~~~~~~~~~~~~~~~^
    #     	doctype, {reference_doctype_field: reference_doctype, reference_name_field: reference_name}
    #      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     )
    #     ^
    #     doctype = 'ToDo'
    #     reference_doctype = 'Custom Field'
    #     reference_doctype_field = 'reference_type'
    #     reference_name = 'Event-custom_test_field'
    #     reference_name_field = 'reference_name'
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/database/database.py", line 1414, in delete
    #     return query.run(**kwargs)
    #            ~~~~~~~~~^^^^^^^^^^
    #     debug = False
    #     doctype = 'ToDo'
    #     filters = {'reference_type': 'Custom Field', 'reference_name': 'Event-custom_test_field'}
    #     kwargs = {'debug': False}
    #     query = DELETE FROM `tabToDo` WHERE `reference_type`='Custom Field' AND `reference_name`='Event-custom_test_field'
    #     self = <frappe.database.mariadb.database.MariaDBDatabase object at 0x7205665b1480>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/query_builder/utils.py", line 87, in execute_query
    #     result = frappe.db.sql(query, params, *args, **kwargs)  # nosemgrep
    #     args = ()
    #     child_queries = []
    #     execute_child_queries = <function patch_query_execute.<locals>.execute_child_queries at 0x72056c50e3e0>
    #     kwargs = {'debug': False}
    #     params = {'param1': 'Custom Field', 'param2': 'Event-custom_test_field'}
    #     prepare_query = <function patch_query_execute.<locals>.prepare_query at 0x72056c50e480>
    #     query = 'DELETE FROM `tabToDo` WHERE `reference_type`=%(param1)s AND `reference_name`=%(param2)s'
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/database/database.py", line 230, in sql
    #     self._cursor.execute(query, values)
    #     ~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^
    #     as_dict = 0
    #     as_iterator = False
    #     as_list = 0
    #     auto_commit = 0
    #     debug = False
    #     explain = False
    #     ignore_ddl = 0
    #     pluck = False
    #     query = 'DELETE FROM `tabToDo` WHERE `reference_type`=%(param1)s AND `reference_name`=%(param2)s'
    #     run = True
    #     self = <frappe.database.mariadb.database.MariaDBDatabase object at 0x7205665b1480>
    #     trace_id = None
    #     update = None
    #     values = {'param1': 'Custom Field', 'param2': 'Event-custom_test_field'}
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/cursors.py", line 153, in execute
    #     result = self._query(query)
    #     args = {'param1': 'Custom Field', 'param2': 'Event-custom_test_field'}
    #     query = "DELETE FROM `tabToDo` WHERE `reference_type`='Custom Field' AND `reference_name`='Event-custom_test_field'"
    #     self = <pymysql.cursors.Cursor object at 0x72055f41ec10>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/cursors.py", line 322, in _query
    #     conn.query(q)
    #     ~~~~~~~~~~^^^
    #     conn = <pymysql.connections.Connection object at 0x72055f567ed0>
    #     q = "DELETE FROM `tabToDo` WHERE `reference_type`='Custom Field' AND `reference_name`='Event-custom_test_field'"
    #     self = <pymysql.cursors.Cursor object at 0x72055f41ec10>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/connections.py", line 575, in query
    #     self._affected_rows = self._read_query_result(unbuffered=unbuffered)
    #                           ~~~~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^
    #     self = <pymysql.connections.Connection object at 0x72055f567ed0>
    #     sql = b"DELETE FROM `tabToDo` WHERE `reference_type`='Custom Field' AND `reference_name`='Event-custom_test_field'"
    #     unbuffered = False
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/connections.py", line 826, in _read_query_result
    #     result.read()
    #     ~~~~~~~~~~~^^
    #     result = <pymysql.connections.MySQLResult object at 0x72055f3010d0>
    #     self = <pymysql.connections.Connection object at 0x72055f567ed0>
    #     unbuffered = False
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/connections.py", line 1203, in read
    #     first_packet = self.connection._read_packet()
    #     self = <pymysql.connections.MySQLResult object at 0x72055f3010d0>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/connections.py", line 782, in _read_packet
    #     packet.raise_for_error()
    #     ~~~~~~~~~~~~~~~~~~~~~~^^
    #     btrh = 0
    #     btrl = 56
    #     buff = bytearray(b"\xffz\x04#42S02Table \'erp_frx_localhost.tabToDo\' doesn\'t exist")
    #     bytes_to_read = 56
    #     packet = <pymysql.protocol.MysqlPacket object at 0x72055f618d60>
    #     packet_header = b'8\x00\x00\x01'
    #     packet_number = 1
    #     packet_type = <class 'pymysql.protocol.MysqlPacket'>
    #     recv_data = b"\xffz\x04#42S02Table 'erp_frx_localhost.tabToDo' doesn't exist"
    #     self = <pymysql.connections.Connection object at 0x72055f567ed0>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/protocol.py", line 219, in raise_for_error
    #     err.raise_mysql_exception(self._data)
    #     ~~~~~~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^
    #     errno = 1146
    #     self = <pymysql.protocol.MysqlPacket object at 0x72055f618d60>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/err.py", line 150, in raise_mysql_exception
    #     raise errorclass(errno, errval)
    #     data = b"\xffz\x04#42S02Table 'erp_frx_localhost.tabToDo' doesn't exist"
    #     errno = 1146
    #     errorclass = <class 'pymysql.err.ProgrammingError'>
    #     errval = "Table 'erp_frx_localhost.tabToDo' doesn't exist"
    # pymysql.err.ProgrammingError: (1146, "Table 'erp_frx_localhost.tabToDo' doesn't exist")
    #
  }
  {
    id = "";

    # Traceback (most recent call last):
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/custom/doctype/customize_form/test_customize_form.py", line 40, in tearDown
    #     frappe.delete_doc("Custom Field", self.field.name)
    #     ~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     self = <frappe.custom.doctype.customize_form.test_customize_form.TestCustomizeForm testMethod=test_system_generated_fields>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/__init__.py", line 1378, in delete_doc
    #     return frappe.model.delete_doc.delete_doc(
    #            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^
    #     	doctype,
    #      ^^^^^^^^
    #     ...<8 lines>...
    #     	delete_permanently,
    #      ^^^^^^^^^^^^^^^^^^^
    #     )
    #     ^
    #     delete_permanently = False
    #     doctype = 'Custom Field'
    #     flags = None
    #     for_reload = False
    #     force = False
    #     frappe = <module 'frappe' from '/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/__init__.py'>
    #     ignore_doctypes = None
    #     ignore_missing = True
    #     ignore_on_trash = False
    #     ignore_permissions = False
    #     name = 'Event-custom_test_field'
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/model/delete_doc.py", line 154, in delete_doc
    #     frappe.enqueue(
    #     ~~~~~~~~~~~~~~^
    #     	"frappe.model.delete_doc.delete_dynamic_links",
    #      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     ...<3 lines>...
    #     	enqueue_after_commit=True,
    #      ^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     )
    #     ^
    #     delete_permanently = False
    #     doc = <CustomField: Event-custom_test_field>
    #     doctype = 'Custom Field'
    #     flags = None
    #     for_reload = False
    #     force = False
    #     ignore_doctypes = []
    #     ignore_missing = True
    #     ignore_on_trash = False
    #     ignore_permissions = False
    #     is_virtual = 0
    #     name = 'Event-custom_test_field'
    #     names = ['Event-custom_test_field']
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/__init__.py", line 2271, in enqueue
    #     return frappe.utils.background_jobs.enqueue(*args, **kwargs)
    #            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^
    #     args = ('frappe.model.delete_doc.delete_dynamic_links',)
    #     frappe = <module 'frappe' from '/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/__init__.py'>
    #     kwargs = {'doctype': 'Custom Field', 'name': 'Event-custom_test_field', 'now': True, 'enqueue_after_commit': True}
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/utils/background_jobs.py", line 120, in enqueue
    #     return frappe.call(method, **kwargs)
    #            ~~~~~~~~~~~^^^^^^^^^^^^^^^^^^
    #     at_front = False
    #     call_directly = True
    #     deduplicate = False
    #     enqueue_after_commit = True
    #     event = None
    #     is_async = True
    #     job_id = 'erp.frx.localhost::fa0e7fc3-b45e-4c50-b84e-60732a253536'
    #     job_name = None
    #     kwargs = {'doctype': 'Custom Field', 'name': 'Event-custom_test_field'}
    #     method = 'frappe.model.delete_doc.delete_dynamic_links'
    #     now = True
    #     on_failure = None
    #     on_success = None
    #     queue = 'default'
    #     timeout = None
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/__init__.py", line 1762, in call
    #     return fn(*args, **newargs)
    #     args = ()
    #     fn = <function delete_dynamic_links at 0x72056a6f22a0>
    #     kwargs = {'doctype': 'Custom Field', 'name': 'Event-custom_test_field'}
    #     newargs = {'doctype': 'Custom Field', 'name': 'Event-custom_test_field'}
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/model/delete_doc.py", line 449, in delete_dynamic_links
    #     delete_references("ToDo", doctype, name, "reference_type")
    #     ~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     doctype = 'Custom Field'
    #     name = 'Event-custom_test_field'
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/model/delete_doc.py", line 473, in delete_references
    #     frappe.db.delete(
    #     ~~~~~~~~~~~~~~~~^
    #     	doctype, {reference_doctype_field: reference_doctype, reference_name_field: reference_name}
    #      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     )
    #     ^
    #     doctype = 'ToDo'
    #     reference_doctype = 'Custom Field'
    #     reference_doctype_field = 'reference_type'
    #     reference_name = 'Event-custom_test_field'
    #     reference_name_field = 'reference_name'
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/database/database.py", line 1414, in delete
    #     return query.run(**kwargs)
    #            ~~~~~~~~~^^^^^^^^^^
    #     debug = False
    #     doctype = 'ToDo'
    #     filters = {'reference_type': 'Custom Field', 'reference_name': 'Event-custom_test_field'}
    #     kwargs = {'debug': False}
    #     query = DELETE FROM `tabToDo` WHERE `reference_type`='Custom Field' AND `reference_name`='Event-custom_test_field'
    #     self = <frappe.database.mariadb.database.MariaDBDatabase object at 0x7205665b1480>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/query_builder/utils.py", line 87, in execute_query
    #     result = frappe.db.sql(query, params, *args, **kwargs)  # nosemgrep
    #     args = ()
    #     child_queries = []
    #     execute_child_queries = <function patch_query_execute.<locals>.execute_child_queries at 0x72056c50e3e0>
    #     kwargs = {'debug': False}
    #     params = {'param1': 'Custom Field', 'param2': 'Event-custom_test_field'}
    #     prepare_query = <function patch_query_execute.<locals>.prepare_query at 0x72056c50e480>
    #     query = 'DELETE FROM `tabToDo` WHERE `reference_type`=%(param1)s AND `reference_name`=%(param2)s'
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/database/database.py", line 230, in sql
    #     self._cursor.execute(query, values)
    #     ~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^
    #     as_dict = 0
    #     as_iterator = False
    #     as_list = 0
    #     auto_commit = 0
    #     debug = False
    #     explain = False
    #     ignore_ddl = 0
    #     pluck = False
    #     query = 'DELETE FROM `tabToDo` WHERE `reference_type`=%(param1)s AND `reference_name`=%(param2)s'
    #     run = True
    #     self = <frappe.database.mariadb.database.MariaDBDatabase object at 0x7205665b1480>
    #     trace_id = None
    #     update = None
    #     values = {'param1': 'Custom Field', 'param2': 'Event-custom_test_field'}
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/cursors.py", line 153, in execute
    #     result = self._query(query)
    #     args = {'param1': 'Custom Field', 'param2': 'Event-custom_test_field'}
    #     query = "DELETE FROM `tabToDo` WHERE `reference_type`='Custom Field' AND `reference_name`='Event-custom_test_field'"
    #     self = <pymysql.cursors.Cursor object at 0x72055f41ec10>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/cursors.py", line 322, in _query
    #     conn.query(q)
    #     ~~~~~~~~~~^^^
    #     conn = <pymysql.connections.Connection object at 0x72055f567ed0>
    #     q = "DELETE FROM `tabToDo` WHERE `reference_type`='Custom Field' AND `reference_name`='Event-custom_test_field'"
    #     self = <pymysql.cursors.Cursor object at 0x72055f41ec10>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/connections.py", line 575, in query
    #     self._affected_rows = self._read_query_result(unbuffered=unbuffered)
    #                           ~~~~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^
    #     self = <pymysql.connections.Connection object at 0x72055f567ed0>
    #     sql = b"DELETE FROM `tabToDo` WHERE `reference_type`='Custom Field' AND `reference_name`='Event-custom_test_field'"
    #     unbuffered = False
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/connections.py", line 826, in _read_query_result
    #     result.read()
    #     ~~~~~~~~~~~^^
    #     result = <pymysql.connections.MySQLResult object at 0x72055f300710>
    #     self = <pymysql.connections.Connection object at 0x72055f567ed0>
    #     unbuffered = False
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/connections.py", line 1203, in read
    #     first_packet = self.connection._read_packet()
    #     self = <pymysql.connections.MySQLResult object at 0x72055f300710>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/connections.py", line 782, in _read_packet
    #     packet.raise_for_error()
    #     ~~~~~~~~~~~~~~~~~~~~~~^^
    #     btrh = 0
    #     btrl = 56
    #     buff = bytearray(b"\xffz\x04#42S02Table \'erp_frx_localhost.tabToDo\' doesn\'t exist")
    #     bytes_to_read = 56
    #     packet = <pymysql.protocol.MysqlPacket object at 0x72055f6c8070>
    #     packet_header = b'8\x00\x00\x01'
    #     packet_number = 1
    #     packet_type = <class 'pymysql.protocol.MysqlPacket'>
    #     recv_data = b"\xffz\x04#42S02Table 'erp_frx_localhost.tabToDo' doesn't exist"
    #     self = <pymysql.connections.Connection object at 0x72055f567ed0>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/protocol.py", line 219, in raise_for_error
    #     err.raise_mysql_exception(self._data)
    #     ~~~~~~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^
    #     errno = 1146
    #     self = <pymysql.protocol.MysqlPacket object at 0x72055f6c8070>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/err.py", line 150, in raise_mysql_exception
    #     raise errorclass(errno, errval)
    #     data = b"\xffz\x04#42S02Table 'erp_frx_localhost.tabToDo' doesn't exist"
    #     errno = 1146
    #     errorclass = <class 'pymysql.err.ProgrammingError'>
    #     errval = "Table 'erp_frx_localhost.tabToDo' doesn't exist"
    # pymysql.err.ProgrammingError: (1146, "Table 'erp_frx_localhost.tabToDo' doesn't exist")
    #
  }
  {
    id = "";

    # Traceback (most recent call last):
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/custom/doctype/customize_form/test_customize_form.py", line 212, in test_title_field_pattern
    #     self.assertRaises(InvalidFieldNameError, d.run_method, "save_customization")
    #     ~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     d = <CustomizeForm: Customize Form>
    #     df = <CustomizeFormField: qrv482883t parent=Customize Form>
    #     self = <frappe.custom.doctype.customize_form.test_customize_form.TestCustomizeForm testMethod=test_title_field_pattern>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/unittest/case.py", line 795, in assertRaises
    #     return context.handle('assertRaises', args, kwargs)
    #            ~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     args = (<bound method Document.run_method of <CustomizeForm: Customize Form>>, 'save_customization')
    #     context = None
    #     expected_exception = <class 'frappe.core.doctype.doctype.doctype.InvalidFieldNameError'>
    #     kwargs = {}
    #     self = <frappe.custom.doctype.customize_form.test_customize_form.TestCustomizeForm testMethod=test_title_field_pattern>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/unittest/case.py", line 238, in handle
    #     callable_obj(*args, **kwargs)
    #     ~~~~~~~~~~~~^^^^^^^^^^^^^^^^^
    #     args = ['save_customization']
    #     callable_obj = <bound method Document.run_method of <CustomizeForm: Customize Form>>
    #     kwargs = {}
    #     name = 'assertRaises'
    #     self = None
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/model/document.py", line 1016, in run_method
    #     out = Document.hook(fn)(self, *args, **kwargs)
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/model/document.py", line 1376, in composer
    #     return composed(self, method, *args, **kwargs)
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/model/document.py", line 1358, in runner
    #     add_to_return_value(self, fn(self, *args, **kwargs))
    #                               ~~^^^^^^^^^^^^^^^^^^^^^^^
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/model/document.py", line 1013, in fn
    #     return method_object(*args, **kwargs)
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/utils/typing_validations.py", line 32, in wrapper
    #     return func(*args, **kwargs)
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/custom/doctype/customize_form/customize_form.py", line 235, in save_customization
    #     self.set_property_setters()
    #     ~~~~~~~~~~~~~~~~~~~~~~~~~^^
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/custom/doctype/customize_form/customize_form.py", line 279, in set_property_setters
    #     self.set_property_setters_for_docfield(meta, df, meta_df)
    #     ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/custom/doctype/customize_form/customize_form.py", line 325, in set_property_setters_for_docfield
    #     self.make_property_setter(prop, df.get(prop), prop_type, fieldname=df.fieldname)
    #     ~~~~~~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/custom/doctype/customize_form/customize_form.py", line 536, in make_property_setter
    #     delete_property_setter(self.doc_type, prop, fieldname, row_name)
    #     ~~~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/custom/doctype/property_setter/property_setter.py", line 104, in delete_property_setter
    #     _delete_property_setters(filters)
    #     ~~~~~~~~~~~~~~~~~~~~~~~~^^^^^^^^^
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/custom/doctype/property_setter/property_setter.py", line 160, in _delete_property_setters
    #     frappe.get_doc("Property Setter", ps).delete(ignore_permissions=True, force=True)
    #     ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/model/document.py", line 1116, in delete
    #     return frappe.delete_doc(
    #            ~~~~~~~~~~~~~~~~~^
    #     	self.doctype,
    #      ^^^^^^^^^^^^^
    #     ...<4 lines>...
    #     	delete_permanently=delete_permanently,
    #      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     )
    #     ^
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/__init__.py", line 1378, in delete_doc
    #     return frappe.model.delete_doc.delete_doc(
    #            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^
    #     	doctype,
    #      ^^^^^^^^
    #     ...<8 lines>...
    #     	delete_permanently,
    #      ^^^^^^^^^^^^^^^^^^^
    #     )
    #     ^
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/model/delete_doc.py", line 154, in delete_doc
    #     frappe.enqueue(
    #     ~~~~~~~~~~~~~~^
    #     	"frappe.model.delete_doc.delete_dynamic_links",
    #      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     ...<3 lines>...
    #     	enqueue_after_commit=True,
    #      ^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     )
    #     ^
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/__init__.py", line 2271, in enqueue
    #     return frappe.utils.background_jobs.enqueue(*args, **kwargs)
    #            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/utils/background_jobs.py", line 120, in enqueue
    #     return frappe.call(method, **kwargs)
    #            ~~~~~~~~~~~^^^^^^^^^^^^^^^^^^
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/__init__.py", line 1762, in call
    #     return fn(*args, **newargs)
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/model/delete_doc.py", line 449, in delete_dynamic_links
    #     delete_references("ToDo", doctype, name, "reference_type")
    #     ~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/model/delete_doc.py", line 473, in delete_references
    #     frappe.db.delete(
    #     ~~~~~~~~~~~~~~~~^
    #     	doctype, {reference_doctype_field: reference_doctype, reference_name_field: reference_name}
    #      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     )
    #     ^
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/database/database.py", line 1414, in delete
    #     return query.run(**kwargs)
    #            ~~~~~~~~~^^^^^^^^^^
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/query_builder/utils.py", line 87, in execute_query
    #     result = frappe.db.sql(query, params, *args, **kwargs)  # nosemgrep
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/database/database.py", line 230, in sql
    #     self._cursor.execute(query, values)
    #     ~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/cursors.py", line 153, in execute
    #     result = self._query(query)
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/cursors.py", line 322, in _query
    #     conn.query(q)
    #     ~~~~~~~~~~^^^
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/connections.py", line 575, in query
    #     self._affected_rows = self._read_query_result(unbuffered=unbuffered)
    #                           ~~~~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/connections.py", line 826, in _read_query_result
    #     result.read()
    #     ~~~~~~~~~~~^^
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/connections.py", line 1203, in read
    #     first_packet = self.connection._read_packet()
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/connections.py", line 782, in _read_packet
    #     packet.raise_for_error()
    #     ~~~~~~~~~~~~~~~~~~~~~~^^
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/protocol.py", line 219, in raise_for_error
    #     err.raise_mysql_exception(self._data)
    #     ~~~~~~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/err.py", line 150, in raise_mysql_exception
    #     raise errorclass(errno, errval)
    # pymysql.err.ProgrammingError: (1146, "Table 'erp_frx_localhost.tabToDo' doesn't exist")
    #
  }
  {
    id = "";

    # Traceback (most recent call last):
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/custom/doctype/customize_form/test_customize_form.py", line 40, in tearDown
    #     frappe.delete_doc("Custom Field", self.field.name)
    #     ~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     self = <frappe.custom.doctype.customize_form.test_customize_form.TestCustomizeForm testMethod=test_title_field_pattern>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/__init__.py", line 1378, in delete_doc
    #     return frappe.model.delete_doc.delete_doc(
    #            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^
    #     	doctype,
    #      ^^^^^^^^
    #     ...<8 lines>...
    #     	delete_permanently,
    #      ^^^^^^^^^^^^^^^^^^^
    #     )
    #     ^
    #     delete_permanently = False
    #     doctype = 'Custom Field'
    #     flags = None
    #     for_reload = False
    #     force = False
    #     frappe = <module 'frappe' from '/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/__init__.py'>
    #     ignore_doctypes = None
    #     ignore_missing = True
    #     ignore_on_trash = False
    #     ignore_permissions = False
    #     name = 'Event-custom_test_field'
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/model/delete_doc.py", line 154, in delete_doc
    #     frappe.enqueue(
    #     ~~~~~~~~~~~~~~^
    #     	"frappe.model.delete_doc.delete_dynamic_links",
    #      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     ...<3 lines>...
    #     	enqueue_after_commit=True,
    #      ^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     )
    #     ^
    #     delete_permanently = False
    #     doc = <CustomField: Event-custom_test_field>
    #     doctype = 'Custom Field'
    #     flags = None
    #     for_reload = False
    #     force = False
    #     ignore_doctypes = []
    #     ignore_missing = True
    #     ignore_on_trash = False
    #     ignore_permissions = False
    #     is_virtual = 0
    #     name = 'Event-custom_test_field'
    #     names = ['Event-custom_test_field']
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/__init__.py", line 2271, in enqueue
    #     return frappe.utils.background_jobs.enqueue(*args, **kwargs)
    #            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^
    #     args = ('frappe.model.delete_doc.delete_dynamic_links',)
    #     frappe = <module 'frappe' from '/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/__init__.py'>
    #     kwargs = {'doctype': 'Custom Field', 'name': 'Event-custom_test_field', 'now': True, 'enqueue_after_commit': True}
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/utils/background_jobs.py", line 120, in enqueue
    #     return frappe.call(method, **kwargs)
    #            ~~~~~~~~~~~^^^^^^^^^^^^^^^^^^
    #     at_front = False
    #     call_directly = True
    #     deduplicate = False
    #     enqueue_after_commit = True
    #     event = None
    #     is_async = True
    #     job_id = 'erp.frx.localhost::0513b42a-ce3e-4010-8209-2e8f7efbe188'
    #     job_name = None
    #     kwargs = {'doctype': 'Custom Field', 'name': 'Event-custom_test_field'}
    #     method = 'frappe.model.delete_doc.delete_dynamic_links'
    #     now = True
    #     on_failure = None
    #     on_success = None
    #     queue = 'default'
    #     timeout = None
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/__init__.py", line 1762, in call
    #     return fn(*args, **newargs)
    #     args = ()
    #     fn = <function delete_dynamic_links at 0x72056a6f22a0>
    #     kwargs = {'doctype': 'Custom Field', 'name': 'Event-custom_test_field'}
    #     newargs = {'doctype': 'Custom Field', 'name': 'Event-custom_test_field'}
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/model/delete_doc.py", line 449, in delete_dynamic_links
    #     delete_references("ToDo", doctype, name, "reference_type")
    #     ~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     doctype = 'Custom Field'
    #     name = 'Event-custom_test_field'
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/model/delete_doc.py", line 473, in delete_references
    #     frappe.db.delete(
    #     ~~~~~~~~~~~~~~~~^
    #     	doctype, {reference_doctype_field: reference_doctype, reference_name_field: reference_name}
    #      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     )
    #     ^
    #     doctype = 'ToDo'
    #     reference_doctype = 'Custom Field'
    #     reference_doctype_field = 'reference_type'
    #     reference_name = 'Event-custom_test_field'
    #     reference_name_field = 'reference_name'
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/database/database.py", line 1414, in delete
    #     return query.run(**kwargs)
    #            ~~~~~~~~~^^^^^^^^^^
    #     debug = False
    #     doctype = 'ToDo'
    #     filters = {'reference_type': 'Custom Field', 'reference_name': 'Event-custom_test_field'}
    #     kwargs = {'debug': False}
    #     query = DELETE FROM `tabToDo` WHERE `reference_type`='Custom Field' AND `reference_name`='Event-custom_test_field'
    #     self = <frappe.database.mariadb.database.MariaDBDatabase object at 0x7205665b1480>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/query_builder/utils.py", line 87, in execute_query
    #     result = frappe.db.sql(query, params, *args, **kwargs)  # nosemgrep
    #     args = ()
    #     child_queries = []
    #     execute_child_queries = <function patch_query_execute.<locals>.execute_child_queries at 0x72056c50e3e0>
    #     kwargs = {'debug': False}
    #     params = {'param1': 'Custom Field', 'param2': 'Event-custom_test_field'}
    #     prepare_query = <function patch_query_execute.<locals>.prepare_query at 0x72056c50e480>
    #     query = 'DELETE FROM `tabToDo` WHERE `reference_type`=%(param1)s AND `reference_name`=%(param2)s'
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/database/database.py", line 230, in sql
    #     self._cursor.execute(query, values)
    #     ~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^
    #     as_dict = 0
    #     as_iterator = False
    #     as_list = 0
    #     auto_commit = 0
    #     debug = False
    #     explain = False
    #     ignore_ddl = 0
    #     pluck = False
    #     query = 'DELETE FROM `tabToDo` WHERE `reference_type`=%(param1)s AND `reference_name`=%(param2)s'
    #     run = True
    #     self = <frappe.database.mariadb.database.MariaDBDatabase object at 0x7205665b1480>
    #     trace_id = None
    #     update = None
    #     values = {'param1': 'Custom Field', 'param2': 'Event-custom_test_field'}
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/cursors.py", line 153, in execute
    #     result = self._query(query)
    #     args = {'param1': 'Custom Field', 'param2': 'Event-custom_test_field'}
    #     query = "DELETE FROM `tabToDo` WHERE `reference_type`='Custom Field' AND `reference_name`='Event-custom_test_field'"
    #     self = <pymysql.cursors.Cursor object at 0x72055f41ec10>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/cursors.py", line 322, in _query
    #     conn.query(q)
    #     ~~~~~~~~~~^^^
    #     conn = <pymysql.connections.Connection object at 0x72055f567ed0>
    #     q = "DELETE FROM `tabToDo` WHERE `reference_type`='Custom Field' AND `reference_name`='Event-custom_test_field'"
    #     self = <pymysql.cursors.Cursor object at 0x72055f41ec10>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/connections.py", line 575, in query
    #     self._affected_rows = self._read_query_result(unbuffered=unbuffered)
    #                           ~~~~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^
    #     self = <pymysql.connections.Connection object at 0x72055f567ed0>
    #     sql = b"DELETE FROM `tabToDo` WHERE `reference_type`='Custom Field' AND `reference_name`='Event-custom_test_field'"
    #     unbuffered = False
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/connections.py", line 826, in _read_query_result
    #     result.read()
    #     ~~~~~~~~~~~^^
    #     result = <pymysql.connections.MySQLResult object at 0x72055f300e90>
    #     self = <pymysql.connections.Connection object at 0x72055f567ed0>
    #     unbuffered = False
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/connections.py", line 1203, in read
    #     first_packet = self.connection._read_packet()
    #     self = <pymysql.connections.MySQLResult object at 0x72055f300e90>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/connections.py", line 782, in _read_packet
    #     packet.raise_for_error()
    #     ~~~~~~~~~~~~~~~~~~~~~~^^
    #     btrh = 0
    #     btrl = 56
    #     buff = bytearray(b"\xffz\x04#42S02Table \'erp_frx_localhost.tabToDo\' doesn\'t exist")
    #     bytes_to_read = 56
    #     packet = <pymysql.protocol.MysqlPacket object at 0x72055f1047f0>
    #     packet_header = b'8\x00\x00\x01'
    #     packet_number = 1
    #     packet_type = <class 'pymysql.protocol.MysqlPacket'>
    #     recv_data = b"\xffz\x04#42S02Table 'erp_frx_localhost.tabToDo' doesn't exist"
    #     self = <pymysql.connections.Connection object at 0x72055f567ed0>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/protocol.py", line 219, in raise_for_error
    #     err.raise_mysql_exception(self._data)
    #     ~~~~~~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^
    #     errno = 1146
    #     self = <pymysql.protocol.MysqlPacket object at 0x72055f1047f0>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/err.py", line 150, in raise_mysql_exception
    #     raise errorclass(errno, errval)
    #     data = b"\xffz\x04#42S02Table 'erp_frx_localhost.tabToDo' doesn't exist"
    #     errno = 1146
    #     errorclass = <class 'pymysql.err.ProgrammingError'>
    #     errval = "Table 'erp_frx_localhost.tabToDo' doesn't exist"
    # pymysql.err.ProgrammingError: (1146, "Table 'erp_frx_localhost.tabToDo' doesn't exist")
    #
  }
  {
    id = "frappe.tests.test_dashboard_connections.TestDashboardConnections.test_external_link_count";

    # Traceback (most recent call last):
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/tests/utils.py", line 58, in wrapped
    #     original(self)
    #     ~~~~~~~~^^^^^^
    #     original = <function TestDashboardConnections.setUp at 0x72055f33b6a0>
    #     self = <frappe.tests.test_dashboard_connections.TestDashboardConnections testMethod=test_external_link_count>
    #     skip_ids = ['frappe.tests.test_password_strength.TestPasswordStrength.test_long_password', 'frappe.tests.test_rename_doc.TestRenameDoc', 'frappe.tests.test_virtual_doctype.TestVirtualDoctypes', 'frappe.tests.test_email.TestEmailIntegrationTest.test_send_email', 'frappe.tests.test_email.TestEmailIntegrationTest.test_store_attachments', 'frappe.tests.test_frappe_client.TestFrappeClient.test_auth_via_api_key_secret', 'frappe.tests.test_oauth20.TestOAuth20.test_login_using_implicit_token', 'frappe.tests.test_password_strength.TestPasswordStrength.test_long_password', 'frappe.tests.test_perf.TestPerformance.test_req_per_seconds_basic', 'frappe.tests.test_rename_doc.TestRenameDoc', 'frappe.tests.test_translate.TestTranslate.test_python_extractor', 'frappe.tests.test_utils.TestAppParser.test_app_name_parser', 'frappe.tests.test_virtual_doctype.TestVirtualDoctypes', 'frappe.tests.test_search.TestSearch.test_doctype_search_in_foreign_language', 'frappe.tests.test_search.TestSearch.test_link_search_in_foreign_language', 'frappe.tests.test_translate.TestTranslate.test_read_language_variant', 'frappe.tests.test_translate.TestTranslate.test_translation_with_context', 'frappe.tests.test_utils.TestChangeLog.test_get_remote_url', 'frappe.tests.test_website.TestWebsite.test_static_page', 'frappe.email.test_smtp.TestSMTP.test_smtp_ssl_session', 'frappe.email.test_smtp.TestSMTP.test_smtp_tls_session']
    #     test_id = 'frappe.tests.test_dashboard_connections.TestDashboardConnections.test_external_link_count'
    #     var = 'SKIP_TESTS'
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/unittest/mock.py", line 1897, in _inner
    #     return f(*args, **kw)
    #     args = (<frappe.tests.test_dashboard_connections.TestDashboardConnections testMethod=test_external_link_count>,)
    #     f = <function TestDashboardConnections.setUp at 0x72055f33b740>
    #     kw = {}
    #     self = <unittest.mock._patch_dict object at 0x72055f4cc050>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/tests/test_dashboard_connections.py", line 18, in setUp
    #     create_test_data()
    #     ~~~~~~~~~~~~~~~~^^
    #     self = <frappe.tests.test_dashboard_connections.TestDashboardConnections testMethod=test_external_link_count>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/tests/test_dashboard_connections.py", line 158, in create_test_data
    #     create_test_child_table_with_link_to_doctype_a()
    #     ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^^
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/tests/test_dashboard_connections.py", line 189, in create_test_child_table_with_link_to_doctype_a
    #     ).insert(ignore_if_duplicate=True)
    #       ~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^^
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/model/document.py", line 334, in insert
    #     self.run_post_save_methods()
    #     ~~~~~~~~~~~~~~~~~~~~~~~~~~^^
    #     d = <DataDocField: title parent=Test Child Table With Link To Doctype A>
    #     ignore_if_duplicate = True
    #     ignore_links = None
    #     ignore_mandatory = None
    #     ignore_permissions = None
    #     self = <DocType: Test Child Table With Link To Doctype A>
    #     set_child_names = True
    #     set_name = None
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/model/document.py", line 1182, in run_post_save_methods
    #     self.run_method("on_update")
    #     ~~~~~~~~~~~~~~~^^^^^^^^^^^^^
    #     self = <DocType: Test Child Table With Link To Doctype A>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/model/document.py", line 1016, in run_method
    #     out = Document.hook(fn)(self, *args, **kwargs)
    #     args = ()
    #     fn = <function Document.run_method.<locals>.fn at 0x72055f265080>
    #     kwargs = {}
    #     method = 'on_update'
    #     self = <DocType: Test Child Table With Link To Doctype A>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/model/document.py", line 1376, in composer
    #     return composed(self, method, *args, **kwargs)
    #     args = ()
    #     compose = <function Document.hook.<locals>.compose at 0x72055f265620>
    #     composed = <function Document.hook.<locals>.compose.<locals>.runner at 0x72055f265260>
    #     doc_events = {'*': {'on_update': ['frappe.desk.notifications.clear_doctype_notifications', 'frappe.workflow.doctype.workflow_action.workflow_action.process_workflow_actions', 'frappe.core.doctype.file.utils.attach_files_to_document', 'frappe.automation.doctype.assignment_rule.assignment_rule.apply', 'frappe.automation.doctype.assignment_rule.assignment_rule.update_due_date', 'frappe.core.doctype.user_type.user_type.apply_permissions_for_non_standard_user_type', 'frappe.search.sqlite_search.update_doc_index'], 'after_rename': ['frappe.desk.notifications.clear_doctype_notifications'], 'on_cancel': ['frappe.desk.notifications.clear_doctype_notifications', 'frappe.workflow.doctype.workflow_action.workflow_action.process_workflow_actions', 'frappe.automation.doctype.assignment_rule.assignment_rule.apply'], 'on_trash': ['frappe.desk.notifications.clear_doctype_notifications', 'frappe.workflow.doctype.workflow_action.workflow_action.process_workflow_actions', 'frappe.search.sqlite_search.delete_doc_index'], 'on_update_after_submit': ['frappe.workflow.doctype.workflow_action.workflow_action.process_workflow_actions', 'frappe.automation.doctype.assignment_rule.assignment_rule.apply', 'frappe.automation.doctype.assignment_rule.assignment_rule.update_due_date', 'frappe.core.doctype.file.utils.attach_files_to_document'], 'on_change': ['frappe.social.doctype.energy_point_rule.energy_point_rule.process_energy_points', 'frappe.automation.doctype.milestone_tracker.milestone_tracker.evaluate_milestone']}, 'Event': {'after_insert': ['frappe.integrations.doctype.google_calendar.google_calendar.insert_event_in_google_calendar'], 'on_update': ['frappe.integrations.doctype.google_calendar.google_calendar.update_event_in_google_calendar'], 'on_trash': ['frappe.integrations.doctype.google_calendar.google_calendar.delete_event_from_google_calendar']}, 'Contact': {'after_insert': ['frappe.integrations.doctype.google_contacts.google_contacts.insert_contacts_to_google_contacts'], 'on_update': ['frappe.integrations.doctype.google_contacts.google_contacts.update_contacts_to_google_contacts']}, 'DocType': {'on_update': ['frappe.cache_manager.build_domain_restriced_doctype_cache']}, 'Page': {'on_update': ['frappe.cache_manager.build_domain_restriced_page_cache']}}
    #     f = <function Document.run_method.<locals>.fn at 0x72055f265080>
    #     handler = 'frappe.search.sqlite_search.update_doc_index'
    #     hooks = [<function build_domain_restriced_doctype_cache at 0x72056d08a700>, <function clear_doctype_notifications at 0x72056a18ac00>, <function process_workflow_actions at 0x7205694ccd60>, <function attach_files_to_document at 0x72056b0409a0>, <function apply at 0x7205694e0360>, <function update_due_date at 0x7205694e0400>, <function apply_permissions_for_non_standard_user_type at 0x7205694e1d00>, <function update_doc_index at 0x720569e6a340>]
    #     kwargs = {}
    #     method = 'on_update'
    #     self = <DocType: Test Child Table With Link To Doctype A>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/model/document.py", line 1358, in runner
    #     add_to_return_value(self, fn(self, *args, **kwargs))
    #                               ~~^^^^^^^^^^^^^^^^^^^^^^^
    #     add_to_return_value = <function Document.hook.<locals>.add_to_return_value at 0x72055f265120>
    #     args = ()
    #     fn = <function Document.run_method.<locals>.fn at 0x72055f265080>
    #     hooks = (<function build_domain_restriced_doctype_cache at 0x72056d08a700>, <function clear_doctype_notifications at 0x72056a18ac00>, <function process_workflow_actions at 0x7205694ccd60>, <function attach_files_to_document at 0x72056b0409a0>, <function apply at 0x7205694e0360>, <function update_due_date at 0x7205694e0400>, <function apply_permissions_for_non_standard_user_type at 0x7205694e1d00>, <function update_doc_index at 0x720569e6a340>)
    #     kwargs = {}
    #     method = 'on_update'
    #     self = <DocType: Test Child Table With Link To Doctype A>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/model/document.py", line 1013, in fn
    #     return method_object(*args, **kwargs)
    #     args = ()
    #     kwargs = {}
    #     method = 'on_update'
    #     method_object = <bound method DocType.on_update of <DocType: Test Child Table With Link To Doctype A>>
    #     self = <DocType: Test Child Table With Link To Doctype A>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/core/doctype/doctype/doctype.py", line 542, in on_update
    #     self.export_doc()
    #     ~~~~~~~~~~~~~~~^^
    #     allow_doctype_export = 1
    #     self = <DocType: Test Child Table With Link To Doctype A>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/core/doctype/doctype/doctype.py", line 849, in export_doc
    #     export_to_files(record_list=[["DocType", self.name]], create_init=True)
    #     ~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     export_to_files = <function export_to_files at 0x720569abd300>
    #     self = <DocType: Test Child Table With Link To Doctype A>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/modules/export_file.py", line 27, in export_to_files
    #     write_document_file(
    #     ~~~~~~~~~~~~~~~~~~~^
    #     	frappe.get_doc(record[0], record[1]),
    #      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     ...<2 lines>...
    #     	folder_name=folder_name,
    #      ^^^^^^^^^^^^^^^^^^^^^^^^
    #     )
    #     ^
    #     create_init = True
    #     folder_name = None
    #     record = ['DocType', 'Test Child Table With Link To Doctype A']
    #     record_list = [['DocType', 'Test Child Table With Link To Doctype A']]
    #     record_module = None
    #     verbose = 0
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/modules/export_file.py", line 47, in write_document_file
    #     folder = create_folder(module, doc.doctype, doc.name, create_init, is_custom_module)
    #     create_init = True
    #     doc = <DocType: Test Child Table With Link To Doctype A>
    #     doc_export = {'name': 'Test Child Table With Link To Doctype A', 'creation': datetime.datetime(2026, 8, 20, 1, 11, 37, 110041), 'modified': datetime.datetime(2026, 8, 20, 1, 11, 37, 110041), 'modified_by': 'Administrator', 'owner': 'Administrator', 'istable': 1, 'editable_grid': 1, 'module': 'Core', 'autoname': 'field:title', 'naming_rule': 'By fieldname', 'sort_field': 'modified', 'sort_order': 'DESC', 'allow_rename': 1, 'engine': 'InnoDB', 'grid_page_length': 50, 'rows_threshold_for_grid_search': 20, 'index_web_pages_for_search': 1, 'row_format': 'Dynamic', 'doctype': 'DocType', 'links': [], 'fields': [{'fieldname': 'title', 'label': 'Title', 'fieldtype': 'Data', 'reqd': 1, 'unique': 1, 'in_list_view': 1}], 'actions': [], 'permissions': [], 'states': [], 'field_order': ['title']}
    #     folder_name = None
    #     is_custom_module = 0
    #     module = 'Core'
    #     record_module = None
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/modules/export_file.py", line 129, in create_folder
    #     frappe.create_folder(folder)
    #     ~~~~~~~~~~~~~~~~~~~~^^^^^^^^
    #     create_init = True
    #     dn = 'test_child_table_with_link_to_doctype_a'
    #     dt = 'doctype'
    #     folder = '/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/core/doctype/test_child_table_with_link_to_doctype_a'
    #     is_custom_module = 0
    #     module = 'Core'
    #     module_path = '/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/core'
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/__init__.py", line 635, in create_folder
    #     os.makedirs(path)
    #     ~~~~~~~~~~~^^^^^^
    #     path = '/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/core/doctype/test_child_table_with_link_to_doctype_a'
    #     touch_file = <function touch_file at 0x72056dafa5c0>
    #     with_init = False
    #   File "<frozen os>", line 228, in makedirs
    #     exist_ok = False
    #     head = '/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/core/doctype'
    #     mode = 511
    #     name = '/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/core/doctype/test_child_table_with_link_to_doctype_a'
    #     tail = 'test_child_table_with_link_to_doctype_a'
    # OSError: [Errno 30] Read-only file system: '/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/core/doctype/test_child_table_with_link_to_doctype_a'
    #
  }
  {
    id = "frappe.tests.test_dashboard_connections.TestDashboardConnections.test_internal_link_count";

    # Traceback (most recent call last):
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/tests/utils.py", line 58, in wrapped
    #     original(self)
    #     ~~~~~~~~^^^^^^
    #     original = <function TestDashboardConnections.setUp at 0x72055f33b6a0>
    #     self = <frappe.tests.test_dashboard_connections.TestDashboardConnections testMethod=test_internal_link_count>
    #     skip_ids = ['frappe.tests.test_password_strength.TestPasswordStrength.test_long_password', 'frappe.tests.test_rename_doc.TestRenameDoc', 'frappe.tests.test_virtual_doctype.TestVirtualDoctypes', 'frappe.tests.test_email.TestEmailIntegrationTest.test_send_email', 'frappe.tests.test_email.TestEmailIntegrationTest.test_store_attachments', 'frappe.tests.test_frappe_client.TestFrappeClient.test_auth_via_api_key_secret', 'frappe.tests.test_oauth20.TestOAuth20.test_login_using_implicit_token', 'frappe.tests.test_password_strength.TestPasswordStrength.test_long_password', 'frappe.tests.test_perf.TestPerformance.test_req_per_seconds_basic', 'frappe.tests.test_rename_doc.TestRenameDoc', 'frappe.tests.test_translate.TestTranslate.test_python_extractor', 'frappe.tests.test_utils.TestAppParser.test_app_name_parser', 'frappe.tests.test_virtual_doctype.TestVirtualDoctypes', 'frappe.tests.test_search.TestSearch.test_doctype_search_in_foreign_language', 'frappe.tests.test_search.TestSearch.test_link_search_in_foreign_language', 'frappe.tests.test_translate.TestTranslate.test_read_language_variant', 'frappe.tests.test_translate.TestTranslate.test_translation_with_context', 'frappe.tests.test_utils.TestChangeLog.test_get_remote_url', 'frappe.tests.test_website.TestWebsite.test_static_page', 'frappe.email.test_smtp.TestSMTP.test_smtp_ssl_session', 'frappe.email.test_smtp.TestSMTP.test_smtp_tls_session']
    #     test_id = 'frappe.tests.test_dashboard_connections.TestDashboardConnections.test_internal_link_count'
    #     var = 'SKIP_TESTS'
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/unittest/mock.py", line 1897, in _inner
    #     return f(*args, **kw)
    #     args = (<frappe.tests.test_dashboard_connections.TestDashboardConnections testMethod=test_internal_link_count>,)
    #     f = <function TestDashboardConnections.setUp at 0x72055f33b740>
    #     kw = {}
    #     self = <unittest.mock._patch_dict object at 0x72055f4cc050>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/tests/test_dashboard_connections.py", line 18, in setUp
    #     create_test_data()
    #     ~~~~~~~~~~~~~~~~^^
    #     self = <frappe.tests.test_dashboard_connections.TestDashboardConnections testMethod=test_internal_link_count>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/tests/test_dashboard_connections.py", line 158, in create_test_data
    #     create_test_child_table_with_link_to_doctype_a()
    #     ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^^
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/tests/test_dashboard_connections.py", line 189, in create_test_child_table_with_link_to_doctype_a
    #     ).insert(ignore_if_duplicate=True)
    #       ~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^^
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/model/document.py", line 334, in insert
    #     self.run_post_save_methods()
    #     ~~~~~~~~~~~~~~~~~~~~~~~~~~^^
    #     d = <DataDocField: title parent=Test Child Table With Link To Doctype A>
    #     ignore_if_duplicate = True
    #     ignore_links = None
    #     ignore_mandatory = None
    #     ignore_permissions = None
    #     self = <DocType: Test Child Table With Link To Doctype A>
    #     set_child_names = True
    #     set_name = None
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/model/document.py", line 1182, in run_post_save_methods
    #     self.run_method("on_update")
    #     ~~~~~~~~~~~~~~~^^^^^^^^^^^^^
    #     self = <DocType: Test Child Table With Link To Doctype A>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/model/document.py", line 1016, in run_method
    #     out = Document.hook(fn)(self, *args, **kwargs)
    #     args = ()
    #     fn = <function Document.run_method.<locals>.fn at 0x72055f266c00>
    #     kwargs = {}
    #     method = 'on_update'
    #     self = <DocType: Test Child Table With Link To Doctype A>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/model/document.py", line 1376, in composer
    #     return composed(self, method, *args, **kwargs)
    #     args = ()
    #     compose = <function Document.hook.<locals>.compose at 0x72055f266ac0>
    #     composed = <function Document.hook.<locals>.compose.<locals>.runner at 0x72055f266980>
    #     doc_events = {'*': {'on_update': ['frappe.desk.notifications.clear_doctype_notifications', 'frappe.workflow.doctype.workflow_action.workflow_action.process_workflow_actions', 'frappe.core.doctype.file.utils.attach_files_to_document', 'frappe.automation.doctype.assignment_rule.assignment_rule.apply', 'frappe.automation.doctype.assignment_rule.assignment_rule.update_due_date', 'frappe.core.doctype.user_type.user_type.apply_permissions_for_non_standard_user_type', 'frappe.search.sqlite_search.update_doc_index'], 'after_rename': ['frappe.desk.notifications.clear_doctype_notifications'], 'on_cancel': ['frappe.desk.notifications.clear_doctype_notifications', 'frappe.workflow.doctype.workflow_action.workflow_action.process_workflow_actions', 'frappe.automation.doctype.assignment_rule.assignment_rule.apply'], 'on_trash': ['frappe.desk.notifications.clear_doctype_notifications', 'frappe.workflow.doctype.workflow_action.workflow_action.process_workflow_actions', 'frappe.search.sqlite_search.delete_doc_index'], 'on_update_after_submit': ['frappe.workflow.doctype.workflow_action.workflow_action.process_workflow_actions', 'frappe.automation.doctype.assignment_rule.assignment_rule.apply', 'frappe.automation.doctype.assignment_rule.assignment_rule.update_due_date', 'frappe.core.doctype.file.utils.attach_files_to_document'], 'on_change': ['frappe.social.doctype.energy_point_rule.energy_point_rule.process_energy_points', 'frappe.automation.doctype.milestone_tracker.milestone_tracker.evaluate_milestone']}, 'Event': {'after_insert': ['frappe.integrations.doctype.google_calendar.google_calendar.insert_event_in_google_calendar'], 'on_update': ['frappe.integrations.doctype.google_calendar.google_calendar.update_event_in_google_calendar'], 'on_trash': ['frappe.integrations.doctype.google_calendar.google_calendar.delete_event_from_google_calendar']}, 'Contact': {'after_insert': ['frappe.integrations.doctype.google_contacts.google_contacts.insert_contacts_to_google_contacts'], 'on_update': ['frappe.integrations.doctype.google_contacts.google_contacts.update_contacts_to_google_contacts']}, 'DocType': {'on_update': ['frappe.cache_manager.build_domain_restriced_doctype_cache']}, 'Page': {'on_update': ['frappe.cache_manager.build_domain_restriced_page_cache']}}
    #     f = <function Document.run_method.<locals>.fn at 0x72055f266c00>
    #     handler = 'frappe.search.sqlite_search.update_doc_index'
    #     hooks = [<function build_domain_restriced_doctype_cache at 0x72056d08a700>, <function clear_doctype_notifications at 0x72056a18ac00>, <function process_workflow_actions at 0x7205694ccd60>, <function attach_files_to_document at 0x72056b0409a0>, <function apply at 0x7205694e0360>, <function update_due_date at 0x7205694e0400>, <function apply_permissions_for_non_standard_user_type at 0x7205694e1d00>, <function update_doc_index at 0x720569e6a340>]
    #     kwargs = {}
    #     method = 'on_update'
    #     self = <DocType: Test Child Table With Link To Doctype A>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/model/document.py", line 1358, in runner
    #     add_to_return_value(self, fn(self, *args, **kwargs))
    #                               ~~^^^^^^^^^^^^^^^^^^^^^^^
    #     add_to_return_value = <function Document.hook.<locals>.add_to_return_value at 0x72055f2668e0>
    #     args = ()
    #     fn = <function Document.run_method.<locals>.fn at 0x72055f266c00>
    #     hooks = (<function build_domain_restriced_doctype_cache at 0x72056d08a700>, <function clear_doctype_notifications at 0x72056a18ac00>, <function process_workflow_actions at 0x7205694ccd60>, <function attach_files_to_document at 0x72056b0409a0>, <function apply at 0x7205694e0360>, <function update_due_date at 0x7205694e0400>, <function apply_permissions_for_non_standard_user_type at 0x7205694e1d00>, <function update_doc_index at 0x720569e6a340>)
    #     kwargs = {}
    #     method = 'on_update'
    #     self = <DocType: Test Child Table With Link To Doctype A>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/model/document.py", line 1013, in fn
    #     return method_object(*args, **kwargs)
    #     args = ()
    #     kwargs = {}
    #     method = 'on_update'
    #     method_object = <bound method DocType.on_update of <DocType: Test Child Table With Link To Doctype A>>
    #     self = <DocType: Test Child Table With Link To Doctype A>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/core/doctype/doctype/doctype.py", line 542, in on_update
    #     self.export_doc()
    #     ~~~~~~~~~~~~~~~^^
    #     allow_doctype_export = 1
    #     self = <DocType: Test Child Table With Link To Doctype A>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/core/doctype/doctype/doctype.py", line 849, in export_doc
    #     export_to_files(record_list=[["DocType", self.name]], create_init=True)
    #     ~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     export_to_files = <function export_to_files at 0x720569abd300>
    #     self = <DocType: Test Child Table With Link To Doctype A>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/modules/export_file.py", line 27, in export_to_files
    #     write_document_file(
    #     ~~~~~~~~~~~~~~~~~~~^
    #     	frappe.get_doc(record[0], record[1]),
    #      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     ...<2 lines>...
    #     	folder_name=folder_name,
    #      ^^^^^^^^^^^^^^^^^^^^^^^^
    #     )
    #     ^
    #     create_init = True
    #     folder_name = None
    #     record = ['DocType', 'Test Child Table With Link To Doctype A']
    #     record_list = [['DocType', 'Test Child Table With Link To Doctype A']]
    #     record_module = None
    #     verbose = 0
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/modules/export_file.py", line 47, in write_document_file
    #     folder = create_folder(module, doc.doctype, doc.name, create_init, is_custom_module)
    #     create_init = True
    #     doc = <DocType: Test Child Table With Link To Doctype A>
    #     doc_export = {'name': 'Test Child Table With Link To Doctype A', 'creation': datetime.datetime(2026, 8, 20, 1, 11, 37, 168060), 'modified': datetime.datetime(2026, 8, 20, 1, 11, 37, 168060), 'modified_by': 'Administrator', 'owner': 'Administrator', 'istable': 1, 'editable_grid': 1, 'module': 'Core', 'autoname': 'field:title', 'naming_rule': 'By fieldname', 'sort_field': 'modified', 'sort_order': 'DESC', 'allow_rename': 1, 'engine': 'InnoDB', 'grid_page_length': 50, 'rows_threshold_for_grid_search': 20, 'index_web_pages_for_search': 1, 'row_format': 'Dynamic', 'doctype': 'DocType', 'links': [], 'fields': [{'fieldname': 'title', 'label': 'Title', 'fieldtype': 'Data', 'reqd': 1, 'unique': 1, 'in_list_view': 1}], 'actions': [], 'permissions': [], 'states': [], 'field_order': ['title']}
    #     folder_name = None
    #     is_custom_module = 0
    #     module = 'Core'
    #     record_module = None
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/modules/export_file.py", line 129, in create_folder
    #     frappe.create_folder(folder)
    #     ~~~~~~~~~~~~~~~~~~~~^^^^^^^^
    #     create_init = True
    #     dn = 'test_child_table_with_link_to_doctype_a'
    #     dt = 'doctype'
    #     folder = '/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/core/doctype/test_child_table_with_link_to_doctype_a'
    #     is_custom_module = 0
    #     module = 'Core'
    #     module_path = '/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/core'
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/__init__.py", line 635, in create_folder
    #     os.makedirs(path)
    #     ~~~~~~~~~~~^^^^^^
    #     path = '/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/core/doctype/test_child_table_with_link_to_doctype_a'
    #     touch_file = <function touch_file at 0x72056dafa5c0>
    #     with_init = False
    #   File "<frozen os>", line 228, in makedirs
    #     exist_ok = False
    #     head = '/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/core/doctype'
    #     mode = 511
    #     name = '/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/core/doctype/test_child_table_with_link_to_doctype_a'
    #     tail = 'test_child_table_with_link_to_doctype_a'
    # OSError: [Errno 30] Read-only file system: '/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/core/doctype/test_child_table_with_link_to_doctype_a'
    #
  }
  {
    id = "frappe.tests.test_db.TestDB.test_bulk_insert";

    # Traceback (most recent call last):
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/tests/test_db.py", line 506, in test_bulk_insert
    #     current_count = frappe.db.count("ToDo")
    #     self = <frappe.tests.test_db.TestDB testMethod=test_bulk_insert>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/database/database.py", line 1281, in count
    #     ).run(debug=debug)[0][0]
    #       ~~~^^^^^^^^^^^^^
    #     cache = False
    #     debug = False
    #     distinct = True
    #     dt = 'ToDo'
    #     filters = None
    #     self = <frappe.database.mariadb.database.MariaDBDatabase object at 0x72055f65bac0>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/query_builder/utils.py", line 87, in execute_query
    #     result = frappe.db.sql(query, params, *args, **kwargs)  # nosemgrep
    #     args = ()
    #     child_queries = []
    #     execute_child_queries = <function patch_query_execute.<locals>.execute_child_queries at 0x72056c50e3e0>
    #     kwargs = {'debug': False}
    #     params = {}
    #     prepare_query = <function patch_query_execute.<locals>.prepare_query at 0x72056c50e480>
    #     query = 'SELECT DISTINCT COUNT(*) FROM `tabToDo`'
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/database/database.py", line 230, in sql
    #     self._cursor.execute(query, values)
    #     ~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^
    #     as_dict = 0
    #     as_iterator = False
    #     as_list = 0
    #     auto_commit = 0
    #     debug = False
    #     explain = False
    #     ignore_ddl = 0
    #     pluck = False
    #     query = 'SELECT DISTINCT COUNT(*) FROM `tabToDo`'
    #     run = True
    #     self = <frappe.database.mariadb.database.MariaDBDatabase object at 0x72055f65bac0>
    #     trace_id = None
    #     update = None
    #     values = {}
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/cursors.py", line 153, in execute
    #     result = self._query(query)
    #     args = {}
    #     query = 'SELECT DISTINCT COUNT(*) FROM `tabToDo`'
    #     self = <pymysql.cursors.Cursor object at 0x72055f338690>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/cursors.py", line 322, in _query
    #     conn.query(q)
    #     ~~~~~~~~~~^^^
    #     conn = <pymysql.connections.Connection object at 0x72055fe70a50>
    #     q = 'SELECT DISTINCT COUNT(*) FROM `tabToDo`'
    #     self = <pymysql.cursors.Cursor object at 0x72055f338690>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/connections.py", line 575, in query
    #     self._affected_rows = self._read_query_result(unbuffered=unbuffered)
    #                           ~~~~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^
    #     self = <pymysql.connections.Connection object at 0x72055fe70a50>
    #     sql = b'SELECT DISTINCT COUNT(*) FROM `tabToDo`'
    #     unbuffered = False
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/connections.py", line 826, in _read_query_result
    #     result.read()
    #     ~~~~~~~~~~~^^
    #     result = <pymysql.connections.MySQLResult object at 0x72055f300650>
    #     self = <pymysql.connections.Connection object at 0x72055fe70a50>
    #     unbuffered = False
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/connections.py", line 1203, in read
    #     first_packet = self.connection._read_packet()
    #     self = <pymysql.connections.MySQLResult object at 0x72055f300650>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/connections.py", line 782, in _read_packet
    #     packet.raise_for_error()
    #     ~~~~~~~~~~~~~~~~~~~~~~^^
    #     btrh = 0
    #     btrl = 56
    #     buff = bytearray(b"\xffz\x04#42S02Table \'erp_frx_localhost.tabToDo\' doesn\'t exist")
    #     bytes_to_read = 56
    #     packet = <pymysql.protocol.MysqlPacket object at 0x72056d229450>
    #     packet_header = b'8\x00\x00\x01'
    #     packet_number = 1
    #     packet_type = <class 'pymysql.protocol.MysqlPacket'>
    #     recv_data = b"\xffz\x04#42S02Table 'erp_frx_localhost.tabToDo' doesn't exist"
    #     self = <pymysql.connections.Connection object at 0x72055fe70a50>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/protocol.py", line 219, in raise_for_error
    #     err.raise_mysql_exception(self._data)
    #     ~~~~~~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^
    #     errno = 1146
    #     self = <pymysql.protocol.MysqlPacket object at 0x72056d229450>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/err.py", line 150, in raise_mysql_exception
    #     raise errorclass(errno, errval)
    #     data = b"\xffz\x04#42S02Table 'erp_frx_localhost.tabToDo' doesn't exist"
    #     errno = 1146
    #     errorclass = <class 'pymysql.err.ProgrammingError'>
    #     errval = "Table 'erp_frx_localhost.tabToDo' doesn't exist"
    # pymysql.err.ProgrammingError: (1146, "Table 'erp_frx_localhost.tabToDo' doesn't exist")
    #
  }
  {
    id = "frappe.tests.test_db.TestDB.test_bulk_update";

    # Traceback (most recent call last):
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/tests/test_db.py", line 535, in test_bulk_update
    #     frappe.db.bulk_insert(
    #     ~~~~~~~~~~~~~~~~~~~~~^
    #     	"ToDo",
    #      ^^^^^^^
    #     ...<2 lines>...
    #     	ignore_duplicates=True,
    #      ^^^^^^^^^^^^^^^^^^^^^^^
    #     )
    #     ^
    #     self = <frappe.tests.test_db.TestDB testMethod=test_bulk_update>
    #     test_body = 'test_bulk_update - z8F7oC1wkP'
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/database/database.py", line 1484, in bulk_insert
    #     query.insert(*value_chunk).run()
    #     ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^^
    #     chunk_size = 10000
    #     doctype = 'ToDo'
    #     fields = ['name', 'description']
    #     ignore_duplicates = True
    #     query =
    #     self = <frappe.database.mariadb.database.MariaDBDatabase object at 0x72055f65bac0>
    #     table = Table('tabToDo')
    #     value_chunk = (['ToDo Test Bulk Update 0', 'test_bulk_update - z8F7oC1wkP'], ['ToDo Test Bulk Update 1', 'test_bulk_update - z8F7oC1wkP'], ['ToDo Test Bulk Update 2', 'test_bulk_update - z8F7oC1wkP'], ['ToDo Test Bulk Update 3', 'test_bulk_update - z8F7oC1wkP'], ['ToDo Test Bulk Update 4', 'test_bulk_update - z8F7oC1wkP'], ['ToDo Test Bulk Update 5', 'test_bulk_update - z8F7oC1wkP'], ['ToDo Test Bulk Update 6', 'test_bulk_update - z8F7oC1wkP'], ['ToDo Test Bulk Update 7', 'test_bulk_update - z8F7oC1wkP'], ['ToDo Test Bulk Update 8', 'test_bulk_update - z8F7oC1wkP'], ['ToDo Test Bulk Update 9', 'test_bulk_update - z8F7oC1wkP'], ['ToDo Test Bulk Update 10', 'test_bulk_update - z8F7oC1wkP'], ['ToDo Test Bulk Update 11', 'test_bulk_update - z8F7oC1wkP'], ['ToDo Test Bulk Update 12', 'test_bulk_update - z8F7oC1wkP'], ['ToDo Test Bulk Update 13', 'test_bulk_update - z8F7oC1wkP'], ['ToDo Test Bulk Update 14', 'test_bulk_update - z8F7oC1wkP'], ['ToDo Test Bulk Update 15', 'test_bulk_update - z8F7oC1wkP'], ['ToDo Test Bulk Update 16', 'test_bulk_update - z8F7oC1wkP'], ['ToDo Test Bulk Update 17', 'test_bulk_update - z8F7oC1wkP'], ['ToDo Test Bulk Update 18', 'test_bulk_update - z8F7oC1wkP'], ['ToDo Test Bulk Update 19', 'test_bulk_update - z8F7oC1wkP'])
    #     value_iterator = <list_iterator object at 0x7205641e1930>
    #     values = [['ToDo Test Bulk Update 0', 'test_bulk_update - z8F7oC1wkP'], ['ToDo Test Bulk Update 1', 'test_bulk_update - z8F7oC1wkP'], ['ToDo Test Bulk Update 2', 'test_bulk_update - z8F7oC1wkP'], ['ToDo Test Bulk Update 3', 'test_bulk_update - z8F7oC1wkP'], ['ToDo Test Bulk Update 4', 'test_bulk_update - z8F7oC1wkP'], ['ToDo Test Bulk Update 5', 'test_bulk_update - z8F7oC1wkP'], ['ToDo Test Bulk Update 6', 'test_bulk_update - z8F7oC1wkP'], ['ToDo Test Bulk Update 7', 'test_bulk_update - z8F7oC1wkP'], ['ToDo Test Bulk Update 8', 'test_bulk_update - z8F7oC1wkP'], ['ToDo Test Bulk Update 9', 'test_bulk_update - z8F7oC1wkP'], ['ToDo Test Bulk Update 10', 'test_bulk_update - z8F7oC1wkP'], ['ToDo Test Bulk Update 11', 'test_bulk_update - z8F7oC1wkP'], ['ToDo Test Bulk Update 12', 'test_bulk_update - z8F7oC1wkP'], ['ToDo Test Bulk Update 13', 'test_bulk_update - z8F7oC1wkP'], ['ToDo Test Bulk Update 14', 'test_bulk_update - z8F7oC1wkP'], ['ToDo Test Bulk Update 15', 'test_bulk_update - z8F7oC1wkP'], ['ToDo Test Bulk Update 16', 'test_bulk_update - z8F7oC1wkP'], ['ToDo Test Bulk Update 17', 'test_bulk_update - z8F7oC1wkP'], ['ToDo Test Bulk Update 18', 'test_bulk_update - z8F7oC1wkP'], ['ToDo Test Bulk Update 19', 'test_bulk_update - z8F7oC1wkP']]
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/query_builder/utils.py", line 87, in execute_query
    #     result = frappe.db.sql(query, params, *args, **kwargs)  # nosemgrep
    #     args = ()
    #     child_queries = []
    #     execute_child_queries = <function patch_query_execute.<locals>.execute_child_queries at 0x72056c50e3e0>
    #     kwargs = {}
    #     params = {'param1': 'ToDo Test Bulk Update 0', 'param2': 'test_bulk_update - z8F7oC1wkP', 'param3': 'ToDo Test Bulk Update 1', 'param4': 'test_bulk_update - z8F7oC1wkP', 'param5': 'ToDo Test Bulk Update 2', 'param6': 'test_bulk_update - z8F7oC1wkP', 'param7': 'ToDo Test Bulk Update 3', 'param8': 'test_bulk_update - z8F7oC1wkP', 'param9': 'ToDo Test Bulk Update 4', 'param10': 'test_bulk_update - z8F7oC1wkP', 'param11': 'ToDo Test Bulk Update 5', 'param12': 'test_bulk_update - z8F7oC1wkP', 'param13': 'ToDo Test Bulk Update 6', 'param14': 'test_bulk_update - z8F7oC1wkP', 'param15': 'ToDo Test Bulk Update 7', 'param16': 'test_bulk_update - z8F7oC1wkP', 'param17': 'ToDo Test Bulk Update 8', 'param18': 'test_bulk_update - z8F7oC1wkP', 'param19': 'ToDo Test Bulk Update 9', 'param20': 'test_bulk_update - z8F7oC1wkP', 'param21': 'ToDo Test Bulk Update 10', 'param22': 'test_bulk_update - z8F7oC1wkP', 'param23': 'ToDo Test Bulk Update 11', 'param24': 'test_bulk_update - z8F7oC1wkP', 'param25': 'ToDo Test Bulk Update 12', 'param26': 'test_bulk_update - z8F7oC1wkP', 'param27': 'ToDo Test Bulk Update 13', 'param28': 'test_bulk_update - z8F7oC1wkP', 'param29': 'ToDo Test Bulk Update 14', 'param30': 'test_bulk_update - z8F7oC1wkP', 'param31': 'ToDo Test Bulk Update 15', 'param32': 'test_bulk_update - z8F7oC1wkP', 'param33': 'ToDo Test Bulk Update 16', 'param34': 'test_bulk_update - z8F7oC1wkP', 'param35': 'ToDo Test Bulk Update 17', 'param36': 'test_bulk_update - z8F7oC1wkP', 'param37': 'ToDo Test Bulk Update 18', 'param38': 'test_bulk_update - z8F7oC1wkP', 'param39': 'ToDo Test Bulk Update 19', 'param40': 'test_bulk_update - z8F7oC1wkP'}
    #     prepare_query = <function patch_query_execute.<locals>.prepare_query at 0x72056c50e480>
    #     query = 'INSERT IGNORE INTO `tabToDo` (`name`,`description`) VALUES (%(param1)s,%(param2)s),(%(param3)s,%(param4)s),(%(param5)s,%(param6)s),(%(param7)s,%(param8)s),(%(param9)s,%(param10)s),(%(param11)s,%(param12)s),(%(param13)s,%(param14)s),(%(param15)s,%(param16)s),(%(param17)s,%(param18)s),(%(param19)s,%(param20)s),(%(param21)s,%(param22)s),(%(param23)s,%(param24)s),(%(param25)s,%(param26)s),(%(param27)s,%(param28)s),(%(param29)s,%(param30)s),(%(param31)s,%(param32)s),(%(param33)s,%(param34)s),(%(param35)s,%(param36)s),(%(param37)s,%(param38)s),(%(param39)s,%(param40)s)'
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/database/database.py", line 230, in sql
    #     self._cursor.execute(query, values)
    #     ~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^
    #     as_dict = 0
    #     as_iterator = False
    #     as_list = 0
    #     auto_commit = 0
    #     debug = False
    #     explain = False
    #     ignore_ddl = 0
    #     pluck = False
    #     query = 'INSERT IGNORE INTO `tabToDo` (`name`,`description`) VALUES (%(param1)s,%(param2)s),(%(param3)s,%(param4)s),(%(param5)s,%(param6)s),(%(param7)s,%(param8)s),(%(param9)s,%(param10)s),(%(param11)s,%(param12)s),(%(param13)s,%(param14)s),(%(param15)s,%(param16)s),(%(param17)s,%(param18)s),(%(param19)s,%(param20)s),(%(param21)s,%(param22)s),(%(param23)s,%(param24)s),(%(param25)s,%(param26)s),(%(param27)s,%(param28)s),(%(param29)s,%(param30)s),(%(param31)s,%(param32)s),(%(param33)s,%(param34)s),(%(param35)s,%(param36)s),(%(param37)s,%(param38)s),(%(param39)s,%(param40)s)'
    #     run = True
    #     self = <frappe.database.mariadb.database.MariaDBDatabase object at 0x72055f65bac0>
    #     trace_id = None
    #     update = None
    #     values = {'param1': 'ToDo Test Bulk Update 0', 'param2': 'test_bulk_update - z8F7oC1wkP', 'param3': 'ToDo Test Bulk Update 1', 'param4': 'test_bulk_update - z8F7oC1wkP', 'param5': 'ToDo Test Bulk Update 2', 'param6': 'test_bulk_update - z8F7oC1wkP', 'param7': 'ToDo Test Bulk Update 3', 'param8': 'test_bulk_update - z8F7oC1wkP', 'param9': 'ToDo Test Bulk Update 4', 'param10': 'test_bulk_update - z8F7oC1wkP', 'param11': 'ToDo Test Bulk Update 5', 'param12': 'test_bulk_update - z8F7oC1wkP', 'param13': 'ToDo Test Bulk Update 6', 'param14': 'test_bulk_update - z8F7oC1wkP', 'param15': 'ToDo Test Bulk Update 7', 'param16': 'test_bulk_update - z8F7oC1wkP', 'param17': 'ToDo Test Bulk Update 8', 'param18': 'test_bulk_update - z8F7oC1wkP', 'param19': 'ToDo Test Bulk Update 9', 'param20': 'test_bulk_update - z8F7oC1wkP', 'param21': 'ToDo Test Bulk Update 10', 'param22': 'test_bulk_update - z8F7oC1wkP', 'param23': 'ToDo Test Bulk Update 11', 'param24': 'test_bulk_update - z8F7oC1wkP', 'param25': 'ToDo Test Bulk Update 12', 'param26': 'test_bulk_update - z8F7oC1wkP', 'param27': 'ToDo Test Bulk Update 13', 'param28': 'test_bulk_update - z8F7oC1wkP', 'param29': 'ToDo Test Bulk Update 14', 'param30': 'test_bulk_update - z8F7oC1wkP', 'param31': 'ToDo Test Bulk Update 15', 'param32': 'test_bulk_update - z8F7oC1wkP', 'param33': 'ToDo Test Bulk Update 16', 'param34': 'test_bulk_update - z8F7oC1wkP', 'param35': 'ToDo Test Bulk Update 17', 'param36': 'test_bulk_update - z8F7oC1wkP', 'param37': 'ToDo Test Bulk Update 18', 'param38': 'test_bulk_update - z8F7oC1wkP', 'param39': 'ToDo Test Bulk Update 19', 'param40': 'test_bulk_update - z8F7oC1wkP'}
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/cursors.py", line 153, in execute
    #     result = self._query(query)
    #     args = {'param1': 'ToDo Test Bulk Update 0', 'param2': 'test_bulk_update - z8F7oC1wkP', 'param3': 'ToDo Test Bulk Update 1', 'param4': 'test_bulk_update - z8F7oC1wkP', 'param5': 'ToDo Test Bulk Update 2', 'param6': 'test_bulk_update - z8F7oC1wkP', 'param7': 'ToDo Test Bulk Update 3', 'param8': 'test_bulk_update - z8F7oC1wkP', 'param9': 'ToDo Test Bulk Update 4', 'param10': 'test_bulk_update - z8F7oC1wkP', 'param11': 'ToDo Test Bulk Update 5', 'param12': 'test_bulk_update - z8F7oC1wkP', 'param13': 'ToDo Test Bulk Update 6', 'param14': 'test_bulk_update - z8F7oC1wkP', 'param15': 'ToDo Test Bulk Update 7', 'param16': 'test_bulk_update - z8F7oC1wkP', 'param17': 'ToDo Test Bulk Update 8', 'param18': 'test_bulk_update - z8F7oC1wkP', 'param19': 'ToDo Test Bulk Update 9', 'param20': 'test_bulk_update - z8F7oC1wkP', 'param21': 'ToDo Test Bulk Update 10', 'param22': 'test_bulk_update - z8F7oC1wkP', 'param23': 'ToDo Test Bulk Update 11', 'param24': 'test_bulk_update - z8F7oC1wkP', 'param25': 'ToDo Test Bulk Update 12', 'param26': 'test_bulk_update - z8F7oC1wkP', 'param27': 'ToDo Test Bulk Update 13', 'param28': 'test_bulk_update - z8F7oC1wkP', 'param29': 'ToDo Test Bulk Update 14', 'param30': 'test_bulk_update - z8F7oC1wkP', 'param31': 'ToDo Test Bulk Update 15', 'param32': 'test_bulk_update - z8F7oC1wkP', 'param33': 'ToDo Test Bulk Update 16', 'param34': 'test_bulk_update - z8F7oC1wkP', 'param35': 'ToDo Test Bulk Update 17', 'param36': 'test_bulk_update - z8F7oC1wkP', 'param37': 'ToDo Test Bulk Update 18', 'param38': 'test_bulk_update - z8F7oC1wkP', 'param39': 'ToDo Test Bulk Update 19', 'param40': 'test_bulk_update - z8F7oC1wkP'}
    #     query = "INSERT IGNORE INTO `tabToDo` (`name`,`description`) VALUES ('ToDo Test Bulk Update 0','test_bulk_update - z8F7oC1wkP'),('ToDo Test Bulk Update 1','test_bulk_update - z8F7oC1wkP'),('ToDo Test Bulk Update 2','test_bulk_update - z8F7oC1wkP'),('ToDo Test Bulk Update 3','test_bulk_update - z8F7oC1wkP'),('ToDo Test Bulk Update 4','test_bulk_update - z8F7oC1wkP'),('ToDo Test Bulk Update 5','test_bulk_update - z8F7oC1wkP'),('ToDo Test Bulk Update 6','test_bulk_update - z8F7oC1wkP'),('ToDo Test Bulk Update 7','test_bulk_update - z8F7oC1wkP'),('ToDo Test Bulk Update 8','test_bulk_update - z8F7oC1wkP'),('ToDo Test Bulk Update 9','test_bulk_update - z8F7oC1wkP'),('ToDo Test Bulk Update 10','test_bulk_update - z8F7oC1wkP'),('ToDo Test Bulk Update 11','test_bulk_update - z8F7oC1wkP'),('ToDo Test Bulk Update 12','test_bulk_update - z8F7oC1wkP'),('ToDo Test Bulk Update 13','test_bulk_update - z8F7oC1wkP'),('ToDo Test Bulk Update 14','test_bulk_update - z8F7oC1wkP'),('ToDo Test Bulk Update 15','test_bulk_update - z8F7oC1wkP'),('ToDo Test Bulk Update 16','test_bulk_update - z8F7oC1wkP'),('ToDo Test Bulk Update 17','test_bulk_update - z8F7oC1wkP'),('ToDo Test Bulk Update 18','test_bulk_update - z8F7oC1wkP'),('ToDo Test Bulk Update 19','test_bulk_update - z8F7oC1wkP')"
    #     self = <pymysql.cursors.Cursor object at 0x72055f338690>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/cursors.py", line 322, in _query
    #     conn.query(q)
    #     ~~~~~~~~~~^^^
    #     conn = <pymysql.connections.Connection object at 0x72055fe70a50>
    #     q = "INSERT IGNORE INTO `tabToDo` (`name`,`description`) VALUES ('ToDo Test Bulk Update 0','test_bulk_update - z8F7oC1wkP'),('ToDo Test Bulk Update 1','test_bulk_update - z8F7oC1wkP'),('ToDo Test Bulk Update 2','test_bulk_update - z8F7oC1wkP'),('ToDo Test Bulk Update 3','test_bulk_update - z8F7oC1wkP'),('ToDo Test Bulk Update 4','test_bulk_update - z8F7oC1wkP'),('ToDo Test Bulk Update 5','test_bulk_update - z8F7oC1wkP'),('ToDo Test Bulk Update 6','test_bulk_update - z8F7oC1wkP'),('ToDo Test Bulk Update 7','test_bulk_update - z8F7oC1wkP'),('ToDo Test Bulk Update 8','test_bulk_update - z8F7oC1wkP'),('ToDo Test Bulk Update 9','test_bulk_update - z8F7oC1wkP'),('ToDo Test Bulk Update 10','test_bulk_update - z8F7oC1wkP'),('ToDo Test Bulk Update 11','test_bulk_update - z8F7oC1wkP'),('ToDo Test Bulk Update 12','test_bulk_update - z8F7oC1wkP'),('ToDo Test Bulk Update 13','test_bulk_update - z8F7oC1wkP'),('ToDo Test Bulk Update 14','test_bulk_update - z8F7oC1wkP'),('ToDo Test Bulk Update 15','test_bulk_update - z8F7oC1wkP'),('ToDo Test Bulk Update 16','test_bulk_update - z8F7oC1wkP'),('ToDo Test Bulk Update 17','test_bulk_update - z8F7oC1wkP'),('ToDo Test Bulk Update 18','test_bulk_update - z8F7oC1wkP'),('ToDo Test Bulk Update 19','test_bulk_update - z8F7oC1wkP')"
    #     self = <pymysql.cursors.Cursor object at 0x72055f338690>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/connections.py", line 575, in query
    #     self._affected_rows = self._read_query_result(unbuffered=unbuffered)
    #                           ~~~~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^
    #     self = <pymysql.connections.Connection object at 0x72055fe70a50>
    #     sql = b"INSERT IGNORE INTO `tabToDo` (`name`,`description`) VALUES ('ToDo Test Bulk Update 0','test_bulk_update - z8F7oC1wkP'),('ToDo Test Bulk Update 1','test_bulk_update - z8F7oC1wkP'),('ToDo Test Bulk Update 2','test_bulk_update - z8F7oC1wkP'),('ToDo Test Bulk Update 3','test_bulk_update - z8F7oC1wkP'),('ToDo Test Bulk Update 4','test_bulk_update - z8F7oC1wkP'),('ToDo Test Bulk Update 5','test_bulk_update - z8F7oC1wkP'),('ToDo Test Bulk Update 6','test_bulk_update - z8F7oC1wkP'),('ToDo Test Bulk Update 7','test_bulk_update - z8F7oC1wkP'),('ToDo Test Bulk Update 8','test_bulk_update - z8F7oC1wkP'),('ToDo Test Bulk Update 9','test_bulk_update - z8F7oC1wkP'),('ToDo Test Bulk Update 10','test_bulk_update - z8F7oC1wkP'),('ToDo Test Bulk Update 11','test_bulk_update - z8F7oC1wkP'),('ToDo Test Bulk Update 12','test_bulk_update - z8F7oC1wkP'),('ToDo Test Bulk Update 13','test_bulk_update - z8F7oC1wkP'),('ToDo Test Bulk Update 14','test_bulk_update - z8F7oC1wkP'),('ToDo Test Bulk Update 15','test_bulk_update - z8F7oC1wkP'),('ToDo Test Bulk Update 16','test_bulk_update - z8F7oC1wkP'),('ToDo Test Bulk Update 17','test_bulk_update - z8F7oC1wkP'),('ToDo Test Bulk Update 18','test_bulk_update - z8F7oC1wkP'),('ToDo Test Bulk Update 19','test_bulk_update - z8F7oC1wkP')"
    #     unbuffered = False
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/connections.py", line 826, in _read_query_result
    #     result.read()
    #     ~~~~~~~~~~~^^
    #     result = <pymysql.connections.MySQLResult object at 0x72055f300950>
    #     self = <pymysql.connections.Connection object at 0x72055fe70a50>
    #     unbuffered = False
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/connections.py", line 1203, in read
    #     first_packet = self.connection._read_packet()
    #     self = <pymysql.connections.MySQLResult object at 0x72055f300950>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/connections.py", line 782, in _read_packet
    #     packet.raise_for_error()
    #     ~~~~~~~~~~~~~~~~~~~~~~^^
    #     btrh = 0
    #     btrl = 56
    #     buff = bytearray(b"\xffz\x04#42S02Table \'erp_frx_localhost.tabToDo\' doesn\'t exist")
    #     bytes_to_read = 56
    #     packet = <pymysql.protocol.MysqlPacket object at 0x72055ff47580>
    #     packet_header = b'8\x00\x00\x01'
    #     packet_number = 1
    #     packet_type = <class 'pymysql.protocol.MysqlPacket'>
    #     recv_data = b"\xffz\x04#42S02Table 'erp_frx_localhost.tabToDo' doesn't exist"
    #     self = <pymysql.connections.Connection object at 0x72055fe70a50>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/protocol.py", line 219, in raise_for_error
    #     err.raise_mysql_exception(self._data)
    #     ~~~~~~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^
    #     errno = 1146
    #     self = <pymysql.protocol.MysqlPacket object at 0x72055ff47580>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/pymysql/err.py", line 150, in raise_mysql_exception
    #     raise errorclass(errno, errval)
    #     data = b"\xffz\x04#42S02Table 'erp_frx_localhost.tabToDo' doesn't exist"
    #     errno = 1146
    #     errorclass = <class 'pymysql.err.ProgrammingError'>
    #     errval = "Table 'erp_frx_localhost.tabToDo' doesn't exist"
    # pymysql.err.ProgrammingError: (1146, "Table 'erp_frx_localhost.tabToDo' doesn't exist")
    #
  }
  {
    id = "frappe.tests.test_rename_doc.TestRenameDoc";

    # Traceback (most recent call last):
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/tests/test_rename_doc.py", line 80, in setUpClass
    #     ).insert()
    #       ~~~~~~^^
    #     __class__ = <class 'frappe.tests.test_rename_doc.TestRenameDoc'>
    #     doc = <CustomToDo: TODO-34-13>
    #     num = 4
    #     self = <class 'frappe.tests.test_rename_doc.TestRenameDoc'>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/model/document.py", line 334, in insert
    #     self.run_post_save_methods()
    #     ~~~~~~~~~~~~~~~~~~~~~~~~~~^^
    #     d = <DocPerm: 0av8h8v0if parent=Test Rename Document Old>
    #     ignore_if_duplicate = False
    #     ignore_links = None
    #     ignore_mandatory = None
    #     ignore_permissions = None
    #     self = <DocType: Test Rename Document Old>
    #     set_child_names = True
    #     set_name = None
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/model/document.py", line 1182, in run_post_save_methods
    #     self.run_method("on_update")
    #     ~~~~~~~~~~~~~~~^^^^^^^^^^^^^
    #     self = <DocType: Test Rename Document Old>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/model/document.py", line 1016, in run_method
    #     out = Document.hook(fn)(self, *args, **kwargs)
    #     args = ()
    #     fn = <function Document.run_method.<locals>.fn at 0x72055eee7600>
    #     kwargs = {}
    #     method = 'on_update'
    #     self = <DocType: Test Rename Document Old>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/model/document.py", line 1376, in composer
    #     return composed(self, method, *args, **kwargs)
    #     args = ()
    #     compose = <function Document.hook.<locals>.compose at 0x72055eee40e0>
    #     composed = <function Document.hook.<locals>.compose.<locals>.runner at 0x72055eee79c0>
    #     doc_events = {'*': {'on_update': ['frappe.desk.notifications.clear_doctype_notifications', 'frappe.workflow.doctype.workflow_action.workflow_action.process_workflow_actions', 'frappe.core.doctype.file.utils.attach_files_to_document', 'frappe.automation.doctype.assignment_rule.assignment_rule.apply', 'frappe.automation.doctype.assignment_rule.assignment_rule.update_due_date', 'frappe.core.doctype.user_type.user_type.apply_permissions_for_non_standard_user_type', 'frappe.search.sqlite_search.update_doc_index'], 'after_rename': ['frappe.desk.notifications.clear_doctype_notifications'], 'on_cancel': ['frappe.desk.notifications.clear_doctype_notifications', 'frappe.workflow.doctype.workflow_action.workflow_action.process_workflow_actions', 'frappe.automation.doctype.assignment_rule.assignment_rule.apply'], 'on_trash': ['frappe.desk.notifications.clear_doctype_notifications', 'frappe.workflow.doctype.workflow_action.workflow_action.process_workflow_actions', 'frappe.search.sqlite_search.delete_doc_index'], 'on_update_after_submit': ['frappe.workflow.doctype.workflow_action.workflow_action.process_workflow_actions', 'frappe.automation.doctype.assignment_rule.assignment_rule.apply', 'frappe.automation.doctype.assignment_rule.assignment_rule.update_due_date', 'frappe.core.doctype.file.utils.attach_files_to_document'], 'on_change': ['frappe.social.doctype.energy_point_rule.energy_point_rule.process_energy_points', 'frappe.automation.doctype.milestone_tracker.milestone_tracker.evaluate_milestone']}, 'Event': {'after_insert': ['frappe.integrations.doctype.google_calendar.google_calendar.insert_event_in_google_calendar'], 'on_update': ['frappe.integrations.doctype.google_calendar.google_calendar.update_event_in_google_calendar'], 'on_trash': ['frappe.integrations.doctype.google_calendar.google_calendar.delete_event_from_google_calendar']}, 'Contact': {'after_insert': ['frappe.integrations.doctype.google_contacts.google_contacts.insert_contacts_to_google_contacts'], 'on_update': ['frappe.integrations.doctype.google_contacts.google_contacts.update_contacts_to_google_contacts']}, 'DocType': {'on_update': ['frappe.cache_manager.build_domain_restriced_doctype_cache']}, 'Page': {'on_update': ['frappe.cache_manager.build_domain_restriced_page_cache']}}
    #     f = <function Document.run_method.<locals>.fn at 0x72055eee7600>
    #     handler = 'frappe.search.sqlite_search.update_doc_index'
    #     hooks = [<function build_domain_restriced_doctype_cache at 0x72056d08a700>, <function clear_doctype_notifications at 0x72056a18ac00>, <function process_workflow_actions at 0x7205694ccd60>, <function attach_files_to_document at 0x72056b0409a0>, <function apply at 0x7205694e0360>, <function update_due_date at 0x7205694e0400>, <function apply_permissions_for_non_standard_user_type at 0x7205694e1d00>, <function update_doc_index at 0x720569e6a340>]
    #     kwargs = {}
    #     method = 'on_update'
    #     self = <DocType: Test Rename Document Old>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/model/document.py", line 1358, in runner
    #     add_to_return_value(self, fn(self, *args, **kwargs))
    #                               ~~^^^^^^^^^^^^^^^^^^^^^^^
    #     add_to_return_value = <function Document.hook.<locals>.add_to_return_value at 0x72055eee7ce0>
    #     args = ()
    #     fn = <function Document.run_method.<locals>.fn at 0x72055eee7600>
    #     hooks = (<function build_domain_restriced_doctype_cache at 0x72056d08a700>, <function clear_doctype_notifications at 0x72056a18ac00>, <function process_workflow_actions at 0x7205694ccd60>, <function attach_files_to_document at 0x72056b0409a0>, <function apply at 0x7205694e0360>, <function update_due_date at 0x7205694e0400>, <function apply_permissions_for_non_standard_user_type at 0x7205694e1d00>, <function update_doc_index at 0x720569e6a340>)
    #     kwargs = {}
    #     method = 'on_update'
    #     self = <DocType: Test Rename Document Old>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/model/document.py", line 1013, in fn
    #     return method_object(*args, **kwargs)
    #     args = ()
    #     kwargs = {}
    #     method = 'on_update'
    #     method_object = <bound method DocType.on_update of <DocType: Test Rename Document Old>>
    #     self = <DocType: Test Rename Document Old>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/core/doctype/doctype/doctype.py", line 542, in on_update
    #     self.export_doc()
    #     ~~~~~~~~~~~~~~~^^
    #     allow_doctype_export = 1
    #     self = <DocType: Test Rename Document Old>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/core/doctype/doctype/doctype.py", line 849, in export_doc
    #     export_to_files(record_list=[["DocType", self.name]], create_init=True)
    #     ~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     export_to_files = <function export_to_files at 0x720569abd300>
    #     self = <DocType: Test Rename Document Old>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/modules/export_file.py", line 27, in export_to_files
    #     write_document_file(
    #     ~~~~~~~~~~~~~~~~~~~^
    #     	frappe.get_doc(record[0], record[1]),
    #      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     ...<2 lines>...
    #     	folder_name=folder_name,
    #      ^^^^^^^^^^^^^^^^^^^^^^^^
    #     )
    #     ^
    #     create_init = True
    #     folder_name = None
    #     record = ['DocType', 'Test Rename Document Old']
    #     record_list = [['DocType', 'Test Rename Document Old']]
    #     record_module = None
    #     verbose = 0
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/modules/export_file.py", line 47, in write_document_file
    #     folder = create_folder(module, doc.doctype, doc.name, create_init, is_custom_module)
    #     create_init = True
    #     doc = <DocType: Test Rename Document Old>
    #     doc_export = {'name': 'Test Rename Document Old', 'creation': datetime.datetime(2026, 8, 20, 1, 13, 19, 997869), 'modified': datetime.datetime(2026, 8, 20, 1, 13, 19, 997869), 'modified_by': 'Administrator', 'owner': 'Administrator', 'editable_grid': 1, 'module': 'Custom', 'sort_field': 'modified', 'sort_order': 'DESC', 'allow_rename': 1, 'engine': 'InnoDB', 'grid_page_length': 50, 'rows_threshold_for_grid_search': 20, 'index_web_pages_for_search': 1, 'row_format': 'Dynamic', 'doctype': 'DocType', 'links': [], 'fields': [{'fieldname': 'some_fieldname', 'label': 'Some Field', 'fieldtype': 'Data'}], 'actions': [], 'permissions': [{'role': 'System Manager', 'read': 1, 'write': 1, 'create': 1, 'delete': 1, 'report': 1, 'export': 1, 'share': 1, 'print': 1, 'email': 1}], 'states': [], 'field_order': ['some_fieldname']}
    #     folder_name = None
    #     is_custom_module = 0
    #     module = 'Custom'
    #     record_module = None
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/modules/export_file.py", line 129, in create_folder
    #     frappe.create_folder(folder)
    #     ~~~~~~~~~~~~~~~~~~~~^^^^^^^^
    #     create_init = True
    #     dn = 'test_rename_document_old'
    #     dt = 'doctype'
    #     folder = '/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/custom/doctype/test_rename_document_old'
    #     is_custom_module = 0
    #     module = 'Custom'
    #     module_path = '/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/custom'
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/__init__.py", line 635, in create_folder
    #     os.makedirs(path)
    #     ~~~~~~~~~~~^^^^^^
    #     path = '/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/custom/doctype/test_rename_document_old'
    #     touch_file = <function touch_file at 0x72056dafa5c0>
    #     with_init = False
    #   File "<frozen os>", line 228, in makedirs
    #     exist_ok = False
    #     head = '/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/custom/doctype'
    #     mode = 511
    #     name = '/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/custom/doctype/test_rename_document_old'
    #     tail = 'test_rename_document_old'
    # OSError: [Errno 30] Read-only file system: '/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/custom/doctype/test_rename_document_old'
    #
  }
  {
    id = "frappe.tests.test_virtual_doctype.TestVirtualDoctypes";

    # Traceback (most recent call last):
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/tests/test_virtual_doctype.py", line 91, in setUpClass
    #     cdt = new_doctype(name=TEST_CHILD_DOCTYPE_NAME, is_virtual=1, istable=1, custom=0).insert()
    #     cls = <class 'frappe.tests.test_virtual_doctype.TestVirtualDoctypes'>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/model/document.py", line 334, in insert
    #     self.run_post_save_methods()
    #     ~~~~~~~~~~~~~~~~~~~~~~~~~~^^
    #     d = <DataDocField: some_fieldname parent=VirtualDoctypeTestChild>
    #     ignore_if_duplicate = False
    #     ignore_links = None
    #     ignore_mandatory = None
    #     ignore_permissions = None
    #     self = <DocType: VirtualDoctypeTestChild>
    #     set_child_names = True
    #     set_name = None
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/model/document.py", line 1182, in run_post_save_methods
    #     self.run_method("on_update")
    #     ~~~~~~~~~~~~~~~^^^^^^^^^^^^^
    #     self = <DocType: VirtualDoctypeTestChild>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/model/document.py", line 1016, in run_method
    #     out = Document.hook(fn)(self, *args, **kwargs)
    #     args = ()
    #     fn = <function Document.run_method.<locals>.fn at 0x72055f392c00>
    #     kwargs = {}
    #     method = 'on_update'
    #     self = <DocType: VirtualDoctypeTestChild>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/model/document.py", line 1376, in composer
    #     return composed(self, method, *args, **kwargs)
    #     args = ()
    #     compose = <function Document.hook.<locals>.compose at 0x72055eee5620>
    #     composed = <function Document.hook.<locals>.compose.<locals>.runner at 0x72055eee7560>
    #     doc_events = {'*': {'on_update': ['frappe.desk.notifications.clear_doctype_notifications', 'frappe.workflow.doctype.workflow_action.workflow_action.process_workflow_actions', 'frappe.core.doctype.file.utils.attach_files_to_document', 'frappe.automation.doctype.assignment_rule.assignment_rule.apply', 'frappe.automation.doctype.assignment_rule.assignment_rule.update_due_date', 'frappe.core.doctype.user_type.user_type.apply_permissions_for_non_standard_user_type', 'frappe.search.sqlite_search.update_doc_index'], 'after_rename': ['frappe.desk.notifications.clear_doctype_notifications'], 'on_cancel': ['frappe.desk.notifications.clear_doctype_notifications', 'frappe.workflow.doctype.workflow_action.workflow_action.process_workflow_actions', 'frappe.automation.doctype.assignment_rule.assignment_rule.apply'], 'on_trash': ['frappe.desk.notifications.clear_doctype_notifications', 'frappe.workflow.doctype.workflow_action.workflow_action.process_workflow_actions', 'frappe.search.sqlite_search.delete_doc_index'], 'on_update_after_submit': ['frappe.workflow.doctype.workflow_action.workflow_action.process_workflow_actions', 'frappe.automation.doctype.assignment_rule.assignment_rule.apply', 'frappe.automation.doctype.assignment_rule.assignment_rule.update_due_date', 'frappe.core.doctype.file.utils.attach_files_to_document'], 'on_change': ['frappe.social.doctype.energy_point_rule.energy_point_rule.process_energy_points', 'frappe.automation.doctype.milestone_tracker.milestone_tracker.evaluate_milestone']}, 'Event': {'after_insert': ['frappe.integrations.doctype.google_calendar.google_calendar.insert_event_in_google_calendar'], 'on_update': ['frappe.integrations.doctype.google_calendar.google_calendar.update_event_in_google_calendar'], 'on_trash': ['frappe.integrations.doctype.google_calendar.google_calendar.delete_event_from_google_calendar']}, 'Contact': {'after_insert': ['frappe.integrations.doctype.google_contacts.google_contacts.insert_contacts_to_google_contacts'], 'on_update': ['frappe.integrations.doctype.google_contacts.google_contacts.update_contacts_to_google_contacts']}, 'DocType': {'on_update': ['frappe.cache_manager.build_domain_restriced_doctype_cache']}, 'Page': {'on_update': ['frappe.cache_manager.build_domain_restriced_page_cache']}}
    #     f = <function Document.run_method.<locals>.fn at 0x72055f392c00>
    #     handler = 'frappe.search.sqlite_search.update_doc_index'
    #     hooks = [<function build_domain_restriced_doctype_cache at 0x72056d08a700>, <function clear_doctype_notifications at 0x72056a18ac00>, <function process_workflow_actions at 0x7205694ccd60>, <function attach_files_to_document at 0x72056b0409a0>, <function apply at 0x7205694e0360>, <function update_due_date at 0x7205694e0400>, <function apply_permissions_for_non_standard_user_type at 0x7205694e1d00>, <function update_doc_index at 0x720569e6a340>]
    #     kwargs = {}
    #     method = 'on_update'
    #     self = <DocType: VirtualDoctypeTestChild>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/model/document.py", line 1358, in runner
    #     add_to_return_value(self, fn(self, *args, **kwargs))
    #                               ~~^^^^^^^^^^^^^^^^^^^^^^^
    #     add_to_return_value = <function Document.hook.<locals>.add_to_return_value at 0x72055eee67a0>
    #     args = ()
    #     fn = <function Document.run_method.<locals>.fn at 0x72055f392c00>
    #     hooks = (<function build_domain_restriced_doctype_cache at 0x72056d08a700>, <function clear_doctype_notifications at 0x72056a18ac00>, <function process_workflow_actions at 0x7205694ccd60>, <function attach_files_to_document at 0x72056b0409a0>, <function apply at 0x7205694e0360>, <function update_due_date at 0x7205694e0400>, <function apply_permissions_for_non_standard_user_type at 0x7205694e1d00>, <function update_doc_index at 0x720569e6a340>)
    #     kwargs = {}
    #     method = 'on_update'
    #     self = <DocType: VirtualDoctypeTestChild>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/model/document.py", line 1013, in fn
    #     return method_object(*args, **kwargs)
    #     args = ()
    #     kwargs = {}
    #     method = 'on_update'
    #     method_object = <bound method DocType.on_update of <DocType: VirtualDoctypeTestChild>>
    #     self = <DocType: VirtualDoctypeTestChild>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/core/doctype/doctype/doctype.py", line 542, in on_update
    #     self.export_doc()
    #     ~~~~~~~~~~~~~~~^^
    #     allow_doctype_export = True
    #     self = <DocType: VirtualDoctypeTestChild>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/core/doctype/doctype/doctype.py", line 849, in export_doc
    #     export_to_files(record_list=[["DocType", self.name]], create_init=True)
    #     ~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     export_to_files = <function export_to_files at 0x720569abd300>
    #     self = <DocType: VirtualDoctypeTestChild>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/modules/export_file.py", line 27, in export_to_files
    #     write_document_file(
    #     ~~~~~~~~~~~~~~~~~~~^
    #     	frappe.get_doc(record[0], record[1]),
    #      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     ...<2 lines>...
    #     	folder_name=folder_name,
    #      ^^^^^^^^^^^^^^^^^^^^^^^^
    #     )
    #     ^
    #     create_init = True
    #     folder_name = None
    #     record = ['DocType', 'VirtualDoctypeTestChild']
    #     record_list = [['DocType', 'VirtualDoctypeTestChild']]
    #     record_module = None
    #     verbose = 0
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/modules/export_file.py", line 47, in write_document_file
    #     folder = create_folder(module, doc.doctype, doc.name, create_init, is_custom_module)
    #     create_init = True
    #     doc = <DocType: VirtualDoctypeTestChild>
    #     doc_export = {'name': 'VirtualDoctypeTestChild', 'creation': datetime.datetime(2026, 8, 20, 1, 13, 52, 666053), 'modified': datetime.datetime(2026, 8, 20, 1, 13, 52, 666053), 'modified_by': 'Administrator', 'owner': 'Administrator', 'is_virtual': 1, 'istable': 1, 'editable_grid': 1, 'module': 'Core', 'sort_field': 'modified', 'sort_order': 'DESC', 'allow_rename': 1, 'engine': 'InnoDB', 'grid_page_length': 50, 'rows_threshold_for_grid_search': 20, 'index_web_pages_for_search': 1, 'row_format': 'Dynamic', 'doctype': 'DocType', 'links': [], 'fields': [{'fieldname': 'some_fieldname', 'label': 'Some Field', 'fieldtype': 'Data'}], 'actions': [], 'permissions': [], 'states': [], 'field_order': ['some_fieldname']}
    #     folder_name = None
    #     is_custom_module = 0
    #     module = 'Core'
    #     record_module = None
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/modules/export_file.py", line 129, in create_folder
    #     frappe.create_folder(folder)
    #     ~~~~~~~~~~~~~~~~~~~~^^^^^^^^
    #     create_init = True
    #     dn = 'virtualdoctypetestchild'
    #     dt = 'doctype'
    #     folder = '/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/core/doctype/virtualdoctypetestchild'
    #     is_custom_module = 0
    #     module = 'Core'
    #     module_path = '/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/core'
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/__init__.py", line 635, in create_folder
    #     os.makedirs(path)
    #     ~~~~~~~~~~~^^^^^^
    #     path = '/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/core/doctype/virtualdoctypetestchild'
    #     touch_file = <function touch_file at 0x72056dafa5c0>
    #     with_init = False
    #   File "<frozen os>", line 228, in makedirs
    #     exist_ok = False
    #     head = '/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/core/doctype'
    #     mode = 511
    #     name = '/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/core/doctype/virtualdoctypetestchild'
    #     tail = 'virtualdoctypetestchild'
    # OSError: [Errno 30] Read-only file system: '/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/core/doctype/virtualdoctypetestchild'
  }
  {
    id = "";

    # Traceback (most recent call last):
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/core/doctype/file/test_file.py", line 539, in test_make_thumbnail
    #     self.assertEqual(test_file.thumbnail_url, "/files/image_small.jpg")
    #     ~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     self = <frappe.core.doctype.file.test_file.TestFile testMethod=test_make_thumbnail>
    #     test_file = <File: f4551bd6cb>
    # AssertionError: None != '/files/image_small.jpg'
  }
  {
    id = "";

    # Traceback (most recent call last):
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/core/doctype/translation/test_translation.py", line 65, in test_multi_language_translations
    #     self.assertNotEqual(_(source, lang="de"), _(source, lang="es"))
    #     ~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     self = <frappe.core.doctype.translation.test_translation.TestTranslation testMethod=test_multi_language_translations>
    #     source = 'User'
    # AssertionError: 'User' == 'User'
  }
  {
    id = "";

    # Traceback (most recent call last):
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/gettext/test_translate.py", line 53, in test_get_method_map
    #     self.assertTrue(len(method_map) > 0)
    #     ~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^
    #     method_map = []
    #     self = <frappe.gettext.test_translate.TestTranslate testMethod=test_get_method_map>
    # AssertionError: False is not true
  }
  {
    id = "frappe.tests.test_commands.TestBackups.test_backup_extract_restore";

    # Traceback (most recent call last):
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/tests/test_commands.py", line 581, in test_backup_extract_restore
    #     self.assertEqual(self.returncode, 0)
    #     ~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^
    #     backup = {'database': './erp.frx.localhost/private/backups/20260820_011018-erp_frx_localhost-database.sql.gz', 'public': None, 'private': None, 'config': './erp.frx.localhost/private/backups/20260820_011024-erp_frx_localhost-site_config_backup.json'}
    #     backup_sql = './erp.frx.localhost/private/backups/20260820_011018-erp_frx_localhost-database.sql'
    #     self = <frappe.tests.test_commands.TestBackups testMethod=test_backup_extract_restore>
    # AssertionError: 1 != 0
    #
    # ----------------------------------------------------------------------
    # Last Command Execution Summary:
    # Command: bench --site erp.frx.localhost restore ./erp.frx.localhost/private/backups/20260820_011018-erp_frx_localhost-database.sql
    # Standard Output: b'/run/current-system/sw/bin/bash: line 1: file: command not found\n'
    # Standard Error: Traceback (most recent call last):
    #   File "/run/current-system/sw/bin/bench", line 32, in <module>
    #     click.Group(commands=commands)(prog_name="bench")
    #     ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/click/core.py", line 1485, in __call__
    #     return self.main(*args, **kwargs)
    #            ~~~~~~~~~^^^^^^^^^^^^^^^^^
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/click/core.py", line 1406, in main
    #     rv = self.invoke(ctx)
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/click/core.py", line 1873, in invoke
    #     return _process_result(sub_ctx.command.invoke(sub_ctx))
    #                            ~~~~~~~~~~~~~~~~~~~~~~^^^^^^^^^
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/click/core.py", line 1873, in invoke
    #     return _process_result(sub_ctx.command.invoke(sub_ctx))
    #                            ~~~~~~~~~~~~~~~~~~~~~~^^^^^^^^^
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/click/core.py", line 1269, in invoke
    #     return ctx.invoke(self.callback, **ctx.params)
    #            ~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/click/core.py", line 824, in invoke
    #     return callback(*args, **kwargs)
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/click/decorators.py", line 34, in new_func
    #     return f(get_current_context(), *args, **kwargs)
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/commands/__init__.py", line 29, in _func
    #     ret = f(frappe._dict(ctx.obj), *args, **kwargs)
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/commands/site.py", line 182, in restore
    #     _restore(
    #     ~~~~~~~~^
    #     	site=site,
    #      ^^^^^^^^^^
    #     ...<9 lines>...
    #     	with_private_files=with_private_files,
    #      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     )
    #     ^
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/commands/site.py", line 234, in _restore
    #     err, out = frappe.utils.execute_in_shell(f"file {sql_file_path}", check_exit_code=True)
    #                ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/utils/__init__.py", line 522, in execute_in_shell
    #     raise frappe.CommandFailedError(
    #     	"Command failed", out.decode(errors="replace"), err.decode(errors="replace")
    #     )
    # frappe.exceptions.CommandFailedError: Command failed
    # Return Code: 1
  }
  {
    id = "frappe.tests.test_commands.TestBackups.test_old_backup_restore";

    # Traceback (most recent call last):
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/tests/test_commands.py", line 596, in test_old_backup_restore
    #     self.assertEqual(self.returncode, 0)
    #     ~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^
    #     backup = {'database': './erp.frx.localhost/private/backups/20260820_011037-erp_frx_localhost-database.sql.gz', 'public': './erp.frx.localhost/private/backups/20260820_011034-erp_frx_localhost-files.tar', 'private': './erp.frx.localhost/private/backups/20260820_011034-erp_frx_localhost-private-files.tar', 'config': './erp.frx.localhost/private/backups/20260820_011039-erp_frx_localhost-site_config_backup.json', 'site': 'erp.frx.localhost'}
    #     self = <frappe.tests.test_commands.TestBackups testMethod=test_old_backup_restore>
    # AssertionError: 1 != 0
    #
    # ----------------------------------------------------------------------
    # Last Command Execution Summary:
    # Command: bench --site erp.frx.localhost restore ./erp.frx.localhost/private/backups/20260820_011037-erp_frx_localhost-database.sql.gz
    # Standard Output: b'/run/current-system/sw/bin/bash: line 1: file: command not found\n'
    # Standard Error: Traceback (most recent call last):
    #   File "/run/current-system/sw/bin/bench", line 32, in <module>
    #     click.Group(commands=commands)(prog_name="bench")
    #     ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/click/core.py", line 1485, in __call__
    #     return self.main(*args, **kwargs)
    #            ~~~~~~~~~^^^^^^^^^^^^^^^^^
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/click/core.py", line 1406, in main
    #     rv = self.invoke(ctx)
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/click/core.py", line 1873, in invoke
    #     return _process_result(sub_ctx.command.invoke(sub_ctx))
    #                            ~~~~~~~~~~~~~~~~~~~~~~^^^^^^^^^
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/click/core.py", line 1873, in invoke
    #     return _process_result(sub_ctx.command.invoke(sub_ctx))
    #                            ~~~~~~~~~~~~~~~~~~~~~~^^^^^^^^^
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/click/core.py", line 1269, in invoke
    #     return ctx.invoke(self.callback, **ctx.params)
    #            ~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/click/core.py", line 824, in invoke
    #     return callback(*args, **kwargs)
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/click/decorators.py", line 34, in new_func
    #     return f(get_current_context(), *args, **kwargs)
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/commands/__init__.py", line 29, in _func
    #     ret = f(frappe._dict(ctx.obj), *args, **kwargs)
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/commands/site.py", line 182, in restore
    #     _restore(
    #     ~~~~~~~~^
    #     	site=site,
    #      ^^^^^^^^^^
    #     ...<9 lines>...
    #     	with_private_files=with_private_files,
    #      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     )
    #     ^
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/commands/site.py", line 234, in _restore
    #     err, out = frappe.utils.execute_in_shell(f"file {sql_file_path}", check_exit_code=True)
    #                ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/utils/__init__.py", line 522, in execute_in_shell
    #     raise frappe.CommandFailedError(
    #     	"Command failed", out.decode(errors="replace"), err.decode(errors="replace")
    #     )
    # frappe.exceptions.CommandFailedError: Command failed
    # Return Code: 1
  }
  {
    id = "frappe.tests.test_commands.TestBenchBuild.test_build_assets_size_check";

    # Traceback (most recent call last):
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/tests/test_commands.py", line 813, in test_build_assets_size_check
    #     self.assertEqual(result.exit_code, 0)
    #     ~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^
    #     result = <Result OSError(30, 'Read-only file system')>
    #     self = <frappe.tests.test_commands.TestBenchBuild testMethod=test_build_assets_size_check>
    # AssertionError: 1 != 0
    #
    # ----------------------------------------------------------------------
    # Last Command Execution Summary:
    # Command: <Command build>
    #
    #
    # Return Code: 1
  }
  {
    id = "frappe.tests.test_commands.TestCommands.test_partial_restore";

    # Traceback (most recent call last):
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/tests/test_commands.py", line 330, in test_partial_restore
    #     self.assertEqual(self.returncode, 0)
    #     ~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^
    #     _now = '2026-08-20 01:10:51.577622'
    #     db_path = './erp.frx.localhost/private/backups/20260820_011052-erp_frx_localhost-partial-database.sql.gz'
    #     num = 9
    #     self = <frappe.tests.test_commands.TestCommands testMethod=test_partial_restore>
    #     todo_count = 18
    # AssertionError: 1 != 0
    #
    # ----------------------------------------------------------------------
    # Last Command Execution Summary:
    # Command: bench --site erp.frx.localhost partial-restore ./erp.frx.localhost/private/backups/20260820_011052-erp_frx_localhost-partial-database.sql.gz
    # Standard Output: b'/run/current-system/sw/bin/bash: line 1: file: command not found\n'
    # Standard Error: Traceback (most recent call last):
    #   File "/run/current-system/sw/bin/bench", line 32, in <module>
    #     click.Group(commands=commands)(prog_name="bench")
    #     ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/click/core.py", line 1485, in __call__
    #     return self.main(*args, **kwargs)
    #            ~~~~~~~~~^^^^^^^^^^^^^^^^^
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/click/core.py", line 1406, in main
    #     rv = self.invoke(ctx)
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/click/core.py", line 1873, in invoke
    #     return _process_result(sub_ctx.command.invoke(sub_ctx))
    #                            ~~~~~~~~~~~~~~~~~~~~~~^^^^^^^^^
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/click/core.py", line 1873, in invoke
    #     return _process_result(sub_ctx.command.invoke(sub_ctx))
    #                            ~~~~~~~~~~~~~~~~~~~~~~^^^^^^^^^
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/click/core.py", line 1269, in invoke
    #     return ctx.invoke(self.callback, **ctx.params)
    #            ~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/click/core.py", line 824, in invoke
    #     return callback(*args, **kwargs)
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/click/decorators.py", line 34, in new_func
    #     return f(get_current_context(), *args, **kwargs)
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/commands/__init__.py", line 29, in _func
    #     ret = f(frappe._dict(ctx.obj), *args, **kwargs)
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/commands/site.py", line 375, in partial_restore
    #     err, out = frappe.utils.execute_in_shell(f"file {sql_file_path}", check_exit_code=True)
    #                ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/utils/__init__.py", line 522, in execute_in_shell
    #     raise frappe.CommandFailedError(
    #     	"Command failed", out.decode(errors="replace"), err.decode(errors="replace")
    #     )
    # frappe.exceptions.CommandFailedError: Command failed
    # Return Code: 1
  }
  {
    id = "frappe.tests.test_commands.TestDBUtils.test_db_add_index";

    # Traceback (most recent call last):
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/tests/test_commands.py", line 847, in test_db_add_index
    #     self.assertTrue(meta.get_field(field).search_index)
    #     ~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     field = 'reset_password_key'
    #     index_name = 'reset_password_key_index'
    #     meta = <Meta: User>
    #     self = <frappe.tests.test_commands.TestDBUtils testMethod=test_db_add_index>
    # AssertionError: 0 is not true
    #
    # ----------------------------------------------------------------------
    # Last Command Execution Summary:
    # Command: bench --site erp.frx.localhost add-database-index --doctype User --column reset_password_key
    #
    # Standard Error: 2026-08-20 05:11:14,978 WARNING database DDL Query made to DB:
    # ALTER TABLE `tabUser`
    # 				ADD INDEX IF NOT EXISTS `reset_password_key_index`(reset_password_key)
    # Traceback (most recent call last):
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/core/doctype/doctype/doctype.py", line 1206, in _test_connection_query
    #     frappe.get_all(doctype, filters=filters, limit=1, distinct=True, ignore_ifnull=True)
    #     ~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/__init__.py", line 2055, in get_all
    #     return get_list(doctype, *args, **kwargs)
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/__init__.py", line 2030, in get_list
    #     return frappe.model.db_query.DatabaseQuery(doctype).execute(*args, **kwargs)
    #            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/model/db_query.py", line 206, in execute
    #     self.columns = self.get_table_columns()
    #                    ~~~~~~~~~~~~~~~~~~~~~~^^
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/model/db_query.py", line 608, in get_table_columns
    #     return get_table_columns(self.doctype)
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/model/meta.py", line 81, in get_table_columns
    #     return frappe.db.get_table_columns(doctype)
    #            ~~~~~~~~~~~~~~~~~~~~~~~~~~~^^^^^^^^^
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/database/database.py", line 1338, in get_table_columns
    #     raise self.TableMissingError("DocType", doctype)
    # pymysql.err.ProgrammingError: ('DocType', 'ToDo')
    #
    # During handling of the above exception, another exception occurred:
    #
    # Traceback (most recent call last):
    #   File "/run/current-system/sw/bin/bench", line 32, in <module>
    #     click.Group(commands=commands)(prog_name="bench")
    #     ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/click/core.py", line 1485, in __call__
    #     return self.main(*args, **kwargs)
    #            ~~~~~~~~~^^^^^^^^^^^^^^^^^
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/click/core.py", line 1406, in main
    #     rv = self.invoke(ctx)
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/click/core.py", line 1873, in invoke
    #     return _process_result(sub_ctx.command.invoke(sub_ctx))
    #                            ~~~~~~~~~~~~~~~~~~~~~~^^^^^^^^^
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/click/core.py", line 1873, in invoke
    #     return _process_result(sub_ctx.command.invoke(sub_ctx))
    #                            ~~~~~~~~~~~~~~~~~~~~~~^^^^^^^^^
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/click/core.py", line 1269, in invoke
    #     return ctx.invoke(self.callback, **ctx.params)
    #            ~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/click/core.py", line 824, in invoke
    #     return callback(*args, **kwargs)
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/click/decorators.py", line 34, in new_func
    #     return f(get_current_context(), *args, **kwargs)
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/commands/__init__.py", line 29, in _func
    #     ret = f(frappe._dict(ctx.obj), *args, **kwargs)
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/commands/site.py", line 568, in add_db_index
    #     frappe.db.add_index(doctype, columns)
    #     ~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/database/mariadb/database.py", line 427, in add_index
    #     make_property_setter(
    #     ~~~~~~~~~~~~~~~~~~~~^
    #     	doctype,
    #      ^^^^^^^^
    #     ...<4 lines>...
    #     	for_doctype=False,  # Applied on docfield
    #      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     )
    #     ^
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/custom/doctype/property_setter/property_setter.py", line 89, in make_property_setter
    #     property_setter.insert()
    #     ~~~~~~~~~~~~~~~~~~~~~~^^
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/model/document.py", line 334, in insert
    #     self.run_post_save_methods()
    #     ~~~~~~~~~~~~~~~~~~~~~~~~~~^^
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/model/document.py", line 1182, in run_post_save_methods
    #     self.run_method("on_update")
    #     ~~~~~~~~~~~~~~~^^^^^^^^^^^^^
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/model/document.py", line 1016, in run_method
    #     out = Document.hook(fn)(self, *args, **kwargs)
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/model/document.py", line 1376, in composer
    #     return composed(self, method, *args, **kwargs)
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/model/document.py", line 1358, in runner
    #     add_to_return_value(self, fn(self, *args, **kwargs))
    #                               ~~^^^^^^^^^^^^^^^^^^^^^^^
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/model/document.py", line 1013, in fn
    #     return method_object(*args, **kwargs)
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/custom/doctype/property_setter/property_setter.py", line 61, in on_update
    #     validate_fields_for_doctype(self.doc_type)
    #     ~~~~~~~~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/core/doctype/doctype/doctype.py", line 1216, in validate_fields_for_doctype
    #     validate_links_table_fieldnames(meta)
    #     ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^^^^^^
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/core/doctype/doctype/doctype.py", line 1166, in validate_links_table_fieldnames
    #     _test_connection_query(doctype=link.link_doctype, field=link.link_fieldname, idx=index)
    #     ~~~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/core/doctype/doctype/doctype.py", line 1211, in _test_connection_query
    #     frappe.throw(msg, InvalidFieldNameError)
    #     ~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/__init__.py", line 615, in throw
    #     msgprint(
    #     ~~~~~~~~^
    #     	msg,
    #      ^^^^
    #     ...<6 lines>...
    #     	primary_action=primary_action,
    #      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     )
    #     ^
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/__init__.py", line 580, in msgprint
    #     _raise_exception()
    #     ~~~~~~~~~~~~~~~~^^
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/__init__.py", line 531, in _raise_exception
    #     raise exc
    # frappe.core.doctype.doctype.doctype.InvalidFieldNameError: Document Links Row #10: Invalid doctype or fieldname.('DocType', 'ToDo')
  }
  {
    id = "frappe.core.doctype.activity_log.test_activity_log.TestActivityLog.test_brute_security";
    # Traceback (most recent call last):
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/core/doctype/activity_log/test_activity_log.py", line 68, in test_brute_security
    #     frappe.local.login_manager = LoginManager()
    #                                  ~~~~~~~~~~~~^^
    #     self = <frappe.core.doctype.activity_log.test_activity_log.TestActivityLog testMethod=test_brute_security>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/auth.py", line 115, in __init__
    #     if self.login() is False:
    #        ~~~~~~~~~~^^
    #     self = <frappe.auth.LoginManager object at 0x7fb89b74b650>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/auth.py", line 137, in login
    #     self.authenticate(user=user, pwd=pwd)
    #     ~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^
    #     pwd = None
    #     self = <frappe.auth.LoginManager object at 0x7fb89b74b650>
    #     user = None
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/auth.py", line 252, in authenticate
    #     self.fail(_("Incomplete login details"), user=user)
    #     ~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     User = <class 'frappe.core.doctype.user.user.User'>
    #     pwd = None
    #     self = <frappe.auth.LoginManager object at 0x7fb89b74b650>
    #     user = 'Administrator'
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/auth.py", line 319, in fail
    #     raise frappe.AuthenticationError
    #     message = 'Incomplete login details'
    #     self = <frappe.auth.LoginManager object at 0x7fb89b74b650>
    #     user = 'Administrator'
    # frappe.exceptions.AuthenticationError
  }

  {
    id = "frappe.gettext.test_translate.TestTranslate.test_generate_pot";
    # Traceback (most recent call last):
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/gettext/test_translate.py", line 25, in test_generate_pot
    #     pot_path.unlink(missing_ok=True)
    #     ~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^
    #     pot_path = PosixPath('/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/locale/main.pot')
    #     self = <frappe.gettext.test_translate.TestTranslate testMethod=test_generate_pot>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/pathlib/_local.py", line 746, in unlink
    #     os.unlink(self)
    #     ~~~~~~~~~^^^^^^
    #     missing_ok = True
    #     self = PosixPath('/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/locale/main.pot')
    # OSError: [Errno 30] Read-only file system: '/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/locale/main.pot'
  }
  {
    id = "frappe.gettext.test_translate.TestTranslate.test_gitignore";
    # Traceback (most recent call last):
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/gettext/test_translate.py", line 72, in test_gitignore
    #     is_gitignored = get_is_gitignored_function_for_app("frappe")
    #     frappe = <module 'frappe' from '/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/__init__.py'>
    #     os = <module 'os' (frozen)>
    #     self = <frappe.gettext.test_translate.TestTranslate testMethod=test_gitignore>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/gettext/translate.py", line 220, in get_is_gitignored_function_for_app
    #     repo = git.Repo(frappe.get_app_source_path(app), search_parent_directories=True)
    #     app = 'frappe'
    #     git = <module 'git' from '/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/git/__init__.py'>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/git/repo/base.py", line 310, in __init__
    #     raise InvalidGitRepositoryError(epath)
    #     curpath = '/'
    #     dotgit = '/.git'
    #     epath = '/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages'
    #     expand_vars = True
    #     git_dir = None
    #     odbt = <class 'git.db.GitCmdObjectDB'>
    #     path = '/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages'
    #     search_parent_directories = True
    #     self = <local repr() failed>
    #     sm_gitpath = None
    #     tail = ''
    # git.exc.InvalidGitRepositoryError: /nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages
  }
  {
    id = "frappe.gettext.test_translate.TestTranslate.test_new_po";
    # Traceback (most recent call last):
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/gettext/test_translate.py", line 60, in test_new_po
    #     po_path.unlink(missing_ok=True)
    #     ~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^
    #     po_path = PosixPath('/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/locale/test.po')
    #     self = <frappe.gettext.test_translate.TestTranslate testMethod=test_new_po>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/pathlib/_local.py", line 746, in unlink
    #     os.unlink(self)
    #     ~~~~~~~~~^^^^^^
    #     missing_ok = True
    #     self = PosixPath('/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/locale/test.po')
    # OSError: [Errno 30] Read-only file system: '/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/locale/test.po'
  }
  {
    id = "frappe.gettext.test_translate.TestTranslate.test_write_binary";
    # Traceback (most recent call last):
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/pathlib/_local.py", line 722, in mkdir
    #     os.mkdir(self, mode)
    #     ~~~~~~~~^^^^^^^^^^^^
    #     exist_ok = False
    #     mode = 511
    #     parents = True
    #     self = PosixPath('/var/lib/TestProject/sites/assets/locale/test/LC_MESSAGES')
    # FileNotFoundError: [Errno 2] No such file or directory: '/var/lib/TestProject/sites/assets/locale/test/LC_MESSAGES'
    #
    # During handling of the above exception, another exception occurred:
    #
    # Traceback (most recent call last):
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/pathlib/_local.py", line 722, in mkdir
    #     os.mkdir(self, mode)
    #     ~~~~~~~~^^^^^^^^^^^^
    #     exist_ok = True
    #     mode = 511
    #     parents = True
    #     self = PosixPath('/var/lib/TestProject/sites/assets/locale/test')
    # FileNotFoundError: [Errno 2] No such file or directory: '/var/lib/TestProject/sites/assets/locale/test'
    #
    # During handling of the above exception, another exception occurred:
    #
    # Traceback (most recent call last):
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/gettext/test_translate.py", line 47, in test_write_binary
    #     write_binary("frappe", catalog, "test")
    #     ~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     catalog = <Catalog 'messages'>
    #     mo_path = PosixPath('/var/lib/TestProject/sites/assets/locale/test/LC_MESSAGES/frappe.mo')
    #     self = <frappe.gettext.test_translate.TestTranslate testMethod=test_write_binary>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/gettext/translate.py", line 97, in write_binary
    #     mo_path.parent.mkdir(parents=True)
    #     ~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^
    #     app = 'frappe'
    #     catalog = <Catalog 'messages'>
    #     locale = 'test'
    #     mo_path = PosixPath('/var/lib/TestProject/sites/assets/locale/test/LC_MESSAGES/frappe.mo')
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/pathlib/_local.py", line 726, in mkdir
    #     self.parent.mkdir(parents=True, exist_ok=True)
    #     ~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     exist_ok = False
    #     mode = 511
    #     parents = True
    #     self = PosixPath('/var/lib/TestProject/sites/assets/locale/test/LC_MESSAGES')
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/pathlib/_local.py", line 726, in mkdir
    #     self.parent.mkdir(parents=True, exist_ok=True)
    #     ~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     exist_ok = True
    #     mode = 511
    #     parents = True
    #     self = PosixPath('/var/lib/TestProject/sites/assets/locale/test')
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/pathlib/_local.py", line 722, in mkdir
    #     os.mkdir(self, mode)
    #     ~~~~~~~~^^^^^^^^^^^^
    #     exist_ok = True
    #     mode = 511
    #     parents = True
    #     self = PosixPath('/var/lib/TestProject/sites/assets/locale')
    # OSError: [Errno 30] Read-only file system: '/var/lib/TestProject/sites/assets/locale'
  }
  {
    id = "frappe.gettext.test_translate.TestTranslate.test_write_catalog";
    # Traceback (most recent call last):
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/gettext/test_translate.py", line 34, in test_write_catalog
    #     po_path.unlink(missing_ok=True)
    #     ~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^
    #     po_path = PosixPath('/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/locale/test.po')
    #     self = <frappe.gettext.test_translate.TestTranslate testMethod=test_write_catalog>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/pathlib/_local.py", line 746, in unlink
    #     os.unlink(self)
    #     ~~~~~~~~~^^^^^^
    #     missing_ok = True
    #     self = PosixPath('/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/locale/test.po')
    # OSError: [Errno 30] Read-only file system: '/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/locale/test.po'
  }

  {
    id = "frappe.tests.test_rename_doc.TestRenameDoc";
    # Traceback (most recent call last):
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/tests/test_rename_doc.py", line 80, in setUpClass
    #     ).insert()
    #       ~~~~~~^^
    #     __class__ = <class 'frappe.tests.test_rename_doc.TestRenameDoc'>
    #     doc = <CustomToDo: TODO-34-13>
    #     num = 4
    #     self = <class 'frappe.tests.test_rename_doc.TestRenameDoc'>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/model/document.py", line 334, in insert
    #     self.run_post_save_methods()
    #     ~~~~~~~~~~~~~~~~~~~~~~~~~~^^
    #     d = <DocPerm: 753dh7sr5e parent=Test Rename Document Old>
    #     ignore_if_duplicate = False
    #     ignore_links = None
    #     ignore_mandatory = None
    #     ignore_permissions = None
    #     self = <DocType: Test Rename Document Old>
    #     set_child_names = True
    #     set_name = None
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/model/document.py", line 1182, in run_post_save_methods
    #     self.run_method("on_update")
    #     ~~~~~~~~~~~~~~~^^^^^^^^^^^^^
    #     self = <DocType: Test Rename Document Old>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/model/document.py", line 1016, in run_method
    #     out = Document.hook(fn)(self, *args, **kwargs)
    #     args = ()
    #     fn = <function Document.run_method.<locals>.fn at 0x7fb8961ed1c0>
    #     kwargs = {}
    #     method = 'on_update'
    #     self = <DocType: Test Rename Document Old>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/model/document.py", line 1376, in composer
    #     return composed(self, method, *args, **kwargs)
    #     args = ()
    #     compose = <function Document.hook.<locals>.compose at 0x7fb895f70cc0>
    #     composed = <function Document.hook.<locals>.compose.<locals>.runner at 0x7fb895f70f40>
    #     doc_events = {'*': {'on_update': ['frappe.desk.notifications.clear_doctype_notifications', 'frappe.workflow.doctype.workflow_action.workflow_action.process_workflow_actions', 'frappe.core.doctype.file.utils.attach_files_to_document', 'frappe.automation.doctype.assignment_rule.assignment_rule.apply', 'frappe.automation.doctype.assignment_rule.assignment_rule.update_due_date', 'frappe.core.doctype.user_type.user_type.apply_permissions_for_non_standard_user_type', 'frappe.search.sqlite_search.update_doc_index'], 'after_rename': ['frappe.desk.notifications.clear_doctype_notifications'], 'on_cancel': ['frappe.desk.notifications.clear_doctype_notifications', 'frappe.workflow.doctype.workflow_action.workflow_action.process_workflow_actions', 'frappe.automation.doctype.assignment_rule.assignment_rule.apply'], 'on_trash': ['frappe.desk.notifications.clear_doctype_notifications', 'frappe.workflow.doctype.workflow_action.workflow_action.process_workflow_actions', 'frappe.search.sqlite_search.delete_doc_index'], 'on_update_after_submit': ['frappe.workflow.doctype.workflow_action.workflow_action.process_workflow_actions', 'frappe.automation.doctype.assignment_rule.assignment_rule.apply', 'frappe.automation.doctype.assignment_rule.assignment_rule.update_due_date', 'frappe.core.doctype.file.utils.attach_files_to_document'], 'on_change': ['frappe.social.doctype.energy_point_rule.energy_point_rule.process_energy_points', 'frappe.automation.doctype.milestone_tracker.milestone_tracker.evaluate_milestone']}, 'Event': {'after_insert': ['frappe.integrations.doctype.google_calendar.google_calendar.insert_event_in_google_calendar'], 'on_update': ['frappe.integrations.doctype.google_calendar.google_calendar.update_event_in_google_calendar'], 'on_trash': ['frappe.integrations.doctype.google_calendar.google_calendar.delete_event_from_google_calendar']}, 'Contact': {'after_insert': ['frappe.integrations.doctype.google_contacts.google_contacts.insert_contacts_to_google_contacts'], 'on_update': ['frappe.integrations.doctype.google_contacts.google_contacts.update_contacts_to_google_contacts']}, 'DocType': {'on_update': ['frappe.cache_manager.build_domain_restriced_doctype_cache']}, 'Page': {'on_update': ['frappe.cache_manager.build_domain_restriced_page_cache']}}
    #     f = <function Document.run_method.<locals>.fn at 0x7fb8961ed1c0>
    #     handler = 'frappe.search.sqlite_search.update_doc_index'
    #     hooks = [<function build_domain_restriced_doctype_cache at 0x7fb8a00fa700>, <function clear_doctype_notifications at 0x7fb89d1fad40>, <function process_workflow_actions at 0x7fb89c53cd60>, <function attach_files_to_document at 0x7fb89e0ac9a0>, <function apply at 0x7fb89c550360>, <function update_due_date at 0x7fb89c550400>, <function apply_permissions_for_non_standard_user_type at 0x7fb89c551d00>, <function update_doc_index at 0x7fb89ceda480>]
    #     kwargs = {}
    #     method = 'on_update'
    #     self = <DocType: Test Rename Document Old>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/model/document.py", line 1358, in runner
    #     add_to_return_value(self, fn(self, *args, **kwargs))
    #                               ~~^^^^^^^^^^^^^^^^^^^^^^^
    #     add_to_return_value = <function Document.hook.<locals>.add_to_return_value at 0x7fb895f70ea0>
    #     args = ()
    #     fn = <function Document.run_method.<locals>.fn at 0x7fb8961ed1c0>
    #     hooks = (<function build_domain_restriced_doctype_cache at 0x7fb8a00fa700>, <function clear_doctype_notifications at 0x7fb89d1fad40>, <function process_workflow_actions at 0x7fb89c53cd60>, <function attach_files_to_document at 0x7fb89e0ac9a0>, <function apply at 0x7fb89c550360>, <function update_due_date at 0x7fb89c550400>, <function apply_permissions_for_non_standard_user_type at 0x7fb89c551d00>, <function update_doc_index at 0x7fb89ceda480>)
    #     kwargs = {}
    #     method = 'on_update'
    #     self = <DocType: Test Rename Document Old>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/model/document.py", line 1013, in fn
    #     return method_object(*args, **kwargs)
    #     args = ()
    #     kwargs = {}
    #     method = 'on_update'
    #     method_object = <bound method DocType.on_update of <DocType: Test Rename Document Old>>
    #     self = <DocType: Test Rename Document Old>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/core/doctype/doctype/doctype.py", line 542, in on_update
    #     self.export_doc()
    #     ~~~~~~~~~~~~~~~^^
    #     allow_doctype_export = 1
    #     self = <DocType: Test Rename Document Old>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/core/doctype/doctype/doctype.py", line 849, in export_doc
    #     export_to_files(record_list=[["DocType", self.name]], create_init=True)
    #     ~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     export_to_files = <function export_to_files at 0x7fb89cb31300>
    #     self = <DocType: Test Rename Document Old>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/modules/export_file.py", line 27, in export_to_files
    #     write_document_file(
    #     ~~~~~~~~~~~~~~~~~~~^
    #     	frappe.get_doc(record[0], record[1]),
    #      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     ...<2 lines>...
    #     	folder_name=folder_name,
    #      ^^^^^^^^^^^^^^^^^^^^^^^^
    #     )
    #     ^
    #     create_init = True
    #     folder_name = None
    #     record = ['DocType', 'Test Rename Document Old']
    #     record_list = [['DocType', 'Test Rename Document Old']]
    #     record_module = None
    #     verbose = 0
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/modules/export_file.py", line 47, in write_document_file
    #     folder = create_folder(module, doc.doctype, doc.name, create_init, is_custom_module)
    #     create_init = True
    #     doc = <DocType: Test Rename Document Old>
    #     doc_export = {'name': 'Test Rename Document Old', 'creation': datetime.datetime(2026, 8, 20, 2, 19, 34, 784091), 'modified': datetime.datetime(2026, 8, 20, 2, 19, 34, 784091), 'modified_by': 'Administrator', 'owner': 'Administrator', 'editable_grid': 1, 'module': 'Custom', 'sort_field': 'modified', 'sort_order': 'DESC', 'allow_rename': 1, 'engine': 'InnoDB', 'grid_page_length': 50, 'rows_threshold_for_grid_search': 20, 'index_web_pages_for_search': 1, 'row_format': 'Dynamic', 'doctype': 'DocType', 'permissions': [{'role': 'System Manager', 'read': 1, 'write': 1, 'create': 1, 'delete': 1, 'report': 1, 'export': 1, 'share': 1, 'print': 1, 'email': 1}], 'links': [], 'states': [], 'fields': [{'fieldname': 'some_fieldname', 'label': 'Some Field', 'fieldtype': 'Data'}], 'actions': [], 'field_order': ['some_fieldname']}
    #     folder_name = None
    #     is_custom_module = 0
    #     module = 'Custom'
    #     record_module = None
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/modules/export_file.py", line 129, in create_folder
    #     frappe.create_folder(folder)
    #     ~~~~~~~~~~~~~~~~~~~~^^^^^^^^
    #     create_init = True
    #     dn = 'test_rename_document_old'
    #     dt = 'doctype'
    #     folder = '/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/custom/doctype/test_rename_document_old'
    #     is_custom_module = 0
    #     module = 'Custom'
    #     module_path = '/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/custom'
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/__init__.py", line 635, in create_folder
    #     os.makedirs(path)
    #     ~~~~~~~~~~~^^^^^^
    #     path = '/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/custom/doctype/test_rename_document_old'
    #     touch_file = <function touch_file at 0x7fb8a0b6a5c0>
    #     with_init = False
    #   File "<frozen os>", line 228, in makedirs
    #     exist_ok = False
    #     head = '/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/custom/doctype'
    #     mode = 511
    #     name = '/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/custom/doctype/test_rename_document_old'
    #     tail = 'test_rename_document_old'
    # OSError: [Errno 30] Read-only file system: '/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/custom/doctype/test_rename_document_old'
  }
  {
    id = "frappe.tests.test_virtual_doctype.TestVirtualDoctypes";
    # Traceback (most recent call last):
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/tests/test_virtual_doctype.py", line 91, in setUpClass
    #     cdt = new_doctype(name=TEST_CHILD_DOCTYPE_NAME, is_virtual=1, istable=1, custom=0).insert()
    #     cls = <class 'frappe.tests.test_virtual_doctype.TestVirtualDoctypes'>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/model/document.py", line 334, in insert
    #     self.run_post_save_methods()
    #     ~~~~~~~~~~~~~~~~~~~~~~~~~~^^
    #     d = <DataDocField: some_fieldname parent=VirtualDoctypeTestChild>
    #     ignore_if_duplicate = False
    #     ignore_links = None
    #     ignore_mandatory = None
    #     ignore_permissions = None
    #     self = <DocType: VirtualDoctypeTestChild>
    #     set_child_names = True
    #     set_name = None
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/model/document.py", line 1182, in run_post_save_methods
    #     self.run_method("on_update")
    #     ~~~~~~~~~~~~~~~^^^^^^^^^^^^^
    #     self = <DocType: VirtualDoctypeTestChild>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/model/document.py", line 1016, in run_method
    #     out = Document.hook(fn)(self, *args, **kwargs)
    #     args = ()
    #     fn = <function Document.run_method.<locals>.fn at 0x7fb89816da80>
    #     kwargs = {}
    #     method = 'on_update'
    #     self = <DocType: VirtualDoctypeTestChild>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/model/document.py", line 1376, in composer
    #     return composed(self, method, *args, **kwargs)
    #     args = ()
    #     compose = <function Document.hook.<locals>.compose at 0x7fb89b86e340>
    #     composed = <function Document.hook.<locals>.compose.<locals>.runner at 0x7fb89b86fe20>
    #     doc_events = {'*': {'on_update': ['frappe.desk.notifications.clear_doctype_notifications', 'frappe.workflow.doctype.workflow_action.workflow_action.process_workflow_actions', 'frappe.core.doctype.file.utils.attach_files_to_document', 'frappe.automation.doctype.assignment_rule.assignment_rule.apply', 'frappe.automation.doctype.assignment_rule.assignment_rule.update_due_date', 'frappe.core.doctype.user_type.user_type.apply_permissions_for_non_standard_user_type', 'frappe.search.sqlite_search.update_doc_index'], 'after_rename': ['frappe.desk.notifications.clear_doctype_notifications'], 'on_cancel': ['frappe.desk.notifications.clear_doctype_notifications', 'frappe.workflow.doctype.workflow_action.workflow_action.process_workflow_actions', 'frappe.automation.doctype.assignment_rule.assignment_rule.apply'], 'on_trash': ['frappe.desk.notifications.clear_doctype_notifications', 'frappe.workflow.doctype.workflow_action.workflow_action.process_workflow_actions', 'frappe.search.sqlite_search.delete_doc_index'], 'on_update_after_submit': ['frappe.workflow.doctype.workflow_action.workflow_action.process_workflow_actions', 'frappe.automation.doctype.assignment_rule.assignment_rule.apply', 'frappe.automation.doctype.assignment_rule.assignment_rule.update_due_date', 'frappe.core.doctype.file.utils.attach_files_to_document'], 'on_change': ['frappe.social.doctype.energy_point_rule.energy_point_rule.process_energy_points', 'frappe.automation.doctype.milestone_tracker.milestone_tracker.evaluate_milestone']}, 'Event': {'after_insert': ['frappe.integrations.doctype.google_calendar.google_calendar.insert_event_in_google_calendar'], 'on_update': ['frappe.integrations.doctype.google_calendar.google_calendar.update_event_in_google_calendar'], 'on_trash': ['frappe.integrations.doctype.google_calendar.google_calendar.delete_event_from_google_calendar']}, 'Contact': {'after_insert': ['frappe.integrations.doctype.google_contacts.google_contacts.insert_contacts_to_google_contacts'], 'on_update': ['frappe.integrations.doctype.google_contacts.google_contacts.update_contacts_to_google_contacts']}, 'DocType': {'on_update': ['frappe.cache_manager.build_domain_restriced_doctype_cache']}, 'Page': {'on_update': ['frappe.cache_manager.build_domain_restriced_page_cache']}}
    #     f = <function Document.run_method.<locals>.fn at 0x7fb89816da80>
    #     handler = 'frappe.search.sqlite_search.update_doc_index'
    #     hooks = [<function build_domain_restriced_doctype_cache at 0x7fb8a00fa700>, <function clear_doctype_notifications at 0x7fb89d1fad40>, <function process_workflow_actions at 0x7fb89c53cd60>, <function attach_files_to_document at 0x7fb89e0ac9a0>, <function apply at 0x7fb89c550360>, <function update_due_date at 0x7fb89c550400>, <function apply_permissions_for_non_standard_user_type at 0x7fb89c551d00>, <function update_doc_index at 0x7fb89ceda480>]
    #     kwargs = {}
    #     method = 'on_update'
    #     self = <DocType: VirtualDoctypeTestChild>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/model/document.py", line 1358, in runner
    #     add_to_return_value(self, fn(self, *args, **kwargs))
    #                               ~~^^^^^^^^^^^^^^^^^^^^^^^
    #     add_to_return_value = <function Document.hook.<locals>.add_to_return_value at 0x7fb89623ec00>
    #     args = ()
    #     fn = <function Document.run_method.<locals>.fn at 0x7fb89816da80>
    #     hooks = (<function build_domain_restriced_doctype_cache at 0x7fb8a00fa700>, <function clear_doctype_notifications at 0x7fb89d1fad40>, <function process_workflow_actions at 0x7fb89c53cd60>, <function attach_files_to_document at 0x7fb89e0ac9a0>, <function apply at 0x7fb89c550360>, <function update_due_date at 0x7fb89c550400>, <function apply_permissions_for_non_standard_user_type at 0x7fb89c551d00>, <function update_doc_index at 0x7fb89ceda480>)
    #     kwargs = {}
    #     method = 'on_update'
    #     self = <DocType: VirtualDoctypeTestChild>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/model/document.py", line 1013, in fn
    #     return method_object(*args, **kwargs)
    #     args = ()
    #     kwargs = {}
    #     method = 'on_update'
    #     method_object = <bound method DocType.on_update of <DocType: VirtualDoctypeTestChild>>
    #     self = <DocType: VirtualDoctypeTestChild>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/core/doctype/doctype/doctype.py", line 542, in on_update
    #     self.export_doc()
    #     ~~~~~~~~~~~~~~~^^
    #     allow_doctype_export = True
    #     self = <DocType: VirtualDoctypeTestChild>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/core/doctype/doctype/doctype.py", line 849, in export_doc
    #     export_to_files(record_list=[["DocType", self.name]], create_init=True)
    #     ~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     export_to_files = <function export_to_files at 0x7fb89cb31300>
    #     self = <DocType: VirtualDoctypeTestChild>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/modules/export_file.py", line 27, in export_to_files
    #     write_document_file(
    #     ~~~~~~~~~~~~~~~~~~~^
    #     	frappe.get_doc(record[0], record[1]),
    #      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     ...<2 lines>...
    #     	folder_name=folder_name,
    #      ^^^^^^^^^^^^^^^^^^^^^^^^
    #     )
    #     ^
    #     create_init = True
    #     folder_name = None
    #     record = ['DocType', 'VirtualDoctypeTestChild']
    #     record_list = [['DocType', 'VirtualDoctypeTestChild']]
    #     record_module = None
    #     verbose = 0
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/modules/export_file.py", line 47, in write_document_file
    #     folder = create_folder(module, doc.doctype, doc.name, create_init, is_custom_module)
    #     create_init = True
    #     doc = <DocType: VirtualDoctypeTestChild>
    #     doc_export = {'name': 'VirtualDoctypeTestChild', 'creation': datetime.datetime(2026, 8, 20, 2, 20, 4, 499640), 'modified': datetime.datetime(2026, 8, 20, 2, 20, 4, 499640), 'modified_by': 'Administrator', 'owner': 'Administrator', 'is_virtual': 1, 'istable': 1, 'editable_grid': 1, 'module': 'Core', 'sort_field': 'modified', 'sort_order': 'DESC', 'allow_rename': 1, 'engine': 'InnoDB', 'grid_page_length': 50, 'rows_threshold_for_grid_search': 20, 'index_web_pages_for_search': 1, 'row_format': 'Dynamic', 'doctype': 'DocType', 'permissions': [], 'links': [], 'states': [], 'fields': [{'fieldname': 'some_fieldname', 'label': 'Some Field', 'fieldtype': 'Data'}], 'actions': [], 'field_order': ['some_fieldname']}
    #     folder_name = None
    #     is_custom_module = 0
    #     module = 'Core'
    #     record_module = None
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/modules/export_file.py", line 129, in create_folder
    #     frappe.create_folder(folder)
    #     ~~~~~~~~~~~~~~~~~~~~^^^^^^^^
    #     create_init = True
    #     dn = 'virtualdoctypetestchild'
    #     dt = 'doctype'
    #     folder = '/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/core/doctype/virtualdoctypetestchild'
    #     is_custom_module = 0
    #     module = 'Core'
    #     module_path = '/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/core'
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/__init__.py", line 635, in create_folder
    #     os.makedirs(path)
    #     ~~~~~~~~~~~^^^^^^
    #     path = '/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/core/doctype/virtualdoctypetestchild'
    #     touch_file = <function touch_file at 0x7fb8a0b6a5c0>
    #     with_init = False
    #   File "<frozen os>", line 228, in makedirs
    #     exist_ok = False
    #     head = '/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/core/doctype'
    #     mode = 511
    #     name = '/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/core/doctype/virtualdoctypetestchild'
    #     tail = 'virtualdoctypetestchild'
    # OSError: [Errno 30] Read-only file system: '/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/core/doctype/virtualdoctypetestchild'
  }
  {
    id = "frappe.core.doctype.file.test_file.TestFile.test_make_thumbnail";
    # Traceback (most recent call last):
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/core/doctype/file/test_file.py", line 539, in test_make_thumbnail
    #     self.assertEqual(test_file.thumbnail_url, "/files/image_small.jpg")
    #     ~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     self = <frappe.core.doctype.file.test_file.TestFile testMethod=test_make_thumbnail>
    #     test_file = <File: c931e86dcf>
    # AssertionError: None != '/files/image_small.jpg'
  }
  {
    id = "frappe.core.doctype.translation.test_translation.TestTranslation.test_multi_language_translations";
    # Traceback (most recent call last):
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/core/doctype/translation/test_translation.py", line 65, in test_multi_language_translations
    #     self.assertNotEqual(_(source, lang="de"), _(source, lang="es"))
    #     ~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     self = <frappe.core.doctype.translation.test_translation.TestTranslation testMethod=test_multi_language_translations>
    #     source = 'User'
    # AssertionError: 'User' == 'User'
  }
  {
    id = "frappe.gettext.test_translate.TestTranslate.test_get_method_map";
    # Traceback (most recent call last):
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/gettext/test_translate.py", line 53, in test_get_method_map
    #     self.assertTrue(len(method_map) > 0)
    #     ~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^
    #     method_map = []
    #     self = <frappe.gettext.test_translate.TestTranslate testMethod=test_get_method_map>
    # AssertionError: False is not true
  }
  {
    id = "frappe.core.doctype.rq_job.test_rq_job.TestRQJob.test_clear_failed_jobs";
    # No traceback
  }
  {
    id = "frappe.core.doctype.rq_job.test_rq_job.TestRQJob.test_get_list_filtering";
    # No traceback
  }
  {
    id = "frappe.core.doctype.submission_queue.test_submission_queue.TestSubmissionQueue.test_queue_operation";
    # No traceback
  }
  {
    id = "frappe.tests.test_background_jobs.TestBackgroundJobs.test_remove_failed_jobs";
    # ----------------------------------------------------------------------
    # Traceback (most recent call last):
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/tests/test_background_jobs.py", line 31, in test_remove_failed_jobs
    #     self.assertGreater(fail_registry.count, 0)
    #     ~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^
    #     conn = <redis.client.Redis(<redis.connection.ConnectionPool(<redis.connection.UnixDomainSocketConnection(username=<REDACTED>,password=<REDACTED>,path=/run/redis-TestProject-queue/redis.sock,socket_timeout=415)>)>)>
    #     fail_registry = <rq.registry.FailedJobRegistry object at 0x79d257e346d0>
    #     queue = Queue('var-lib-TestProject:short')
    #     queues = [Queue('var-lib-TestProject:long'), Queue('var-lib-TestProject:short'), Queue('var-lib-TestProject:default')]
    #     self = <frappe.tests.test_background_jobs.TestBackgroundJobs testMethod=test_remove_failed_jobs>
    # AssertionError: 0 not greater than 0
  }
  {
    id = "frappe.core.doctype.rq_job.test_rq_job.TestRQJob.test_multi_queue_burst_consumption";
    #     Traceback (most recent call last):
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/tests/utils.py", line 366, in wr
    #     result = func(*args, **kwargs)
    #     _handle_timeout = <function timeout.<locals>.decorator.<locals>._handle_timeout at 0x79c7a906ae80>
    #     actual_timeout = 30
    #     args = (<frappe.core.doctype.rq_job.test_rq_job.TestRQJob testMethod=test_multi_queue_burst_consumption_worker_pool>,)
    #     func = <function TestRQJob.test_multi_queue_burst_consumption_worker_pool at 0x79c7a906a480>
    #     kwargs = {}
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/core/doctype/rq_job/test_rq_jobl
    #     _, stderr = execute_in_shell(
    #                 ~~~~~~~~~~~~~~~~^
    #         "bench worker-pool --queue short,default --burst --num-workers=4", check_exit_code=True
    #      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     )
    #     ^
    #     _ = 2
    #     q = 'short'
    #     self = <frappe.core.doctype.rq_job.test_rq_job.TestRQJob testMethod=test_multi_queue_burst_consumption_worker_pool>
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/utils/__init__.py", line 505, il
    #     exit_code = p.wait()
    #     Popen = <class 'subprocess.Popen'>
    #     check_exit_code = True
    #     cmd = 'bench worker-pool --queue short,default --burst --num-workers=4'
    #     kwargs = {'shell': True, 'stdout': <_io.BufferedRandom name=6>, 'stderr': <_io.BufferedRandom name=7>, 'executable': '/run/current-syst}
    #     low_priority = False
    #     p = <Popen: returncode: None args: 'bench worker-pool --queue short,default --bu...>
    #     shlex = <module 'shlex' from '/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/shlex.py'>
    #     stderr = <_io.BufferedRandom name=7>
    #     stdout = <_io.BufferedRandom name=6>
    #     tempfile = <module 'tempfile' from '/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/tempfile.py'>
    #     verbose = False
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/subprocess.py", line 1280, in wait
    #     return self._wait(timeout=timeout)
    #            ~~~~~~~~~~^^^^^^^^^^^^^^^^^
    #     self = <Popen: returncode: None args: 'bench worker-pool --queue short,default --bu...>
    #     timeout = None
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/subprocess.py", line 2085, in _wait
    #     (pid, sts) = self._try_wait(0)
    #                  ~~~~~~~~~~~~~~^^^
    #     self = <Popen: returncode: None args: 'bench worker-pool --queue short,default --bu...>
    #     timeout = None
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/subprocess.py", line 2043, in _try_wait
    #     (pid, sts) = os.waitpid(self.pid, wait_flags)
    #                  ~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^
    #     self = <Popen: returncode: None args: 'bench worker-pool --queue short,default --bu...>
    #     wait_flags = 0
    #   File "/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/tests/utils.py", line 360, in _t
    #     raise Exception(actual_error_message)
    #     actual_error_message = 'Test timed out'
    #     frame = <frame at 0x79c7a8f9dc40, file '/nix/store/4zmkmy6yph6rik6iwix0nl4samlxmca6-python3-3.13.13-env/lib/python3.13/subprocess.py', >
    #     signum = 14
    # Exception: Test timed out
  }
  {
    id = "frappe.tests.test_query_report.TestQueryReport.test_export_report_via_email";
    # ----------------------------------------------------------------------
    # Traceback (most recent call last):
    #   File "/nix/store/vjln1sailh99qr6y5ss5a3s0r26inbxv-python3-3.13.13-env/lib/python3.13/site-packages/frappe/tests/test_query_report.py", line 279, in test_export_report_via_email
    #     self.assertTrue(email_queue, "Email was not enqueued")
    #     ~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     REF_DOCTYPE = 'DocType'
    #     REPORT_COLUMNS = ['name', 'module', 'issingle']
    #     REPORT_NAME = 'Test CSV Report'
    #     email_queue = []
    #     jobs = [{'name': 'erp.frx.localhost::0e785104-e122-407d-a051-390866abd613', 'job_id': 'erp.frx.localhost::0e785104-e122-407d-a051-390866abd613', 'queue': 'long', 'job_name': 'frappe.search.website_search.build_index_for_all_routes', 'status': 'finished', 'started_at': datetime.datetime(2026, 8, 25, 0, 39, 12, 285948, tzinfo=<DstTzInfo 'America/New_York' EDT-1 day, 20:00:00 DST>), 'ended_at': datetime.datetime(2026, 8, 25, 0, 39, 18, 367907, tzinfo=<DstTzInfo 'America/New_York' EDT-1 day, 20:00:00 DST>), 'time_taken': 6.081959, 'exc_info': None, 'arguments': '{\n "event": null,\n "is_async": true,\n "job_name": "frappe.search.website_search.build_index_for_all_routes",\n "kwargs": {},\n "method": "<function build_index_for_all_routes at 0x76943efbcc20>",\n "site": "erp.frx.localhost",\n "user": "Administrator"\n}', 'timeout': 1500, 'creation': datetime.datetime(2026, 8, 25, 0, 39, 11, 614780, tzinfo=<DstTzInfo 'America/New_York' EDT-1 day, 20:00:00 DST>), 'modified': datetime.datetime(2026, 8, 25, 0, 39, 18, 367920, tzinfo=<DstTzInfo 'America/New_York' EDT-1 day, 20:00:00 DST>), '_comment_count': 0, 'owner': 'Administrator', 'modified_by': 'Administrator'}, {'name': 'erp.frx.localhost::a1bb98ad-c45e-4815-8bbc-bfb420a7f9e6', 'job_id': 'erp.frx.localhost::a1bb98ad-c45e-4815-8bbc-bfb420a7f9e6', 'queue': 'default', 'job_name': 'frappe.utils.global_search.rebuild_for_doctype', 'status': 'finished', 'started_at': datetime.datetime(2026, 8, 25, 0, 39, 29, 37035, tzinfo=<DstTzInfo 'America/New_York' EDT-1 day, 20:00:00 DST>), 'ended_at': datetime.datetime(2026, 8, 25, 0, 39, 29, 904715, tzinfo=<DstTzInfo 'America/New_York' EDT-1 day, 20:00:00 DST>), 'time_taken': 0.86768, 'exc_info': None, 'arguments': '{\n "event": null,\n "is_async": true,\n "job_name": "frappe.utils.global_search.rebuild_for_doctype",\n "kwargs": {\n  "doctype": "Test Tree DocType"\n },\n "method": "frappe.utils.global_search.rebuild_for_doctype",\n "site": "erp.frx.localhost",\n "user": "Administrator"\n}', 'timeout': 300, 'creation': datetime.datetime(2026, 8, 25, 0, 39, 29, 16247, tzinfo=<DstTzInfo 'America/New_York' EDT-1 day, 20:00:00 DST>), 'modified': datetime.datetime(2026, 8, 25, 0, 39, 29, 904725, tzinfo=<DstTzInfo 'America/New_York' EDT-1 day, 20:00:00 DST>), '_comment_count': 0, 'owner': 'Administrator', 'modified_by': 'Administrator'}, {'name': 'erp.frx.localhost::c6951bdb-7c60-4337-8a7c-0e21c3bf0223', 'job_id': 'erp.frx.localhost::c6951bdb-7c60-4337-8a7c-0e21c3bf0223', 'queue': 'default', 'job_name': 'frappe.utils.global_search.rebuild_for_doctype', 'status': 'finished', 'started_at': datetime.datetime(2026, 8, 25, 0, 39, 29, 933107, tzinfo=<DstTzInfo 'America/New_York' EDT-1 day, 20:00:00 DST>), 'ended_at': datetime.datetime(2026, 8, 25, 0, 39, 30, 651993, tzinfo=<DstTzInfo 'America/New_York' EDT-1 day, 20:00:00 DST>), 'time_taken': 0.718886, 'exc_info': None, 'arguments': '{\n "event": null,\n "is_async": true,\n "job_name": "frappe.utils.global_search.rebuild_for_doctype",\n "kwargs": {\n  "doctype": "Test Tree DocType"\n },\n "method": "frappe.utils.global_search.rebuild_for_doctype",\n "site": "erp.frx.localhost",\n "user": "Administrator"\n}', 'timeout': 300, 'creation': datetime.datetime(2026, 8, 25, 0, 39, 29, 515824, tzinfo=<DstTzInfo 'America/New_York' EDT-1 day, 20:00:00 DST>), 'modified': datetime.datetime(2026, 8, 25, 0, 39, 30, 652003, tzinfo=<DstTzInfo 'America/New_York' EDT-1 day, 20:00:00 DST>), '_comment_count': 0, 'owner': 'Administrator', 'modified_by': 'Administrator'}, {'name': 'erp.frx.localhost::83784e37-5ca1-433b-b880-bc350446daa1', 'job_id': 'erp.frx.localhost::83784e37-5ca1-433b-b880-bc350446daa1', 'queue': 'default', 'job_name': 'frappe.utils.global_search.rebuild_for_doctype', 'status': 'finished', 'started_at': datetime.datetime(2026, 8, 25, 0, 39, 30, 670995, tzinfo=<DstTzInfo 'America/New_York' EDT-1 day, 20:00:00 DST>), 'ended_at': datetime.datetime(2026, 8, 25, 0, 39, 31, 702909, tzinfo=<DstTzInfo 'America/New_York' EDT-1 day, 20:00:00 DST>), 'time_taken': 1.031914, 'exc_info': None, 'arguments': '{\n "event": null,\n "is_async": true,\n "job_name": "frappe.utils.global_search.rebuild_for_doctype",\n "kwargs": {\n  "doctype": "DocType"\n },\n "method": "frappe.utils.global_search.rebuild_for_doctype",\n "site": "erp.frx.localhost",\n "user": "Administrator"\n}', 'timeout': 300, 'creation': datetime.datetime(2026, 8, 25, 0, 39, 30, 355714, tzinfo=<DstTzInfo 'America/New_York' EDT-1 day, 20:00:00 DST>), 'modified': datetime.datetime(2026, 8, 25, 0, 39, 31, 702919, tzinfo=<DstTzInfo 'America/New_York' EDT-1 day, 20:00:00 DST>), '_comment_count': 0, 'owner': 'Administrator', 'modified_by': 'Administrator'}, {'name': 'erp.frx.localhost::3d6ae863-0f49-4fe9-8e3a-c72ada232409', 'job_id': 'erp.frx.localhost::3d6ae863-0f49-4fe9-8e3a-c72ada232409', 'queue': 'default', 'job_name': 'frappe.utils.global_search.rebuild_for_doctype', 'status': 'finished', 'started_at': datetime.datetime(2026, 8, 25, 0, 39, 32, 811102, tzinfo=<DstTzInfo 'America/New_York' EDT-1 day, 20:00:00 DST>), 'ended_at': datetime.datetime(2026, 8, 25, 0, 39, 33, 853306, tzinfo=<DstTzInfo 'America/New_York' EDT-1 day, 20:00:00 DST>), 'time_taken': 1.042204, 'exc_info': None, 'arguments': '{\n "event": null,\n "is_async": true,\n "job_name": "frappe.utils.global_search.rebuild_for_doctype",\n "kwargs": {\n  "doctype": "Email Account"\n },\n "method": "frappe.utils.global_search.rebuild_for_doctype",\n "site": "erp.frx.localhost",\n "user": "Administrator"\n}', 'timeout': 300, 'creation': datetime.datetime(2026, 8, 25, 0, 39, 32, 794241, tzinfo=<DstTzInfo 'America/New_York' EDT-1 day, 20:00:00 DST>), 'modified': datetime.datetime(2026, 8, 25, 0, 39, 33, 853316, tzinfo=<DstTzInfo 'America/New_York' EDT-1 day, 20:00:00 DST>), '_comment_count': 0, 'owner': 'Administrator', 'modified_by': 'Administrator'}, {'name': 'erp.frx.localhost::ca51e037-3920-424d-8997-5107cc948d62', 'job_id': 'erp.frx.localhost::ca51e037-3920-424d-8997-5107cc948d62', 'queue': 'default', 'job_name': 'frappe.utils.global_search.rebuild_for_doctype', 'status': 'finished', 'started_at': datetime.datetime(2026, 8, 25, 0, 39, 33, 878408, tzinfo=<DstTzInfo 'America/New_York' EDT-1 day, 20:00:00 DST>), 'ended_at': datetime.datetime(2026, 8, 25, 0, 39, 34, 655390, tzinfo=<DstTzInfo 'America/New_York' EDT-1 day, 20:00:00 DST>), 'time_taken': 0.776982, 'exc_info': None, 'arguments': '{\n "event": null,\n "is_async": true,\n "job_name": "frappe.utils.global_search.rebuild_for_doctype",\n "kwargs": {\n  "doctype": "Email Account"\n },\n "method": "frappe.utils.global_search.rebuild_for_doctype",\n "site": "erp.frx.localhost",\n "user": "Administrator"\n}', 'timeout': 300, 'creation': datetime.datetime(2026, 8, 25, 0, 39, 33, 251100, tzinfo=<DstTzInfo 'America/New_York' EDT-1 day, 20:00:00 DST>), 'modified': datetime.datetime(2026, 8, 25, 0, 39, 34, 655401, tzinfo=<DstTzInfo 'America/New_York' EDT-1 day, 20:00:00 DST>), '_comment_count': 0, 'owner': 'Administrator', 'modified_by': 'Administrator'}, {'name': 'erp.frx.localhost::80a709ce-0126-47db-b495-76435afad846', 'job_id': 'erp.frx.localhost::80a709ce-0126-47db-b495-76435afad846', 'queue': 'default', 'job_name': 'frappe.search.website_search.remove_document_from_index', 'status': 'finished', 'started_at': datetime.datetime(2026, 8, 25, 0, 39, 50, 722216, tzinfo=<DstTzInfo 'America/New_York' EDT-1 day, 20:00:00 DST>), 'ended_at': datetime.datetime(2026, 8, 25, 0, 39, 50, 767297, tzinfo=<DstTzInfo 'America/New_York' EDT-1 day, 20:00:00 DST>), 'time_taken': 0.045081, 'exc_info': None, 'arguments': '{\n "event": null,\n "is_async": true,\n "job_name": "frappe.search.website_search.remove_document_from_index",\n "kwargs": {\n  "path": null\n },\n "method": "<function remove_document_from_index at 0x76943efbcb80>",\n "site": "erp.frx.localhost",\n "user": "test2@example.com"\n}', 'timeout': 300, 'creation': datetime.datetime(2026, 8, 25, 0, 39, 50, 180296, tzinfo=<DstTzInfo 'America/New_York' EDT-1 day, 20:00:00 DST>), 'modified': datetime.datetime(2026, 8, 25, 0, 39, 50, 767306, tzinfo=<DstTzInfo 'America/New_York' EDT-1 day, 20:00:00 DST>), '_comment_count': 0, 'owner': 'test2@example.com', 'modified_by': 'test2@example.com'}, {'name': 'erp.frx.localhost::5b5b9e04-029a-432c-9be0-e128d4c8183a', 'job_id': 'erp.frx.localhost::5b5b9e04-029a-432c-9be0-e128d4c8183a', 'queue': 'default', 'job_name': 'frappe.search.website_search.remove_document_from_index', 'status': 'finished', 'started_at': datetime.datetime(2026, 8, 25, 0, 39, 51, 734274, tzinfo=<DstTzInfo 'America/New_York' EDT-1 day, 20:00:00 DST>), 'ended_at': datetime.datetime(2026, 8, 25, 0, 39, 51, 780383, tzinfo=<DstTzInfo 'America/New_York' EDT-1 day, 20:00:00 DST>), 'time_taken': 0.046109, 'exc_info': None, 'arguments': '{\n "event": null,\n "is_async": true,\n "job_name": "frappe.search.website_search.remove_document_from_index",\n "kwargs": {\n  "path": null\n },\n "method": "<function remove_document_from_index at 0x76943efbcb80>",\n "site": "erp.frx.localhost",\n "user": "test1@example.com"\n}', 'timeout': 300, 'creation': datetime.datetime(2026, 8, 25, 0, 39, 51, 204035, tzinfo=<DstTzInfo 'America/New_York' EDT-1 day, 20:00:00 DST>), 'modified': datetime.datetime(2026, 8, 25, 0, 39, 51, 780392, tzinfo=<DstTzInfo 'America/New_York' EDT-1 day, 20:00:00 DST>), '_comment_count': 0, 'owner': 'test1@example.com', 'modified_by': 'test1@example.com'}, {'name': 'erp.frx.localhost::207a914c-3e41-47e3-93fc-08086e754ec2', 'job_id': 'erp.frx.localhost::207a914c-3e41-47e3-93fc-08086e754ec2', 'queue': 'default', 'job_name': 'frappe.search.website_search.remove_document_from_index', 'status': 'finished', 'started_at': datetime.datetime(2026, 8, 25, 0, 39, 52, 336244, tzinfo=<DstTzInfo 'America/New_York' EDT-1 day, 20:00:00 DST>), 'ended_at': datetime.datetime(2026, 8, 25, 0, 39, 52, 381739, tzinfo=<DstTzInfo 'America/New_York' EDT-1 day, 20:00:00 DST>), 'time_taken': 0.045495, 'exc_info': None, 'arguments': '{\n "event": null,\n "is_async": true,\n "job_name": "frappe.search.website_search.remove_document_from_index",\n "kwargs": {\n  "path": null\n },\n "method": "<function remove_document_from_index at 0x76943efbcb80>",\n "site": "erp.frx.localhost",\n "user": "Administrator"\n}', 'timeout': 300, 'creation': datetime.datetime(2026, 8, 25, 0, 39, 51, 485895, tzinfo=<DstTzInfo 'America/New_York' EDT-1 day, 20:00:00 DST>), 'modified': datetime.datetime(2026, 8, 25, 0, 39, 52, 381749, tzinfo=<DstTzInfo 'America/New_York' EDT-1 day, 20:00:00 DST>), '_comment_count': 0, 'owner': 'Administrator', 'modified_by': 'Administrator'}]
    #     report = <Report: Test CSV Report>
    #     self = <frappe.tests.test_query_report.TestQueryReport testMethod=test_export_report_via_email>
    # AssertionError: [] is not true : Email was not enqueued
    #
  }
  {
    id = "frappe.tests.test_reportview.TestReportview.test_export_report_via_email";
    # ----------------------------------------------------------------------
    # Traceback (most recent call last):
    #   File "/nix/store/vjln1sailh99qr6y5ss5a3s0r26inbxv-python3-3.13.13-env/lib/python3.13/site-packages/frappe/tests/test_reportview.py", line 110, in test_export_report_via_email
    #     self.assertTrue(email_queue, "Email was not enqueued")
    #     ~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     email_queue = []
    #     jobs = [{'name': 'erp.frx.localhost::0e785104-e122-407d-a051-390866abd613', 'job_id': 'erp.frx.localhost::0e785104-e122-407d-a051-390866abd613', 'queue': 'long', 'job_name': 'frappe.search.website_search.build_index_for_all_routes', 'status': 'finished', 'started_at': datetime.datetime(2026, 8, 25, 0, 39, 12, 285948, tzinfo=<DstTzInfo 'America/New_York' EDT-1 day, 20:00:00 DST>), 'ended_at': datetime.datetime(2026, 8, 25, 0, 39, 18, 367907, tzinfo=<DstTzInfo 'America/New_York' EDT-1 day, 20:00:00 DST>), 'time_taken': 6.081959, 'exc_info': None, 'arguments': '{\n "event": null,\n "is_async": true,\n "job_name": "frappe.search.website_search.build_index_for_all_routes",\n "kwargs": {},\n "method": "<function build_index_for_all_routes at 0x76943efbcc20>",\n "site": "erp.frx.localhost",\n "user": "Administrator"\n}', 'timeout': 1500, 'creation': datetime.datetime(2026, 8, 25, 0, 39, 11, 614780, tzinfo=<DstTzInfo 'America/New_York' EDT-1 day, 20:00:00 DST>), 'modified': datetime.datetime(2026, 8, 25, 0, 39, 18, 367920, tzinfo=<DstTzInfo 'America/New_York' EDT-1 day, 20:00:00 DST>), '_comment_count': 0, 'owner': 'Administrator', 'modified_by': 'Administrator'}, {'name': 'erp.frx.localhost::a1bb98ad-c45e-4815-8bbc-bfb420a7f9e6', 'job_id': 'erp.frx.localhost::a1bb98ad-c45e-4815-8bbc-bfb420a7f9e6', 'queue': 'default', 'job_name': 'frappe.utils.global_search.rebuild_for_doctype', 'status': 'finished', 'started_at': datetime.datetime(2026, 8, 25, 0, 39, 29, 37035, tzinfo=<DstTzInfo 'America/New_York' EDT-1 day, 20:00:00 DST>), 'ended_at': datetime.datetime(2026, 8, 25, 0, 39, 29, 904715, tzinfo=<DstTzInfo 'America/New_York' EDT-1 day, 20:00:00 DST>), 'time_taken': 0.86768, 'exc_info': None, 'arguments': '{\n "event": null,\n "is_async": true,\n "job_name": "frappe.utils.global_search.rebuild_for_doctype",\n "kwargs": {\n  "doctype": "Test Tree DocType"\n },\n "method": "frappe.utils.global_search.rebuild_for_doctype",\n "site": "erp.frx.localhost",\n "user": "Administrator"\n}', 'timeout': 300, 'creation': datetime.datetime(2026, 8, 25, 0, 39, 29, 16247, tzinfo=<DstTzInfo 'America/New_York' EDT-1 day, 20:00:00 DST>), 'modified': datetime.datetime(2026, 8, 25, 0, 39, 29, 904725, tzinfo=<DstTzInfo 'America/New_York' EDT-1 day, 20:00:00 DST>), '_comment_count': 0, 'owner': 'Administrator', 'modified_by': 'Administrator'}, {'name': 'erp.frx.localhost::c6951bdb-7c60-4337-8a7c-0e21c3bf0223', 'job_id': 'erp.frx.localhost::c6951bdb-7c60-4337-8a7c-0e21c3bf0223', 'queue': 'default', 'job_name': 'frappe.utils.global_search.rebuild_for_doctype', 'status': 'finished', 'started_at': datetime.datetime(2026, 8, 25, 0, 39, 29, 933107, tzinfo=<DstTzInfo 'America/New_York' EDT-1 day, 20:00:00 DST>), 'ended_at': datetime.datetime(2026, 8, 25, 0, 39, 30, 651993, tzinfo=<DstTzInfo 'America/New_York' EDT-1 day, 20:00:00 DST>), 'time_taken': 0.718886, 'exc_info': None, 'arguments': '{\n "event": null,\n "is_async": true,\n "job_name": "frappe.utils.global_search.rebuild_for_doctype",\n "kwargs": {\n  "doctype": "Test Tree DocType"\n },\n "method": "frappe.utils.global_search.rebuild_for_doctype",\n "site": "erp.frx.localhost",\n "user": "Administrator"\n}', 'timeout': 300, 'creation': datetime.datetime(2026, 8, 25, 0, 39, 29, 515824, tzinfo=<DstTzInfo 'America/New_York' EDT-1 day, 20:00:00 DST>), 'modified': datetime.datetime(2026, 8, 25, 0, 39, 30, 652003, tzinfo=<DstTzInfo 'America/New_York' EDT-1 day, 20:00:00 DST>), '_comment_count': 0, 'owner': 'Administrator', 'modified_by': 'Administrator'}, {'name': 'erp.frx.localhost::83784e37-5ca1-433b-b880-bc350446daa1', 'job_id': 'erp.frx.localhost::83784e37-5ca1-433b-b880-bc350446daa1', 'queue': 'default', 'job_name': 'frappe.utils.global_search.rebuild_for_doctype', 'status': 'finished', 'started_at': datetime.datetime(2026, 8, 25, 0, 39, 30, 670995, tzinfo=<DstTzInfo 'America/New_York' EDT-1 day, 20:00:00 DST>), 'ended_at': datetime.datetime(2026, 8, 25, 0, 39, 31, 702909, tzinfo=<DstTzInfo 'America/New_York' EDT-1 day, 20:00:00 DST>), 'time_taken': 1.031914, 'exc_info': None, 'arguments': '{\n "event": null,\n "is_async": true,\n "job_name": "frappe.utils.global_search.rebuild_for_doctype",\n "kwargs": {\n  "doctype": "DocType"\n },\n "method": "frappe.utils.global_search.rebuild_for_doctype",\n "site": "erp.frx.localhost",\n "user": "Administrator"\n}', 'timeout': 300, 'creation': datetime.datetime(2026, 8, 25, 0, 39, 30, 355714, tzinfo=<DstTzInfo 'America/New_York' EDT-1 day, 20:00:00 DST>), 'modified': datetime.datetime(2026, 8, 25, 0, 39, 31, 702919, tzinfo=<DstTzInfo 'America/New_York' EDT-1 day, 20:00:00 DST>), '_comment_count': 0, 'owner': 'Administrator', 'modified_by': 'Administrator'}, {'name': 'erp.frx.localhost::3d6ae863-0f49-4fe9-8e3a-c72ada232409', 'job_id': 'erp.frx.localhost::3d6ae863-0f49-4fe9-8e3a-c72ada232409', 'queue': 'default', 'job_name': 'frappe.utils.global_search.rebuild_for_doctype', 'status': 'finished', 'started_at': datetime.datetime(2026, 8, 25, 0, 39, 32, 811102, tzinfo=<DstTzInfo 'America/New_York' EDT-1 day, 20:00:00 DST>), 'ended_at': datetime.datetime(2026, 8, 25, 0, 39, 33, 853306, tzinfo=<DstTzInfo 'America/New_York' EDT-1 day, 20:00:00 DST>), 'time_taken': 1.042204, 'exc_info': None, 'arguments': '{\n "event": null,\n "is_async": true,\n "job_name": "frappe.utils.global_search.rebuild_for_doctype",\n "kwargs": {\n  "doctype": "Email Account"\n },\n "method": "frappe.utils.global_search.rebuild_for_doctype",\n "site": "erp.frx.localhost",\n "user": "Administrator"\n}', 'timeout': 300, 'creation': datetime.datetime(2026, 8, 25, 0, 39, 32, 794241, tzinfo=<DstTzInfo 'America/New_York' EDT-1 day, 20:00:00 DST>), 'modified': datetime.datetime(2026, 8, 25, 0, 39, 33, 853316, tzinfo=<DstTzInfo 'America/New_York' EDT-1 day, 20:00:00 DST>), '_comment_count': 0, 'owner': 'Administrator', 'modified_by': 'Administrator'}, {'name': 'erp.frx.localhost::ca51e037-3920-424d-8997-5107cc948d62', 'job_id': 'erp.frx.localhost::ca51e037-3920-424d-8997-5107cc948d62', 'queue': 'default', 'job_name': 'frappe.utils.global_search.rebuild_for_doctype', 'status': 'finished', 'started_at': datetime.datetime(2026, 8, 25, 0, 39, 33, 878408, tzinfo=<DstTzInfo 'America/New_York' EDT-1 day, 20:00:00 DST>), 'ended_at': datetime.datetime(2026, 8, 25, 0, 39, 34, 655390, tzinfo=<DstTzInfo 'America/New_York' EDT-1 day, 20:00:00 DST>), 'time_taken': 0.776982, 'exc_info': None, 'arguments': '{\n "event": null,\n "is_async": true,\n "job_name": "frappe.utils.global_search.rebuild_for_doctype",\n "kwargs": {\n  "doctype": "Email Account"\n },\n "method": "frappe.utils.global_search.rebuild_for_doctype",\n "site": "erp.frx.localhost",\n "user": "Administrator"\n}', 'timeout': 300, 'creation': datetime.datetime(2026, 8, 25, 0, 39, 33, 251100, tzinfo=<DstTzInfo 'America/New_York' EDT-1 day, 20:00:00 DST>), 'modified': datetime.datetime(2026, 8, 25, 0, 39, 34, 655401, tzinfo=<DstTzInfo 'America/New_York' EDT-1 day, 20:00:00 DST>), '_comment_count': 0, 'owner': 'Administrator', 'modified_by': 'Administrator'}, {'name': 'erp.frx.localhost::80a709ce-0126-47db-b495-76435afad846', 'job_id': 'erp.frx.localhost::80a709ce-0126-47db-b495-76435afad846', 'queue': 'default', 'job_name': 'frappe.search.website_search.remove_document_from_index', 'status': 'finished', 'started_at': datetime.datetime(2026, 8, 25, 0, 39, 50, 722216, tzinfo=<DstTzInfo 'America/New_York' EDT-1 day, 20:00:00 DST>), 'ended_at': datetime.datetime(2026, 8, 25, 0, 39, 50, 767297, tzinfo=<DstTzInfo 'America/New_York' EDT-1 day, 20:00:00 DST>), 'time_taken': 0.045081, 'exc_info': None, 'arguments': '{\n "event": null,\n "is_async": true,\n "job_name": "frappe.search.website_search.remove_document_from_index",\n "kwargs": {\n  "path": null\n },\n "method": "<function remove_document_from_index at 0x76943efbcb80>",\n "site": "erp.frx.localhost",\n "user": "test2@example.com"\n}', 'timeout': 300, 'creation': datetime.datetime(2026, 8, 25, 0, 39, 50, 180296, tzinfo=<DstTzInfo 'America/New_York' EDT-1 day, 20:00:00 DST>), 'modified': datetime.datetime(2026, 8, 25, 0, 39, 50, 767306, tzinfo=<DstTzInfo 'America/New_York' EDT-1 day, 20:00:00 DST>), '_comment_count': 0, 'owner': 'test2@example.com', 'modified_by': 'test2@example.com'}, {'name': 'erp.frx.localhost::5b5b9e04-029a-432c-9be0-e128d4c8183a', 'job_id': 'erp.frx.localhost::5b5b9e04-029a-432c-9be0-e128d4c8183a', 'queue': 'default', 'job_name': 'frappe.search.website_search.remove_document_from_index', 'status': 'finished', 'started_at': datetime.datetime(2026, 8, 25, 0, 39, 51, 734274, tzinfo=<DstTzInfo 'America/New_York' EDT-1 day, 20:00:00 DST>), 'ended_at': datetime.datetime(2026, 8, 25, 0, 39, 51, 780383, tzinfo=<DstTzInfo 'America/New_York' EDT-1 day, 20:00:00 DST>), 'time_taken': 0.046109, 'exc_info': None, 'arguments': '{\n "event": null,\n "is_async": true,\n "job_name": "frappe.search.website_search.remove_document_from_index",\n "kwargs": {\n  "path": null\n },\n "method": "<function remove_document_from_index at 0x76943efbcb80>",\n "site": "erp.frx.localhost",\n "user": "test1@example.com"\n}', 'timeout': 300, 'creation': datetime.datetime(2026, 8, 25, 0, 39, 51, 204035, tzinfo=<DstTzInfo 'America/New_York' EDT-1 day, 20:00:00 DST>), 'modified': datetime.datetime(2026, 8, 25, 0, 39, 51, 780392, tzinfo=<DstTzInfo 'America/New_York' EDT-1 day, 20:00:00 DST>), '_comment_count': 0, 'owner': 'test1@example.com', 'modified_by': 'test1@example.com'}, {'name': 'erp.frx.localhost::207a914c-3e41-47e3-93fc-08086e754ec2', 'job_id': 'erp.frx.localhost::207a914c-3e41-47e3-93fc-08086e754ec2', 'queue': 'default', 'job_name': 'frappe.search.website_search.remove_document_from_index', 'status': 'finished', 'started_at': datetime.datetime(2026, 8, 25, 0, 39, 52, 336244, tzinfo=<DstTzInfo 'America/New_York' EDT-1 day, 20:00:00 DST>), 'ended_at': datetime.datetime(2026, 8, 25, 0, 39, 52, 381739, tzinfo=<DstTzInfo 'America/New_York' EDT-1 day, 20:00:00 DST>), 'time_taken': 0.045495, 'exc_info': None, 'arguments': '{\n "event": null,\n "is_async": true,\n "job_name": "frappe.search.website_search.remove_document_from_index",\n "kwargs": {\n  "path": null\n },\n "method": "<function remove_document_from_index at 0x76943efbcb80>",\n "site": "erp.frx.localhost",\n "user": "Administrator"\n}', 'timeout': 300, 'creation': datetime.datetime(2026, 8, 25, 0, 39, 51, 485895, tzinfo=<DstTzInfo 'America/New_York' EDT-1 day, 20:00:00 DST>), 'modified': datetime.datetime(2026, 8, 25, 0, 39, 52, 381749, tzinfo=<DstTzInfo 'America/New_York' EDT-1 day, 20:00:00 DST>), '_comment_count': 0, 'owner': 'Administrator', 'modified_by': 'Administrator'}]
    #     self = <frappe.tests.test_reportview.TestReportview testMethod=test_export_report_via_email>
    # AssertionError: [] is not true : Email was not enqueued
  }
  {
    id = "frappe.tests.test_seen.TestSeen.test_if_user_is_added";
    # Traceback (most recent call last):
    #   File "/nix/store/fp9ipnf7nrb7qrqx6ifxabz45l7176c6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/tests/test_seen.py", line 47, in test_if_user_is_added
    #     ev.save()
    #     ~~~~~~~^^
    #     ev = <Event: EV00001>
    #     getdoc = <function getdoc at 0x7cbc41a76f20>
    #     self = <frappe.tests.test_seen.TestSeen testMethod=test_if_user_is_added>
    #   File "/nix/store/fp9ipnf7nrb7qrqx6ifxabz45l7176c6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/model/document.py", line 378, in save
    #     return self._save(*args, **kwargs)
    #            ~~~~~~~~~~^^^^^^^^^^^^^^^^^
    #     args = ()
    #     kwargs = {}
    #     self = <Event: EV00001>
    #   File "/nix/store/fp9ipnf7nrb7qrqx6ifxabz45l7176c6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/model/document.py", line 404, in _save
    #     self.check_permission("write", "save")
    #     ~~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^
    #     ignore_permissions = None
    #     ignore_version = None
    #     self = <Event: EV00001>
    #   File "/nix/store/fp9ipnf7nrb7qrqx6ifxabz45l7176c6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/model/document.py", line 228, in check_permission
    #     self._handle_permission_failure(permtype)
    #     ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^
    #     permlevel = 'save'
    #     permtype = 'write'
    #     self = <Event: EV00001>
    #   File "/nix/store/fp9ipnf7nrb7qrqx6ifxabz45l7176c6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/model/document.py", line 247, in _handle_permission_failure
    #     check_doctype_permission(self.doctype, perm_type)
    #     ~~~~~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^
    #     check_doctype_permission = <function check_doctype_permission at 0x7cbc427b5da0>
    #     perm_type = 'write'
    #     self = <Event: EV00001>
    #   File "/nix/store/fp9ipnf7nrb7qrqx6ifxabz45l7176c6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/permissions.py", line 861, in check_doctype_permission
    #     frappe.has_permission(doctype, ptype, throw=True, ignore_share_permissions=True)
    #     ~~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     _message_log = [{'message': 'User <strong>test1@example.com</strong> does not have access to this document: Event - EV00001', 'title': 'Message'}]
    #     doctype = 'Event'
    #     ptype = 'write'
    #   File "/nix/store/fp9ipnf7nrb7qrqx6ifxabz45l7176c6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/__init__.py", line 1073, in has_permission
    #     raise frappe.PermissionError
    #     debug = False
    #     doc = None
    #     doctype = 'Event'
    #     document_label = 'Event'
    #     frappe = <module 'frappe' from '/nix/store/fp9ipnf7nrb7qrqx6ifxabz45l7176c6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/__init__.py'>
    #     ignore_share_permissions = True
    #     out = False
    #     parent_doctype = None
    #     ptype = 'write'
    #     throw = True
    #     user = None
    # frappe.exceptions.PermissionError
  }
  {
    id = "frappe.tests.test_commands.TestCommands.test_get_bench_relative_path";
    # Traceback (most recent call last):
    #   File "/nix/store/fp9ipnf7nrb7qrqx6ifxabz45l7176c6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/tests/test_commands.py", line 416, in test_get_bench_relative_path
    #     with open(test1_path, "w+") as test1:
    #          ~~~~^^^^^^^^^^^^^^^^^^
    #     bench_path = '/var/lib/TestProject'
    #     self = <frappe.tests.test_commands.TestCommands testMethod=test_get_bench_relative_path>
    #     test1_path = '/var/lib/TestProject/test1.txt'
    #     test2_path = '/var/lib/TestProject/sites/test2.txt'
    # OSError: [Errno 30] Read-only file system: '/var/lib/TestProject/test1.txt'
  }
  {
    id = "frappe.tests.test_commands.TestBackups.test_backup_no_options";
    # Take a backup without any options
    # ----------------------------------------------------------------------
    # Traceback (most recent call last):
    #   File "/nix/store/fp9ipnf7nrb7qrqx6ifxabz45l7176c6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/tests/test_commands.py", line 560, in test_backup_no_options
    #     self.assertNotEqual(before_backup["database"], after_backup["database"])
    #     ~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     after_backup = {'database': './runner0/private/backups/20260903_065403-runner0-partial-database.sql.gz', 'public': None, 'private': None, 'config': './runner0/private/backups/20260903_065403-runner0-site_config_backup.json'}
    #     before_backup = {'database': './runner0/private/backups/20260903_065403-runner0-partial-database.sql.gz', 'public': None, 'private': None, 'config': './runner0/private/backups/20260903_065403-runner0-site_config_backup.json'}
    #     self = <frappe.tests.test_commands.TestBackups testMethod=test_backup_no_options>
    # AssertionError: './runner0/private/backups/20260903_065403-runner0-partial-database.sql.gz' == './runner0/private/backups/20260903_065403-runner0-partial-database.sql.gz'
  }
  {
    id = "frappe.tests.test_client.TestClient.test_run_doc_method";
    # Traceback (most recent call last):
    #   File "/nix/store/fp9ipnf7nrb7qrqx6ifxabz45l7176c6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/tests/test_client.py", line 105, in test_run_doc_method
    #     execute_cmd(frappe.local.form_dict.cmd)
    #     ~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     execute_cmd = <function execute_cmd at 0x7ffff290e840>
    #     report = <Report: Test Run Doc Method>
    #     self = <frappe.tests.test_client.TestClient testMethod=test_run_doc_method>
    #   File "/nix/store/fp9ipnf7nrb7qrqx6ifxabz45l7176c6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/handler.py", line 86, in execute_cmd
    #     return frappe.call(method, **frappe.form_dict)
    #            ~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     cmd = 'run_doc_method'
    #     from_async = False
    #     method = <function run_doc_method at 0x7ffff2918ae0>
    #     server_script = None
    #   File "/nix/store/fp9ipnf7nrb7qrqx6ifxabz45l7176c6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/__init__.py", line 1762, in call
    #     return fn(*args, **newargs)
    #     args = ()
    #     fn = <function run_doc_method at 0x7ffff2918ae0>
    #     kwargs = {'dt': 'Report', 'dn': 'Test Run Doc Method', 'method': 'toggle_disable', 'cmd': 'run_doc_method', 'args': 0}
    #     newargs = {'dt': 'Report', 'dn': 'Test Run Doc Method', 'method': 'toggle_disable', 'args': 0}
    #   File "/nix/store/fp9ipnf7nrb7qrqx6ifxabz45l7176c6-python3-3.13.13-env/lib/python3.13/site-packages/frappe/handler.py", line 362, in run_doc_method
    #     frappe.response.docs.append(doc)
    #     ^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     arg = None
    #     args = 0
    #     dn = 'Test Run Doc Method'
    #     doc = <Report: Test Run Doc Method>
    #     docs = None
    #     dt = 'Report'
    #     fn = <function Report.toggle_disable at 0x7ffff084aa20>
    #     fnargs = ['disable']
    #     method = 'toggle_disable'
    #     method_obj = <bound method Report.toggle_disable of <Report: Test Run Doc Method>>
    #     response = None
    #     signature = <function signature at 0x7ffff6ecca40>
    # AttributeError: 'NoneType' object has no attribute 'append'
  }
  {
    id = "frappe.desk.doctype.bulk_update.test_bulk_update.TestBulkUpdate.test_bulk_submit_in_background";
    # ----------------------------------------------------------------------
    # Traceback (most recent call last):
    #   File "/nix/store/6jbngjwsrj1rkyyrgrnjrdpy635rsp12-python3-3.14.7-env/lib/python3.14/site-packages/frappe/desk/doctype/bulk_update/test_bulk_update.py", line 44, in test_bulk_submit_in_background
    #     self.wait_for_assertion(lambda: check_docstatus(unsubmitted, 1))
    #     ~~~~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     check_docstatus = <function TestBulkUpdate.test_bulk_submit_in_background.<locals>.check_docstatus at 0x7fffef8ac3b0>
    #     failed = []
    #     self = <frappe.desk.doctype.bulk_update.test_bulk_update.TestBulkUpdate testMethod=test_bulk_submit_in_background>
    #     unsubmitted = ['btkt9nvlr6', 'btkel0emj9', 'btk2rfocga', 'btkgm4mhca', 'btkaks22ch', 'btkhnsfo12', 'btkdrh1uv9', 'btk114v1uv', 'btkf63ff1n', 'btksf39ms8', 'btki4sdk5l', 'btk5vqkmno', 'btk74ctu8e', 'btkv6lgo>
    #   File "/nix/store/6jbngjwsrj1rkyyrgrnjrdpy635rsp12-python3-3.14.7-env/lib/python3.14/site-packages/frappe/tests/utils.py", line 368, in wrapper
    #     result = func(*args, **kwargs)
    #     _handle_timeout = <function timeout.<locals>.decorator.<locals>._handle_timeout at 0x7fffefb343b0>
    #     actual_timeout = 30
    #     args = (<frappe.desk.doctype.bulk_update.test_bulk_update.TestBulkUpdate testMethod=test_bulk_submit_in_background>, <function TestBulkUpdate.test_bulk_submit_in_background.<locals>.<lambda> at 0x7fffef8ac0>
    #     func = <function TestBulkUpdate.wait_for_assertion at 0x7fffefb34bf0>
    #     kwargs = {}
    #   File "/nix/store/6jbngjwsrj1rkyyrgrnjrdpy635rsp12-python3-3.14.7-env/lib/python3.14/site-packages/frappe/desk/doctype/bulk_update/test_bulk_update.py", line 27, in wait_for_assertion
    #     time.sleep(0.2)
    #     ~~~~~~~~~~^^^^^
    #     assertion = <function TestBulkUpdate.test_bulk_submit_in_background.<locals>.<lambda> at 0x7fffef8ac040>
    #     self = <frappe.desk.doctype.bulk_update.test_bulk_update.TestBulkUpdate testMethod=test_bulk_submit_in_background>
    #   File "/nix/store/6jbngjwsrj1rkyyrgrnjrdpy635rsp12-python3-3.14.7-env/lib/python3.14/site-packages/frappe/tests/utils.py", line 362, in _handle_timeout
    #     raise Exception(actual_error_message)
    #     actual_error_message = 'Test timed out.'
    #     frame = <frame at 0x7fffef840fb0, file '/nix/store/6jbngjwsrj1rkyyrgrnjrdpy635rsp12-python3-3.14.7-env/lib/python3.14/site-packages/frappe/desk/doctype/bulk_update/test_bulk_update.py', line 27, code wait_f>
    #     signum = 14
    # Exception: Test timed out.
  }
  {
    id = "frappe.core.doctype.rq_job.test_rq_job.TestRQJob.test_multi_queue_burst_consumption_worker_pool";
    # Traceback (most recent call last):
    #   File "/nix/store/6jbngjwsrj1rkyyrgrnjrdpy635rsp12-python3-3.14.7-env/lib/python3.14/site-packages/frappe/tests/utils.py", line 368, in wrapper
    #     result = func(*args, **kwargs)
    #     _handle_timeout = <function timeout.<locals>.decorator.<locals>._handle_timeout at 0x7ffee1ef78a0>
    #     actual_timeout = 30
    #     args = (<frappe.core.doctype.rq_job.test_rq_job.TestRQJob testMethod=test_multi_queue_burst_consumption_worker_pool>,)
    #     func = <function TestRQJob.test_multi_queue_burst_consumption_worker_pool at 0x7ffee1ef75e0>
    #     kwargs = {}
    #   File "/nix/store/6jbngjwsrj1rkyyrgrnjrdpy635rsp12-python3-3.14.7-env/lib/python3.14/site-packages/frappe/core/doctype/rq_job/test_rq_job.py", line 114, in test_multi_queue_burst_consumption_worker_pool
    #     _, stderr = execute_in_shell(
    #                 ~~~~~~~~~~~~~~~~^
    #           "bench worker-pool --queue short,default --burst --num-workers=4", check_exit_code=True
    #      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     )
    #     ^
    #     _ = 2
    #     q = 'short'
    #     self = <frappe.core.doctype.rq_job.test_rq_job.TestRQJob testMethod=test_multi_queue_burst_consumption_worker_pool>
    #   File "/nix/store/6jbngjwsrj1rkyyrgrnjrdpy635rsp12-python3-3.14.7-env/lib/python3.14/site-packages/frappe/utils/__init__.py", line 505, in execute_in_shell
    #     exit_code = p.wait()
    #     Popen = <class 'subprocess.Popen'>
    #     check_exit_code = True
    #     cmd = 'bench worker-pool --queue short,default --burst --num-workers=4'
    #     kwargs = {'shell': True, 'stdout': <_io.BufferedRandom name=7>, 'stderr': <_io.BufferedRandom name=8>, 'executable': '/run/current-system/sw/bin/bash'}
    #     low_priority = False
    #     p = <Popen: returncode: None args: 'bench worker-pool --queue short,default --bu...>
    #     shlex = <module 'shlex' from '/nix/store/6jbngjwsrj1rkyyrgrnjrdpy635rsp12-python3-3.14.7-env/lib/python3.14/shlex.py'>
    #     stderr = <_io.BufferedRandom name=8>
    #     stdout = <_io.BufferedRandom name=7>
    #     tempfile = <module 'tempfile' from '/nix/store/6jbngjwsrj1rkyyrgrnjrdpy635rsp12-python3-3.14.7-env/lib/python3.14/tempfile.py'>
    #     verbose = False
    #   File "/nix/store/6jbngjwsrj1rkyyrgrnjrdpy635rsp12-python3-3.14.7-env/lib/python3.14/subprocess.py", line 1279, in wait
    #     return self._wait(timeout=timeout)
    #            ~~~~~~~~~~^^^^^^^^^^^^^^^^^
    #     self = <Popen: returncode: None args: 'bench worker-pool --queue short,default --bu...>
    #     timeout = None
    #   File "/nix/store/6jbngjwsrj1rkyyrgrnjrdpy635rsp12-python3-3.14.7-env/lib/python3.14/subprocess.py", line 2084, in _wait
    #     (pid, sts) = self._try_wait(0)
    #                  ~~~~~~~~~~~~~~^^^
    #     self = <Popen: returncode: None args: 'bench worker-pool --queue short,default --bu...>
    #     timeout = None
    #   File "/nix/store/6jbngjwsrj1rkyyrgrnjrdpy635rsp12-python3-3.14.7-env/lib/python3.14/subprocess.py", line 2042, in _try_wait
    #     (pid, sts) = os.waitpid(self.pid, wait_flags)
    #                  ~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^
    #     self = <Popen: returncode: None args: 'bench worker-pool --queue short,default --bu...>
    #     wait_flags = 0
    #   File "/nix/store/6jbngjwsrj1rkyyrgrnjrdpy635rsp12-python3-3.14.7-env/lib/python3.14/site-packages/frappe/tests/utils.py", line 362, in _handle_timeout
    #     raise Exception(actual_error_message)
    #     actual_error_message = 'Test timed out'
    #     frame = <frame at 0x7ffeeb69e7a0, file '/nix/store/6jbngjwsrj1rkyyrgrnjrdpy635rsp12-python3-3.14.7-env/lib/python3.14/subprocess.py', line 2043, code _try_wait>
    #     signum = 14
    # Exception: Test timed out
  }
  {
    id = "frappe.tests.test_safe_exec.TestNoSafeExec.test_safe_exec_disabled_by_default";
    # Traceback (most recent call last):
    #   File "/nix/store/6jbngjwsrj1rkyyrgrnjrdpy635rsp12-python3-3.14.7-env/lib/python3.14/site-packages/frappe/tests/test_safe_exec.py", line 141, in test_safe_exec_disabled_by_default
    #     self.assertRaises(ServerScriptNotEnabled, safe_exec, "pass")
    #     ~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     self = <frappe.tests.test_safe_exec.TestNoSafeExec testMethod=test_safe_exec_disabled_by_default>
    # AssertionError: ServerScriptNotEnabled not raised by safe_exec
  }
  {
    id = "frappe.tests.test_commands.TestBackups.test_backup_excluding_specific_doctypes";
    # Traceback (most recent call last):
    #   File "/nix/store/6jbngjwsrj1rkyyrgrnjrdpy635rsp12-python3-3.14.7-env/lib/python3.14/site-packages/frappe/tests/test_commands.py", line 710, in test_backup_excluding_specific_doctypes
    #     self.assertFalse(exists_in_backup(self.backup_map["excludes"]["excludes"], database))
    #     ~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     database = './runner4/private/backups/20260903_112329-runner4-database.sql.gz'
    #     self = <frappe.tests.test_commands.TestBackups testMethod=test_backup_excluding_specific_doctypes>
    # AssertionError: True is not false
  }
  {
    id = "frappe.core.doctype.rq_job.test_rq_job.TestRQJob.test_serialization";
    # Traceback (most recent call last):
    #   File "/nix/store/6jbngjwsrj1rkyyrgrnjrdpy635rsp12-python3-3.14.7-env/lib/python3.14/site-packages/frappe/core/doctype/rq_job/test_rq_job.py", line 54, in test_serialization
    #     self.check_status(job, "finished")
    #     ~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^
    #     job = Job('runner1::7a9785c9-acfa-48f7-b474-b15cfc260091', enqueued_at=datetime.datetime(2026, 9, 3, 15, 31, 43, 980078))
    #     rq_job = <RQJob: runner1::7a9785c9-acfa-48f7-b474-b15cfc260091>
    #     self = <frappe.core.doctype.rq_job.test_rq_job.TestRQJob testMethod=test_serialization>
    #   File "/nix/store/6jbngjwsrj1rkyyrgrnjrdpy635rsp12-python3-3.14.7-env/lib/python3.14/site-packages/frappe/core/doctype/rq_job/test_rq_job.py", line 37, in check_status
    #     wait_for_completion(job)
    #     ~~~~~~~~~~~~~~~~~~~^^^^^
    #     job = Job('runner1::7a9785c9-acfa-48f7-b474-b15cfc260091', enqueued_at=datetime.datetime(2026, 9, 3, 15, 31, 43, 980078))
    #     self = <frappe.core.doctype.rq_job.test_rq_job.TestRQJob testMethod=test_serialization>
    #     status = 'finished'
    #     wait = True
    #   File "/nix/store/6jbngjwsrj1rkyyrgrnjrdpy635rsp12-python3-3.14.7-env/lib/python3.14/site-packages/frappe/tests/utils.py", line 368, in wrapper
    #     result = func(*args, **kwargs)
    #     _handle_timeout = <function timeout.<locals>.decorator.<locals>._handle_timeout at 0x7fffe4c8eb90>
    #     actual_timeout = 60
    #     args = (Job('runner1::7a9785c9-acfa-48f7-b474-b15cfc260091', enqueued_at=datetime.datetime(2026, 9, 3, 15, 31, 43, 980078)),)
    #     func = <function wait_for_completion at 0x7fffe4c8e090>
    #     kwargs = {}
    #   File "/nix/store/6jbngjwsrj1rkyyrgrnjrdpy635rsp12-python3-3.14.7-env/lib/python3.14/site-packages/frappe/core/doctype/rq_job/test_rq_job.py", line 23, in wait_for_completion
    #     time.sleep(0.2)
    #     ~~~~~~~~~~^^^^^
    #     job = Job('runner1::7a9785c9-acfa-48f7-b474-b15cfc260091', enqueued_at=datetime.datetime(2026, 9, 3, 15, 31, 43, 980078))
    #   File "/nix/store/6jbngjwsrj1rkyyrgrnjrdpy635rsp12-python3-3.14.7-env/lib/python3.14/site-packages/frappe/tests/utils.py", line 362, in _handle_timeout
    #     raise Exception(actual_error_message)
    #     actual_error_message = 'Test timed out.'
    #     frame = <frame at 0x7fffe4d3bac0, file '/nix/store/6jbngjwsrj1rkyyrgrnjrdpy635rsp12-python3-3.14.7-env/lib/python3.14/site-packages/frappe/core/doctype/rq_job/test_rq_job.py', line 23, code wait_for_completion>
    #     signum = 14
    # Exception: Test timed out.
  }
  {
    id = "frappe.core.doctype.rq_worker.test_rq_worker.TestRQWorker.test_get_worker_list";
    # Traceback (most recent call last):
    #   File "/nix/store/6jbngjwsrj1rkyyrgrnjrdpy635rsp12-python3-3.14.7-env/lib/python3.14/site-packages/frappe/core/doctype/rq_worker/test_rq_worker.py", line 13, in test_get_worker_list
    #     self.assertTrue(any("short" in w.queue_type for w in workers))
    #     ~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     self = <frappe.core.doctype.rq_worker.test_rq_worker.TestRQWorker testMethod=test_get_worker_list>
    #     workers = [{'name': '88a26c3ad1af45b385d870b8643fe915', 'queue': 'var-lib-TestProject:long', 'queue_type': 'long', 'worker_name': '88a26c3ad1af45b385d870b8643fe915', 'status': 'idle', 'pid': 419, 'current_job_id': None, 'last_heartbeat': datetime.datetime(2026, 9, 3, 11, 31, 32, 19305, tzinfo=<DstTzInfo 'America/New_York' EDT-1 day, 20:00:00 DST>), 'birth_date': datetime.datetime(2026, 9, 3, 11, 30, 56, 901286, tzinfo=<DstTzInfo 'America/New_York' EDT-1 day, 20:00:00 DST>), 'successful_job_count': 3, 'failed_job_count': 1, 'total_working_time': 4.227331, '_comment_count': 0, 'modified': datetime.datetime(2026, 9, 3, 11, 31, 32, 19305, tzinfo=<DstTzInfo 'America/New_York' EDT-1 day, 20:00:00 DST>), 'creation': datetime.datetime(2026, 9, 3, 11, 30, 56, 901286, tzinfo=<DstTzInfo 'America/New_York' EDT-1 day, 20:00:00 DST>), 'utilization_percent': 3.9473117074316937}, {'name': '63cc4d4a38e949a0b23233bf460e11a6', 'queue': 'var-lib-TestProject:default', 'queue_type': 'default', 'worker_name': '63cc4d4a38e949a0b23233bf460e11a6', 'status': 'idle', 'pid': 417, 'current_job_id': None, 'last_heartbeat': datetime.datetime(2026, 9, 3, 11, 31, 43, 815131, tzinfo=<DstTzInfo 'America/New_York' EDT-1 day, 20:00:00 DST>), 'birth_date': datetime.datetime(2026, 9, 3, 11, 30, 56, 946707, tzinfo=<DstTzInfo 'America/New_York' EDT-1 day, 20:00:00 DST>), 'successful_job_count': 5, 'failed_job_count': 1, 'total_working_time': 8.539299, '_comment_count': 0, 'modified': datetime.datetime(2026, 9, 3, 11, 31, 43, 815131, tzinfo=<DstTzInfo 'America/New_York' EDT-1 day, 20:00:00 DST>), 'creation': datetime.datetime(2026, 9, 3, 11, 30, 56, 946707, tzinfo=<DstTzInfo 'America/New_York' EDT-1 day, 20:00:00 DST>), 'utilization_percent': 7.977033114476581}]
    # AssertionError: False is not true
  }
  {
    id = "frappe.tests.test_perf.TestPerformance.test_req_per_seconds_basic";

    # Traceback (most recent call last):
    #   File "/nix/store/4yigqkbm3z9z4djgg5pb5q95vbzvkw5d-python3-3.14.7-env/lib/python3.14/site-packages/tenacity/__init__.py", line 331, in wrapped_f
    #     return copy(f, *args, **kw)
    #     args = (<frappe.tests.test_perf.TestPerformance testMethod=test_req_per_seconds_basic>,)
    #     copy = <Retrying object at 0x7ffeeb2b4310 (stop=<tenacity.stop.stop_after_attempt object at 0x7ffeebd99810>, wait=<tenacity.wait.wait_fixed object at 0x7fffeff37b10>, sleep=<function sleep at 0x7ffff3255430>, retry=<tenacity.retry.retry_if_exception_type object at 0x7ffeeace2be0>, before=<function before_nothing at 0x7ffff3270e00>, after=<function after_nothing at 0x7ffff3271170>)>
    #     f = <function TestPerformance.test_req_per_seconds_basic at 0x7ffeeacd8510>
    #     kw = {}
    #     self = <Retrying object at 0x7ffeeacd8100 (stop=<tenacity.stop.stop_after_attempt object at 0x7ffeebd99810>, wait=<tenacity.wait.wait_fixed object at 0x7fffeff37b10>, sleep=<function sleep at 0x7ffff3255430>, retry=<tenacity.retry.retry_if_exception_type object at 0x7ffeeace2be0>, before=<function before_nothing at 0x7ffff3270e00>, after=<function after_nothing at 0x7ffff3271170>)>
    #     wrapped_f = <function TestPerformance.test_req_per_seconds_basic at 0x7ffeeacd96f0>
    #   File "/nix/store/4yigqkbm3z9z4djgg5pb5q95vbzvkw5d-python3-3.14.7-env/lib/python3.14/site-packages/tenacity/__init__.py", line 470, in __call__
    #     do = self.iter(retry_state=retry_state)
    #     args = (<frappe.tests.test_perf.TestPerformance testMethod=test_req_per_seconds_basic>,)
    #     do = <tenacity.DoAttempt object at 0x7ffeebdbfca0>
    #     fn = <function TestPerformance.test_req_per_seconds_basic at 0x7ffeeacd8510>
    #     kwargs = {}
    #     retry_state = <RetryCallState 140732843714256: attempt #1; slept for 0.0; last result: failed (FrappeException FrappeClient Request Failed
    #
    # Traceback (most recent call last):
    #   File "/nix/store/4yigqkbm3z9z4djgg5pb5q95vbzvkw5d-python3-3.14.7-env/lib/python3.14/site-packages/frappe/app.py", line 120, in application
    #     response = frappe.api.handle(request)
    #   File "/nix/store/4yigqkbm3z9z4djgg5pb5q95vbzvkw5d-python3-3.14.7-env/lib/python3.14/site-packages/frappe/api/__init__.py", line 52, in handle
    #     data = endpoint(**arguments)
    #   File "/nix/store/4yigqkbm3z9z4djgg5pb5q95vbzvkw5d-python3-3.14.7-env/lib/python3.14/site-packages/frappe/api/v1.py", line 31, in document_list
    #     return frappe.call(frappe.client.get_list, doctype, **frappe.form_dict)
    #            ~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #   File "/nix/store/4yigqkbm3z9z4djgg5pb5q95vbzvkw5d-python3-3.14.7-env/lib/python3.14/site-packages/frappe/__init__.py", line 1772, in call
    #     return fn(*args, **newargs)
    #   File "/nix/store/4yigqkbm3z9z4djgg5pb5q95vbzvkw5d-python3-3.14.7-env/lib/python3.14/site-packages/frappe/utils/typing_validations.py", line 32, in wrapper
    #     return func(*args, **kwargs)
    #   File "/nix/store/4yigqkbm3z9z4djgg5pb5q95vbzvkw5d-python3-3.14.7-env/lib/python3.14/site-packages/frappe/client.py", line 68, in get_list
    #     _list = frappe.get_list(**args)
    #   File "/nix/store/4yigqkbm3z9z4djgg5pb5q95vbzvkw5d-python3-3.14.7-env/lib/python3.14/site-packages/frappe/__init__.py", line 2040, in get_list
    #     return frappe.model.db_query.DatabaseQuery(doctype).execute(*args, **kwargs)
    #            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^
    #   File "/nix/store/4yigqkbm3z9z4djgg5pb5q95vbzvkw5d-python3-3.14.7-env/lib/python3.14/site-packages/frappe/model/db_query.py", line 350, in execute
    #     self.check_read_permission(self.doctype, parent_doctype=parent_doctype)
    #     ~~~~~~~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #   File "/nix/store/4yigqkbm3z9z4djgg5pb5q95vbzvkw5d-python3-3.14.7-env/lib/python3.14/site-packages/frappe/model/db_query.py", line 890, in check_read_permission
    #     self._set_permission_map(doctype, parent_doctype)
    #     ~~~~~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^
    #   File "/nix/store/4yigqkbm3z9z4djgg5pb5q95vbzvkw5d-python3-3.14.7-env/lib/python3.14/site-packages/frappe/model/db_query.py", line 896, in _set_permission_map
    #     frappe.has_permission(
    #     ~~~~~~~~~~~~~~~~~~~~~^
    #     	doctype,
    #      ^^^^^^^^
    #     ...<3 lines>...
    #     	user=self.user,
    #      ^^^^^^^^^^^^^^^
    #     )
    #     ^
    #   File "/nix/store/4yigqkbm3z9z4djgg5pb5q95vbzvkw5d-python3-3.14.7-env/lib/python3.14/site-packages/frappe/__init__.py", line 1083, in has_permission
    #     raise frappe.PermissionError
    # frappe.exceptions.PermissionError
    # )>
    #     self = <Retrying object at 0x7ffeeb2b4310 (stop=<tenacity.stop.stop_after_attempt object at 0x7ffeebd99810>, wait=<tenacity.wait.wait_fixed object at 0x7fffeff37b10>, sleep=<function sleep at 0x7ffff3255430>, retry=<tenacity.retry.retry_if_exception_type object at 0x7ffeeace2be0>, before=<function before_nothing at 0x7ffff3270e00>, after=<function after_nothing at 0x7ffff3271170>)>
    #   File "/nix/store/4yigqkbm3z9z4djgg5pb5q95vbzvkw5d-python3-3.14.7-env/lib/python3.14/site-packages/tenacity/__init__.py", line 371, in iter
    #     result = action(retry_state)
    #     action = <function BaseRetrying._post_retry_check_actions.<locals>.<lambda> at 0x7ffeeb286610>
    #     result = None
    #     retry_state = <RetryCallState 140732843714256: attempt #1; slept for 0.0; last result: failed (FrappeException FrappeClient Request Failed
    #
    # Traceback (most recent call last):
    #   File "/nix/store/4yigqkbm3z9z4djgg5pb5q95vbzvkw5d-python3-3.14.7-env/lib/python3.14/site-packages/frappe/app.py", line 120, in application
    #     response = frappe.api.handle(request)
    #   File "/nix/store/4yigqkbm3z9z4djgg5pb5q95vbzvkw5d-python3-3.14.7-env/lib/python3.14/site-packages/frappe/api/__init__.py", line 52, in handle
    #     data = endpoint(**arguments)
    #   File "/nix/store/4yigqkbm3z9z4djgg5pb5q95vbzvkw5d-python3-3.14.7-env/lib/python3.14/site-packages/frappe/api/v1.py", line 31, in document_list
    #     return frappe.call(frappe.client.get_list, doctype, **frappe.form_dict)
    #            ~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #   File "/nix/store/4yigqkbm3z9z4djgg5pb5q95vbzvkw5d-python3-3.14.7-env/lib/python3.14/site-packages/frappe/__init__.py", line 1772, in call
    #     return fn(*args, **newargs)
    #   File "/nix/store/4yigqkbm3z9z4djgg5pb5q95vbzvkw5d-python3-3.14.7-env/lib/python3.14/site-packages/frappe/utils/typing_validations.py", line 32, in wrapper
    #     return func(*args, **kwargs)
    #   File "/nix/store/4yigqkbm3z9z4djgg5pb5q95vbzvkw5d-python3-3.14.7-env/lib/python3.14/site-packages/frappe/client.py", line 68, in get_list
    #     _list = frappe.get_list(**args)
    #   File "/nix/store/4yigqkbm3z9z4djgg5pb5q95vbzvkw5d-python3-3.14.7-env/lib/python3.14/site-packages/frappe/__init__.py", line 2040, in get_list
    #     return frappe.model.db_query.DatabaseQuery(doctype).execute(*args, **kwargs)
    #            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^
    #   File "/nix/store/4yigqkbm3z9z4djgg5pb5q95vbzvkw5d-python3-3.14.7-env/lib/python3.14/site-packages/frappe/model/db_query.py", line 350, in execute
    #     self.check_read_permission(self.doctype, parent_doctype=parent_doctype)
    #     ~~~~~~~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #   File "/nix/store/4yigqkbm3z9z4djgg5pb5q95vbzvkw5d-python3-3.14.7-env/lib/python3.14/site-packages/frappe/model/db_query.py", line 890, in check_read_permission
    #     self._set_permission_map(doctype, parent_doctype)
    #     ~~~~~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^
    #   File "/nix/store/4yigqkbm3z9z4djgg5pb5q95vbzvkw5d-python3-3.14.7-env/lib/python3.14/site-packages/frappe/model/db_query.py", line 896, in _set_permission_map
    #     frappe.has_permission(
    #     ~~~~~~~~~~~~~~~~~~~~~^
    #     	doctype,
    #      ^^^^^^^^
    #     ...<3 lines>...
    #     	user=self.user,
    #      ^^^^^^^^^^^^^^^
    #     )
    #     ^
    #   File "/nix/store/4yigqkbm3z9z4djgg5pb5q95vbzvkw5d-python3-3.14.7-env/lib/python3.14/site-packages/frappe/__init__.py", line 1083, in has_permission
    #     raise frappe.PermissionError
    # frappe.exceptions.PermissionError
    # )>
    #     self = <Retrying object at 0x7ffeeb2b4310 (stop=<tenacity.stop.stop_after_attempt object at 0x7ffeebd99810>, wait=<tenacity.wait.wait_fixed object at 0x7fffeff37b10>, sleep=<function sleep at 0x7ffff3255430>, retry=<tenacity.retry.retry_if_exception_type object at 0x7ffeeace2be0>, before=<function before_nothing at 0x7ffff3270e00>, after=<function after_nothing at 0x7ffff3271170>)>
    #   File "/nix/store/4yigqkbm3z9z4djgg5pb5q95vbzvkw5d-python3-3.14.7-env/lib/python3.14/site-packages/tenacity/__init__.py", line 393, in <lambda>
    #     self._add_action_func(lambda rs: rs.outcome.result())
    #                                      ~~~~~~~~~~~~~~~~~^^
    #     rs = <RetryCallState 140732843714256: attempt #1; slept for 0.0; last result: failed (FrappeException FrappeClient Request Failed
    #
    # Traceback (most recent call last):
    #   File "/nix/store/4yigqkbm3z9z4djgg5pb5q95vbzvkw5d-python3-3.14.7-env/lib/python3.14/site-packages/frappe/app.py", line 120, in application
    #     response = frappe.api.handle(request)
    #   File "/nix/store/4yigqkbm3z9z4djgg5pb5q95vbzvkw5d-python3-3.14.7-env/lib/python3.14/site-packages/frappe/api/__init__.py", line 52, in handle
    #     data = endpoint(**arguments)
    #   File "/nix/store/4yigqkbm3z9z4djgg5pb5q95vbzvkw5d-python3-3.14.7-env/lib/python3.14/site-packages/frappe/api/v1.py", line 31, in document_list
    #     return frappe.call(frappe.client.get_list, doctype, **frappe.form_dict)
    #            ~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #   File "/nix/store/4yigqkbm3z9z4djgg5pb5q95vbzvkw5d-python3-3.14.7-env/lib/python3.14/site-packages/frappe/__init__.py", line 1772, in call
    #     return fn(*args, **newargs)
    #   File "/nix/store/4yigqkbm3z9z4djgg5pb5q95vbzvkw5d-python3-3.14.7-env/lib/python3.14/site-packages/frappe/utils/typing_validations.py", line 32, in wrapper
    #     return func(*args, **kwargs)
    #   File "/nix/store/4yigqkbm3z9z4djgg5pb5q95vbzvkw5d-python3-3.14.7-env/lib/python3.14/site-packages/frappe/client.py", line 68, in get_list
    #     _list = frappe.get_list(**args)
    #   File "/nix/store/4yigqkbm3z9z4djgg5pb5q95vbzvkw5d-python3-3.14.7-env/lib/python3.14/site-packages/frappe/__init__.py", line 2040, in get_list
    #     return frappe.model.db_query.DatabaseQuery(doctype).execute(*args, **kwargs)
    #            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^
    #   File "/nix/store/4yigqkbm3z9z4djgg5pb5q95vbzvkw5d-python3-3.14.7-env/lib/python3.14/site-packages/frappe/model/db_query.py", line 350, in execute
    #     self.check_read_permission(self.doctype, parent_doctype=parent_doctype)
    #     ~~~~~~~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #   File "/nix/store/4yigqkbm3z9z4djgg5pb5q95vbzvkw5d-python3-3.14.7-env/lib/python3.14/site-packages/frappe/model/db_query.py", line 890, in check_read_permission
    #     self._set_permission_map(doctype, parent_doctype)
    #     ~~~~~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^
    #   File "/nix/store/4yigqkbm3z9z4djgg5pb5q95vbzvkw5d-python3-3.14.7-env/lib/python3.14/site-packages/frappe/model/db_query.py", line 896, in _set_permission_map
    #     frappe.has_permission(
    #     ~~~~~~~~~~~~~~~~~~~~~^
    #     	doctype,
    #      ^^^^^^^^
    #     ...<3 lines>...
    #     	user=self.user,
    #      ^^^^^^^^^^^^^^^
    #     )
    #     ^
    #   File "/nix/store/4yigqkbm3z9z4djgg5pb5q95vbzvkw5d-python3-3.14.7-env/lib/python3.14/site-packages/frappe/__init__.py", line 1083, in has_permission
    #     raise frappe.PermissionError
    # frappe.exceptions.PermissionError
    # )>
    #   File "/nix/store/4yigqkbm3z9z4djgg5pb5q95vbzvkw5d-python3-3.14.7-env/lib/python3.14/concurrent/futures/_base.py", line 447, in result
    #     return self.__get_result()
    #            ~~~~~~~~~~~~~~~~~^^
    #     self = None
    #     timeout = None
    #   File "/nix/store/4yigqkbm3z9z4djgg5pb5q95vbzvkw5d-python3-3.14.7-env/lib/python3.14/concurrent/futures/_base.py", line 396, in __get_result
    #     raise self._exception
    #     self = None
    #   File "/nix/store/4yigqkbm3z9z4djgg5pb5q95vbzvkw5d-python3-3.14.7-env/lib/python3.14/site-packages/tenacity/__init__.py", line 473, in __call__
    #     result = fn(*args, **kwargs)
    #     args = (<frappe.tests.test_perf.TestPerformance testMethod=test_req_per_seconds_basic>,)
    #     do = <tenacity.DoAttempt object at 0x7ffeebdbfca0>
    #     fn = <function TestPerformance.test_req_per_seconds_basic at 0x7ffeeacd8510>
    #     kwargs = {}
    #     retry_state = <RetryCallState 140732843714256: attempt #1; slept for 0.0; last result: failed (FrappeException FrappeClient Request Failed
    #
    # Traceback (most recent call last):
    #   File "/nix/store/4yigqkbm3z9z4djgg5pb5q95vbzvkw5d-python3-3.14.7-env/lib/python3.14/site-packages/frappe/app.py", line 120, in application
    #     response = frappe.api.handle(request)
    #   File "/nix/store/4yigqkbm3z9z4djgg5pb5q95vbzvkw5d-python3-3.14.7-env/lib/python3.14/site-packages/frappe/api/__init__.py", line 52, in handle
    #     data = endpoint(**arguments)
    #   File "/nix/store/4yigqkbm3z9z4djgg5pb5q95vbzvkw5d-python3-3.14.7-env/lib/python3.14/site-packages/frappe/api/v1.py", line 31, in document_list
    #     return frappe.call(frappe.client.get_list, doctype, **frappe.form_dict)
    #            ~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #   File "/nix/store/4yigqkbm3z9z4djgg5pb5q95vbzvkw5d-python3-3.14.7-env/lib/python3.14/site-packages/frappe/__init__.py", line 1772, in call
    #     return fn(*args, **newargs)
    #   File "/nix/store/4yigqkbm3z9z4djgg5pb5q95vbzvkw5d-python3-3.14.7-env/lib/python3.14/site-packages/frappe/utils/typing_validations.py", line 32, in wrapper
    #     return func(*args, **kwargs)
    #   File "/nix/store/4yigqkbm3z9z4djgg5pb5q95vbzvkw5d-python3-3.14.7-env/lib/python3.14/site-packages/frappe/client.py", line 68, in get_list
    #     _list = frappe.get_list(**args)
    #   File "/nix/store/4yigqkbm3z9z4djgg5pb5q95vbzvkw5d-python3-3.14.7-env/lib/python3.14/site-packages/frappe/__init__.py", line 2040, in get_list
    #     return frappe.model.db_query.DatabaseQuery(doctype).execute(*args, **kwargs)
    #            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^
    #   File "/nix/store/4yigqkbm3z9z4djgg5pb5q95vbzvkw5d-python3-3.14.7-env/lib/python3.14/site-packages/frappe/model/db_query.py", line 350, in execute
    #     self.check_read_permission(self.doctype, parent_doctype=parent_doctype)
    #     ~~~~~~~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #   File "/nix/store/4yigqkbm3z9z4djgg5pb5q95vbzvkw5d-python3-3.14.7-env/lib/python3.14/site-packages/frappe/model/db_query.py", line 890, in check_read_permission
    #     self._set_permission_map(doctype, parent_doctype)
    #     ~~~~~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^
    #   File "/nix/store/4yigqkbm3z9z4djgg5pb5q95vbzvkw5d-python3-3.14.7-env/lib/python3.14/site-packages/frappe/model/db_query.py", line 896, in _set_permission_map
    #     frappe.has_permission(
    #     ~~~~~~~~~~~~~~~~~~~~~^
    #     	doctype,
    #      ^^^^^^^^
    #     ...<3 lines>...
    #     	user=self.user,
    #      ^^^^^^^^^^^^^^^
    #     )
    #     ^
    #   File "/nix/store/4yigqkbm3z9z4djgg5pb5q95vbzvkw5d-python3-3.14.7-env/lib/python3.14/site-packages/frappe/__init__.py", line 1083, in has_permission
    #     raise frappe.PermissionError
    # frappe.exceptions.PermissionError
    # )>
    #     self = <Retrying object at 0x7ffeeb2b4310 (stop=<tenacity.stop.stop_after_attempt object at 0x7ffeebd99810>, wait=<tenacity.wait.wait_fixed object at 0x7fffeff37b10>, sleep=<function sleep at 0x7ffff3255430>, retry=<tenacity.retry.retry_if_exception_type object at 0x7ffeeace2be0>, before=<function before_nothing at 0x7ffff3270e00>, after=<function after_nothing at 0x7ffff3271170>)>
    #   File "/nix/store/4yigqkbm3z9z4djgg5pb5q95vbzvkw5d-python3-3.14.7-env/lib/python3.14/site-packages/frappe/tests/test_perf.py", line 141, in test_req_per_seconds_basic
    #     client.get_list("ToDo", limit_page_length=1)
    #     ~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     EXPECTED_RPS = 120
    #     FAILURE_THREASHOLD = 0.1
    #     _ = 0
    #     client = <frappe.frappeclient.FrappeClient object at 0x7ffeea018230>
    #     req_count = 1000
    #     self = <frappe.tests.test_perf.TestPerformance testMethod=test_req_per_seconds_basic>
    #     start = 12274.488068266
    #   File "/nix/store/4yigqkbm3z9z4djgg5pb5q95vbzvkw5d-python3-3.14.7-env/lib/python3.14/site-packages/frappe/frappeclient.py", line 125, in get_list
    #     return self.post_process(res)
    #            ~~~~~~~~~~~~~~~~~^^^^^
    #     doctype = 'ToDo'
    #     fields = '["name"]'
    #     filters = None
    #     limit_page_length = 1
    #     limit_start = 0
    #     params = {'fields': '["name"]', 'limit_start': 0, 'limit_page_length': 1}
    #     res = <Response [403]>
    #     self = <frappe.frappeclient.FrappeClient object at 0x7ffeea018230>
    #   File "/nix/store/4yigqkbm3z9z4djgg5pb5q95vbzvkw5d-python3-3.14.7-env/lib/python3.14/site-packages/frappe/frappeclient.py", line 383, in post_process
    #     raise FrappeException(exc)
    #     exc = 'FrappeClient Request Failed\n\nTraceback (most recent call last):\n  File "/nix/store/4yigqkbm3z9z4djgg5pb5q95vbzvkw5d-python3-3.14.7-env/lib/python3.14/site-packages/frappe/app.py", line 120, in application\n    response = frappe.api.handle(request)\n  File "/nix/store/4yigqkbm3z9z4djgg5pb5q95vbzvkw5d-python3-3.14.7-env/lib/python3.14/site-packages/frappe/api/__init__.py", line 52, in handle\n    data = endpoint(**arguments)\n  File "/nix/store/4yigqkbm3z9z4djgg5pb5q95vbzvkw5d-python3-3.14.7-env/lib/python3.14/site-packages/frappe/api/v1.py", line 31, in document_list\n    return frappe.call(frappe.client.get_list, doctype, **frappe.form_dict)\n           ~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^\n  File "/nix/store/4yigqkbm3z9z4djgg5pb5q95vbzvkw5d-python3-3.14.7-env/lib/python3.14/site-packages/frappe/__init__.py", line 1772, in call\n    return fn(*args, **newargs)\n  File "/nix/store/4yigqkbm3z9z4djgg5pb5q95vbzvkw5d-python3-3.14.7-env/lib/python3.14/site-packages/frappe/utils/typing_validations.py", line 32, in wrapper\n    return func(*args, **kwargs)\n  File "/nix/store/4yigqkbm3z9z4djgg5pb5q95vbzvkw5d-python3-3.14.7-env/lib/python3.14/site-packages/frappe/client.py", line 68, in get_list\n    _list = frappe.get_list(**args)\n  File "/nix/store/4yigqkbm3z9z4djgg5pb5q95vbzvkw5d-python3-3.14.7-env/lib/python3.14/site-packages/frappe/__init__.py", line 2040, in get_list\n    return frappe.model.db_query.DatabaseQuery(doctype).execute(*args, **kwargs)\n           ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^\n  File "/nix/store/4yigqkbm3z9z4djgg5pb5q95vbzvkw5d-python3-3.14.7-env/lib/python3.14/site-packages/frappe/model/db_query.py", line 350, in execute\n    self.check_read_permission(self.doctype, parent_doctype=parent_doctype)\n    ~~~~~~~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^\n  File "/nix/store/4yigqkbm3z9z4djgg5pb5q95vbzvkw5d-python3-3.14.7-env/lib/python3.14/site-packages/frappe/model/db_query.py", line 890, in check_read_permission\n    self._set_permission_map(doctype, parent_doctype)\n    ~~~~~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^\n  File "/nix/store/4yigqkbm3z9z4djgg5pb5q95vbzvkw5d-python3-3.14.7-env/lib/python3.14/site-packages/frappe/model/db_query.py", line 896, in _set_permission_map\n    frappe.has_permission(\n    ~~~~~~~~~~~~~~~~~~~~~^\n    \tdoctype,\n     ^^^^^^^^\n    ...<3 lines>...\n    \tuser=self.user,\n     ^^^^^^^^^^^^^^^\n    )\n    ^\n  File "/nix/store/4yigqkbm3z9z4djgg5pb5q95vbzvkw5d-python3-3.14.7-env/lib/python3.14/site-packages/frappe/__init__.py", line 1083, in has_permission\n    raise frappe.PermissionError\nfrappe.exceptions.PermissionError\n'
    #     response = <Response [403]>
    #     rjson = {'exception': 'frappe.exceptions.PermissionError', 'exc_type': 'PermissionError', 'exc': '["Traceback (most recent call last):\\n  File \\"/nix/store/4yigqkbm3z9z4djgg5pb5q95vbzvkw5d-python3-3.14.7-env/lib/python3.14/site-packages/frappe/app.py\\", line 120, in application\\n    response = frappe.api.handle(request)\\n  File \\"/nix/store/4yigqkbm3z9z4djgg5pb5q95vbzvkw5d-python3-3.14.7-env/lib/python3.14/site-packages/frappe/api/__init__.py\\", line 52, in handle\\n    data = endpoint(**arguments)\\n  File \\"/nix/store/4yigqkbm3z9z4djgg5pb5q95vbzvkw5d-python3-3.14.7-env/lib/python3.14/site-packages/frappe/api/v1.py\\", line 31, in document_list\\n    return frappe.call(frappe.client.get_list, doctype, **frappe.form_dict)\\n           ~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^\\n  File \\"/nix/store/4yigqkbm3z9z4djgg5pb5q95vbzvkw5d-python3-3.14.7-env/lib/python3.14/site-packages/frappe/__init__.py\\", line 1772, in call\\n    return fn(*args, **newargs)\\n  File \\"/nix/store/4yigqkbm3z9z4djgg5pb5q95vbzvkw5d-python3-3.14.7-env/lib/python3.14/site-packages/frappe/utils/typing_validations.py\\", line 32, in wrapper\\n    return func(*args, **kwargs)\\n  File \\"/nix/store/4yigqkbm3z9z4djgg5pb5q95vbzvkw5d-python3-3.14.7-env/lib/python3.14/site-packages/frappe/client.py\\", line 68, in get_list\\n    _list = frappe.get_list(**args)\\n  File \\"/nix/store/4yigqkbm3z9z4djgg5pb5q95vbzvkw5d-python3-3.14.7-env/lib/python3.14/site-packages/frappe/__init__.py\\", line 2040, in get_list\\n    return frappe.model.db_query.DatabaseQuery(doctype).execute(*args, **kwargs)\\n           ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^\\n  File \\"/nix/store/4yigqkbm3z9z4djgg5pb5q95vbzvkw5d-python3-3.14.7-env/lib/python3.14/site-packages/frappe/model/db_query.py\\", line 350, in execute\\n    self.check_read_permission(self.doctype, parent_doctype=parent_doctype)\\n    ~~~~~~~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^\\n  File \\"/nix/store/4yigqkbm3z9z4djgg5pb5q95vbzvkw5d-python3-3.14.7-env/lib/python3.14/site-packages/frappe/model/db_query.py\\", line 890, in check_read_permission\\n    self._set_permission_map(doctype, parent_doctype)\\n    ~~~~~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^\\n  File \\"/nix/store/4yigqkbm3z9z4djgg5pb5q95vbzvkw5d-python3-3.14.7-env/lib/python3.14/site-packages/frappe/model/db_query.py\\", line 896, in _set_permission_map\\n    frappe.has_permission(\\n    ~~~~~~~~~~~~~~~~~~~~~^\\n    \\tdoctype,\\n     ^^^^^^^^\\n    ...<3 lines>...\\n    \\tuser=self.user,\\n     ^^^^^^^^^^^^^^^\\n    )\\n    ^\\n  File \\"/nix/store/4yigqkbm3z9z4djgg5pb5q95vbzvkw5d-python3-3.14.7-env/lib/python3.14/site-packages/frappe/__init__.py\\", line 1083, in has_permission\\n    raise frappe.PermissionError\\nfrappe.exceptions.PermissionError\\n"]', '_server_messages': '["{\\"message\\": \\"User <strong>Guest</strong> does not have doctype access via role permission for document <strong>ToDo</strong>\\", \\"title\\": \\"Message\\"}"]', '_error_message': 'No permission for ToDo'}
    #     self = <frappe.frappeclient.FrappeClient object at 0x7ffeea018230>
    # frappe.frappeclient.FrappeException: FrappeClient Request Failed
    #
    # Traceback (most recent call last):
    #   File "/nix/store/4yigqkbm3z9z4djgg5pb5q95vbzvkw5d-python3-3.14.7-env/lib/python3.14/site-packages/frappe/app.py", line 120, in application
    #     response = frappe.api.handle(request)
    #   File "/nix/store/4yigqkbm3z9z4djgg5pb5q95vbzvkw5d-python3-3.14.7-env/lib/python3.14/site-packages/frappe/api/__init__.py", line 52, in handle
    #     data = endpoint(**arguments)
    #   File "/nix/store/4yigqkbm3z9z4djgg5pb5q95vbzvkw5d-python3-3.14.7-env/lib/python3.14/site-packages/frappe/api/v1.py", line 31, in document_list
    #     return frappe.call(frappe.client.get_list, doctype, **frappe.form_dict)
    #            ~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #   File "/nix/store/4yigqkbm3z9z4djgg5pb5q95vbzvkw5d-python3-3.14.7-env/lib/python3.14/site-packages/frappe/__init__.py", line 1772, in call
    #     return fn(*args, **newargs)
    #   File "/nix/store/4yigqkbm3z9z4djgg5pb5q95vbzvkw5d-python3-3.14.7-env/lib/python3.14/site-packages/frappe/utils/typing_validations.py", line 32, in wrapper
    #     return func(*args, **kwargs)
    #   File "/nix/store/4yigqkbm3z9z4djgg5pb5q95vbzvkw5d-python3-3.14.7-env/lib/python3.14/site-packages/frappe/client.py", line 68, in get_list
    #     _list = frappe.get_list(**args)
    #   File "/nix/store/4yigqkbm3z9z4djgg5pb5q95vbzvkw5d-python3-3.14.7-env/lib/python3.14/site-packages/frappe/__init__.py", line 2040, in get_list
    #     return frappe.model.db_query.DatabaseQuery(doctype).execute(*args, **kwargs)
    #            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^
    #   File "/nix/store/4yigqkbm3z9z4djgg5pb5q95vbzvkw5d-python3-3.14.7-env/lib/python3.14/site-packages/frappe/model/db_query.py", line 350, in execute
    #     self.check_read_permission(self.doctype, parent_doctype=parent_doctype)
    #     ~~~~~~~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #   File "/nix/store/4yigqkbm3z9z4djgg5pb5q95vbzvkw5d-python3-3.14.7-env/lib/python3.14/site-packages/frappe/model/db_query.py", line 890, in check_read_permission
    #     self._set_permission_map(doctype, parent_doctype)
    #     ~~~~~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^
    #   File "/nix/store/4yigqkbm3z9z4djgg5pb5q95vbzvkw5d-python3-3.14.7-env/lib/python3.14/site-packages/frappe/model/db_query.py", line 896, in _set_permission_map
    #     frappe.has_permission(
    #     ~~~~~~~~~~~~~~~~~~~~~^
    #     	doctype,
    #      ^^^^^^^^
    #     ...<3 lines>...
    #     	user=self.user,
    #      ^^^^^^^^^^^^^^^
    #     )
    #     ^
    #   File "/nix/store/4yigqkbm3z9z4djgg5pb5q95vbzvkw5d-python3-3.14.7-env/lib/python3.14/site-packages/frappe/__init__.py", line 1083, in has_permission
    #     raise frappe.PermissionError
    # frappe.exceptions.PermissionError
  }
  {
    id = "frappe.integrations.doctype.connected_app.test_connected_app.TestConnectedApp.test_web_application_flow";

    # runner2 # [12629.876337] runner2 nginx[639]: 2026/09/10 05:59:29 [error] 639#639: *5 upstream timed out (110: Connection timed out) while reading response header from upstream, client: 2001:db8:1::4, server: runner2, request: "GET /api/method/frappe.integrations.doctype.connected_app.connected_app.callback/gutej6moku?code=lueX0jdsVEA9XKTARPvOJFoMCsH8iL&state=vtCIHA1Os4WXqi4sjyANw425Nmrs8f HTTP/1.1", upstream: "http://unix:/run/TestProject/web/gunicorn.socket/api/method/frappe.integrations.doctype.connected_app.connected_app.callback/gutej6moku?code=lueX0jdsVEA9XKTARPvOJFoMCsH8iL&state=vtCIHA1Os4WXqi4sjyANw425Nmrs8f", host: "runner2"
    # runner2 # [12629.876676] runner2 nginx[639]: 2026/09/10 05:59:29 [error] 639#639: *9 upstream timed out (110: Connection timed out) while reading response header from upstream, client: 127.0.0.1, server: runner2, request: "POST /api/method/frappe.integrations.oauth2.get_token HTTP/1.1", upstream: "http://unix:/run/TestProject/web/gunicorn.socket/api/method/frappe.integrations.oauth2.get_token", host: "runner2"
    # runner2 # [12629.970752] runner2 TestProject-web-start[421]: 2026-09-10 05:59:29,820 ERROR frappe New Exception collected in error log
    # runner2 # [12629.970752] runner2 TestProject-web-start[421]: Site: runner2
    # runner2 # [12629.970752] runner2 TestProject-web-start[421]: Form Dict: {'code': 'lueX0jdsVEA9XKTARPvOJFoMCsH8iL', 'state': 'vtCIHA1Os4WXqi4sjyANw425Nmrs8f', 'cmd': 'frappe.integrations.doctype.connected_app.connected_app.callback'}
    # runner2 # [12629.992404] runner2 TestProject-web-start[421]: /nix/store/4yigqkbm3z9z4djgg5pb5q95vbzvkw5d-python3-3.14.7-env/lib/python3.14/site-packages/frappe/utils/html_utils.py:163: MarkupResemblesLocatorWarning: The input passed in on this line looks more like a URL than HTML or XML.
    # runner2 # [12629.992404] runner2 TestProject-web-start[421]: If you meant to use Beautiful Soup to parse the web page found at a certain URL, then something has gone wrong. You should use an Python package like 'requests' to fetch the content behind the URL. Once you have the content as a string, you can feed that string into Beautiful Soup.
    # runner2 # [12629.992404] runner2 TestProject-web-start[421]: However, if you want to parse some data that happens to look like a URL, then nothing has gone wrong: you are using Beautiful Soup correctly, and this warning is spurious and can be filtered. To make this warning go away, run this code before calling the BeautifulSoup constructor:
    # runner2 # [12629.992404] runner2 TestProject-web-start[421]:     from bs4 import MarkupResemblesLocatorWarning
    # runner2 # [12629.992404] runner2 TestProject-web-start[421]:     import warnings
    # runner2 # [12629.992404] runner2 TestProject-web-start[421]:     warnings.filterwarnings("ignore", category=MarkupResemblesLocatorWarning)
    # runner2 # [12629.992404] runner2 TestProject-web-start[421]:
    # runner2 # [12629.992404] runner2 TestProject-web-start[421]:   if not bool(BeautifulSoup(html, "html.parser").find()):
  }
  {
    id = "frappe.tests.test_model_utils.TestModelUtils.test_get_permitted_fields";

    # Traceback (most recent call last):
    #   File "/nix/store/r8p9shg1i98fya6bgqi8bfj02jgkm6jz-python3-3.14.7-env/lib/python3.14/site-packages/frappe/tests/test_model_utils.py", line 47, in test_get_permitted_fields
    #     self.assertSequenceEqual(core_permitted_fields, picked_doctype_all_columns)
    #     ~~~~~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     core_permitted_fields = ['name', 'owner', 'creation', 'modified', 'modified_by', 'docstatus', 'idx']
    #     guest_permitted_fields = ['name', 'owner', 'creation', 'modified', 'modified_by', 'docstatus', 'idx']
    #     picked_doctype = 'User'
    #     picked_doctype_all_columns = ['name', 'owner', 'creation', 'modified', 'modified_by', 'docstatus', 'idx', 'enabled', 'email', 'first_name', 'middle_name', 'last_name', 'full_name', 'username', 'language', 'time_zone', 'send_welcome_email', 'unsubscribed', 'user_image', 'role_profile_name', 'module_profile', 'home_settings', 'gender', 'birth_date', 'interest', 'phone', 'location', 'bio', 'mobile_no', 'mute_sounds', 'desk_theme', 'banner_image', 'search_bar', 'notifications', 'list_sidebar', 'bulk_actions', 'view_switcher', 'form_sidebar', 'form_navigation_buttons', 'timeline', 'dashboard', 'new_password', 'logout_all_sessions', 'reset_password_key', 'last_reset_password_key_generated_on', 'last_password_reset_date', 'redirect_url', 'document_follow_notify', 'document_follow_frequency', 'follow_created_documents', 'follow_commented_documents', 'follow_liked_documents', 'follow_assigned_documents', 'follow_shared_documents', 'email_signature', 'thread_notify', 'send_me_a_copy', 'allowed_in_mentions', 'default_workspace', 'default_app', 'simultaneous_sessions', 'restrict_ip', 'last_ip', 'login_after', 'user_type', 'last_active', 'login_before', 'bypass_restrict_ip_check_if_2fa_enabled', 'last_login', 'last_known_versions', 'api_key', 'api_secret', 'onboarding_status']
    #     self = <frappe.tests.test_model_utils.TestModelUtils testMethod=test_get_permitted_fields>
    #     todo_all_columns = ['name', 'owner', 'creation', 'modified', 'modified_by', 'docstatus', 'idx', 'status', 'priority', 'color', 'date', 'allocated_to', 'description', 'reference_type', 'reference_name', 'role', 'assigned_by', 'assigned_by_full_name', 'sender', 'assignment_rule']
    #     todo_all_fields = ['name', 'owner', 'creation', 'modified', 'modified_by', 'docstatus', 'idx', 'status', 'priority', 'color', 'date', 'allocated_to', 'description', 'reference_type', 'reference_name', 'role', 'assigned_by', 'assigned_by_full_name', 'sender', 'assignment_rule']
    # AssertionError: Sequences differ: ['nam[65 chars]'idx'] != ['nam[65 chars]'idx', 'enabled', 'email', 'first_name', 'midd[1134 chars]tus']
    #
    # Second sequence contains 66 additional elements.
    # First extra element 7:
    # 'enabled'
    #
    # - ['name', 'owner', 'creation', 'modified', 'modified_by', 'docstatus', 'idx']
    # + ['name',
    # +  'owner',
    # +  'creation',
    # +  'modified',
    # +  'modified_by',
    # +  'docstatus',
    # +  'idx',
    # +  'enabled',
    # +  'email',
    # +  'first_name',
    # +  'middle_name',
    # +  'last_name',
    # +  'full_name',
    # +  'username',
    # +  'language',
    # +  'time_zone',
    # +  'send_welcome_email',
    # +  'unsubscribed',
    # +  'user_image',
    # +  'role_profile_name',
    # +  'module_profile',
    # +  'home_settings',
    # +  'gender',
    # +  'birth_date',
    # +  'interest',
    # +  'phone',
    # +  'location',
    # +  'bio',
    # +  'mobile_no',
    # +  'mute_sounds',
    # +  'desk_theme',
    # +  'banner_image',
    # +  'search_bar',
    # +  'notifications',
    # +  'list_sidebar',
    # +  'bulk_actions',
    # +  'view_switcher',
    # +  'form_sidebar',
    # +  'form_navigation_buttons',
    # +  'timeline',
    # +  'dashboard',
    # +  'new_password',
    # +  'logout_all_sessions',
    # +  'reset_password_key',
    # +  'last_reset_password_key_generated_on',
    # +  'last_password_reset_date',
    # +  'redirect_url',
    # +  'document_follow_notify',
    # +  'document_follow_frequency',
    # +  'follow_created_documents',
    # +  'follow_commented_documents',
    # +  'follow_liked_documents',
    # +  'follow_assigned_documents',
    # +  'follow_shared_documents',
    # +  'email_signature',
    # +  'thread_notify',
    # +  'send_me_a_copy',
    # +  'allowed_in_mentions',
    # +  'default_workspace',
    # +  'default_app',
    # +  'simultaneous_sessions',
    # +  'restrict_ip',
    # +  'last_ip',
    # +  'login_after',
    # +  'user_type',
    # +  'last_active',
    # +  'login_before',
    # +  'bypass_restrict_ip_check_if_2fa_enabled',
    # +  'last_login',
    # +  'last_known_versions',
    # +  'api_key',
    # +  'api_secret',
    # +  'onboarding_status']
  }
  {
    id = "frappe.core.doctype.rq_job.test_rq_job.TestRQJob.test_memory_usage";
    # Traceback (most recent call last):
    #   File "/nix/store/r8p9shg1i98fya6bgqi8bfj02jgkm6jz-python3-3.14.7-env/lib/python3.14/site-packages/frappe/core/doctype/rq_job/test_rq_job.py", line 179, in test_memory_usage
    #     self.assertLessEqual(rss, LAST_MEASURED_USAGE * 1.05, msg)
    #     ~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    #     LAST_MEASURED_USAGE = 51
    #     job = Job('runner0::e56d07b0-a4bf-4a34-846b-0a3f10cfc624', enqueued_at=datetime.datetime(2026, 9, 17, 4, 43, 25, 696932))
    #     msg = 'Memory usage of simple background job increased. Potential root cause can be a newly added python module import. Check and move them to approriate file/function to avoid loading the module by default.'
    #     rss = 54
    #     self = <frappe.core.doctype.rq_job.test_rq_job.TestRQJob testMethod=test_memory_usage>
    #     version_info = sys.version_info(major=3, minor=14, micro=7, releaselevel='final', serial=0)
    # AssertionError: 54 not less than or equal to 53.550000000000004 : Memory usage of simple background job increased. Potential root cause can be a newly added python module import. Check and move them to approriate file/function to avoid loading the module by default.
  }
  {
    id = "frappe.tests.test_recorder.TestRecorder.test_delete";
    # Traceback (most recent call last):
    #   File "/nix/store/r8p9shg1i98fya6bgqi8bfj02jgkm6jz-python3-3.14.7-env/lib/python3.14/site-packages/frappe/tests/utils.py", line 58, in wrapped
    #     original(self)
    #     ~~~~~~~~^^^^^^
    #     original = <function TestRecorder.setUp at 0x7fffb94d9fe0>
    #     self = <frappe.tests.test_recorder.TestRecorder testMethod=test_delete>
    #     skip_ids = ['frappe.tests.test_rename_doc.TestRenameDoc', 'frappe.tests.test_virtual_doctype.TestVirtualDoctypes', 'frappe.tests.test_email.TestEmailIntegrationTest.test_send_email', 'frappe.tests.test_email.TestEmailIntegrationTest.test_store_attachments', 'frappe.tests.test_rename_doc.TestRenameDoc', 'frappe.tests.test_translate.TestTranslate.test_python_extractor', 'frappe.tests.test_utils.TestAppParser.test_app_name_parser', 'frappe.tests.test_virtual_doctype.TestVirtualDoctypes', 'frappe.tests.test_search.TestSearch.test_doctype_search_in_foreign_language', 'frappe.tests.test_search.TestSearch.test_link_search_in_foreign_language', 'frappe.tests.test_translate.TestTranslate.test_read_language_variant', 'frappe.tests.test_translate.TestTranslate.test_translation_with_context', 'frappe.tests.test_utils.TestChangeLog.test_get_remote_url', 'frappe.tests.test_website.TestWebsite.test_static_page', 'frappe.email.test_smtp.TestSMTP.test_smtp_ssl_session', 'frappe.email.test_smtp.TestSMTP.test_smtp_tls_session', 'frappe.tests.test_commands.TestCommands.test_restore', 'frappe.tests.test_commands.TestRemoveApp.test_delete_modules', '', 'frappe.tests.test_dashboard_connections.TestDashboardConnections.test_external_doctype_link_with_dashboard_override', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'frappe.tests.test_dashboard_connections.TestDashboardConnections.test_external_link_count', 'frappe.tests.test_dashboard_connections.TestDashboardConnections.test_internal_link_count', 'frappe.tests.test_db.TestDB.test_bulk_insert', 'frappe.tests.test_db.TestDB.test_bulk_update', 'frappe.tests.test_rename_doc.TestRenameDoc', 'frappe.tests.test_virtual_doctype.TestVirtualDoctypes', '', '', '', 'frappe.tests.test_commands.TestBackups.test_backup_extract_restore', 'frappe.tests.test_commands.TestBackups.test_old_backup_restore', 'frappe.tests.test_commands.TestBenchBuild.test_build_assets_size_check', 'frappe.tests.test_commands.TestCommands.test_partial_restore', 'frappe.tests.test_commands.TestDBUtils.test_db_add_index', 'frappe.core.doctype.activity_log.test_activity_log.TestActivityLog.test_brute_security', 'frappe.gettext.test_translate.TestTranslate.test_generate_pot', 'frappe.gettext.test_translate.TestTranslate.test_gitignore', 'frappe.gettext.test_translate.TestTranslate.test_new_po', 'frappe.gettext.test_translate.TestTranslate.test_write_binary', 'frappe.gettext.test_translate.TestTranslate.test_write_catalog', 'frappe.tests.test_rename_doc.TestRenameDoc', 'frappe.tests.test_virtual_doctype.TestVirtualDoctypes', 'frappe.core.doctype.file.test_file.TestFile.test_make_thumbnail', 'frappe.core.doctype.translation.test_translation.TestTranslation.test_multi_language_translations', 'frappe.gettext.test_translate.TestTranslate.test_get_method_map', 'frappe.core.doctype.rq_job.test_rq_job.TestRQJob.test_clear_failed_jobs', 'frappe.core.doctype.rq_job.test_rq_job.TestRQJob.test_get_list_filtering', 'frappe.core.doctype.submission_queue.test_submission_queue.TestSubmissionQueue.test_queue_operation', 'frappe.tests.test_background_jobs.TestBackgroundJobs.test_remove_failed_jobs', 'frappe.core.doctype.rq_job.test_rq_job.TestRQJob.test_multi_queue_burst_consumption', 'frappe.tests.test_query_report.TestQueryReport.test_export_report_via_email', 'frappe.tests.test_reportview.TestReportview.test_export_report_via_email', 'frappe.tests.test_seen.TestSeen.test_if_user_is_added', 'frappe.tests.test_commands.TestCommands.test_get_bench_relative_path', 'frappe.tests.test_commands.TestBackups.test_backup_no_options', 'frappe.tests.test_client.TestClient.test_run_doc_method', 'frappe.desk.doctype.bulk_update.test_bulk_update.TestBulkUpdate.test_bulk_submit_in_background', 'frappe.core.doctype.rq_job.test_rq_job.TestRQJob.test_multi_queue_burst_consumption_worker_pool', 'frappe.tests.test_safe_exec.TestNoSafeExec.test_safe_exec_disabled_by_default', 'frappe.tests.test_commands.TestBackups.test_backup_excluding_specific_doctypes', 'frappe.core.doctype.rq_job.test_rq_job.TestRQJob.test_serialization', 'frappe.core.doctype.rq_worker.test_rq_worker.TestRQWorker.test_get_worker_list', 'frappe.tests.test_perf.TestPerformance.test_req_per_seconds_basic', 'frappe.integrations.doctype.connected_app.test_connected_app.TestConnectedApp.test_web_application_flow', 'frappe.tests.test_model_utils.TestModelUtils.test_get_permitted_fields', 'frappe.core.doctype.rq_job.test_rq_job.TestRQJob.test_memory_usage']
    #     test_id = 'frappe.tests.test_recorder.TestRecorder.test_delete'
    #     var = 'SKIP_TESTS'
    #   File "/nix/store/r8p9shg1i98fya6bgqi8bfj02jgkm6jz-python3-3.14.7-env/lib/python3.14/site-packages/frappe/tests/test_recorder.py", line 19, in setUp
    #     self.wait_for_background_jobs()
    #     ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^^
    #     self = <frappe.tests.test_recorder.TestRecorder testMethod=test_delete>
    #   File "/nix/store/r8p9shg1i98fya6bgqi8bfj02jgkm6jz-python3-3.14.7-env/lib/python3.14/site-packages/frappe/tests/utils.py", line 368, in wrapper
    #     result = func(*args, **kwargs)
    #     _handle_timeout = <function timeout.<locals>.decorator.<locals>._handle_timeout at 0x7fffb953b7f0>
    #     actual_timeout = 30
    #     args = (<frappe.tests.test_recorder.TestRecorder testMethod=test_delete>,)
    #     func = <function TestRecorder.wait_for_background_jobs at 0x7fffb94da400>
    #     kwargs = {}
    #   File "/nix/store/r8p9shg1i98fya6bgqi8bfj02jgkm6jz-python3-3.14.7-env/lib/python3.14/site-packages/frappe/tests/test_recorder.py", line 29, in wait_for_background_jobs
    #     time.sleep(1)
    #     ~~~~~~~~~~^^^
    #     self = <frappe.tests.test_recorder.TestRecorder testMethod=test_delete>
    #   File "/nix/store/r8p9shg1i98fya6bgqi8bfj02jgkm6jz-python3-3.14.7-env/lib/python3.14/site-packages/frappe/tests/utils.py", line 362, in _handle_timeout
    #     raise Exception(actual_error_message)
    #     actual_error_message = 'Test timed out'
    #     frame = <frame at 0x7fffcbfee5a0, file '/nix/store/r8p9shg1i98fya6bgqi8bfj02jgkm6jz-python3-3.14.7-env/lib/python3.14/site-packages/frappe/tests/test_recorder.py', line 29, code wait_for_background_jobs>
    #     signum = 14
    # Exception: Test timed out
  }
  {
    id = "frappe.tests.test_recorder.TestRecorder.test_do_not_record";
    # Traceback (most recent call last):
    #   File "/nix/store/r8p9shg1i98fya6bgqi8bfj02jgkm6jz-python3-3.14.7-env/lib/python3.14/site-packages/frappe/tests/utils.py", line 58, in wrapped
    #     original(self)
    #     ~~~~~~~~^^^^^^
    #     original = <function TestRecorder.setUp at 0x7fffb94d9fe0>
    #     self = <frappe.tests.test_recorder.TestRecorder testMethod=test_do_not_record>
    #     skip_ids = ['frappe.tests.test_rename_doc.TestRenameDoc', 'frappe.tests.test_virtual_doctype.TestVirtualDoctypes', 'frappe.tests.test_email.TestEmailIntegrationTest.test_send_email', 'frappe.tests.test_email.TestEmailIntegrationTest.test_store_attachments', 'frappe.tests.test_rename_doc.TestRenameDoc', 'frappe.tests.test_translate.TestTranslate.test_python_extractor', 'frappe.tests.test_utils.TestAppParser.test_app_name_parser', 'frappe.tests.test_virtual_doctype.TestVirtualDoctypes', 'frappe.tests.test_search.TestSearch.test_doctype_search_in_foreign_language', 'frappe.tests.test_search.TestSearch.test_link_search_in_foreign_language', 'frappe.tests.test_translate.TestTranslate.test_read_language_variant', 'frappe.tests.test_translate.TestTranslate.test_translation_with_context', 'frappe.tests.test_utils.TestChangeLog.test_get_remote_url', 'frappe.tests.test_website.TestWebsite.test_static_page', 'frappe.email.test_smtp.TestSMTP.test_smtp_ssl_session', 'frappe.email.test_smtp.TestSMTP.test_smtp_tls_session', 'frappe.tests.test_commands.TestCommands.test_restore', 'frappe.tests.test_commands.TestRemoveApp.test_delete_modules', '', 'frappe.tests.test_dashboard_connections.TestDashboardConnections.test_external_doctype_link_with_dashboard_override', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'frappe.tests.test_dashboard_connections.TestDashboardConnections.test_external_link_count', 'frappe.tests.test_dashboard_connections.TestDashboardConnections.test_internal_link_count', 'frappe.tests.test_db.TestDB.test_bulk_insert', 'frappe.tests.test_db.TestDB.test_bulk_update', 'frappe.tests.test_rename_doc.TestRenameDoc', 'frappe.tests.test_virtual_doctype.TestVirtualDoctypes', '', '', '', 'frappe.tests.test_commands.TestBackups.test_backup_extract_restore', 'frappe.tests.test_commands.TestBackups.test_old_backup_restore', 'frappe.tests.test_commands.TestBenchBuild.test_build_assets_size_check', 'frappe.tests.test_commands.TestCommands.test_partial_restore', 'frappe.tests.test_commands.TestDBUtils.test_db_add_index', 'frappe.core.doctype.activity_log.test_activity_log.TestActivityLog.test_brute_security', 'frappe.gettext.test_translate.TestTranslate.test_generate_pot', 'frappe.gettext.test_translate.TestTranslate.test_gitignore', 'frappe.gettext.test_translate.TestTranslate.test_new_po', 'frappe.gettext.test_translate.TestTranslate.test_write_binary', 'frappe.gettext.test_translate.TestTranslate.test_write_catalog', 'frappe.tests.test_rename_doc.TestRenameDoc', 'frappe.tests.test_virtual_doctype.TestVirtualDoctypes', 'frappe.core.doctype.file.test_file.TestFile.test_make_thumbnail', 'frappe.core.doctype.translation.test_translation.TestTranslation.test_multi_language_translations', 'frappe.gettext.test_translate.TestTranslate.test_get_method_map', 'frappe.core.doctype.rq_job.test_rq_job.TestRQJob.test_clear_failed_jobs', 'frappe.core.doctype.rq_job.test_rq_job.TestRQJob.test_get_list_filtering', 'frappe.core.doctype.submission_queue.test_submission_queue.TestSubmissionQueue.test_queue_operation', 'frappe.tests.test_background_jobs.TestBackgroundJobs.test_remove_failed_jobs', 'frappe.core.doctype.rq_job.test_rq_job.TestRQJob.test_multi_queue_burst_consumption', 'frappe.tests.test_query_report.TestQueryReport.test_export_report_via_email', 'frappe.tests.test_reportview.TestReportview.test_export_report_via_email', 'frappe.tests.test_seen.TestSeen.test_if_user_is_added', 'frappe.tests.test_commands.TestCommands.test_get_bench_relative_path', 'frappe.tests.test_commands.TestBackups.test_backup_no_options', 'frappe.tests.test_client.TestClient.test_run_doc_method', 'frappe.desk.doctype.bulk_update.test_bulk_update.TestBulkUpdate.test_bulk_submit_in_background', 'frappe.core.doctype.rq_job.test_rq_job.TestRQJob.test_multi_queue_burst_consumption_worker_pool', 'frappe.tests.test_safe_exec.TestNoSafeExec.test_safe_exec_disabled_by_default', 'frappe.tests.test_commands.TestBackups.test_backup_excluding_specific_doctypes', 'frappe.core.doctype.rq_job.test_rq_job.TestRQJob.test_serialization', 'frappe.core.doctype.rq_worker.test_rq_worker.TestRQWorker.test_get_worker_list', 'frappe.tests.test_perf.TestPerformance.test_req_per_seconds_basic', 'frappe.integrations.doctype.connected_app.test_connected_app.TestConnectedApp.test_web_application_flow', 'frappe.tests.test_model_utils.TestModelUtils.test_get_permitted_fields', 'frappe.core.doctype.rq_job.test_rq_job.TestRQJob.test_memory_usage']
    #     test_id = 'frappe.tests.test_recorder.TestRecorder.test_do_not_record'
    #     var = 'SKIP_TESTS'
    #   File "/nix/store/r8p9shg1i98fya6bgqi8bfj02jgkm6jz-python3-3.14.7-env/lib/python3.14/site-packages/frappe/tests/test_recorder.py", line 19, in setUp
    #     self.wait_for_background_jobs()
    #     ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^^
    #     self = <frappe.tests.test_recorder.TestRecorder testMethod=test_do_not_record>
    #   File "/nix/store/r8p9shg1i98fya6bgqi8bfj02jgkm6jz-python3-3.14.7-env/lib/python3.14/site-packages/frappe/tests/utils.py", line 368, in wrapper
    #     result = func(*args, **kwargs)
    #     _handle_timeout = <function timeout.<locals>.decorator.<locals>._handle_timeout at 0x7fffb953b7f0>
    #     actual_timeout = 30
    #     args = (<frappe.tests.test_recorder.TestRecorder testMethod=test_do_not_record>,)
    #     func = <function TestRecorder.wait_for_background_jobs at 0x7fffb94da400>
    #     kwargs = {}
    #   File "/nix/store/r8p9shg1i98fya6bgqi8bfj02jgkm6jz-python3-3.14.7-env/lib/python3.14/site-packages/frappe/tests/test_recorder.py", line 29, in wait_for_background_jobs
    #     time.sleep(1)
    #     ~~~~~~~~~~^^^
    #     self = <frappe.tests.test_recorder.TestRecorder testMethod=test_do_not_record>
    #   File "/nix/store/r8p9shg1i98fya6bgqi8bfj02jgkm6jz-python3-3.14.7-env/lib/python3.14/site-packages/frappe/tests/utils.py", line 362, in _handle_timeout
    #     raise Exception(actual_error_message)
    #     actual_error_message = 'Test timed out'
    #     frame = <frame at 0x7fffcbfee5a0, file '/nix/store/r8p9shg1i98fya6bgqi8bfj02jgkm6jz-python3-3.14.7-env/lib/python3.14/site-packages/frappe/tests/test_recorder.py', line 29, code wait_for_background_jobs>
    #     signum = 14
    # Exception: Test timed out
  }
  {
    id = "frappe.tests.test_recorder.TestRecorder.test_duplicate_queries";
    # Traceback (most recent call last):
    #   File "/nix/store/r8p9shg1i98fya6bgqi8bfj02jgkm6jz-python3-3.14.7-env/lib/python3.14/site-packages/frappe/tests/utils.py", line 58, in wrapped
    #     original(self)
    #     ~~~~~~~~^^^^^^
    #     original = <function TestRecorder.setUp at 0x7fffb94d9fe0>
    #     self = <frappe.tests.test_recorder.TestRecorder testMethod=test_duplicate_queries>
    #     skip_ids = ['frappe.tests.test_rename_doc.TestRenameDoc', 'frappe.tests.test_virtual_doctype.TestVirtualDoctypes', 'frappe.tests.test_email.TestEmailIntegrationTest.test_send_email', 'frappe.tests.test_email.TestEmailIntegrationTest.test_store_attachments', 'frappe.tests.test_rename_doc.TestRenameDoc', 'frappe.tests.test_translate.TestTranslate.test_python_extractor', 'frappe.tests.test_utils.TestAppParser.test_app_name_parser', 'frappe.tests.test_virtual_doctype.TestVirtualDoctypes', 'frappe.tests.test_search.TestSearch.test_doctype_search_in_foreign_language', 'frappe.tests.test_search.TestSearch.test_link_search_in_foreign_language', 'frappe.tests.test_translate.TestTranslate.test_read_language_variant', 'frappe.tests.test_translate.TestTranslate.test_translation_with_context', 'frappe.tests.test_utils.TestChangeLog.test_get_remote_url', 'frappe.tests.test_website.TestWebsite.test_static_page', 'frappe.email.test_smtp.TestSMTP.test_smtp_ssl_session', 'frappe.email.test_smtp.TestSMTP.test_smtp_tls_session', 'frappe.tests.test_commands.TestCommands.test_restore', 'frappe.tests.test_commands.TestRemoveApp.test_delete_modules', '', 'frappe.tests.test_dashboard_connections.TestDashboardConnections.test_external_doctype_link_with_dashboard_override', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'frappe.tests.test_dashboard_connections.TestDashboardConnections.test_external_link_count', 'frappe.tests.test_dashboard_connections.TestDashboardConnections.test_internal_link_count', 'frappe.tests.test_db.TestDB.test_bulk_insert', 'frappe.tests.test_db.TestDB.test_bulk_update', 'frappe.tests.test_rename_doc.TestRenameDoc', 'frappe.tests.test_virtual_doctype.TestVirtualDoctypes', '', '', '', 'frappe.tests.test_commands.TestBackups.test_backup_extract_restore', 'frappe.tests.test_commands.TestBackups.test_old_backup_restore', 'frappe.tests.test_commands.TestBenchBuild.test_build_assets_size_check', 'frappe.tests.test_commands.TestCommands.test_partial_restore', 'frappe.tests.test_commands.TestDBUtils.test_db_add_index', 'frappe.core.doctype.activity_log.test_activity_log.TestActivityLog.test_brute_security', 'frappe.gettext.test_translate.TestTranslate.test_generate_pot', 'frappe.gettext.test_translate.TestTranslate.test_gitignore', 'frappe.gettext.test_translate.TestTranslate.test_new_po', 'frappe.gettext.test_translate.TestTranslate.test_write_binary', 'frappe.gettext.test_translate.TestTranslate.test_write_catalog', 'frappe.tests.test_rename_doc.TestRenameDoc', 'frappe.tests.test_virtual_doctype.TestVirtualDoctypes', 'frappe.core.doctype.file.test_file.TestFile.test_make_thumbnail', 'frappe.core.doctype.translation.test_translation.TestTranslation.test_multi_language_translations', 'frappe.gettext.test_translate.TestTranslate.test_get_method_map', 'frappe.core.doctype.rq_job.test_rq_job.TestRQJob.test_clear_failed_jobs', 'frappe.core.doctype.rq_job.test_rq_job.TestRQJob.test_get_list_filtering', 'frappe.core.doctype.submission_queue.test_submission_queue.TestSubmissionQueue.test_queue_operation', 'frappe.tests.test_background_jobs.TestBackgroundJobs.test_remove_failed_jobs', 'frappe.core.doctype.rq_job.test_rq_job.TestRQJob.test_multi_queue_burst_consumption', 'frappe.tests.test_query_report.TestQueryReport.test_export_report_via_email', 'frappe.tests.test_reportview.TestReportview.test_export_report_via_email', 'frappe.tests.test_seen.TestSeen.test_if_user_is_added', 'frappe.tests.test_commands.TestCommands.test_get_bench_relative_path', 'frappe.tests.test_commands.TestBackups.test_backup_no_options', 'frappe.tests.test_client.TestClient.test_run_doc_method', 'frappe.desk.doctype.bulk_update.test_bulk_update.TestBulkUpdate.test_bulk_submit_in_background', 'frappe.core.doctype.rq_job.test_rq_job.TestRQJob.test_multi_queue_burst_consumption_worker_pool', 'frappe.tests.test_safe_exec.TestNoSafeExec.test_safe_exec_disabled_by_default', 'frappe.tests.test_commands.TestBackups.test_backup_excluding_specific_doctypes', 'frappe.core.doctype.rq_job.test_rq_job.TestRQJob.test_serialization', 'frappe.core.doctype.rq_worker.test_rq_worker.TestRQWorker.test_get_worker_list', 'frappe.tests.test_perf.TestPerformance.test_req_per_seconds_basic', 'frappe.integrations.doctype.connected_app.test_connected_app.TestConnectedApp.test_web_application_flow', 'frappe.tests.test_model_utils.TestModelUtils.test_get_permitted_fields', 'frappe.core.doctype.rq_job.test_rq_job.TestRQJob.test_memory_usage']
    #     test_id = 'frappe.tests.test_recorder.TestRecorder.test_duplicate_queries'
    #     var = 'SKIP_TESTS'
    #   File "/nix/store/r8p9shg1i98fya6bgqi8bfj02jgkm6jz-python3-3.14.7-env/lib/python3.14/site-packages/frappe/tests/test_recorder.py", line 19, in setUp
    #     self.wait_for_background_jobs()
    #     ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^^
    #     self = <frappe.tests.test_recorder.TestRecorder testMethod=test_duplicate_queries>
    #   File "/nix/store/r8p9shg1i98fya6bgqi8bfj02jgkm6jz-python3-3.14.7-env/lib/python3.14/site-packages/frappe/tests/utils.py", line 368, in wrapper
    #     result = func(*args, **kwargs)
    #     _handle_timeout = <function timeout.<locals>.decorator.<locals>._handle_timeout at 0x7fffb953b7f0>
    #     actual_timeout = 30
    #     args = (<frappe.tests.test_recorder.TestRecorder testMethod=test_duplicate_queries>,)
    #     func = <function TestRecorder.wait_for_background_jobs at 0x7fffb94da400>
    #     kwargs = {}
    #   File "/nix/store/r8p9shg1i98fya6bgqi8bfj02jgkm6jz-python3-3.14.7-env/lib/python3.14/site-packages/frappe/tests/test_recorder.py", line 29, in wait_for_background_jobs
    #     time.sleep(1)
    #     ~~~~~~~~~~^^^
    #     self = <frappe.tests.test_recorder.TestRecorder testMethod=test_duplicate_queries>
    #   File "/nix/store/r8p9shg1i98fya6bgqi8bfj02jgkm6jz-python3-3.14.7-env/lib/python3.14/site-packages/frappe/tests/utils.py", line 362, in _handle_timeout
    #     raise Exception(actual_error_message)
    #     actual_error_message = 'Test timed out'
    #     frame = <frame at 0x7fffcbfee5a0, file '/nix/store/r8p9shg1i98fya6bgqi8bfj02jgkm6jz-python3-3.14.7-env/lib/python3.14/site-packages/frappe/tests/test_recorder.py', line 29, code wait_for_background_jobs>
    #     signum = 14
    # Exception: Test timed out
  }
  {
    id = "frappe.tests.test_recorder.TestRecorder.test_error_page_rendering";
    # Traceback (most recent call last):
    #   File "/nix/store/r8p9shg1i98fya6bgqi8bfj02jgkm6jz-python3-3.14.7-env/lib/python3.14/site-packages/frappe/tests/utils.py", line 58, in wrapped
    #     original(self)
    #     ~~~~~~~~^^^^^^
    #     original = <function TestRecorder.setUp at 0x7fffb94d9fe0>
    #     self = <frappe.tests.test_recorder.TestRecorder testMethod=test_error_page_rendering>
    #     skip_ids = ['frappe.tests.test_rename_doc.TestRenameDoc', 'frappe.tests.test_virtual_doctype.TestVirtualDoctypes', 'frappe.tests.test_email.TestEmailIntegrationTest.test_send_email', 'frappe.tests.test_email.TestEmailIntegrationTest.test_store_attachments', 'frappe.tests.test_rename_doc.TestRenameDoc', 'frappe.tests.test_translate.TestTranslate.test_python_extractor', 'frappe.tests.test_utils.TestAppParser.test_app_name_parser', 'frappe.tests.test_virtual_doctype.TestVirtualDoctypes', 'frappe.tests.test_search.TestSearch.test_doctype_search_in_foreign_language', 'frappe.tests.test_search.TestSearch.test_link_search_in_foreign_language', 'frappe.tests.test_translate.TestTranslate.test_read_language_variant', 'frappe.tests.test_translate.TestTranslate.test_translation_with_context', 'frappe.tests.test_utils.TestChangeLog.test_get_remote_url', 'frappe.tests.test_website.TestWebsite.test_static_page', 'frappe.email.test_smtp.TestSMTP.test_smtp_ssl_session', 'frappe.email.test_smtp.TestSMTP.test_smtp_tls_session', 'frappe.tests.test_commands.TestCommands.test_restore', 'frappe.tests.test_commands.TestRemoveApp.test_delete_modules', '', 'frappe.tests.test_dashboard_connections.TestDashboardConnections.test_external_doctype_link_with_dashboard_override', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'frappe.tests.test_dashboard_connections.TestDashboardConnections.test_external_link_count', 'frappe.tests.test_dashboard_connections.TestDashboardConnections.test_internal_link_count', 'frappe.tests.test_db.TestDB.test_bulk_insert', 'frappe.tests.test_db.TestDB.test_bulk_update', 'frappe.tests.test_rename_doc.TestRenameDoc', 'frappe.tests.test_virtual_doctype.TestVirtualDoctypes', '', '', '', 'frappe.tests.test_commands.TestBackups.test_backup_extract_restore', 'frappe.tests.test_commands.TestBackups.test_old_backup_restore', 'frappe.tests.test_commands.TestBenchBuild.test_build_assets_size_check', 'frappe.tests.test_commands.TestCommands.test_partial_restore', 'frappe.tests.test_commands.TestDBUtils.test_db_add_index', 'frappe.core.doctype.activity_log.test_activity_log.TestActivityLog.test_brute_security', 'frappe.gettext.test_translate.TestTranslate.test_generate_pot', 'frappe.gettext.test_translate.TestTranslate.test_gitignore', 'frappe.gettext.test_translate.TestTranslate.test_new_po', 'frappe.gettext.test_translate.TestTranslate.test_write_binary', 'frappe.gettext.test_translate.TestTranslate.test_write_catalog', 'frappe.tests.test_rename_doc.TestRenameDoc', 'frappe.tests.test_virtual_doctype.TestVirtualDoctypes', 'frappe.core.doctype.file.test_file.TestFile.test_make_thumbnail', 'frappe.core.doctype.translation.test_translation.TestTranslation.test_multi_language_translations', 'frappe.gettext.test_translate.TestTranslate.test_get_method_map', 'frappe.core.doctype.rq_job.test_rq_job.TestRQJob.test_clear_failed_jobs', 'frappe.core.doctype.rq_job.test_rq_job.TestRQJob.test_get_list_filtering', 'frappe.core.doctype.submission_queue.test_submission_queue.TestSubmissionQueue.test_queue_operation', 'frappe.tests.test_background_jobs.TestBackgroundJobs.test_remove_failed_jobs', 'frappe.core.doctype.rq_job.test_rq_job.TestRQJob.test_multi_queue_burst_consumption', 'frappe.tests.test_query_report.TestQueryReport.test_export_report_via_email', 'frappe.tests.test_reportview.TestReportview.test_export_report_via_email', 'frappe.tests.test_seen.TestSeen.test_if_user_is_added', 'frappe.tests.test_commands.TestCommands.test_get_bench_relative_path', 'frappe.tests.test_commands.TestBackups.test_backup_no_options', 'frappe.tests.test_client.TestClient.test_run_doc_method', 'frappe.desk.doctype.bulk_update.test_bulk_update.TestBulkUpdate.test_bulk_submit_in_background', 'frappe.core.doctype.rq_job.test_rq_job.TestRQJob.test_multi_queue_burst_consumption_worker_pool', 'frappe.tests.test_safe_exec.TestNoSafeExec.test_safe_exec_disabled_by_default', 'frappe.tests.test_commands.TestBackups.test_backup_excluding_specific_doctypes', 'frappe.core.doctype.rq_job.test_rq_job.TestRQJob.test_serialization', 'frappe.core.doctype.rq_worker.test_rq_worker.TestRQWorker.test_get_worker_list', 'frappe.tests.test_perf.TestPerformance.test_req_per_seconds_basic', 'frappe.integrations.doctype.connected_app.test_connected_app.TestConnectedApp.test_web_application_flow', 'frappe.tests.test_model_utils.TestModelUtils.test_get_permitted_fields', 'frappe.core.doctype.rq_job.test_rq_job.TestRQJob.test_memory_usage']
    #     test_id = 'frappe.tests.test_recorder.TestRecorder.test_error_page_rendering'
    #     var = 'SKIP_TESTS'
    #   File "/nix/store/r8p9shg1i98fya6bgqi8bfj02jgkm6jz-python3-3.14.7-env/lib/python3.14/site-packages/frappe/tests/test_recorder.py", line 19, in setUp
    #     self.wait_for_background_jobs()
    #     ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^^
    #     self = <frappe.tests.test_recorder.TestRecorder testMethod=test_error_page_rendering>
    #   File "/nix/store/r8p9shg1i98fya6bgqi8bfj02jgkm6jz-python3-3.14.7-env/lib/python3.14/site-packages/frappe/tests/utils.py", line 368, in wrapper
    #     result = func(*args, **kwargs)
    #     _handle_timeout = <function timeout.<locals>.decorator.<locals>._handle_timeout at 0x7fffb953b7f0>
    #     actual_timeout = 30
    #     args = (<frappe.tests.test_recorder.TestRecorder testMethod=test_error_page_rendering>,)
    #     func = <function TestRecorder.wait_for_background_jobs at 0x7fffb94da400>
    #     kwargs = {}
    #   File "/nix/store/r8p9shg1i98fya6bgqi8bfj02jgkm6jz-python3-3.14.7-env/lib/python3.14/site-packages/frappe/tests/test_recorder.py", line 29, in wait_for_background_jobs
    #     time.sleep(1)
    #     ~~~~~~~~~~^^^
    #     self = <frappe.tests.test_recorder.TestRecorder testMethod=test_error_page_rendering>
    #   File "/nix/store/r8p9shg1i98fya6bgqi8bfj02jgkm6jz-python3-3.14.7-env/lib/python3.14/site-packages/frappe/tests/utils.py", line 362, in _handle_timeout
    #     raise Exception(actual_error_message)
    #     actual_error_message = 'Test timed out'
    #     frame = <frame at 0x7fffcbfee5a0, file '/nix/store/r8p9shg1i98fya6bgqi8bfj02jgkm6jz-python3-3.14.7-env/lib/python3.14/site-packages/frappe/tests/test_recorder.py', line 29, code wait_for_background_jobs>
    #     signum = 14
    # Exception: Test timed out
  }
  {
    id = "frappe.tests.test_recorder.TestRecorder.test_explain";
    # Traceback (most recent call last):
    #   File "/nix/store/r8p9shg1i98fya6bgqi8bfj02jgkm6jz-python3-3.14.7-env/lib/python3.14/site-packages/frappe/tests/utils.py", line 58, in wrapped
    #     original(self)
    #     ~~~~~~~~^^^^^^
    #     original = <function TestRecorder.setUp at 0x7fffb94d9fe0>
    #     self = <frappe.tests.test_recorder.TestRecorder testMethod=test_explain>
    #     skip_ids = ['frappe.tests.test_rename_doc.TestRenameDoc', 'frappe.tests.test_virtual_doctype.TestVirtualDoctypes', 'frappe.tests.test_email.TestEmailIntegrationTest.test_send_email', 'frappe.tests.test_email.TestEmailIntegrationTest.test_store_attachments', 'frappe.tests.test_rename_doc.TestRenameDoc', 'frappe.tests.test_translate.TestTranslate.test_python_extractor', 'frappe.tests.test_utils.TestAppParser.test_app_name_parser', 'frappe.tests.test_virtual_doctype.TestVirtualDoctypes', 'frappe.tests.test_search.TestSearch.test_doctype_search_in_foreign_language', 'frappe.tests.test_search.TestSearch.test_link_search_in_foreign_language', 'frappe.tests.test_translate.TestTranslate.test_read_language_variant', 'frappe.tests.test_translate.TestTranslate.test_translation_with_context', 'frappe.tests.test_utils.TestChangeLog.test_get_remote_url', 'frappe.tests.test_website.TestWebsite.test_static_page', 'frappe.email.test_smtp.TestSMTP.test_smtp_ssl_session', 'frappe.email.test_smtp.TestSMTP.test_smtp_tls_session', 'frappe.tests.test_commands.TestCommands.test_restore', 'frappe.tests.test_commands.TestRemoveApp.test_delete_modules', '', 'frappe.tests.test_dashboard_connections.TestDashboardConnections.test_external_doctype_link_with_dashboard_override', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'frappe.tests.test_dashboard_connections.TestDashboardConnections.test_external_link_count', 'frappe.tests.test_dashboard_connections.TestDashboardConnections.test_internal_link_count', 'frappe.tests.test_db.TestDB.test_bulk_insert', 'frappe.tests.test_db.TestDB.test_bulk_update', 'frappe.tests.test_rename_doc.TestRenameDoc', 'frappe.tests.test_virtual_doctype.TestVirtualDoctypes', '', '', '', 'frappe.tests.test_commands.TestBackups.test_backup_extract_restore', 'frappe.tests.test_commands.TestBackups.test_old_backup_restore', 'frappe.tests.test_commands.TestBenchBuild.test_build_assets_size_check', 'frappe.tests.test_commands.TestCommands.test_partial_restore', 'frappe.tests.test_commands.TestDBUtils.test_db_add_index', 'frappe.core.doctype.activity_log.test_activity_log.TestActivityLog.test_brute_security', 'frappe.gettext.test_translate.TestTranslate.test_generate_pot', 'frappe.gettext.test_translate.TestTranslate.test_gitignore', 'frappe.gettext.test_translate.TestTranslate.test_new_po', 'frappe.gettext.test_translate.TestTranslate.test_write_binary', 'frappe.gettext.test_translate.TestTranslate.test_write_catalog', 'frappe.tests.test_rename_doc.TestRenameDoc', 'frappe.tests.test_virtual_doctype.TestVirtualDoctypes', 'frappe.core.doctype.file.test_file.TestFile.test_make_thumbnail', 'frappe.core.doctype.translation.test_translation.TestTranslation.test_multi_language_translations', 'frappe.gettext.test_translate.TestTranslate.test_get_method_map', 'frappe.core.doctype.rq_job.test_rq_job.TestRQJob.test_clear_failed_jobs', 'frappe.core.doctype.rq_job.test_rq_job.TestRQJob.test_get_list_filtering', 'frappe.core.doctype.submission_queue.test_submission_queue.TestSubmissionQueue.test_queue_operation', 'frappe.tests.test_background_jobs.TestBackgroundJobs.test_remove_failed_jobs', 'frappe.core.doctype.rq_job.test_rq_job.TestRQJob.test_multi_queue_burst_consumption', 'frappe.tests.test_query_report.TestQueryReport.test_export_report_via_email', 'frappe.tests.test_reportview.TestReportview.test_export_report_via_email', 'frappe.tests.test_seen.TestSeen.test_if_user_is_added', 'frappe.tests.test_commands.TestCommands.test_get_bench_relative_path', 'frappe.tests.test_commands.TestBackups.test_backup_no_options', 'frappe.tests.test_client.TestClient.test_run_doc_method', 'frappe.desk.doctype.bulk_update.test_bulk_update.TestBulkUpdate.test_bulk_submit_in_background', 'frappe.core.doctype.rq_job.test_rq_job.TestRQJob.test_multi_queue_burst_consumption_worker_pool', 'frappe.tests.test_safe_exec.TestNoSafeExec.test_safe_exec_disabled_by_default', 'frappe.tests.test_commands.TestBackups.test_backup_excluding_specific_doctypes', 'frappe.core.doctype.rq_job.test_rq_job.TestRQJob.test_serialization', 'frappe.core.doctype.rq_worker.test_rq_worker.TestRQWorker.test_get_worker_list', 'frappe.tests.test_perf.TestPerformance.test_req_per_seconds_basic', 'frappe.integrations.doctype.connected_app.test_connected_app.TestConnectedApp.test_web_application_flow', 'frappe.tests.test_model_utils.TestModelUtils.test_get_permitted_fields', 'frappe.core.doctype.rq_job.test_rq_job.TestRQJob.test_memory_usage']
    #     test_id = 'frappe.tests.test_recorder.TestRecorder.test_explain'
    #     var = 'SKIP_TESTS'
    #   File "/nix/store/r8p9shg1i98fya6bgqi8bfj02jgkm6jz-python3-3.14.7-env/lib/python3.14/site-packages/frappe/tests/test_recorder.py", line 19, in setUp
    #     self.wait_for_background_jobs()
    #     ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^^
    #     self = <frappe.tests.test_recorder.TestRecorder testMethod=test_explain>
    #   File "/nix/store/r8p9shg1i98fya6bgqi8bfj02jgkm6jz-python3-3.14.7-env/lib/python3.14/site-packages/frappe/tests/utils.py", line 368, in wrapper
    #     result = func(*args, **kwargs)
    #     _handle_timeout = <function timeout.<locals>.decorator.<locals>._handle_timeout at 0x7fffb953b7f0>
    #     actual_timeout = 30
    #     args = (<frappe.tests.test_recorder.TestRecorder testMethod=test_explain>,)
    #     func = <function TestRecorder.wait_for_background_jobs at 0x7fffb94da400>
    #     kwargs = {}
    #   File "/nix/store/r8p9shg1i98fya6bgqi8bfj02jgkm6jz-python3-3.14.7-env/lib/python3.14/site-packages/frappe/tests/test_recorder.py", line 29, in wait_for_background_jobs
    #     time.sleep(1)
    #     ~~~~~~~~~~^^^
    #     self = <frappe.tests.test_recorder.TestRecorder testMethod=test_explain>
    #   File "/nix/store/r8p9shg1i98fya6bgqi8bfj02jgkm6jz-python3-3.14.7-env/lib/python3.14/site-packages/frappe/tests/utils.py", line 362, in _handle_timeout
    #     raise Exception(actual_error_message)
    #     actual_error_message = 'Test timed out'
    #     frame = <frame at 0x7fffcbfee5a0, file '/nix/store/r8p9shg1i98fya6bgqi8bfj02jgkm6jz-python3-3.14.7-env/lib/python3.14/site-packages/frappe/tests/test_recorder.py', line 29, code wait_for_background_jobs>
    #     signum = 14
    # Exception: Test timed out
  }
  {
    id = "frappe.tests.test_recorder.TestRecorder.test_get";
    # Traceback (most recent call last):
    #   File "/nix/store/r8p9shg1i98fya6bgqi8bfj02jgkm6jz-python3-3.14.7-env/lib/python3.14/site-packages/frappe/tests/utils.py", line 58, in wrapped
    #     original(self)
    #     ~~~~~~~~^^^^^^
    #     original = <function TestRecorder.setUp at 0x7fffb94d9fe0>
    #     self = <frappe.tests.test_recorder.TestRecorder testMethod=test_get>
    #     skip_ids = ['frappe.tests.test_rename_doc.TestRenameDoc', 'frappe.tests.test_virtual_doctype.TestVirtualDoctypes', 'frappe.tests.test_email.TestEmailIntegrationTest.test_send_email', 'frappe.tests.test_email.TestEmailIntegrationTest.test_store_attachments', 'frappe.tests.test_rename_doc.TestRenameDoc', 'frappe.tests.test_translate.TestTranslate.test_python_extractor', 'frappe.tests.test_utils.TestAppParser.test_app_name_parser', 'frappe.tests.test_virtual_doctype.TestVirtualDoctypes', 'frappe.tests.test_search.TestSearch.test_doctype_search_in_foreign_language', 'frappe.tests.test_search.TestSearch.test_link_search_in_foreign_language', 'frappe.tests.test_translate.TestTranslate.test_read_language_variant', 'frappe.tests.test_translate.TestTranslate.test_translation_with_context', 'frappe.tests.test_utils.TestChangeLog.test_get_remote_url', 'frappe.tests.test_website.TestWebsite.test_static_page', 'frappe.email.test_smtp.TestSMTP.test_smtp_ssl_session', 'frappe.email.test_smtp.TestSMTP.test_smtp_tls_session', 'frappe.tests.test_commands.TestCommands.test_restore', 'frappe.tests.test_commands.TestRemoveApp.test_delete_modules', '', 'frappe.tests.test_dashboard_connections.TestDashboardConnections.test_external_doctype_link_with_dashboard_override', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'frappe.tests.test_dashboard_connections.TestDashboardConnections.test_external_link_count', 'frappe.tests.test_dashboard_connections.TestDashboardConnections.test_internal_link_count', 'frappe.tests.test_db.TestDB.test_bulk_insert', 'frappe.tests.test_db.TestDB.test_bulk_update', 'frappe.tests.test_rename_doc.TestRenameDoc', 'frappe.tests.test_virtual_doctype.TestVirtualDoctypes', '', '', '', 'frappe.tests.test_commands.TestBackups.test_backup_extract_restore', 'frappe.tests.test_commands.TestBackups.test_old_backup_restore', 'frappe.tests.test_commands.TestBenchBuild.test_build_assets_size_check', 'frappe.tests.test_commands.TestCommands.test_partial_restore', 'frappe.tests.test_commands.TestDBUtils.test_db_add_index', 'frappe.core.doctype.activity_log.test_activity_log.TestActivityLog.test_brute_security', 'frappe.gettext.test_translate.TestTranslate.test_generate_pot', 'frappe.gettext.test_translate.TestTranslate.test_gitignore', 'frappe.gettext.test_translate.TestTranslate.test_new_po', 'frappe.gettext.test_translate.TestTranslate.test_write_binary', 'frappe.gettext.test_translate.TestTranslate.test_write_catalog', 'frappe.tests.test_rename_doc.TestRenameDoc', 'frappe.tests.test_virtual_doctype.TestVirtualDoctypes', 'frappe.core.doctype.file.test_file.TestFile.test_make_thumbnail', 'frappe.core.doctype.translation.test_translation.TestTranslation.test_multi_language_translations', 'frappe.gettext.test_translate.TestTranslate.test_get_method_map', 'frappe.core.doctype.rq_job.test_rq_job.TestRQJob.test_clear_failed_jobs', 'frappe.core.doctype.rq_job.test_rq_job.TestRQJob.test_get_list_filtering', 'frappe.core.doctype.submission_queue.test_submission_queue.TestSubmissionQueue.test_queue_operation', 'frappe.tests.test_background_jobs.TestBackgroundJobs.test_remove_failed_jobs', 'frappe.core.doctype.rq_job.test_rq_job.TestRQJob.test_multi_queue_burst_consumption', 'frappe.tests.test_query_report.TestQueryReport.test_export_report_via_email', 'frappe.tests.test_reportview.TestReportview.test_export_report_via_email', 'frappe.tests.test_seen.TestSeen.test_if_user_is_added', 'frappe.tests.test_commands.TestCommands.test_get_bench_relative_path', 'frappe.tests.test_commands.TestBackups.test_backup_no_options', 'frappe.tests.test_client.TestClient.test_run_doc_method', 'frappe.desk.doctype.bulk_update.test_bulk_update.TestBulkUpdate.test_bulk_submit_in_background', 'frappe.core.doctype.rq_job.test_rq_job.TestRQJob.test_multi_queue_burst_consumption_worker_pool', 'frappe.tests.test_safe_exec.TestNoSafeExec.test_safe_exec_disabled_by_default', 'frappe.tests.test_commands.TestBackups.test_backup_excluding_specific_doctypes', 'frappe.core.doctype.rq_job.test_rq_job.TestRQJob.test_serialization', 'frappe.core.doctype.rq_worker.test_rq_worker.TestRQWorker.test_get_worker_list', 'frappe.tests.test_perf.TestPerformance.test_req_per_seconds_basic', 'frappe.integrations.doctype.connected_app.test_connected_app.TestConnectedApp.test_web_application_flow', 'frappe.tests.test_model_utils.TestModelUtils.test_get_permitted_fields', 'frappe.core.doctype.rq_job.test_rq_job.TestRQJob.test_memory_usage']
    #     test_id = 'frappe.tests.test_recorder.TestRecorder.test_get'
    #     var = 'SKIP_TESTS'
    #   File "/nix/store/r8p9shg1i98fya6bgqi8bfj02jgkm6jz-python3-3.14.7-env/lib/python3.14/site-packages/frappe/tests/test_recorder.py", line 19, in setUp
    #     self.wait_for_background_jobs()
    #     ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^^
    #     self = <frappe.tests.test_recorder.TestRecorder testMethod=test_get>
    #   File "/nix/store/r8p9shg1i98fya6bgqi8bfj02jgkm6jz-python3-3.14.7-env/lib/python3.14/site-packages/frappe/tests/utils.py", line 368, in wrapper
    #     result = func(*args, **kwargs)
    #     _handle_timeout = <function timeout.<locals>.decorator.<locals>._handle_timeout at 0x7fffb953b7f0>
    #     actual_timeout = 30
    #     args = (<frappe.tests.test_recorder.TestRecorder testMethod=test_get>,)
    #     func = <function TestRecorder.wait_for_background_jobs at 0x7fffb94da400>
    #     kwargs = {}
    #   File "/nix/store/r8p9shg1i98fya6bgqi8bfj02jgkm6jz-python3-3.14.7-env/lib/python3.14/site-packages/frappe/tests/test_recorder.py", line 29, in wait_for_background_jobs
    #     time.sleep(1)
    #     ~~~~~~~~~~^^^
    #     self = <frappe.tests.test_recorder.TestRecorder testMethod=test_get>
    #   File "/nix/store/r8p9shg1i98fya6bgqi8bfj02jgkm6jz-python3-3.14.7-env/lib/python3.14/site-packages/frappe/tests/utils.py", line 362, in _handle_timeout
    #     raise Exception(actual_error_message)
    #     actual_error_message = 'Test timed out'
    #     frame = <frame at 0x7fffcbfee5a0, file '/nix/store/r8p9shg1i98fya6bgqi8bfj02jgkm6jz-python3-3.14.7-env/lib/python3.14/site-packages/frappe/tests/test_recorder.py', line 29, code wait_for_background_jobs>
    #     signum = 14
    # Exception: Test timed out
  }
  {
    id = "frappe.tests.test_recorder.TestRecorder.test_multiple_queries";
    # Traceback (most recent call last):
    #   File "/nix/store/r8p9shg1i98fya6bgqi8bfj02jgkm6jz-python3-3.14.7-env/lib/python3.14/site-packages/frappe/tests/utils.py", line 58, in wrapped
    #     original(self)
    #     ~~~~~~~~^^^^^^
    #     original = <function TestRecorder.setUp at 0x7fffb94d9fe0>
    #     self = <frappe.tests.test_recorder.TestRecorder testMethod=test_multiple_queries>
    #     skip_ids = ['frappe.tests.test_rename_doc.TestRenameDoc', 'frappe.tests.test_virtual_doctype.TestVirtualDoctypes', 'frappe.tests.test_email.TestEmailIntegrationTest.test_send_email', 'frappe.tests.test_email.TestEmailIntegrationTest.test_store_attachments', 'frappe.tests.test_rename_doc.TestRenameDoc', 'frappe.tests.test_translate.TestTranslate.test_python_extractor', 'frappe.tests.test_utils.TestAppParser.test_app_name_parser', 'frappe.tests.test_virtual_doctype.TestVirtualDoctypes', 'frappe.tests.test_search.TestSearch.test_doctype_search_in_foreign_language', 'frappe.tests.test_search.TestSearch.test_link_search_in_foreign_language', 'frappe.tests.test_translate.TestTranslate.test_read_language_variant', 'frappe.tests.test_translate.TestTranslate.test_translation_with_context', 'frappe.tests.test_utils.TestChangeLog.test_get_remote_url', 'frappe.tests.test_website.TestWebsite.test_static_page', 'frappe.email.test_smtp.TestSMTP.test_smtp_ssl_session', 'frappe.email.test_smtp.TestSMTP.test_smtp_tls_session', 'frappe.tests.test_commands.TestCommands.test_restore', 'frappe.tests.test_commands.TestRemoveApp.test_delete_modules', '', 'frappe.tests.test_dashboard_connections.TestDashboardConnections.test_external_doctype_link_with_dashboard_override', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'frappe.tests.test_dashboard_connections.TestDashboardConnections.test_external_link_count', 'frappe.tests.test_dashboard_connections.TestDashboardConnections.test_internal_link_count', 'frappe.tests.test_db.TestDB.test_bulk_insert', 'frappe.tests.test_db.TestDB.test_bulk_update', 'frappe.tests.test_rename_doc.TestRenameDoc', 'frappe.tests.test_virtual_doctype.TestVirtualDoctypes', '', '', '', 'frappe.tests.test_commands.TestBackups.test_backup_extract_restore', 'frappe.tests.test_commands.TestBackups.test_old_backup_restore', 'frappe.tests.test_commands.TestBenchBuild.test_build_assets_size_check', 'frappe.tests.test_commands.TestCommands.test_partial_restore', 'frappe.tests.test_commands.TestDBUtils.test_db_add_index', 'frappe.core.doctype.activity_log.test_activity_log.TestActivityLog.test_brute_security', 'frappe.gettext.test_translate.TestTranslate.test_generate_pot', 'frappe.gettext.test_translate.TestTranslate.test_gitignore', 'frappe.gettext.test_translate.TestTranslate.test_new_po', 'frappe.gettext.test_translate.TestTranslate.test_write_binary', 'frappe.gettext.test_translate.TestTranslate.test_write_catalog', 'frappe.tests.test_rename_doc.TestRenameDoc', 'frappe.tests.test_virtual_doctype.TestVirtualDoctypes', 'frappe.core.doctype.file.test_file.TestFile.test_make_thumbnail', 'frappe.core.doctype.translation.test_translation.TestTranslation.test_multi_language_translations', 'frappe.gettext.test_translate.TestTranslate.test_get_method_map', 'frappe.core.doctype.rq_job.test_rq_job.TestRQJob.test_clear_failed_jobs', 'frappe.core.doctype.rq_job.test_rq_job.TestRQJob.test_get_list_filtering', 'frappe.core.doctype.submission_queue.test_submission_queue.TestSubmissionQueue.test_queue_operation', 'frappe.tests.test_background_jobs.TestBackgroundJobs.test_remove_failed_jobs', 'frappe.core.doctype.rq_job.test_rq_job.TestRQJob.test_multi_queue_burst_consumption', 'frappe.tests.test_query_report.TestQueryReport.test_export_report_via_email', 'frappe.tests.test_reportview.TestReportview.test_export_report_via_email', 'frappe.tests.test_seen.TestSeen.test_if_user_is_added', 'frappe.tests.test_commands.TestCommands.test_get_bench_relative_path', 'frappe.tests.test_commands.TestBackups.test_backup_no_options', 'frappe.tests.test_client.TestClient.test_run_doc_method', 'frappe.desk.doctype.bulk_update.test_bulk_update.TestBulkUpdate.test_bulk_submit_in_background', 'frappe.core.doctype.rq_job.test_rq_job.TestRQJob.test_multi_queue_burst_consumption_worker_pool', 'frappe.tests.test_safe_exec.TestNoSafeExec.test_safe_exec_disabled_by_default', 'frappe.tests.test_commands.TestBackups.test_backup_excluding_specific_doctypes', 'frappe.core.doctype.rq_job.test_rq_job.TestRQJob.test_serialization', 'frappe.core.doctype.rq_worker.test_rq_worker.TestRQWorker.test_get_worker_list', 'frappe.tests.test_perf.TestPerformance.test_req_per_seconds_basic', 'frappe.integrations.doctype.connected_app.test_connected_app.TestConnectedApp.test_web_application_flow', 'frappe.tests.test_model_utils.TestModelUtils.test_get_permitted_fields', 'frappe.core.doctype.rq_job.test_rq_job.TestRQJob.test_memory_usage']
    #     test_id = 'frappe.tests.test_recorder.TestRecorder.test_multiple_queries'
    #     var = 'SKIP_TESTS'
    #   File "/nix/store/r8p9shg1i98fya6bgqi8bfj02jgkm6jz-python3-3.14.7-env/lib/python3.14/site-packages/frappe/tests/test_recorder.py", line 19, in setUp
    #     self.wait_for_background_jobs()
    #     ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^^
    #     self = <frappe.tests.test_recorder.TestRecorder testMethod=test_multiple_queries>
    #   File "/nix/store/r8p9shg1i98fya6bgqi8bfj02jgkm6jz-python3-3.14.7-env/lib/python3.14/site-packages/frappe/tests/utils.py", line 368, in wrapper
    #     result = func(*args, **kwargs)
    #     _handle_timeout = <function timeout.<locals>.decorator.<locals>._handle_timeout at 0x7fffb953b7f0>
    #     actual_timeout = 30
    #     args = (<frappe.tests.test_recorder.TestRecorder testMethod=test_multiple_queries>,)
    #     func = <function TestRecorder.wait_for_background_jobs at 0x7fffb94da400>
    #     kwargs = {}
    #   File "/nix/store/r8p9shg1i98fya6bgqi8bfj02jgkm6jz-python3-3.14.7-env/lib/python3.14/site-packages/frappe/tests/test_recorder.py", line 29, in wait_for_background_jobs
    #     time.sleep(1)
    #     ~~~~~~~~~~^^^
    #     self = <frappe.tests.test_recorder.TestRecorder testMethod=test_multiple_queries>
    #   File "/nix/store/r8p9shg1i98fya6bgqi8bfj02jgkm6jz-python3-3.14.7-env/lib/python3.14/site-packages/frappe/tests/utils.py", line 362, in _handle_timeout
    #     raise Exception(actual_error_message)
    #     actual_error_message = 'Test timed out'
    #     frame = <frame at 0x7fffcbfee5a0, file '/nix/store/r8p9shg1i98fya6bgqi8bfj02jgkm6jz-python3-3.14.7-env/lib/python3.14/site-packages/frappe/tests/test_recorder.py', line 29, code wait_for_background_jobs>
    #     signum = 14
    # Exception: Test timed out
  }
  {
    id = "frappe.tests.test_recorder.TestRecorder.test_record_with_sql_queries";
    # Traceback (most recent call last):
    #   File "/nix/store/r8p9shg1i98fya6bgqi8bfj02jgkm6jz-python3-3.14.7-env/lib/python3.14/site-packages/frappe/tests/utils.py", line 58, in wrapped
    #     original(self)
    #     ~~~~~~~~^^^^^^
    #     original = <function TestRecorder.setUp at 0x7fffb94d9fe0>
    #     self = <frappe.tests.test_recorder.TestRecorder testMethod=test_record_with_sql_queries>
    #     skip_ids = ['frappe.tests.test_rename_doc.TestRenameDoc', 'frappe.tests.test_virtual_doctype.TestVirtualDoctypes', 'frappe.tests.test_email.TestEmailIntegrationTest.test_send_email', 'frappe.tests.test_email.TestEmailIntegrationTest.test_store_attachments', 'frappe.tests.test_rename_doc.TestRenameDoc', 'frappe.tests.test_translate.TestTranslate.test_python_extractor', 'frappe.tests.test_utils.TestAppParser.test_app_name_parser', 'frappe.tests.test_virtual_doctype.TestVirtualDoctypes', 'frappe.tests.test_search.TestSearch.test_doctype_search_in_foreign_language', 'frappe.tests.test_search.TestSearch.test_link_search_in_foreign_language', 'frappe.tests.test_translate.TestTranslate.test_read_language_variant', 'frappe.tests.test_translate.TestTranslate.test_translation_with_context', 'frappe.tests.test_utils.TestChangeLog.test_get_remote_url', 'frappe.tests.test_website.TestWebsite.test_static_page', 'frappe.email.test_smtp.TestSMTP.test_smtp_ssl_session', 'frappe.email.test_smtp.TestSMTP.test_smtp_tls_session', 'frappe.tests.test_commands.TestCommands.test_restore', 'frappe.tests.test_commands.TestRemoveApp.test_delete_modules', '', 'frappe.tests.test_dashboard_connections.TestDashboardConnections.test_external_doctype_link_with_dashboard_override', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'frappe.tests.test_dashboard_connections.TestDashboardConnections.test_external_link_count', 'frappe.tests.test_dashboard_connections.TestDashboardConnections.test_internal_link_count', 'frappe.tests.test_db.TestDB.test_bulk_insert', 'frappe.tests.test_db.TestDB.test_bulk_update', 'frappe.tests.test_rename_doc.TestRenameDoc', 'frappe.tests.test_virtual_doctype.TestVirtualDoctypes', '', '', '', 'frappe.tests.test_commands.TestBackups.test_backup_extract_restore', 'frappe.tests.test_commands.TestBackups.test_old_backup_restore', 'frappe.tests.test_commands.TestBenchBuild.test_build_assets_size_check', 'frappe.tests.test_commands.TestCommands.test_partial_restore', 'frappe.tests.test_commands.TestDBUtils.test_db_add_index', 'frappe.core.doctype.activity_log.test_activity_log.TestActivityLog.test_brute_security', 'frappe.gettext.test_translate.TestTranslate.test_generate_pot', 'frappe.gettext.test_translate.TestTranslate.test_gitignore', 'frappe.gettext.test_translate.TestTranslate.test_new_po', 'frappe.gettext.test_translate.TestTranslate.test_write_binary', 'frappe.gettext.test_translate.TestTranslate.test_write_catalog', 'frappe.tests.test_rename_doc.TestRenameDoc', 'frappe.tests.test_virtual_doctype.TestVirtualDoctypes', 'frappe.core.doctype.file.test_file.TestFile.test_make_thumbnail', 'frappe.core.doctype.translation.test_translation.TestTranslation.test_multi_language_translations', 'frappe.gettext.test_translate.TestTranslate.test_get_method_map', 'frappe.core.doctype.rq_job.test_rq_job.TestRQJob.test_clear_failed_jobs', 'frappe.core.doctype.rq_job.test_rq_job.TestRQJob.test_get_list_filtering', 'frappe.core.doctype.submission_queue.test_submission_queue.TestSubmissionQueue.test_queue_operation', 'frappe.tests.test_background_jobs.TestBackgroundJobs.test_remove_failed_jobs', 'frappe.core.doctype.rq_job.test_rq_job.TestRQJob.test_multi_queue_burst_consumption', 'frappe.tests.test_query_report.TestQueryReport.test_export_report_via_email', 'frappe.tests.test_reportview.TestReportview.test_export_report_via_email', 'frappe.tests.test_seen.TestSeen.test_if_user_is_added', 'frappe.tests.test_commands.TestCommands.test_get_bench_relative_path', 'frappe.tests.test_commands.TestBackups.test_backup_no_options', 'frappe.tests.test_client.TestClient.test_run_doc_method', 'frappe.desk.doctype.bulk_update.test_bulk_update.TestBulkUpdate.test_bulk_submit_in_background', 'frappe.core.doctype.rq_job.test_rq_job.TestRQJob.test_multi_queue_burst_consumption_worker_pool', 'frappe.tests.test_safe_exec.TestNoSafeExec.test_safe_exec_disabled_by_default', 'frappe.tests.test_commands.TestBackups.test_backup_excluding_specific_doctypes', 'frappe.core.doctype.rq_job.test_rq_job.TestRQJob.test_serialization', 'frappe.core.doctype.rq_worker.test_rq_worker.TestRQWorker.test_get_worker_list', 'frappe.tests.test_perf.TestPerformance.test_req_per_seconds_basic', 'frappe.integrations.doctype.connected_app.test_connected_app.TestConnectedApp.test_web_application_flow', 'frappe.tests.test_model_utils.TestModelUtils.test_get_permitted_fields', 'frappe.core.doctype.rq_job.test_rq_job.TestRQJob.test_memory_usage']
    #     test_id = 'frappe.tests.test_recorder.TestRecorder.test_record_with_sql_queries'
    #     var = 'SKIP_TESTS'
    #   File "/nix/store/r8p9shg1i98fya6bgqi8bfj02jgkm6jz-python3-3.14.7-env/lib/python3.14/site-packages/frappe/tests/test_recorder.py", line 19, in setUp
    #     self.wait_for_background_jobs()
    #     ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^^
    #     self = <frappe.tests.test_recorder.TestRecorder testMethod=test_record_with_sql_queries>
    #   File "/nix/store/r8p9shg1i98fya6bgqi8bfj02jgkm6jz-python3-3.14.7-env/lib/python3.14/site-packages/frappe/tests/utils.py", line 368, in wrapper
    #     result = func(*args, **kwargs)
    #     _handle_timeout = <function timeout.<locals>.decorator.<locals>._handle_timeout at 0x7fffb953b7f0>
    #     actual_timeout = 30
    #     args = (<frappe.tests.test_recorder.TestRecorder testMethod=test_record_with_sql_queries>,)
    #     func = <function TestRecorder.wait_for_background_jobs at 0x7fffb94da400>
    #     kwargs = {}
    #   File "/nix/store/r8p9shg1i98fya6bgqi8bfj02jgkm6jz-python3-3.14.7-env/lib/python3.14/site-packages/frappe/tests/test_recorder.py", line 29, in wait_for_background_jobs
    #     time.sleep(1)
    #     ~~~~~~~~~~^^^
    #     self = <frappe.tests.test_recorder.TestRecorder testMethod=test_record_with_sql_queries>
    #   File "/nix/store/r8p9shg1i98fya6bgqi8bfj02jgkm6jz-python3-3.14.7-env/lib/python3.14/site-packages/frappe/tests/utils.py", line 362, in _handle_timeout
    #     raise Exception(actual_error_message)
    #     actual_error_message = 'Test timed out'
    #     frame = <frame at 0x7fffcbfee5a0, file '/nix/store/r8p9shg1i98fya6bgqi8bfj02jgkm6jz-python3-3.14.7-env/lib/python3.14/site-packages/frappe/tests/test_recorder.py', line 29, code wait_for_background_jobs>
    #     signum = 14
    # Exception: Test timed out
  }
  {
    id = "frappe.tests.test_recorder.TestRecorder.test_record_without_sql_queries";
    # Traceback (most recent call last):
    #   File "/nix/store/r8p9shg1i98fya6bgqi8bfj02jgkm6jz-python3-3.14.7-env/lib/python3.14/site-packages/frappe/tests/utils.py", line 58, in wrapped
    #     original(self)
    #     ~~~~~~~~^^^^^^
    #     original = <function TestRecorder.setUp at 0x7fffb94d9fe0>
    #     self = <frappe.tests.test_recorder.TestRecorder testMethod=test_record_without_sql_queries>
    #     skip_ids = ['frappe.tests.test_rename_doc.TestRenameDoc', 'frappe.tests.test_virtual_doctype.TestVirtualDoctypes', 'frappe.tests.test_email.TestEmailIntegrationTest.test_send_email', 'frappe.tests.test_email.TestEmailIntegrationTest.test_store_attachments', 'frappe.tests.test_rename_doc.TestRenameDoc', 'frappe.tests.test_translate.TestTranslate.test_python_extractor', 'frappe.tests.test_utils.TestAppParser.test_app_name_parser', 'frappe.tests.test_virtual_doctype.TestVirtualDoctypes', 'frappe.tests.test_search.TestSearch.test_doctype_search_in_foreign_language', 'frappe.tests.test_search.TestSearch.test_link_search_in_foreign_language', 'frappe.tests.test_translate.TestTranslate.test_read_language_variant', 'frappe.tests.test_translate.TestTranslate.test_translation_with_context', 'frappe.tests.test_utils.TestChangeLog.test_get_remote_url', 'frappe.tests.test_website.TestWebsite.test_static_page', 'frappe.email.test_smtp.TestSMTP.test_smtp_ssl_session', 'frappe.email.test_smtp.TestSMTP.test_smtp_tls_session', 'frappe.tests.test_commands.TestCommands.test_restore', 'frappe.tests.test_commands.TestRemoveApp.test_delete_modules', '', 'frappe.tests.test_dashboard_connections.TestDashboardConnections.test_external_doctype_link_with_dashboard_override', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'frappe.tests.test_dashboard_connections.TestDashboardConnections.test_external_link_count', 'frappe.tests.test_dashboard_connections.TestDashboardConnections.test_internal_link_count', 'frappe.tests.test_db.TestDB.test_bulk_insert', 'frappe.tests.test_db.TestDB.test_bulk_update', 'frappe.tests.test_rename_doc.TestRenameDoc', 'frappe.tests.test_virtual_doctype.TestVirtualDoctypes', '', '', '', 'frappe.tests.test_commands.TestBackups.test_backup_extract_restore', 'frappe.tests.test_commands.TestBackups.test_old_backup_restore', 'frappe.tests.test_commands.TestBenchBuild.test_build_assets_size_check', 'frappe.tests.test_commands.TestCommands.test_partial_restore', 'frappe.tests.test_commands.TestDBUtils.test_db_add_index', 'frappe.core.doctype.activity_log.test_activity_log.TestActivityLog.test_brute_security', 'frappe.gettext.test_translate.TestTranslate.test_generate_pot', 'frappe.gettext.test_translate.TestTranslate.test_gitignore', 'frappe.gettext.test_translate.TestTranslate.test_new_po', 'frappe.gettext.test_translate.TestTranslate.test_write_binary', 'frappe.gettext.test_translate.TestTranslate.test_write_catalog', 'frappe.tests.test_rename_doc.TestRenameDoc', 'frappe.tests.test_virtual_doctype.TestVirtualDoctypes', 'frappe.core.doctype.file.test_file.TestFile.test_make_thumbnail', 'frappe.core.doctype.translation.test_translation.TestTranslation.test_multi_language_translations', 'frappe.gettext.test_translate.TestTranslate.test_get_method_map', 'frappe.core.doctype.rq_job.test_rq_job.TestRQJob.test_clear_failed_jobs', 'frappe.core.doctype.rq_job.test_rq_job.TestRQJob.test_get_list_filtering', 'frappe.core.doctype.submission_queue.test_submission_queue.TestSubmissionQueue.test_queue_operation', 'frappe.tests.test_background_jobs.TestBackgroundJobs.test_remove_failed_jobs', 'frappe.core.doctype.rq_job.test_rq_job.TestRQJob.test_multi_queue_burst_consumption', 'frappe.tests.test_query_report.TestQueryReport.test_export_report_via_email', 'frappe.tests.test_reportview.TestReportview.test_export_report_via_email', 'frappe.tests.test_seen.TestSeen.test_if_user_is_added', 'frappe.tests.test_commands.TestCommands.test_get_bench_relative_path', 'frappe.tests.test_commands.TestBackups.test_backup_no_options', 'frappe.tests.test_client.TestClient.test_run_doc_method', 'frappe.desk.doctype.bulk_update.test_bulk_update.TestBulkUpdate.test_bulk_submit_in_background', 'frappe.core.doctype.rq_job.test_rq_job.TestRQJob.test_multi_queue_burst_consumption_worker_pool', 'frappe.tests.test_safe_exec.TestNoSafeExec.test_safe_exec_disabled_by_default', 'frappe.tests.test_commands.TestBackups.test_backup_excluding_specific_doctypes', 'frappe.core.doctype.rq_job.test_rq_job.TestRQJob.test_serialization', 'frappe.core.doctype.rq_worker.test_rq_worker.TestRQWorker.test_get_worker_list', 'frappe.tests.test_perf.TestPerformance.test_req_per_seconds_basic', 'frappe.integrations.doctype.connected_app.test_connected_app.TestConnectedApp.test_web_application_flow', 'frappe.tests.test_model_utils.TestModelUtils.test_get_permitted_fields', 'frappe.core.doctype.rq_job.test_rq_job.TestRQJob.test_memory_usage']
    #     test_id = 'frappe.tests.test_recorder.TestRecorder.test_record_without_sql_queries'
    #     var = 'SKIP_TESTS'
    #   File "/nix/store/r8p9shg1i98fya6bgqi8bfj02jgkm6jz-python3-3.14.7-env/lib/python3.14/site-packages/frappe/tests/test_recorder.py", line 19, in setUp
    #     self.wait_for_background_jobs()
    #     ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^^
    #     self = <frappe.tests.test_recorder.TestRecorder testMethod=test_record_without_sql_queries>
    #   File "/nix/store/r8p9shg1i98fya6bgqi8bfj02jgkm6jz-python3-3.14.7-env/lib/python3.14/site-packages/frappe/tests/utils.py", line 368, in wrapper
    #     result = func(*args, **kwargs)
    #     _handle_timeout = <function timeout.<locals>.decorator.<locals>._handle_timeout at 0x7fffb953b7f0>
    #     actual_timeout = 30
    #     args = (<frappe.tests.test_recorder.TestRecorder testMethod=test_record_without_sql_queries>,)
    #     func = <function TestRecorder.wait_for_background_jobs at 0x7fffb94da400>
    #     kwargs = {}
    #   File "/nix/store/r8p9shg1i98fya6bgqi8bfj02jgkm6jz-python3-3.14.7-env/lib/python3.14/site-packages/frappe/tests/test_recorder.py", line 29, in wait_for_background_jobs
    #     time.sleep(1)
    #     ~~~~~~~~~~^^^
    #     self = <frappe.tests.test_recorder.TestRecorder testMethod=test_record_without_sql_queries>
    #   File "/nix/store/r8p9shg1i98fya6bgqi8bfj02jgkm6jz-python3-3.14.7-env/lib/python3.14/site-packages/frappe/tests/utils.py", line 362, in _handle_timeout
    #     raise Exception(actual_error_message)
    #     actual_error_message = 'Test timed out'
    #     frame = <frame at 0x7fffcbfee5a0, file '/nix/store/r8p9shg1i98fya6bgqi8bfj02jgkm6jz-python3-3.14.7-env/lib/python3.14/site-packages/frappe/tests/test_recorder.py', line 29, code wait_for_background_jobs>
    #     signum = 14
    # Exception: Test timed out
  }
  {
    id = "frappe.tests.test_recorder.TestRecorder.test_start";
    # Traceback (most recent call last):
    #   File "/nix/store/r8p9shg1i98fya6bgqi8bfj02jgkm6jz-python3-3.14.7-env/lib/python3.14/site-packages/frappe/tests/utils.py", line 58, in wrapped
    #     original(self)
    #     ~~~~~~~~^^^^^^
    #     original = <function TestRecorder.setUp at 0x7fffb94d9fe0>
    #     self = <frappe.tests.test_recorder.TestRecorder testMethod=test_start>
    #     skip_ids = ['frappe.tests.test_rename_doc.TestRenameDoc', 'frappe.tests.test_virtual_doctype.TestVirtualDoctypes', 'frappe.tests.test_email.TestEmailIntegrationTest.test_send_email', 'frappe.tests.test_email.TestEmailIntegrationTest.test_store_attachments', 'frappe.tests.test_rename_doc.TestRenameDoc', 'frappe.tests.test_translate.TestTranslate.test_python_extractor', 'frappe.tests.test_utils.TestAppParser.test_app_name_parser', 'frappe.tests.test_virtual_doctype.TestVirtualDoctypes', 'frappe.tests.test_search.TestSearch.test_doctype_search_in_foreign_language', 'frappe.tests.test_search.TestSearch.test_link_search_in_foreign_language', 'frappe.tests.test_translate.TestTranslate.test_read_language_variant', 'frappe.tests.test_translate.TestTranslate.test_translation_with_context', 'frappe.tests.test_utils.TestChangeLog.test_get_remote_url', 'frappe.tests.test_website.TestWebsite.test_static_page', 'frappe.email.test_smtp.TestSMTP.test_smtp_ssl_session', 'frappe.email.test_smtp.TestSMTP.test_smtp_tls_session', 'frappe.tests.test_commands.TestCommands.test_restore', 'frappe.tests.test_commands.TestRemoveApp.test_delete_modules', '', 'frappe.tests.test_dashboard_connections.TestDashboardConnections.test_external_doctype_link_with_dashboard_override', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'frappe.tests.test_dashboard_connections.TestDashboardConnections.test_external_link_count', 'frappe.tests.test_dashboard_connections.TestDashboardConnections.test_internal_link_count', 'frappe.tests.test_db.TestDB.test_bulk_insert', 'frappe.tests.test_db.TestDB.test_bulk_update', 'frappe.tests.test_rename_doc.TestRenameDoc', 'frappe.tests.test_virtual_doctype.TestVirtualDoctypes', '', '', '', 'frappe.tests.test_commands.TestBackups.test_backup_extract_restore', 'frappe.tests.test_commands.TestBackups.test_old_backup_restore', 'frappe.tests.test_commands.TestBenchBuild.test_build_assets_size_check', 'frappe.tests.test_commands.TestCommands.test_partial_restore', 'frappe.tests.test_commands.TestDBUtils.test_db_add_index', 'frappe.core.doctype.activity_log.test_activity_log.TestActivityLog.test_brute_security', 'frappe.gettext.test_translate.TestTranslate.test_generate_pot', 'frappe.gettext.test_translate.TestTranslate.test_gitignore', 'frappe.gettext.test_translate.TestTranslate.test_new_po', 'frappe.gettext.test_translate.TestTranslate.test_write_binary', 'frappe.gettext.test_translate.TestTranslate.test_write_catalog', 'frappe.tests.test_rename_doc.TestRenameDoc', 'frappe.tests.test_virtual_doctype.TestVirtualDoctypes', 'frappe.core.doctype.file.test_file.TestFile.test_make_thumbnail', 'frappe.core.doctype.translation.test_translation.TestTranslation.test_multi_language_translations', 'frappe.gettext.test_translate.TestTranslate.test_get_method_map', 'frappe.core.doctype.rq_job.test_rq_job.TestRQJob.test_clear_failed_jobs', 'frappe.core.doctype.rq_job.test_rq_job.TestRQJob.test_get_list_filtering', 'frappe.core.doctype.submission_queue.test_submission_queue.TestSubmissionQueue.test_queue_operation', 'frappe.tests.test_background_jobs.TestBackgroundJobs.test_remove_failed_jobs', 'frappe.core.doctype.rq_job.test_rq_job.TestRQJob.test_multi_queue_burst_consumption', 'frappe.tests.test_query_report.TestQueryReport.test_export_report_via_email', 'frappe.tests.test_reportview.TestReportview.test_export_report_via_email', 'frappe.tests.test_seen.TestSeen.test_if_user_is_added', 'frappe.tests.test_commands.TestCommands.test_get_bench_relative_path', 'frappe.tests.test_commands.TestBackups.test_backup_no_options', 'frappe.tests.test_client.TestClient.test_run_doc_method', 'frappe.desk.doctype.bulk_update.test_bulk_update.TestBulkUpdate.test_bulk_submit_in_background', 'frappe.core.doctype.rq_job.test_rq_job.TestRQJob.test_multi_queue_burst_consumption_worker_pool', 'frappe.tests.test_safe_exec.TestNoSafeExec.test_safe_exec_disabled_by_default', 'frappe.tests.test_commands.TestBackups.test_backup_excluding_specific_doctypes', 'frappe.core.doctype.rq_job.test_rq_job.TestRQJob.test_serialization', 'frappe.core.doctype.rq_worker.test_rq_worker.TestRQWorker.test_get_worker_list', 'frappe.tests.test_perf.TestPerformance.test_req_per_seconds_basic', 'frappe.integrations.doctype.connected_app.test_connected_app.TestConnectedApp.test_web_application_flow', 'frappe.tests.test_model_utils.TestModelUtils.test_get_permitted_fields', 'frappe.core.doctype.rq_job.test_rq_job.TestRQJob.test_memory_usage']
    #     test_id = 'frappe.tests.test_recorder.TestRecorder.test_start'
    #     var = 'SKIP_TESTS'
    #   File "/nix/store/r8p9shg1i98fya6bgqi8bfj02jgkm6jz-python3-3.14.7-env/lib/python3.14/site-packages/frappe/tests/test_recorder.py", line 19, in setUp
    #     self.wait_for_background_jobs()
    #     ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^^
    #     self = <frappe.tests.test_recorder.TestRecorder testMethod=test_start>
    #   File "/nix/store/r8p9shg1i98fya6bgqi8bfj02jgkm6jz-python3-3.14.7-env/lib/python3.14/site-packages/frappe/tests/utils.py", line 368, in wrapper
    #     result = func(*args, **kwargs)
    #     _handle_timeout = <function timeout.<locals>.decorator.<locals>._handle_timeout at 0x7fffb953b7f0>
    #     actual_timeout = 30
    #     args = (<frappe.tests.test_recorder.TestRecorder testMethod=test_start>,)
    #     func = <function TestRecorder.wait_for_background_jobs at 0x7fffb94da400>
    #     kwargs = {}
    #   File "/nix/store/r8p9shg1i98fya6bgqi8bfj02jgkm6jz-python3-3.14.7-env/lib/python3.14/site-packages/frappe/tests/test_recorder.py", line 29, in wait_for_background_jobs
    #     time.sleep(1)
    #     ~~~~~~~~~~^^^
    #     self = <frappe.tests.test_recorder.TestRecorder testMethod=test_start>
    #   File "/nix/store/r8p9shg1i98fya6bgqi8bfj02jgkm6jz-python3-3.14.7-env/lib/python3.14/site-packages/frappe/tests/utils.py", line 362, in _handle_timeout
    #     raise Exception(actual_error_message)
    #     actual_error_message = 'Test timed out'
    #     frame = <frame at 0x7fffcbfee5a0, file '/nix/store/r8p9shg1i98fya6bgqi8bfj02jgkm6jz-python3-3.14.7-env/lib/python3.14/site-packages/frappe/tests/test_recorder.py', line 29, code wait_for_background_jobs>
    #     signum = 14
    # Exception: Test timed out
  }
]
