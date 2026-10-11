"""Generate a fixed CURRENT reader from the audited original owner reader.

The original preparation and its capture stay immutable. CURRENT is kept in
separate retained query records and cannot be relabelled as original before.
"""
from pathlib import Path


def build():
    text = Path(__file__).with_name('bde_commit_persistent_owners.st').read_text(encoding='utf-8-sig')
    changes = (
        ('"Capture both actual persistent BDE owners before any model mutation."',
         '"Read CURRENT of the same two retained owners; original capture is never replaced."'),
        ('targets summary total |', 'targets summary total original queries |'),
        ("(edit at: 'state') = 'prepared'", "(#('prepared' 'started' 'applied' 'reverted') includes: (edit at: 'state'))"),
        ("  (material includesKey: 'persistentOwnerMaterial') ifTrue: [component error: 'Persistent owner capture cannot replay'].",
         "  original := material at: 'persistentOwnerMaterial'.\n"
         "  ((original at: 'phase') = 'captured' and: [(original at: 'resourceMaterial') == material and: [\n"
         "    (original at: 'preparedEdit') == edit]]) ifFalse: [component error: 'Exact original owner material required'].\n"
         "  queries := original at: 'currentQueries' ifAbsentPut: [OrderedCollection new].\n"
         "  queries size >= 32 ifTrue: [component error: 'Complete current owner query capacity reached; no eviction']."),
        ("  material at: 'persistentOwnerMaterial' put: capture.", "  queries add: capture."),
        ("  source := (root at: 'diagram') specification specSourceInternalOrNil.",
         "  source := (root at: 'diagram') specification specSourceInternalOrNil.\n"
         "  source == (original at: 'source') ifFalse: [component error: 'Original persistent source identity changed; no rebinding']."),
        ("    db := slot value: model value: 'dbObject'.",
         "    db := slot value: model value: 'dbObject'.\n"
         "    (model == ((original at: 'nativeOwners') at: index) first and: [\n"
         "      db == ((original at: 'nativeOwners') at: index) last])\n"
         "      ifFalse: [component error: 'Original persistent model/DBObject identity changed']."),
        ("'native_persistent_owners_capture_v1'", "'native_persistent_owners_current_summary_v1'"),
        ("'native_persistent_owners_records_v1'", "'native_persistent_owners_current_v1'"),
    )
    for old, new in changes:
        if text.count(old) != 1:
            raise ValueError('Audited owner-reader source drift: '+old)
        text = text.replace(old, new)
    return text


if __name__ == '__main__':
    path = Path(__file__).with_name('bde_commit_persistent_owners_current.st')
    path.write_text(build(), encoding='utf-8')
    print(path)
