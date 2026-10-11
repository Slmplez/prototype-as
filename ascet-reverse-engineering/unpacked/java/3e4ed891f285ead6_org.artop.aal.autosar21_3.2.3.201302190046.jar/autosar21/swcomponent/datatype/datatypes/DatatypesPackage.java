/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EAttribute
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EEnum
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar21.swcomponent.datatype.datatypes;

import autosar21.swcomponent.datatype.datatypes.DatatypesFactory;
import autosar21.swcomponent.datatype.datatypes.impl.DatatypesPackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EEnum;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface DatatypesPackage
extends EPackage {
    public static final String eNAME = "datatypes";
    public static final String eNS_URI = "http://autosar.org/2.1.5/autosar21/swc/d/d";
    public static final String eNS_PREFIX = "";
    public static final DatatypesPackage eINSTANCE = DatatypesPackageImpl.init();
    public static final int AR_LIMIT = 0;
    public static final int AR_LIMIT__GCHECKSUM = 0;
    public static final int AR_LIMIT__GTIMESTAMP = 1;
    public static final int AR_LIMIT__CHECKSUM = 2;
    public static final int AR_LIMIT__TIMESTAMP = 3;
    public static final int AR_LIMIT__GINTERVAL_TYPE = 4;
    public static final int AR_LIMIT__GVALUE = 5;
    public static final int AR_LIMIT__INTERVAL_TYPE = 6;
    public static final int AR_LIMIT__VALUE = 7;
    public static final int AR_LIMIT_FEATURE_COUNT = 8;
    public static final int DATA_PROTOTYPE = 15;
    public static final int DATA_PROTOTYPE__GCHECKSUM = 0;
    public static final int DATA_PROTOTYPE__GTIMESTAMP = 1;
    public static final int DATA_PROTOTYPE__CHECKSUM = 2;
    public static final int DATA_PROTOTYPE__TIMESTAMP = 3;
    public static final int DATA_PROTOTYPE__GSHORT_NAME = 4;
    public static final int DATA_PROTOTYPE__GUUID = 5;
    public static final int DATA_PROTOTYPE__GCATEGORY = 6;
    public static final int DATA_PROTOTYPE__GDESC = 7;
    public static final int DATA_PROTOTYPE__SHORT_NAME = 8;
    public static final int DATA_PROTOTYPE__LONG_NAME = 9;
    public static final int DATA_PROTOTYPE__DESC = 10;
    public static final int DATA_PROTOTYPE__CATEGORY = 11;
    public static final int DATA_PROTOTYPE__ADMIN_DATA = 12;
    public static final int DATA_PROTOTYPE__UUID = 13;
    public static final int DATA_PROTOTYPE__ALL_EXTENSIONS = 14;
    public static final int DATA_PROTOTYPE__CONTAINED_EXTENSIONS = 15;
    public static final int DATA_PROTOTYPE__GTYPE = 16;
    public static final int DATA_PROTOTYPE__GELEMENT_TYPE = 17;
    public static final int DATA_PROTOTYPE__SW_DATA_DEF_PROPS = 18;
    public static final int DATA_PROTOTYPE__TYPE = 19;
    public static final int DATA_PROTOTYPE_FEATURE_COUNT = 20;
    public static final int ARRAY_ELEMENT = 1;
    public static final int ARRAY_ELEMENT__GCHECKSUM = 0;
    public static final int ARRAY_ELEMENT__GTIMESTAMP = 1;
    public static final int ARRAY_ELEMENT__CHECKSUM = 2;
    public static final int ARRAY_ELEMENT__TIMESTAMP = 3;
    public static final int ARRAY_ELEMENT__GSHORT_NAME = 4;
    public static final int ARRAY_ELEMENT__GUUID = 5;
    public static final int ARRAY_ELEMENT__GCATEGORY = 6;
    public static final int ARRAY_ELEMENT__GDESC = 7;
    public static final int ARRAY_ELEMENT__SHORT_NAME = 8;
    public static final int ARRAY_ELEMENT__LONG_NAME = 9;
    public static final int ARRAY_ELEMENT__DESC = 10;
    public static final int ARRAY_ELEMENT__CATEGORY = 11;
    public static final int ARRAY_ELEMENT__ADMIN_DATA = 12;
    public static final int ARRAY_ELEMENT__UUID = 13;
    public static final int ARRAY_ELEMENT__ALL_EXTENSIONS = 14;
    public static final int ARRAY_ELEMENT__CONTAINED_EXTENSIONS = 15;
    public static final int ARRAY_ELEMENT__GTYPE = 16;
    public static final int ARRAY_ELEMENT__GELEMENT_TYPE = 17;
    public static final int ARRAY_ELEMENT__SW_DATA_DEF_PROPS = 18;
    public static final int ARRAY_ELEMENT__TYPE = 19;
    public static final int ARRAY_ELEMENT__ARRAY_TYPE = 20;
    public static final int ARRAY_ELEMENT__MAX_NUMBER_OF_ELEMENTS = 21;
    public static final int ARRAY_ELEMENT_FEATURE_COUNT = 22;
    public static final int DATATYPE = 4;
    public static final int DATATYPE__GCHECKSUM = 0;
    public static final int DATATYPE__GTIMESTAMP = 1;
    public static final int DATATYPE__CHECKSUM = 2;
    public static final int DATATYPE__TIMESTAMP = 3;
    public static final int DATATYPE__GSHORT_NAME = 4;
    public static final int DATATYPE__GUUID = 5;
    public static final int DATATYPE__GCATEGORY = 6;
    public static final int DATATYPE__GDESC = 7;
    public static final int DATATYPE__SHORT_NAME = 8;
    public static final int DATATYPE__LONG_NAME = 9;
    public static final int DATATYPE__DESC = 10;
    public static final int DATATYPE__CATEGORY = 11;
    public static final int DATATYPE__ADMIN_DATA = 12;
    public static final int DATATYPE__UUID = 13;
    public static final int DATATYPE__ALL_EXTENSIONS = 14;
    public static final int DATATYPE__CONTAINED_EXTENSIONS = 15;
    public static final int DATATYPE__GAR_PACKAGE = 16;
    public static final int DATATYPE__AR_PACKAGE = 17;
    public static final int DATATYPE_FEATURE_COUNT = 18;
    public static final int PRIMITIVE_TYPE = 3;
    public static final int PRIMITIVE_TYPE__GCHECKSUM = 0;
    public static final int PRIMITIVE_TYPE__GTIMESTAMP = 1;
    public static final int PRIMITIVE_TYPE__CHECKSUM = 2;
    public static final int PRIMITIVE_TYPE__TIMESTAMP = 3;
    public static final int PRIMITIVE_TYPE__GSHORT_NAME = 4;
    public static final int PRIMITIVE_TYPE__GUUID = 5;
    public static final int PRIMITIVE_TYPE__GCATEGORY = 6;
    public static final int PRIMITIVE_TYPE__GDESC = 7;
    public static final int PRIMITIVE_TYPE__SHORT_NAME = 8;
    public static final int PRIMITIVE_TYPE__LONG_NAME = 9;
    public static final int PRIMITIVE_TYPE__DESC = 10;
    public static final int PRIMITIVE_TYPE__CATEGORY = 11;
    public static final int PRIMITIVE_TYPE__ADMIN_DATA = 12;
    public static final int PRIMITIVE_TYPE__UUID = 13;
    public static final int PRIMITIVE_TYPE__ALL_EXTENSIONS = 14;
    public static final int PRIMITIVE_TYPE__CONTAINED_EXTENSIONS = 15;
    public static final int PRIMITIVE_TYPE__GAR_PACKAGE = 16;
    public static final int PRIMITIVE_TYPE__AR_PACKAGE = 17;
    public static final int PRIMITIVE_TYPE__SW_DATA_DEF_PROPS = 18;
    public static final int PRIMITIVE_TYPE_FEATURE_COUNT = 19;
    public static final int BOOLEAN_TYPE = 2;
    public static final int BOOLEAN_TYPE__GCHECKSUM = 0;
    public static final int BOOLEAN_TYPE__GTIMESTAMP = 1;
    public static final int BOOLEAN_TYPE__CHECKSUM = 2;
    public static final int BOOLEAN_TYPE__TIMESTAMP = 3;
    public static final int BOOLEAN_TYPE__GSHORT_NAME = 4;
    public static final int BOOLEAN_TYPE__GUUID = 5;
    public static final int BOOLEAN_TYPE__GCATEGORY = 6;
    public static final int BOOLEAN_TYPE__GDESC = 7;
    public static final int BOOLEAN_TYPE__SHORT_NAME = 8;
    public static final int BOOLEAN_TYPE__LONG_NAME = 9;
    public static final int BOOLEAN_TYPE__DESC = 10;
    public static final int BOOLEAN_TYPE__CATEGORY = 11;
    public static final int BOOLEAN_TYPE__ADMIN_DATA = 12;
    public static final int BOOLEAN_TYPE__UUID = 13;
    public static final int BOOLEAN_TYPE__ALL_EXTENSIONS = 14;
    public static final int BOOLEAN_TYPE__CONTAINED_EXTENSIONS = 15;
    public static final int BOOLEAN_TYPE__GAR_PACKAGE = 16;
    public static final int BOOLEAN_TYPE__AR_PACKAGE = 17;
    public static final int BOOLEAN_TYPE__SW_DATA_DEF_PROPS = 18;
    public static final int BOOLEAN_TYPE_FEATURE_COUNT = 19;
    public static final int COMPOSITE_TYPE = 5;
    public static final int COMPOSITE_TYPE__GCHECKSUM = 0;
    public static final int COMPOSITE_TYPE__GTIMESTAMP = 1;
    public static final int COMPOSITE_TYPE__CHECKSUM = 2;
    public static final int COMPOSITE_TYPE__TIMESTAMP = 3;
    public static final int COMPOSITE_TYPE__GSHORT_NAME = 4;
    public static final int COMPOSITE_TYPE__GUUID = 5;
    public static final int COMPOSITE_TYPE__GCATEGORY = 6;
    public static final int COMPOSITE_TYPE__GDESC = 7;
    public static final int COMPOSITE_TYPE__SHORT_NAME = 8;
    public static final int COMPOSITE_TYPE__LONG_NAME = 9;
    public static final int COMPOSITE_TYPE__DESC = 10;
    public static final int COMPOSITE_TYPE__CATEGORY = 11;
    public static final int COMPOSITE_TYPE__ADMIN_DATA = 12;
    public static final int COMPOSITE_TYPE__UUID = 13;
    public static final int COMPOSITE_TYPE__ALL_EXTENSIONS = 14;
    public static final int COMPOSITE_TYPE__CONTAINED_EXTENSIONS = 15;
    public static final int COMPOSITE_TYPE__GAR_PACKAGE = 16;
    public static final int COMPOSITE_TYPE__AR_PACKAGE = 17;
    public static final int COMPOSITE_TYPE_FEATURE_COUNT = 18;
    public static final int OPAQUE_TYPE = 6;
    public static final int OPAQUE_TYPE__GCHECKSUM = 0;
    public static final int OPAQUE_TYPE__GTIMESTAMP = 1;
    public static final int OPAQUE_TYPE__CHECKSUM = 2;
    public static final int OPAQUE_TYPE__TIMESTAMP = 3;
    public static final int OPAQUE_TYPE__GSHORT_NAME = 4;
    public static final int OPAQUE_TYPE__GUUID = 5;
    public static final int OPAQUE_TYPE__GCATEGORY = 6;
    public static final int OPAQUE_TYPE__GDESC = 7;
    public static final int OPAQUE_TYPE__SHORT_NAME = 8;
    public static final int OPAQUE_TYPE__LONG_NAME = 9;
    public static final int OPAQUE_TYPE__DESC = 10;
    public static final int OPAQUE_TYPE__CATEGORY = 11;
    public static final int OPAQUE_TYPE__ADMIN_DATA = 12;
    public static final int OPAQUE_TYPE__UUID = 13;
    public static final int OPAQUE_TYPE__ALL_EXTENSIONS = 14;
    public static final int OPAQUE_TYPE__CONTAINED_EXTENSIONS = 15;
    public static final int OPAQUE_TYPE__GAR_PACKAGE = 16;
    public static final int OPAQUE_TYPE__AR_PACKAGE = 17;
    public static final int OPAQUE_TYPE__SW_DATA_DEF_PROPS = 18;
    public static final int OPAQUE_TYPE__NUMBER_OF_BITS = 19;
    public static final int OPAQUE_TYPE_FEATURE_COUNT = 20;
    public static final int RANGE = 7;
    public static final int RANGE__GCHECKSUM = 0;
    public static final int RANGE__GTIMESTAMP = 1;
    public static final int RANGE__CHECKSUM = 2;
    public static final int RANGE__TIMESTAMP = 3;
    public static final int RANGE__LOWER_LIMIT = 4;
    public static final int RANGE__UPPER_LIMIT = 5;
    public static final int RANGE_FEATURE_COUNT = 6;
    public static final int RECORD_ELEMENT = 8;
    public static final int RECORD_ELEMENT__GCHECKSUM = 0;
    public static final int RECORD_ELEMENT__GTIMESTAMP = 1;
    public static final int RECORD_ELEMENT__CHECKSUM = 2;
    public static final int RECORD_ELEMENT__TIMESTAMP = 3;
    public static final int RECORD_ELEMENT__GSHORT_NAME = 4;
    public static final int RECORD_ELEMENT__GUUID = 5;
    public static final int RECORD_ELEMENT__GCATEGORY = 6;
    public static final int RECORD_ELEMENT__GDESC = 7;
    public static final int RECORD_ELEMENT__SHORT_NAME = 8;
    public static final int RECORD_ELEMENT__LONG_NAME = 9;
    public static final int RECORD_ELEMENT__DESC = 10;
    public static final int RECORD_ELEMENT__CATEGORY = 11;
    public static final int RECORD_ELEMENT__ADMIN_DATA = 12;
    public static final int RECORD_ELEMENT__UUID = 13;
    public static final int RECORD_ELEMENT__ALL_EXTENSIONS = 14;
    public static final int RECORD_ELEMENT__CONTAINED_EXTENSIONS = 15;
    public static final int RECORD_ELEMENT__GTYPE = 16;
    public static final int RECORD_ELEMENT__GELEMENT_TYPE = 17;
    public static final int RECORD_ELEMENT__SW_DATA_DEF_PROPS = 18;
    public static final int RECORD_ELEMENT__TYPE = 19;
    public static final int RECORD_ELEMENT__RECORD_TYPE = 20;
    public static final int RECORD_ELEMENT_FEATURE_COUNT = 21;
    public static final int STRING_TYPE = 9;
    public static final int STRING_TYPE__GCHECKSUM = 0;
    public static final int STRING_TYPE__GTIMESTAMP = 1;
    public static final int STRING_TYPE__CHECKSUM = 2;
    public static final int STRING_TYPE__TIMESTAMP = 3;
    public static final int STRING_TYPE__GSHORT_NAME = 4;
    public static final int STRING_TYPE__GUUID = 5;
    public static final int STRING_TYPE__GCATEGORY = 6;
    public static final int STRING_TYPE__GDESC = 7;
    public static final int STRING_TYPE__SHORT_NAME = 8;
    public static final int STRING_TYPE__LONG_NAME = 9;
    public static final int STRING_TYPE__DESC = 10;
    public static final int STRING_TYPE__CATEGORY = 11;
    public static final int STRING_TYPE__ADMIN_DATA = 12;
    public static final int STRING_TYPE__UUID = 13;
    public static final int STRING_TYPE__ALL_EXTENSIONS = 14;
    public static final int STRING_TYPE__CONTAINED_EXTENSIONS = 15;
    public static final int STRING_TYPE__GAR_PACKAGE = 16;
    public static final int STRING_TYPE__AR_PACKAGE = 17;
    public static final int STRING_TYPE__SW_DATA_DEF_PROPS = 18;
    public static final int STRING_TYPE__ENCODING = 19;
    public static final int STRING_TYPE__MAX_NUMBER_OF_CHARS = 20;
    public static final int STRING_TYPE_FEATURE_COUNT = 21;
    public static final int INTEGER_TYPE = 10;
    public static final int INTEGER_TYPE__GCHECKSUM = 0;
    public static final int INTEGER_TYPE__GTIMESTAMP = 1;
    public static final int INTEGER_TYPE__CHECKSUM = 2;
    public static final int INTEGER_TYPE__TIMESTAMP = 3;
    public static final int INTEGER_TYPE__GSHORT_NAME = 4;
    public static final int INTEGER_TYPE__GUUID = 5;
    public static final int INTEGER_TYPE__GCATEGORY = 6;
    public static final int INTEGER_TYPE__GDESC = 7;
    public static final int INTEGER_TYPE__SHORT_NAME = 8;
    public static final int INTEGER_TYPE__LONG_NAME = 9;
    public static final int INTEGER_TYPE__DESC = 10;
    public static final int INTEGER_TYPE__CATEGORY = 11;
    public static final int INTEGER_TYPE__ADMIN_DATA = 12;
    public static final int INTEGER_TYPE__UUID = 13;
    public static final int INTEGER_TYPE__ALL_EXTENSIONS = 14;
    public static final int INTEGER_TYPE__CONTAINED_EXTENSIONS = 15;
    public static final int INTEGER_TYPE__GAR_PACKAGE = 16;
    public static final int INTEGER_TYPE__AR_PACKAGE = 17;
    public static final int INTEGER_TYPE__SW_DATA_DEF_PROPS = 18;
    public static final int INTEGER_TYPE__LOWER_LIMIT = 19;
    public static final int INTEGER_TYPE__UPPER_LIMIT = 20;
    public static final int INTEGER_TYPE_FEATURE_COUNT = 21;
    public static final int REAL_TYPE = 11;
    public static final int REAL_TYPE__GCHECKSUM = 0;
    public static final int REAL_TYPE__GTIMESTAMP = 1;
    public static final int REAL_TYPE__CHECKSUM = 2;
    public static final int REAL_TYPE__TIMESTAMP = 3;
    public static final int REAL_TYPE__GSHORT_NAME = 4;
    public static final int REAL_TYPE__GUUID = 5;
    public static final int REAL_TYPE__GCATEGORY = 6;
    public static final int REAL_TYPE__GDESC = 7;
    public static final int REAL_TYPE__SHORT_NAME = 8;
    public static final int REAL_TYPE__LONG_NAME = 9;
    public static final int REAL_TYPE__DESC = 10;
    public static final int REAL_TYPE__CATEGORY = 11;
    public static final int REAL_TYPE__ADMIN_DATA = 12;
    public static final int REAL_TYPE__UUID = 13;
    public static final int REAL_TYPE__ALL_EXTENSIONS = 14;
    public static final int REAL_TYPE__CONTAINED_EXTENSIONS = 15;
    public static final int REAL_TYPE__GAR_PACKAGE = 16;
    public static final int REAL_TYPE__AR_PACKAGE = 17;
    public static final int REAL_TYPE__SW_DATA_DEF_PROPS = 18;
    public static final int REAL_TYPE__LOWER_LIMIT = 19;
    public static final int REAL_TYPE__UPPER_LIMIT = 20;
    public static final int REAL_TYPE__ALLOW_NA_N = 21;
    public static final int REAL_TYPE__ENCODING = 22;
    public static final int REAL_TYPE_FEATURE_COUNT = 23;
    public static final int CHAR_TYPE = 12;
    public static final int CHAR_TYPE__GCHECKSUM = 0;
    public static final int CHAR_TYPE__GTIMESTAMP = 1;
    public static final int CHAR_TYPE__CHECKSUM = 2;
    public static final int CHAR_TYPE__TIMESTAMP = 3;
    public static final int CHAR_TYPE__GSHORT_NAME = 4;
    public static final int CHAR_TYPE__GUUID = 5;
    public static final int CHAR_TYPE__GCATEGORY = 6;
    public static final int CHAR_TYPE__GDESC = 7;
    public static final int CHAR_TYPE__SHORT_NAME = 8;
    public static final int CHAR_TYPE__LONG_NAME = 9;
    public static final int CHAR_TYPE__DESC = 10;
    public static final int CHAR_TYPE__CATEGORY = 11;
    public static final int CHAR_TYPE__ADMIN_DATA = 12;
    public static final int CHAR_TYPE__UUID = 13;
    public static final int CHAR_TYPE__ALL_EXTENSIONS = 14;
    public static final int CHAR_TYPE__CONTAINED_EXTENSIONS = 15;
    public static final int CHAR_TYPE__GAR_PACKAGE = 16;
    public static final int CHAR_TYPE__AR_PACKAGE = 17;
    public static final int CHAR_TYPE__SW_DATA_DEF_PROPS = 18;
    public static final int CHAR_TYPE__ENCODING = 19;
    public static final int CHAR_TYPE_FEATURE_COUNT = 20;
    public static final int ARRAY_TYPE = 13;
    public static final int ARRAY_TYPE__GCHECKSUM = 0;
    public static final int ARRAY_TYPE__GTIMESTAMP = 1;
    public static final int ARRAY_TYPE__CHECKSUM = 2;
    public static final int ARRAY_TYPE__TIMESTAMP = 3;
    public static final int ARRAY_TYPE__GSHORT_NAME = 4;
    public static final int ARRAY_TYPE__GUUID = 5;
    public static final int ARRAY_TYPE__GCATEGORY = 6;
    public static final int ARRAY_TYPE__GDESC = 7;
    public static final int ARRAY_TYPE__SHORT_NAME = 8;
    public static final int ARRAY_TYPE__LONG_NAME = 9;
    public static final int ARRAY_TYPE__DESC = 10;
    public static final int ARRAY_TYPE__CATEGORY = 11;
    public static final int ARRAY_TYPE__ADMIN_DATA = 12;
    public static final int ARRAY_TYPE__UUID = 13;
    public static final int ARRAY_TYPE__ALL_EXTENSIONS = 14;
    public static final int ARRAY_TYPE__CONTAINED_EXTENSIONS = 15;
    public static final int ARRAY_TYPE__GAR_PACKAGE = 16;
    public static final int ARRAY_TYPE__AR_PACKAGE = 17;
    public static final int ARRAY_TYPE__ELEMENT = 18;
    public static final int ARRAY_TYPE_FEATURE_COUNT = 19;
    public static final int RECORD_TYPE = 14;
    public static final int RECORD_TYPE__GCHECKSUM = 0;
    public static final int RECORD_TYPE__GTIMESTAMP = 1;
    public static final int RECORD_TYPE__CHECKSUM = 2;
    public static final int RECORD_TYPE__TIMESTAMP = 3;
    public static final int RECORD_TYPE__GSHORT_NAME = 4;
    public static final int RECORD_TYPE__GUUID = 5;
    public static final int RECORD_TYPE__GCATEGORY = 6;
    public static final int RECORD_TYPE__GDESC = 7;
    public static final int RECORD_TYPE__SHORT_NAME = 8;
    public static final int RECORD_TYPE__LONG_NAME = 9;
    public static final int RECORD_TYPE__DESC = 10;
    public static final int RECORD_TYPE__CATEGORY = 11;
    public static final int RECORD_TYPE__ADMIN_DATA = 12;
    public static final int RECORD_TYPE__UUID = 13;
    public static final int RECORD_TYPE__ALL_EXTENSIONS = 14;
    public static final int RECORD_TYPE__CONTAINED_EXTENSIONS = 15;
    public static final int RECORD_TYPE__GAR_PACKAGE = 16;
    public static final int RECORD_TYPE__AR_PACKAGE = 17;
    public static final int RECORD_TYPE__GELEMENTS = 18;
    public static final int RECORD_TYPE__ELEMENTS = 19;
    public static final int RECORD_TYPE_FEATURE_COUNT = 20;
    public static final int REAL_TYPE_ENCODING_ENUM = 16;

    public EClass getARLimit();

    public EAttribute getARLimit_IntervalType();

    public EAttribute getARLimit_Value();

    public EClass getArrayElement();

    public EReference getArrayElement_ArrayType();

    public EAttribute getArrayElement_MaxNumberOfElements();

    public EClass getBooleanType();

    public EClass getPrimitiveType();

    public EReference getPrimitiveType_SwDataDefProps();

    public EClass getDatatype();

    public EClass getCompositeType();

    public EClass getOpaqueType();

    public EAttribute getOpaqueType_NumberOfBits();

    public EClass getRange();

    public EReference getRange_LowerLimit();

    public EReference getRange_UpperLimit();

    public EClass getRecordElement();

    public EReference getRecordElement_RecordType();

    public EClass getStringType();

    public EAttribute getStringType_Encoding();

    public EAttribute getStringType_MaxNumberOfChars();

    public EClass getIntegerType();

    public EClass getRealType();

    public EAttribute getRealType_AllowNaN();

    public EAttribute getRealType_Encoding();

    public EClass getCharType();

    public EAttribute getCharType_Encoding();

    public EClass getArrayType();

    public EReference getArrayType_Element();

    public EClass getRecordType();

    public EReference getRecordType_Elements();

    public EClass getDataPrototype();

    public EReference getDataPrototype_SwDataDefProps();

    public EReference getDataPrototype_Type();

    public EEnum getRealTypeEncodingEnum();

    public DatatypesFactory getDatatypesFactory();

    public static interface Literals {
        public static final EClass AR_LIMIT = eINSTANCE.getARLimit();
        public static final EAttribute AR_LIMIT__INTERVAL_TYPE = eINSTANCE.getARLimit_IntervalType();
        public static final EAttribute AR_LIMIT__VALUE = eINSTANCE.getARLimit_Value();
        public static final EClass ARRAY_ELEMENT = eINSTANCE.getArrayElement();
        public static final EReference ARRAY_ELEMENT__ARRAY_TYPE = eINSTANCE.getArrayElement_ArrayType();
        public static final EAttribute ARRAY_ELEMENT__MAX_NUMBER_OF_ELEMENTS = eINSTANCE.getArrayElement_MaxNumberOfElements();
        public static final EClass BOOLEAN_TYPE = eINSTANCE.getBooleanType();
        public static final EClass PRIMITIVE_TYPE = eINSTANCE.getPrimitiveType();
        public static final EReference PRIMITIVE_TYPE__SW_DATA_DEF_PROPS = eINSTANCE.getPrimitiveType_SwDataDefProps();
        public static final EClass DATATYPE = eINSTANCE.getDatatype();
        public static final EClass COMPOSITE_TYPE = eINSTANCE.getCompositeType();
        public static final EClass OPAQUE_TYPE = eINSTANCE.getOpaqueType();
        public static final EAttribute OPAQUE_TYPE__NUMBER_OF_BITS = eINSTANCE.getOpaqueType_NumberOfBits();
        public static final EClass RANGE = eINSTANCE.getRange();
        public static final EReference RANGE__LOWER_LIMIT = eINSTANCE.getRange_LowerLimit();
        public static final EReference RANGE__UPPER_LIMIT = eINSTANCE.getRange_UpperLimit();
        public static final EClass RECORD_ELEMENT = eINSTANCE.getRecordElement();
        public static final EReference RECORD_ELEMENT__RECORD_TYPE = eINSTANCE.getRecordElement_RecordType();
        public static final EClass STRING_TYPE = eINSTANCE.getStringType();
        public static final EAttribute STRING_TYPE__ENCODING = eINSTANCE.getStringType_Encoding();
        public static final EAttribute STRING_TYPE__MAX_NUMBER_OF_CHARS = eINSTANCE.getStringType_MaxNumberOfChars();
        public static final EClass INTEGER_TYPE = eINSTANCE.getIntegerType();
        public static final EClass REAL_TYPE = eINSTANCE.getRealType();
        public static final EAttribute REAL_TYPE__ALLOW_NA_N = eINSTANCE.getRealType_AllowNaN();
        public static final EAttribute REAL_TYPE__ENCODING = eINSTANCE.getRealType_Encoding();
        public static final EClass CHAR_TYPE = eINSTANCE.getCharType();
        public static final EAttribute CHAR_TYPE__ENCODING = eINSTANCE.getCharType_Encoding();
        public static final EClass ARRAY_TYPE = eINSTANCE.getArrayType();
        public static final EReference ARRAY_TYPE__ELEMENT = eINSTANCE.getArrayType_Element();
        public static final EClass RECORD_TYPE = eINSTANCE.getRecordType();
        public static final EReference RECORD_TYPE__ELEMENTS = eINSTANCE.getRecordType_Elements();
        public static final EClass DATA_PROTOTYPE = eINSTANCE.getDataPrototype();
        public static final EReference DATA_PROTOTYPE__SW_DATA_DEF_PROPS = eINSTANCE.getDataPrototype_SwDataDefProps();
        public static final EReference DATA_PROTOTYPE__TYPE = eINSTANCE.getDataPrototype_Type();
        public static final EEnum REAL_TYPE_ENCODING_ENUM = eINSTANCE.getRealTypeEncodingEnum();
    }
}

