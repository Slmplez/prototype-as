/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EAttribute
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package gautosar.gcommonstructure.gbasetypes;

import gautosar.gcommonstructure.gbasetypes.GbasetypesFactory;
import gautosar.gcommonstructure.gbasetypes.impl.GbasetypesPackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface GbasetypesPackage
extends EPackage {
    public static final String eNAME = "gbasetypes";
    public static final String eNS_URI = "http://artop.org/gautosar/cs/bt";
    public static final String eNS_PREFIX = "";
    public static final GbasetypesPackage eINSTANCE = GbasetypesPackageImpl.init();
    public static final int GBASE_TYPE = 0;
    public static final int GBASE_TYPE__GCHECKSUM = 0;
    public static final int GBASE_TYPE__GTIMESTAMP = 1;
    public static final int GBASE_TYPE__GBASE_TYPE_DEFINITION_TYPE = 2;
    public static final int GBASE_TYPE_FEATURE_COUNT = 3;
    public static final int GBASE_TYPE_DEFINITION = 1;
    public static final int GBASE_TYPE_DEFINITION__GCHECKSUM = 0;
    public static final int GBASE_TYPE_DEFINITION__GTIMESTAMP = 1;
    public static final int GBASE_TYPE_DEFINITION_FEATURE_COUNT = 2;
    public static final int GBASE_TYPE_DIRECT_DEFINITION = 2;
    public static final int GBASE_TYPE_DIRECT_DEFINITION__GCHECKSUM = 0;
    public static final int GBASE_TYPE_DIRECT_DEFINITION__GTIMESTAMP = 1;
    public static final int GBASE_TYPE_DIRECT_DEFINITION__GBASE_TYPE_SIZE_DEFINITION_TYPE = 2;
    public static final int GBASE_TYPE_DIRECT_DEFINITION__GBASE_TYPE_ENCODING = 3;
    public static final int GBASE_TYPE_DIRECT_DEFINITION__GMEM_ALIGNMENT = 4;
    public static final int GBASE_TYPE_DIRECT_DEFINITION__GBYTE_ORDER = 5;
    public static final int GBASE_TYPE_DIRECT_DEFINITION_FEATURE_COUNT = 6;
    public static final int GBASE_TYPE_SIZE_DEFINITION = 3;
    public static final int GBASE_TYPE_SIZE_DEFINITION__GCHECKSUM = 0;
    public static final int GBASE_TYPE_SIZE_DEFINITION__GTIMESTAMP = 1;
    public static final int GBASE_TYPE_SIZE_DEFINITION_FEATURE_COUNT = 2;
    public static final int GBASE_TYPE_ABS_SIZE = 4;
    public static final int GBASE_TYPE_ABS_SIZE__GCHECKSUM = 0;
    public static final int GBASE_TYPE_ABS_SIZE__GTIMESTAMP = 1;
    public static final int GBASE_TYPE_ABS_SIZE__GBASE_TYPE_SIZE = 2;
    public static final int GBASE_TYPE_ABS_SIZE_FEATURE_COUNT = 3;
    public static final int GBASE_TYPE_MAX_SIZE = 5;
    public static final int GBASE_TYPE_MAX_SIZE__GCHECKSUM = 0;
    public static final int GBASE_TYPE_MAX_SIZE__GTIMESTAMP = 1;
    public static final int GBASE_TYPE_MAX_SIZE__GMAX_BASE_TYPE_SIZE = 2;
    public static final int GBASE_TYPE_MAX_SIZE_FEATURE_COUNT = 3;
    public static final int GSW_BASE_TYPE = 6;
    public static final int GSW_BASE_TYPE__GCHECKSUM = 0;
    public static final int GSW_BASE_TYPE__GTIMESTAMP = 1;
    public static final int GSW_BASE_TYPE__GBASE_TYPE_DEFINITION_TYPE = 2;
    public static final int GSW_BASE_TYPE_FEATURE_COUNT = 3;

    public EClass getGBaseType();

    public EReference getGBaseType_GBaseTypeDefinitionType();

    public EClass getGBaseTypeDefinition();

    public EClass getGBaseTypeDirectDefinition();

    public EReference getGBaseTypeDirectDefinition_GBaseTypeSizeDefinitionType();

    public EAttribute getGBaseTypeDirectDefinition_GBaseTypeEncoding();

    public EAttribute getGBaseTypeDirectDefinition_GMemAlignment();

    public EAttribute getGBaseTypeDirectDefinition_GByteOrder();

    public EClass getGBaseTypeSizeDefinition();

    public EClass getGBaseTypeAbsSize();

    public EAttribute getGBaseTypeAbsSize_GBaseTypeSize();

    public EClass getGBaseTypeMaxSize();

    public EAttribute getGBaseTypeMaxSize_GMaxBaseTypeSize();

    public EClass getGSwBaseType();

    public GbasetypesFactory getGbasetypesFactory();

    public static interface Literals {
        public static final EClass GBASE_TYPE = eINSTANCE.getGBaseType();
        public static final EReference GBASE_TYPE__GBASE_TYPE_DEFINITION_TYPE = eINSTANCE.getGBaseType_GBaseTypeDefinitionType();
        public static final EClass GBASE_TYPE_DEFINITION = eINSTANCE.getGBaseTypeDefinition();
        public static final EClass GBASE_TYPE_DIRECT_DEFINITION = eINSTANCE.getGBaseTypeDirectDefinition();
        public static final EReference GBASE_TYPE_DIRECT_DEFINITION__GBASE_TYPE_SIZE_DEFINITION_TYPE = eINSTANCE.getGBaseTypeDirectDefinition_GBaseTypeSizeDefinitionType();
        public static final EAttribute GBASE_TYPE_DIRECT_DEFINITION__GBASE_TYPE_ENCODING = eINSTANCE.getGBaseTypeDirectDefinition_GBaseTypeEncoding();
        public static final EAttribute GBASE_TYPE_DIRECT_DEFINITION__GMEM_ALIGNMENT = eINSTANCE.getGBaseTypeDirectDefinition_GMemAlignment();
        public static final EAttribute GBASE_TYPE_DIRECT_DEFINITION__GBYTE_ORDER = eINSTANCE.getGBaseTypeDirectDefinition_GByteOrder();
        public static final EClass GBASE_TYPE_SIZE_DEFINITION = eINSTANCE.getGBaseTypeSizeDefinition();
        public static final EClass GBASE_TYPE_ABS_SIZE = eINSTANCE.getGBaseTypeAbsSize();
        public static final EAttribute GBASE_TYPE_ABS_SIZE__GBASE_TYPE_SIZE = eINSTANCE.getGBaseTypeAbsSize_GBaseTypeSize();
        public static final EClass GBASE_TYPE_MAX_SIZE = eINSTANCE.getGBaseTypeMaxSize();
        public static final EAttribute GBASE_TYPE_MAX_SIZE__GMAX_BASE_TYPE_SIZE = eINSTANCE.getGBaseTypeMaxSize_GMaxBaseTypeSize();
        public static final EClass GSW_BASE_TYPE = eINSTANCE.getGSwBaseType();
    }
}

