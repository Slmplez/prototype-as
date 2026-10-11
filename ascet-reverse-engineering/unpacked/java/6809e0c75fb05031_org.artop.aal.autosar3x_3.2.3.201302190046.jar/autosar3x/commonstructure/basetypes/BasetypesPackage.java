/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EAttribute
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EDataType
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar3x.commonstructure.basetypes;

import autosar3x.commonstructure.basetypes.BasetypesFactory;
import autosar3x.commonstructure.basetypes.impl.BasetypesPackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EDataType;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface BasetypesPackage
extends EPackage {
    public static final String eNAME = "basetypes";
    public static final String eNS_URI = "http://autosar.org/3.2.1/autosar3x/cs/bt";
    public static final String eNS_PREFIX = "";
    public static final BasetypesPackage eINSTANCE = BasetypesPackageImpl.init();
    public static final int BASE_TYPE = 0;
    public static final int BASE_TYPE__GCHECKSUM = 0;
    public static final int BASE_TYPE__GTIMESTAMP = 1;
    public static final int BASE_TYPE__CHECKSUM = 2;
    public static final int BASE_TYPE__TIMESTAMP = 3;
    public static final int BASE_TYPE__GSHORT_NAME = 4;
    public static final int BASE_TYPE__GUUID = 5;
    public static final int BASE_TYPE__GCATEGORY = 6;
    public static final int BASE_TYPE__GDESC = 7;
    public static final int BASE_TYPE__SHORT_NAME = 8;
    public static final int BASE_TYPE__LONG_NAME = 9;
    public static final int BASE_TYPE__DESC = 10;
    public static final int BASE_TYPE__CATEGORY = 11;
    public static final int BASE_TYPE__ADMIN_DATA = 12;
    public static final int BASE_TYPE__INTRODUCTION = 13;
    public static final int BASE_TYPE__UUID = 14;
    public static final int BASE_TYPE__ALL_EXTENSIONS = 15;
    public static final int BASE_TYPE__CONTAINED_EXTENSIONS = 16;
    public static final int BASE_TYPE__GAR_PACKAGE = 17;
    public static final int BASE_TYPE__AR_PACKAGE = 18;
    public static final int BASE_TYPE__GBASE_TYPE_DEFINITION_TYPE = 19;
    public static final int BASE_TYPE__BASE_TYPE_DEFINITION_TYPE = 20;
    public static final int BASE_TYPE_FEATURE_COUNT = 21;
    public static final int BASE_TYPE_DEFINITION = 1;
    public static final int BASE_TYPE_DEFINITION__GCHECKSUM = 0;
    public static final int BASE_TYPE_DEFINITION__GTIMESTAMP = 1;
    public static final int BASE_TYPE_DEFINITION__CHECKSUM = 2;
    public static final int BASE_TYPE_DEFINITION__TIMESTAMP = 3;
    public static final int BASE_TYPE_DEFINITION_FEATURE_COUNT = 4;
    public static final int BASE_TYPE_SIZE_DEFINITION = 3;
    public static final int BASE_TYPE_SIZE_DEFINITION__GCHECKSUM = 0;
    public static final int BASE_TYPE_SIZE_DEFINITION__GTIMESTAMP = 1;
    public static final int BASE_TYPE_SIZE_DEFINITION__CHECKSUM = 2;
    public static final int BASE_TYPE_SIZE_DEFINITION__TIMESTAMP = 3;
    public static final int BASE_TYPE_SIZE_DEFINITION__BASE_TYPE_DIRECT_DEFINITION = 4;
    public static final int BASE_TYPE_SIZE_DEFINITION_FEATURE_COUNT = 5;
    public static final int BASE_TYPE_ABS_SIZE = 2;
    public static final int BASE_TYPE_ABS_SIZE__GCHECKSUM = 0;
    public static final int BASE_TYPE_ABS_SIZE__GTIMESTAMP = 1;
    public static final int BASE_TYPE_ABS_SIZE__CHECKSUM = 2;
    public static final int BASE_TYPE_ABS_SIZE__TIMESTAMP = 3;
    public static final int BASE_TYPE_ABS_SIZE__BASE_TYPE_DIRECT_DEFINITION = 4;
    public static final int BASE_TYPE_ABS_SIZE__GBASE_TYPE_SIZE = 5;
    public static final int BASE_TYPE_ABS_SIZE__BASE_TYPE_SIZE = 6;
    public static final int BASE_TYPE_ABS_SIZE_FEATURE_COUNT = 7;
    public static final int BASE_TYPE_DIRECT_DEFINITION = 4;
    public static final int BASE_TYPE_DIRECT_DEFINITION__GCHECKSUM = 0;
    public static final int BASE_TYPE_DIRECT_DEFINITION__GTIMESTAMP = 1;
    public static final int BASE_TYPE_DIRECT_DEFINITION__CHECKSUM = 2;
    public static final int BASE_TYPE_DIRECT_DEFINITION__TIMESTAMP = 3;
    public static final int BASE_TYPE_DIRECT_DEFINITION__GBASE_TYPE_SIZE_DEFINITION_TYPE = 4;
    public static final int BASE_TYPE_DIRECT_DEFINITION__GBASE_TYPE_ENCODING = 5;
    public static final int BASE_TYPE_DIRECT_DEFINITION__GMEM_ALIGNMENT = 6;
    public static final int BASE_TYPE_DIRECT_DEFINITION__GBYTE_ORDER = 7;
    public static final int BASE_TYPE_DIRECT_DEFINITION__BASE_TYPE_SIZE_DEFINTION_TYPE = 8;
    public static final int BASE_TYPE_DIRECT_DEFINITION__BASE_TYPE_ENCODING = 9;
    public static final int BASE_TYPE_DIRECT_DEFINITION__MEM_ALIGNMENT = 10;
    public static final int BASE_TYPE_DIRECT_DEFINITION__BYTE_ORDER = 11;
    public static final int BASE_TYPE_DIRECT_DEFINITION_FEATURE_COUNT = 12;
    public static final int BASE_TYPE_INDIRECT_DEFINITION = 5;
    public static final int BASE_TYPE_INDIRECT_DEFINITION__GCHECKSUM = 0;
    public static final int BASE_TYPE_INDIRECT_DEFINITION__GTIMESTAMP = 1;
    public static final int BASE_TYPE_INDIRECT_DEFINITION__CHECKSUM = 2;
    public static final int BASE_TYPE_INDIRECT_DEFINITION__TIMESTAMP = 3;
    public static final int BASE_TYPE_INDIRECT_DEFINITION__BASE_TYPE = 4;
    public static final int BASE_TYPE_INDIRECT_DEFINITION_FEATURE_COUNT = 5;
    public static final int BASE_TYPE_MAX_SIZE = 6;
    public static final int BASE_TYPE_MAX_SIZE__GCHECKSUM = 0;
    public static final int BASE_TYPE_MAX_SIZE__GTIMESTAMP = 1;
    public static final int BASE_TYPE_MAX_SIZE__CHECKSUM = 2;
    public static final int BASE_TYPE_MAX_SIZE__TIMESTAMP = 3;
    public static final int BASE_TYPE_MAX_SIZE__BASE_TYPE_DIRECT_DEFINITION = 4;
    public static final int BASE_TYPE_MAX_SIZE__GMAX_BASE_TYPE_SIZE = 5;
    public static final int BASE_TYPE_MAX_SIZE__MAX_BASE_TYPE_SIZE = 6;
    public static final int BASE_TYPE_MAX_SIZE_FEATURE_COUNT = 7;
    public static final int SW_BASE_TYPE = 7;
    public static final int SW_BASE_TYPE__GCHECKSUM = 0;
    public static final int SW_BASE_TYPE__GTIMESTAMP = 1;
    public static final int SW_BASE_TYPE__CHECKSUM = 2;
    public static final int SW_BASE_TYPE__TIMESTAMP = 3;
    public static final int SW_BASE_TYPE__GSHORT_NAME = 4;
    public static final int SW_BASE_TYPE__GUUID = 5;
    public static final int SW_BASE_TYPE__GCATEGORY = 6;
    public static final int SW_BASE_TYPE__GDESC = 7;
    public static final int SW_BASE_TYPE__SHORT_NAME = 8;
    public static final int SW_BASE_TYPE__LONG_NAME = 9;
    public static final int SW_BASE_TYPE__DESC = 10;
    public static final int SW_BASE_TYPE__CATEGORY = 11;
    public static final int SW_BASE_TYPE__ADMIN_DATA = 12;
    public static final int SW_BASE_TYPE__INTRODUCTION = 13;
    public static final int SW_BASE_TYPE__UUID = 14;
    public static final int SW_BASE_TYPE__ALL_EXTENSIONS = 15;
    public static final int SW_BASE_TYPE__CONTAINED_EXTENSIONS = 16;
    public static final int SW_BASE_TYPE__GAR_PACKAGE = 17;
    public static final int SW_BASE_TYPE__AR_PACKAGE = 18;
    public static final int SW_BASE_TYPE__GBASE_TYPE_DEFINITION_TYPE = 19;
    public static final int SW_BASE_TYPE__BASE_TYPE_DEFINITION_TYPE = 20;
    public static final int SW_BASE_TYPE_FEATURE_COUNT = 21;
    public static final int BASE_TYPE_ENCODING_STRING = 8;

    public EClass getBaseType();

    public EReference getBaseType_BaseTypeDefinitionType();

    public EClass getBaseTypeDefinition();

    public EClass getBaseTypeAbsSize();

    public EAttribute getBaseTypeAbsSize_BaseTypeSize();

    public EClass getBaseTypeSizeDefinition();

    public EReference getBaseTypeSizeDefinition_BaseTypeDirectDefinition();

    public EClass getBaseTypeDirectDefinition();

    public EReference getBaseTypeDirectDefinition_BaseTypeSizeDefintionType();

    public EAttribute getBaseTypeDirectDefinition_BaseTypeEncoding();

    public EAttribute getBaseTypeDirectDefinition_MemAlignment();

    public EReference getBaseTypeDirectDefinition_ByteOrder();

    public EClass getBaseTypeIndirectDefinition();

    public EReference getBaseTypeIndirectDefinition_BaseType();

    public EClass getBaseTypeMaxSize();

    public EAttribute getBaseTypeMaxSize_MaxBaseTypeSize();

    public EClass getSwBaseType();

    public EDataType getBaseTypeEncodingString();

    public BasetypesFactory getBasetypesFactory();

    public static interface Literals {
        public static final EClass BASE_TYPE = eINSTANCE.getBaseType();
        public static final EReference BASE_TYPE__BASE_TYPE_DEFINITION_TYPE = eINSTANCE.getBaseType_BaseTypeDefinitionType();
        public static final EClass BASE_TYPE_DEFINITION = eINSTANCE.getBaseTypeDefinition();
        public static final EClass BASE_TYPE_ABS_SIZE = eINSTANCE.getBaseTypeAbsSize();
        public static final EAttribute BASE_TYPE_ABS_SIZE__BASE_TYPE_SIZE = eINSTANCE.getBaseTypeAbsSize_BaseTypeSize();
        public static final EClass BASE_TYPE_SIZE_DEFINITION = eINSTANCE.getBaseTypeSizeDefinition();
        public static final EReference BASE_TYPE_SIZE_DEFINITION__BASE_TYPE_DIRECT_DEFINITION = eINSTANCE.getBaseTypeSizeDefinition_BaseTypeDirectDefinition();
        public static final EClass BASE_TYPE_DIRECT_DEFINITION = eINSTANCE.getBaseTypeDirectDefinition();
        public static final EReference BASE_TYPE_DIRECT_DEFINITION__BASE_TYPE_SIZE_DEFINTION_TYPE = eINSTANCE.getBaseTypeDirectDefinition_BaseTypeSizeDefintionType();
        public static final EAttribute BASE_TYPE_DIRECT_DEFINITION__BASE_TYPE_ENCODING = eINSTANCE.getBaseTypeDirectDefinition_BaseTypeEncoding();
        public static final EAttribute BASE_TYPE_DIRECT_DEFINITION__MEM_ALIGNMENT = eINSTANCE.getBaseTypeDirectDefinition_MemAlignment();
        public static final EReference BASE_TYPE_DIRECT_DEFINITION__BYTE_ORDER = eINSTANCE.getBaseTypeDirectDefinition_ByteOrder();
        public static final EClass BASE_TYPE_INDIRECT_DEFINITION = eINSTANCE.getBaseTypeIndirectDefinition();
        public static final EReference BASE_TYPE_INDIRECT_DEFINITION__BASE_TYPE = eINSTANCE.getBaseTypeIndirectDefinition_BaseType();
        public static final EClass BASE_TYPE_MAX_SIZE = eINSTANCE.getBaseTypeMaxSize();
        public static final EAttribute BASE_TYPE_MAX_SIZE__MAX_BASE_TYPE_SIZE = eINSTANCE.getBaseTypeMaxSize_MaxBaseTypeSize();
        public static final EClass SW_BASE_TYPE = eINSTANCE.getSwBaseType();
        public static final EDataType BASE_TYPE_ENCODING_STRING = eINSTANCE.getBaseTypeEncodingString();
    }
}

