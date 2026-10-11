"""Build a bounded declaration image reader from the audited native image algorithm.

Only the object ownership policy changes. The graphical reader and its profiles
remain unchanged; the returned image is not an authorization to mutate models.
"""
from pathlib import Path


ROOT = Path(__file__).resolve().parent


def build():
    source = (ROOT / 'bde_native_graph_current.st').read_text(encoding='utf-8-sig')
    opening = '[:component :roots |'
    start = ' kindFor := [:value |'
    end = ' capture := [:anchors :images :bindings |'
    if source.count(opening) != 1 or source.count(start) != 1 or source.count(end) != 1:
        raise ValueError('Audited native image template boundary differs')
    policy = ''' kindFor := [:value | | name | name := value class name asString.
   (value isNil or: [value isNumber or: [(value isKindOf: Symbol) or: [value == true or: [value == false]]]])
     ifTrue: ['constant'] ifFalse: [
   (owned anySatisfy: [:object | object == value]) ifTrue: ['fields'] ifFalse: [
   ((value isKindOf: DBBaseObject) or: [(value isKindOf: DBProxy) or: [
     (value isKindOf: SGDBObject) or: [value isKindOf: SGAliasMethod]]]) ifTrue: ['boundary'] ifFalse: [
   (#('CgFont' 'CgDeviceIndependentImage' 'EtasIcon') includes: name) ifTrue: ['boundary'] ifFalse: [
   (value isString or: [value isKindOf: ByteArray]) ifTrue: ['value'] ifFalse: [
   (#('Array' 'OrderedCollection' 'Dictionary' 'IdentityDictionary' 'Set' 'IdentitySet') includes: name)
     ifTrue: ['collection'] ifFalse: [
   ((value isKindOf: RBGraphicObject) or: [(value isKindOf: RBGraphicObjectCollection) or: [
     #('LookupTable' 'Point' 'Rectangle' 'RBAreaStyle' 'RBLineStyle' 'CgRGBColor' 'RBConnectionPointBranch'
       'SGBdSpecification' 'SGMethod' 'SGAliasVariable' 'SGSelfClass' 'SGCodeArchive' 'SGMethodImplementation' 'ASDAdditionalImplInfo' 'SGExtraImplInfo'
       'RBArithmeticElement' 'RBDataEnumeration' 'RBDataBoolean' 'RBDataDescription'
       'RBBoundedLattice' 'RBInterval' 'RBTypedValue' 'RBBoolean' 'RBFloat' 'RBInt16Signed'
       'RBInt32Unsigned' 'RBInt32Signed' 'RBInt16Unsigned' 'RBInt8Unsigned' 'RBInt8Signed'
       'RBStringType' 'RBFormulaId' 'RBFormulaEnum' 'RBFormulaString' 'RBOneDCharTable'
       'RBTwoDCharTable' 'RBImplBoolean' 'RBDataVector' 'RBDataMatrix' 'RBDiscreteDistribution'
       'Infinity' 'RBBit' 'RBEnumeration' 'Vector' 'Matrix' 'SortedCollection' 'ASDEnumerationEntry') includes: name]])
     ifTrue: ['fields'] ifFalse: [component error: ('Unsupported declaration image class ', name)]]]]]]]
 ].
'''
    a, b = source.index(start), source.index(end)
    source = source[:a] + policy + source[b:]
    return source.replace(opening, '[:component :roots :owned |', 1)


def build_enum():
    """Separate policy for audited enum bodies; ordinary variable stays strict."""
    source = build()
    marker = "'SGSelfClass' 'SGCodeArchive'"
    if source.count(marker) != 1:
        raise ValueError('Audited declaration enum policy boundary differs')
    return source.replace(marker, "'SGSelfClass' 'SGCodeArchive' 'SGEnumeration'", 1)


def build_message():
    """Separate SGModule process policy; ordinary SGClass/Enum profiles stay strict."""
    source = build()
    marker = "'SGBdSpecification' 'SGMethod' 'SGAliasVariable'"
    if source.count(marker) != 1:
        raise ValueError('Audited primitive-message declaration policy boundary differs')
    return source.replace(marker,"'SGBdSpecification' 'SGMethod' 'SGMethodProcess' 'Association' 'SGASDLCodeVariantKey' 'SGAliasVariable'",1)

