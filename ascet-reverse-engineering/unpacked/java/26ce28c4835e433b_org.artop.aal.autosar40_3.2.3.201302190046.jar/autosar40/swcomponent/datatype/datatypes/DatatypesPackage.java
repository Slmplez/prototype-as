/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar40.swcomponent.datatype.datatypes;

import autosar40.swcomponent.datatype.datatypes.DatatypesFactory;
import autosar40.swcomponent.datatype.datatypes.impl.DatatypesPackageImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface DatatypesPackage
extends EPackage {
    public static final String eNAME = "datatypes";
    public static final String eNS_URI = "http://autosar.org/schema/r4.0/autosar40/swc/d/d";
    public static final String eNS_PREFIX = "";
    public static final DatatypesPackage eINSTANCE = DatatypesPackageImpl.init();
    public static final int APPLICATION_DATA_TYPE = 1;
    public static final int APPLICATION_DATA_TYPE__GCHECKSUM = 0;
    public static final int APPLICATION_DATA_TYPE__GTIMESTAMP = 1;
    public static final int APPLICATION_DATA_TYPE__CHECKSUM = 2;
    public static final int APPLICATION_DATA_TYPE__TIMESTAMP = 3;
    public static final int APPLICATION_DATA_TYPE__GSHORT_NAME = 4;
    public static final int APPLICATION_DATA_TYPE__SHORT_NAME = 5;
    public static final int APPLICATION_DATA_TYPE__LONG_NAME = 6;
    public static final int APPLICATION_DATA_TYPE__GUUID = 7;
    public static final int APPLICATION_DATA_TYPE__GCATEGORY = 8;
    public static final int APPLICATION_DATA_TYPE__GDESC = 9;
    public static final int APPLICATION_DATA_TYPE__DESC = 10;
    public static final int APPLICATION_DATA_TYPE__CATEGORY = 11;
    public static final int APPLICATION_DATA_TYPE__ADMIN_DATA = 12;
    public static final int APPLICATION_DATA_TYPE__INTRODUCTION = 13;
    public static final int APPLICATION_DATA_TYPE__ANNOTATIONS = 14;
    public static final int APPLICATION_DATA_TYPE__UUID = 15;
    public static final int APPLICATION_DATA_TYPE__ALL_EXTENSIONS = 16;
    public static final int APPLICATION_DATA_TYPE__CONTAINED_EXTENSIONS = 17;
    public static final int APPLICATION_DATA_TYPE__SHORT_NAME_PATTERN = 18;
    public static final int APPLICATION_DATA_TYPE__GAR_PACKAGE = 19;
    public static final int APPLICATION_DATA_TYPE__AR_PACKAGE = 20;
    public static final int APPLICATION_DATA_TYPE__VARIATION_POINT = 21;
    public static final int APPLICATION_DATA_TYPE__SW_DATA_DEF_PROPS = 22;
    public static final int APPLICATION_DATA_TYPE_FEATURE_COUNT = 23;
    public static final int APPLICATION_COMPOSITE_DATA_TYPE = 0;
    public static final int APPLICATION_COMPOSITE_DATA_TYPE__GCHECKSUM = 0;
    public static final int APPLICATION_COMPOSITE_DATA_TYPE__GTIMESTAMP = 1;
    public static final int APPLICATION_COMPOSITE_DATA_TYPE__CHECKSUM = 2;
    public static final int APPLICATION_COMPOSITE_DATA_TYPE__TIMESTAMP = 3;
    public static final int APPLICATION_COMPOSITE_DATA_TYPE__GSHORT_NAME = 4;
    public static final int APPLICATION_COMPOSITE_DATA_TYPE__SHORT_NAME = 5;
    public static final int APPLICATION_COMPOSITE_DATA_TYPE__LONG_NAME = 6;
    public static final int APPLICATION_COMPOSITE_DATA_TYPE__GUUID = 7;
    public static final int APPLICATION_COMPOSITE_DATA_TYPE__GCATEGORY = 8;
    public static final int APPLICATION_COMPOSITE_DATA_TYPE__GDESC = 9;
    public static final int APPLICATION_COMPOSITE_DATA_TYPE__DESC = 10;
    public static final int APPLICATION_COMPOSITE_DATA_TYPE__CATEGORY = 11;
    public static final int APPLICATION_COMPOSITE_DATA_TYPE__ADMIN_DATA = 12;
    public static final int APPLICATION_COMPOSITE_DATA_TYPE__INTRODUCTION = 13;
    public static final int APPLICATION_COMPOSITE_DATA_TYPE__ANNOTATIONS = 14;
    public static final int APPLICATION_COMPOSITE_DATA_TYPE__UUID = 15;
    public static final int APPLICATION_COMPOSITE_DATA_TYPE__ALL_EXTENSIONS = 16;
    public static final int APPLICATION_COMPOSITE_DATA_TYPE__CONTAINED_EXTENSIONS = 17;
    public static final int APPLICATION_COMPOSITE_DATA_TYPE__SHORT_NAME_PATTERN = 18;
    public static final int APPLICATION_COMPOSITE_DATA_TYPE__GAR_PACKAGE = 19;
    public static final int APPLICATION_COMPOSITE_DATA_TYPE__AR_PACKAGE = 20;
    public static final int APPLICATION_COMPOSITE_DATA_TYPE__VARIATION_POINT = 21;
    public static final int APPLICATION_COMPOSITE_DATA_TYPE__SW_DATA_DEF_PROPS = 22;
    public static final int APPLICATION_COMPOSITE_DATA_TYPE_FEATURE_COUNT = 23;
    public static final int AUTOSAR_DATA_TYPE = 2;
    public static final int AUTOSAR_DATA_TYPE__GCHECKSUM = 0;
    public static final int AUTOSAR_DATA_TYPE__GTIMESTAMP = 1;
    public static final int AUTOSAR_DATA_TYPE__CHECKSUM = 2;
    public static final int AUTOSAR_DATA_TYPE__TIMESTAMP = 3;
    public static final int AUTOSAR_DATA_TYPE__GSHORT_NAME = 4;
    public static final int AUTOSAR_DATA_TYPE__SHORT_NAME = 5;
    public static final int AUTOSAR_DATA_TYPE__LONG_NAME = 6;
    public static final int AUTOSAR_DATA_TYPE__GUUID = 7;
    public static final int AUTOSAR_DATA_TYPE__GCATEGORY = 8;
    public static final int AUTOSAR_DATA_TYPE__GDESC = 9;
    public static final int AUTOSAR_DATA_TYPE__DESC = 10;
    public static final int AUTOSAR_DATA_TYPE__CATEGORY = 11;
    public static final int AUTOSAR_DATA_TYPE__ADMIN_DATA = 12;
    public static final int AUTOSAR_DATA_TYPE__INTRODUCTION = 13;
    public static final int AUTOSAR_DATA_TYPE__ANNOTATIONS = 14;
    public static final int AUTOSAR_DATA_TYPE__UUID = 15;
    public static final int AUTOSAR_DATA_TYPE__ALL_EXTENSIONS = 16;
    public static final int AUTOSAR_DATA_TYPE__CONTAINED_EXTENSIONS = 17;
    public static final int AUTOSAR_DATA_TYPE__GAR_PACKAGE = 18;
    public static final int AUTOSAR_DATA_TYPE__AR_PACKAGE = 19;
    public static final int AUTOSAR_DATA_TYPE__VARIATION_POINT = 20;
    public static final int AUTOSAR_DATA_TYPE__SW_DATA_DEF_PROPS = 21;
    public static final int AUTOSAR_DATA_TYPE_FEATURE_COUNT = 22;
    public static final int DATA_TYPE_MAP = 3;
    public static final int DATA_TYPE_MAP__GCHECKSUM = 0;
    public static final int DATA_TYPE_MAP__GTIMESTAMP = 1;
    public static final int DATA_TYPE_MAP__CHECKSUM = 2;
    public static final int DATA_TYPE_MAP__TIMESTAMP = 3;
    public static final int DATA_TYPE_MAP__DATA_TYPE_MAPPING_SET = 4;
    public static final int DATA_TYPE_MAP__APPLICATION_DATA_TYPE = 5;
    public static final int DATA_TYPE_MAP__IMPLEMENTATION_DATA_TYPE = 6;
    public static final int DATA_TYPE_MAP_FEATURE_COUNT = 7;
    public static final int DATA_TYPE_MAPPING_SET = 4;
    public static final int DATA_TYPE_MAPPING_SET__GCHECKSUM = 0;
    public static final int DATA_TYPE_MAPPING_SET__GTIMESTAMP = 1;
    public static final int DATA_TYPE_MAPPING_SET__CHECKSUM = 2;
    public static final int DATA_TYPE_MAPPING_SET__TIMESTAMP = 3;
    public static final int DATA_TYPE_MAPPING_SET__GSHORT_NAME = 4;
    public static final int DATA_TYPE_MAPPING_SET__SHORT_NAME = 5;
    public static final int DATA_TYPE_MAPPING_SET__LONG_NAME = 6;
    public static final int DATA_TYPE_MAPPING_SET__GUUID = 7;
    public static final int DATA_TYPE_MAPPING_SET__GCATEGORY = 8;
    public static final int DATA_TYPE_MAPPING_SET__GDESC = 9;
    public static final int DATA_TYPE_MAPPING_SET__DESC = 10;
    public static final int DATA_TYPE_MAPPING_SET__CATEGORY = 11;
    public static final int DATA_TYPE_MAPPING_SET__ADMIN_DATA = 12;
    public static final int DATA_TYPE_MAPPING_SET__INTRODUCTION = 13;
    public static final int DATA_TYPE_MAPPING_SET__ANNOTATIONS = 14;
    public static final int DATA_TYPE_MAPPING_SET__UUID = 15;
    public static final int DATA_TYPE_MAPPING_SET__ALL_EXTENSIONS = 16;
    public static final int DATA_TYPE_MAPPING_SET__CONTAINED_EXTENSIONS = 17;
    public static final int DATA_TYPE_MAPPING_SET__GAR_PACKAGE = 18;
    public static final int DATA_TYPE_MAPPING_SET__AR_PACKAGE = 19;
    public static final int DATA_TYPE_MAPPING_SET__VARIATION_POINT = 20;
    public static final int DATA_TYPE_MAPPING_SET__SHORT_NAME_PATTERN = 21;
    public static final int DATA_TYPE_MAPPING_SET__DATA_TYPE_MAPS = 22;
    public static final int DATA_TYPE_MAPPING_SET__MODE_REQUEST_TYPE_MAPS = 23;
    public static final int DATA_TYPE_MAPPING_SET_FEATURE_COUNT = 24;
    public static final int APPLICATION_PRIMITIVE_DATA_TYPE = 5;
    public static final int APPLICATION_PRIMITIVE_DATA_TYPE__GCHECKSUM = 0;
    public static final int APPLICATION_PRIMITIVE_DATA_TYPE__GTIMESTAMP = 1;
    public static final int APPLICATION_PRIMITIVE_DATA_TYPE__CHECKSUM = 2;
    public static final int APPLICATION_PRIMITIVE_DATA_TYPE__TIMESTAMP = 3;
    public static final int APPLICATION_PRIMITIVE_DATA_TYPE__GSHORT_NAME = 4;
    public static final int APPLICATION_PRIMITIVE_DATA_TYPE__SHORT_NAME = 5;
    public static final int APPLICATION_PRIMITIVE_DATA_TYPE__LONG_NAME = 6;
    public static final int APPLICATION_PRIMITIVE_DATA_TYPE__GUUID = 7;
    public static final int APPLICATION_PRIMITIVE_DATA_TYPE__GCATEGORY = 8;
    public static final int APPLICATION_PRIMITIVE_DATA_TYPE__GDESC = 9;
    public static final int APPLICATION_PRIMITIVE_DATA_TYPE__DESC = 10;
    public static final int APPLICATION_PRIMITIVE_DATA_TYPE__CATEGORY = 11;
    public static final int APPLICATION_PRIMITIVE_DATA_TYPE__ADMIN_DATA = 12;
    public static final int APPLICATION_PRIMITIVE_DATA_TYPE__INTRODUCTION = 13;
    public static final int APPLICATION_PRIMITIVE_DATA_TYPE__ANNOTATIONS = 14;
    public static final int APPLICATION_PRIMITIVE_DATA_TYPE__UUID = 15;
    public static final int APPLICATION_PRIMITIVE_DATA_TYPE__ALL_EXTENSIONS = 16;
    public static final int APPLICATION_PRIMITIVE_DATA_TYPE__CONTAINED_EXTENSIONS = 17;
    public static final int APPLICATION_PRIMITIVE_DATA_TYPE__SHORT_NAME_PATTERN = 18;
    public static final int APPLICATION_PRIMITIVE_DATA_TYPE__GAR_PACKAGE = 19;
    public static final int APPLICATION_PRIMITIVE_DATA_TYPE__AR_PACKAGE = 20;
    public static final int APPLICATION_PRIMITIVE_DATA_TYPE__VARIATION_POINT = 21;
    public static final int APPLICATION_PRIMITIVE_DATA_TYPE__SW_DATA_DEF_PROPS = 22;
    public static final int APPLICATION_PRIMITIVE_DATA_TYPE_FEATURE_COUNT = 23;
    public static final int APPLICATION_ARRAY_DATA_TYPE = 6;
    public static final int APPLICATION_ARRAY_DATA_TYPE__GCHECKSUM = 0;
    public static final int APPLICATION_ARRAY_DATA_TYPE__GTIMESTAMP = 1;
    public static final int APPLICATION_ARRAY_DATA_TYPE__CHECKSUM = 2;
    public static final int APPLICATION_ARRAY_DATA_TYPE__TIMESTAMP = 3;
    public static final int APPLICATION_ARRAY_DATA_TYPE__GSHORT_NAME = 4;
    public static final int APPLICATION_ARRAY_DATA_TYPE__SHORT_NAME = 5;
    public static final int APPLICATION_ARRAY_DATA_TYPE__LONG_NAME = 6;
    public static final int APPLICATION_ARRAY_DATA_TYPE__GUUID = 7;
    public static final int APPLICATION_ARRAY_DATA_TYPE__GCATEGORY = 8;
    public static final int APPLICATION_ARRAY_DATA_TYPE__GDESC = 9;
    public static final int APPLICATION_ARRAY_DATA_TYPE__DESC = 10;
    public static final int APPLICATION_ARRAY_DATA_TYPE__CATEGORY = 11;
    public static final int APPLICATION_ARRAY_DATA_TYPE__ADMIN_DATA = 12;
    public static final int APPLICATION_ARRAY_DATA_TYPE__INTRODUCTION = 13;
    public static final int APPLICATION_ARRAY_DATA_TYPE__ANNOTATIONS = 14;
    public static final int APPLICATION_ARRAY_DATA_TYPE__UUID = 15;
    public static final int APPLICATION_ARRAY_DATA_TYPE__ALL_EXTENSIONS = 16;
    public static final int APPLICATION_ARRAY_DATA_TYPE__CONTAINED_EXTENSIONS = 17;
    public static final int APPLICATION_ARRAY_DATA_TYPE__SHORT_NAME_PATTERN = 18;
    public static final int APPLICATION_ARRAY_DATA_TYPE__GAR_PACKAGE = 19;
    public static final int APPLICATION_ARRAY_DATA_TYPE__AR_PACKAGE = 20;
    public static final int APPLICATION_ARRAY_DATA_TYPE__VARIATION_POINT = 21;
    public static final int APPLICATION_ARRAY_DATA_TYPE__SW_DATA_DEF_PROPS = 22;
    public static final int APPLICATION_ARRAY_DATA_TYPE__ELEMENT = 23;
    public static final int APPLICATION_ARRAY_DATA_TYPE_FEATURE_COUNT = 24;
    public static final int APPLICATION_RECORD_DATA_TYPE = 7;
    public static final int APPLICATION_RECORD_DATA_TYPE__GCHECKSUM = 0;
    public static final int APPLICATION_RECORD_DATA_TYPE__GTIMESTAMP = 1;
    public static final int APPLICATION_RECORD_DATA_TYPE__CHECKSUM = 2;
    public static final int APPLICATION_RECORD_DATA_TYPE__TIMESTAMP = 3;
    public static final int APPLICATION_RECORD_DATA_TYPE__GSHORT_NAME = 4;
    public static final int APPLICATION_RECORD_DATA_TYPE__SHORT_NAME = 5;
    public static final int APPLICATION_RECORD_DATA_TYPE__LONG_NAME = 6;
    public static final int APPLICATION_RECORD_DATA_TYPE__GUUID = 7;
    public static final int APPLICATION_RECORD_DATA_TYPE__GCATEGORY = 8;
    public static final int APPLICATION_RECORD_DATA_TYPE__GDESC = 9;
    public static final int APPLICATION_RECORD_DATA_TYPE__DESC = 10;
    public static final int APPLICATION_RECORD_DATA_TYPE__CATEGORY = 11;
    public static final int APPLICATION_RECORD_DATA_TYPE__ADMIN_DATA = 12;
    public static final int APPLICATION_RECORD_DATA_TYPE__INTRODUCTION = 13;
    public static final int APPLICATION_RECORD_DATA_TYPE__ANNOTATIONS = 14;
    public static final int APPLICATION_RECORD_DATA_TYPE__UUID = 15;
    public static final int APPLICATION_RECORD_DATA_TYPE__ALL_EXTENSIONS = 16;
    public static final int APPLICATION_RECORD_DATA_TYPE__CONTAINED_EXTENSIONS = 17;
    public static final int APPLICATION_RECORD_DATA_TYPE__SHORT_NAME_PATTERN = 18;
    public static final int APPLICATION_RECORD_DATA_TYPE__GAR_PACKAGE = 19;
    public static final int APPLICATION_RECORD_DATA_TYPE__AR_PACKAGE = 20;
    public static final int APPLICATION_RECORD_DATA_TYPE__VARIATION_POINT = 21;
    public static final int APPLICATION_RECORD_DATA_TYPE__SW_DATA_DEF_PROPS = 22;
    public static final int APPLICATION_RECORD_DATA_TYPE__GELEMENTS = 23;
    public static final int APPLICATION_RECORD_DATA_TYPE__ELEMENTS = 24;
    public static final int APPLICATION_RECORD_DATA_TYPE_FEATURE_COUNT = 25;

    public EClass getApplicationCompositeDataType();

    public EClass getApplicationDataType();

    public EClass getAutosarDataType();

    public EReference getAutosarDataType_SwDataDefProps();

    public EClass getDataTypeMap();

    public EReference getDataTypeMap_DataTypeMappingSet();

    public EReference getDataTypeMap_ApplicationDataType();

    public EReference getDataTypeMap_ImplementationDataType();

    public EClass getDataTypeMappingSet();

    public EReference getDataTypeMappingSet_DataTypeMaps();

    public EReference getDataTypeMappingSet_ModeRequestTypeMaps();

    public EClass getApplicationPrimitiveDataType();

    public EClass getApplicationArrayDataType();

    public EReference getApplicationArrayDataType_Element();

    public EClass getApplicationRecordDataType();

    public EReference getApplicationRecordDataType_Elements();

    public DatatypesFactory getDatatypesFactory();

    public static interface Literals {
        public static final EClass APPLICATION_COMPOSITE_DATA_TYPE = eINSTANCE.getApplicationCompositeDataType();
        public static final EClass APPLICATION_DATA_TYPE = eINSTANCE.getApplicationDataType();
        public static final EClass AUTOSAR_DATA_TYPE = eINSTANCE.getAutosarDataType();
        public static final EReference AUTOSAR_DATA_TYPE__SW_DATA_DEF_PROPS = eINSTANCE.getAutosarDataType_SwDataDefProps();
        public static final EClass DATA_TYPE_MAP = eINSTANCE.getDataTypeMap();
        public static final EReference DATA_TYPE_MAP__DATA_TYPE_MAPPING_SET = eINSTANCE.getDataTypeMap_DataTypeMappingSet();
        public static final EReference DATA_TYPE_MAP__APPLICATION_DATA_TYPE = eINSTANCE.getDataTypeMap_ApplicationDataType();
        public static final EReference DATA_TYPE_MAP__IMPLEMENTATION_DATA_TYPE = eINSTANCE.getDataTypeMap_ImplementationDataType();
        public static final EClass DATA_TYPE_MAPPING_SET = eINSTANCE.getDataTypeMappingSet();
        public static final EReference DATA_TYPE_MAPPING_SET__DATA_TYPE_MAPS = eINSTANCE.getDataTypeMappingSet_DataTypeMaps();
        public static final EReference DATA_TYPE_MAPPING_SET__MODE_REQUEST_TYPE_MAPS = eINSTANCE.getDataTypeMappingSet_ModeRequestTypeMaps();
        public static final EClass APPLICATION_PRIMITIVE_DATA_TYPE = eINSTANCE.getApplicationPrimitiveDataType();
        public static final EClass APPLICATION_ARRAY_DATA_TYPE = eINSTANCE.getApplicationArrayDataType();
        public static final EReference APPLICATION_ARRAY_DATA_TYPE__ELEMENT = eINSTANCE.getApplicationArrayDataType_Element();
        public static final EClass APPLICATION_RECORD_DATA_TYPE = eINSTANCE.getApplicationRecordDataType();
        public static final EReference APPLICATION_RECORD_DATA_TYPE__ELEMENTS = eINSTANCE.getApplicationRecordDataType_Elements();
    }
}

