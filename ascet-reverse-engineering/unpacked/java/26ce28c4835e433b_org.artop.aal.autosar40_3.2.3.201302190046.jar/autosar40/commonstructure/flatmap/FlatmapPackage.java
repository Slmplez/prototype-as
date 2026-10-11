/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EAttribute
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar40.commonstructure.flatmap;

import autosar40.commonstructure.flatmap.FlatmapFactory;
import autosar40.commonstructure.flatmap.impl.FlatmapPackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface FlatmapPackage
extends EPackage {
    public static final String eNAME = "flatmap";
    public static final String eNS_URI = "http://autosar.org/schema/r4.0/autosar40/cs/fm";
    public static final String eNS_PREFIX = "";
    public static final FlatmapPackage eINSTANCE = FlatmapPackageImpl.init();
    public static final int ALIAS_NAME_ASSIGNMENT = 0;
    public static final int ALIAS_NAME_ASSIGNMENT__GCHECKSUM = 0;
    public static final int ALIAS_NAME_ASSIGNMENT__GTIMESTAMP = 1;
    public static final int ALIAS_NAME_ASSIGNMENT__CHECKSUM = 2;
    public static final int ALIAS_NAME_ASSIGNMENT__TIMESTAMP = 3;
    public static final int ALIAS_NAME_ASSIGNMENT__ALIAS_NAME_SET = 4;
    public static final int ALIAS_NAME_ASSIGNMENT__SHORT_LABEL = 5;
    public static final int ALIAS_NAME_ASSIGNMENT__LABEL = 6;
    public static final int ALIAS_NAME_ASSIGNMENT__IDENTIFIABLE = 7;
    public static final int ALIAS_NAME_ASSIGNMENT__FLAT_INSTANCE = 8;
    public static final int ALIAS_NAME_ASSIGNMENT__VARIATION_POINT = 9;
    public static final int ALIAS_NAME_ASSIGNMENT_FEATURE_COUNT = 10;
    public static final int FLAT_INSTANCE_DESCRIPTOR = 1;
    public static final int FLAT_INSTANCE_DESCRIPTOR__GCHECKSUM = 0;
    public static final int FLAT_INSTANCE_DESCRIPTOR__GTIMESTAMP = 1;
    public static final int FLAT_INSTANCE_DESCRIPTOR__CHECKSUM = 2;
    public static final int FLAT_INSTANCE_DESCRIPTOR__TIMESTAMP = 3;
    public static final int FLAT_INSTANCE_DESCRIPTOR__GSHORT_NAME = 4;
    public static final int FLAT_INSTANCE_DESCRIPTOR__SHORT_NAME = 5;
    public static final int FLAT_INSTANCE_DESCRIPTOR__LONG_NAME = 6;
    public static final int FLAT_INSTANCE_DESCRIPTOR__GUUID = 7;
    public static final int FLAT_INSTANCE_DESCRIPTOR__GCATEGORY = 8;
    public static final int FLAT_INSTANCE_DESCRIPTOR__GDESC = 9;
    public static final int FLAT_INSTANCE_DESCRIPTOR__DESC = 10;
    public static final int FLAT_INSTANCE_DESCRIPTOR__CATEGORY = 11;
    public static final int FLAT_INSTANCE_DESCRIPTOR__ADMIN_DATA = 12;
    public static final int FLAT_INSTANCE_DESCRIPTOR__INTRODUCTION = 13;
    public static final int FLAT_INSTANCE_DESCRIPTOR__ANNOTATIONS = 14;
    public static final int FLAT_INSTANCE_DESCRIPTOR__UUID = 15;
    public static final int FLAT_INSTANCE_DESCRIPTOR__ALL_EXTENSIONS = 16;
    public static final int FLAT_INSTANCE_DESCRIPTOR__CONTAINED_EXTENSIONS = 17;
    public static final int FLAT_INSTANCE_DESCRIPTOR__FLAT_MAP = 18;
    public static final int FLAT_INSTANCE_DESCRIPTOR__ROLE = 19;
    public static final int FLAT_INSTANCE_DESCRIPTOR__SW_DATA_DEF_PROPS = 20;
    public static final int FLAT_INSTANCE_DESCRIPTOR__UPSTREAM_REFERENCE = 21;
    public static final int FLAT_INSTANCE_DESCRIPTOR__ECU_EXTRACT_REFERENCE = 22;
    public static final int FLAT_INSTANCE_DESCRIPTOR__VARIATION_POINT = 23;
    public static final int FLAT_INSTANCE_DESCRIPTOR_FEATURE_COUNT = 24;
    public static final int FLAT_MAP = 2;
    public static final int FLAT_MAP__GCHECKSUM = 0;
    public static final int FLAT_MAP__GTIMESTAMP = 1;
    public static final int FLAT_MAP__CHECKSUM = 2;
    public static final int FLAT_MAP__TIMESTAMP = 3;
    public static final int FLAT_MAP__GSHORT_NAME = 4;
    public static final int FLAT_MAP__SHORT_NAME = 5;
    public static final int FLAT_MAP__LONG_NAME = 6;
    public static final int FLAT_MAP__GUUID = 7;
    public static final int FLAT_MAP__GCATEGORY = 8;
    public static final int FLAT_MAP__GDESC = 9;
    public static final int FLAT_MAP__DESC = 10;
    public static final int FLAT_MAP__CATEGORY = 11;
    public static final int FLAT_MAP__ADMIN_DATA = 12;
    public static final int FLAT_MAP__INTRODUCTION = 13;
    public static final int FLAT_MAP__ANNOTATIONS = 14;
    public static final int FLAT_MAP__UUID = 15;
    public static final int FLAT_MAP__ALL_EXTENSIONS = 16;
    public static final int FLAT_MAP__CONTAINED_EXTENSIONS = 17;
    public static final int FLAT_MAP__GAR_PACKAGE = 18;
    public static final int FLAT_MAP__AR_PACKAGE = 19;
    public static final int FLAT_MAP__VARIATION_POINT = 20;
    public static final int FLAT_MAP__SHORT_NAME_PATTERN = 21;
    public static final int FLAT_MAP__INSTANCES = 22;
    public static final int FLAT_MAP_FEATURE_COUNT = 23;
    public static final int ALIAS_NAME_SET = 3;
    public static final int ALIAS_NAME_SET__GCHECKSUM = 0;
    public static final int ALIAS_NAME_SET__GTIMESTAMP = 1;
    public static final int ALIAS_NAME_SET__CHECKSUM = 2;
    public static final int ALIAS_NAME_SET__TIMESTAMP = 3;
    public static final int ALIAS_NAME_SET__GSHORT_NAME = 4;
    public static final int ALIAS_NAME_SET__SHORT_NAME = 5;
    public static final int ALIAS_NAME_SET__LONG_NAME = 6;
    public static final int ALIAS_NAME_SET__GUUID = 7;
    public static final int ALIAS_NAME_SET__GCATEGORY = 8;
    public static final int ALIAS_NAME_SET__GDESC = 9;
    public static final int ALIAS_NAME_SET__DESC = 10;
    public static final int ALIAS_NAME_SET__CATEGORY = 11;
    public static final int ALIAS_NAME_SET__ADMIN_DATA = 12;
    public static final int ALIAS_NAME_SET__INTRODUCTION = 13;
    public static final int ALIAS_NAME_SET__ANNOTATIONS = 14;
    public static final int ALIAS_NAME_SET__UUID = 15;
    public static final int ALIAS_NAME_SET__ALL_EXTENSIONS = 16;
    public static final int ALIAS_NAME_SET__CONTAINED_EXTENSIONS = 17;
    public static final int ALIAS_NAME_SET__GAR_PACKAGE = 18;
    public static final int ALIAS_NAME_SET__AR_PACKAGE = 19;
    public static final int ALIAS_NAME_SET__VARIATION_POINT = 20;
    public static final int ALIAS_NAME_SET__SHORT_NAME_PATTERN = 21;
    public static final int ALIAS_NAME_SET__ALIAS_NAMES = 22;
    public static final int ALIAS_NAME_SET_FEATURE_COUNT = 23;

    public EClass getAliasNameAssignment();

    public EReference getAliasNameAssignment_AliasNameSet();

    public EAttribute getAliasNameAssignment_ShortLabel();

    public EReference getAliasNameAssignment_Label();

    public EReference getAliasNameAssignment_Identifiable();

    public EReference getAliasNameAssignment_FlatInstance();

    public EReference getAliasNameAssignment_VariationPoint();

    public EClass getFlatInstanceDescriptor();

    public EReference getFlatInstanceDescriptor_FlatMap();

    public EAttribute getFlatInstanceDescriptor_Role();

    public EReference getFlatInstanceDescriptor_SwDataDefProps();

    public EReference getFlatInstanceDescriptor_UpstreamReference();

    public EReference getFlatInstanceDescriptor_EcuExtractReference();

    public EReference getFlatInstanceDescriptor_VariationPoint();

    public EClass getFlatMap();

    public EReference getFlatMap_Instances();

    public EClass getAliasNameSet();

    public EReference getAliasNameSet_AliasNames();

    public FlatmapFactory getFlatmapFactory();

    public static interface Literals {
        public static final EClass ALIAS_NAME_ASSIGNMENT = eINSTANCE.getAliasNameAssignment();
        public static final EReference ALIAS_NAME_ASSIGNMENT__ALIAS_NAME_SET = eINSTANCE.getAliasNameAssignment_AliasNameSet();
        public static final EAttribute ALIAS_NAME_ASSIGNMENT__SHORT_LABEL = eINSTANCE.getAliasNameAssignment_ShortLabel();
        public static final EReference ALIAS_NAME_ASSIGNMENT__LABEL = eINSTANCE.getAliasNameAssignment_Label();
        public static final EReference ALIAS_NAME_ASSIGNMENT__IDENTIFIABLE = eINSTANCE.getAliasNameAssignment_Identifiable();
        public static final EReference ALIAS_NAME_ASSIGNMENT__FLAT_INSTANCE = eINSTANCE.getAliasNameAssignment_FlatInstance();
        public static final EReference ALIAS_NAME_ASSIGNMENT__VARIATION_POINT = eINSTANCE.getAliasNameAssignment_VariationPoint();
        public static final EClass FLAT_INSTANCE_DESCRIPTOR = eINSTANCE.getFlatInstanceDescriptor();
        public static final EReference FLAT_INSTANCE_DESCRIPTOR__FLAT_MAP = eINSTANCE.getFlatInstanceDescriptor_FlatMap();
        public static final EAttribute FLAT_INSTANCE_DESCRIPTOR__ROLE = eINSTANCE.getFlatInstanceDescriptor_Role();
        public static final EReference FLAT_INSTANCE_DESCRIPTOR__SW_DATA_DEF_PROPS = eINSTANCE.getFlatInstanceDescriptor_SwDataDefProps();
        public static final EReference FLAT_INSTANCE_DESCRIPTOR__UPSTREAM_REFERENCE = eINSTANCE.getFlatInstanceDescriptor_UpstreamReference();
        public static final EReference FLAT_INSTANCE_DESCRIPTOR__ECU_EXTRACT_REFERENCE = eINSTANCE.getFlatInstanceDescriptor_EcuExtractReference();
        public static final EReference FLAT_INSTANCE_DESCRIPTOR__VARIATION_POINT = eINSTANCE.getFlatInstanceDescriptor_VariationPoint();
        public static final EClass FLAT_MAP = eINSTANCE.getFlatMap();
        public static final EReference FLAT_MAP__INSTANCES = eINSTANCE.getFlatMap_Instances();
        public static final EClass ALIAS_NAME_SET = eINSTANCE.getAliasNameSet();
        public static final EReference ALIAS_NAME_SET__ALIAS_NAMES = eINSTANCE.getAliasNameSet_AliasNames();
    }
}

