import copy
import unittest
from bd_serializer_configuration import ConfigurationError, validate

def _d(kind, **kw): return {"kind": kind, **kw}
def _report():
    roles = {k: {"kind": "reference", "class": {"owner":"SGClass","source":"SGTopGraphicsBlockDB","serializer":"DBLinDeLin","swapper":"DBSwapperDumperLoader","dumper":"RBObjectDumper","loader":"RBObjectLoader"}[k], "ref": "z"+str(i)} for i,k in enumerate(("owner","source","serializer","swapper","dumper","loader"), 1)}
    fields = {k: {"class": roles[k]["class"], "names": [], "values": []} for k in roles}
    arr = lambda name: {"name": name, "kind":"array", "size":0, "items":[]}
    tab = lambda name: {"name": name, "kind":"table", "class":"IdentityDictionary", "count":0, "entries":[]}
    return {"profile":"native_serializer_configuration_v1", "nativeToken":"edit_"+"a"*64, "generation":1,
      "ownerClass":"SGClass", "sourceClass":"SGTopGraphicsBlockDB", "roles":roles, "fields":fields,
      "sourceRecordPreview":{"read_status":"record","record_class":"CTreeSearchObjectRecord","record_class_requested":"CTreeSearchObjectRecord",
        "fixed_size":130,"blob_size":0,"logical_size":130,"allocated_size":130,
        "global_id":[0]*20,"query_key":[0]*20,"actual_file_key":[0]*20,"bytes":[0]*130,"allocated_bytes":[0]*130},
      "dumperOmissions":{"classes":arr("a"),"indices":arr("b"),"classesForIndices":arr("c")},
      "classReplacementTable":tab("c"), "instVarReplacementTable":tab("i"), "identityReplacementTable":tab("id"),
      "loadingReplacement":{"relinkArray":arr("r"),"remappedClassReferences":tab("m"),"mutatedClasses":tab("u")},
      "omission_replacement_strategy_complete":True, "source_witness_held":True,
      "serialization_called":False,"store_called":False,"commit_called":False,"write_authorized":False,
      "inverse_authorized":False,"call_closure_complete":False,"serialization_authorized":False}

class SerializerConfigurationTests(unittest.TestCase):
  def test_valid_report_is_read_only(self):
    r = validate(_report()); self.assertTrue(r["valid"]); self.assertFalse(r["write_authorized"])

  def test_forbidden_true(self):
    for field in ("serialization_called","store_called","commit_called","write_authorized","inverse_authorized","serialization_authorized","call_closure_complete"):
      r = _report(); r[field] = True
      with self.assertRaises(ConfigurationError): validate(r)

  def test_rejects_bool_as_generation(self):
    r = _report(); r["generation"] = True
    with self.assertRaises(ConfigurationError): validate(r)

  def test_rejects_unknown_descriptor(self):
    r = _report(); r["fields"]["dumper"]["values"] = [_d("callback", ref="z9")]
    with self.assertRaises(ConfigurationError): validate(r)

  def test_rejects_raw_role_value(self):
    r = _report(); r["roles"]["source"] = "SGTopGraphicsBlockDB"
    with self.assertRaises(ConfigurationError): validate(r)

  def test_rejects_source_route(self):
    r = _report(); r["sourceClass"] = "SGClass"
    with self.assertRaises(ConfigurationError): validate(r)

  def test_rejects_omission_count_mismatch(self):
    r = _report(); r["dumperOmissions"]["classes"]["size"] = 1
    with self.assertRaises(ConfigurationError): validate(r)

if __name__ == "__main__":
  unittest.main()
