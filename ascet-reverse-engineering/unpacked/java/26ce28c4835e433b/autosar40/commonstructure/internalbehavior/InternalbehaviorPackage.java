/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EAttribute
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar40.commonstructure.internalbehavior;

import autosar40.commonstructure.internalbehavior.InternalbehaviorFactory;
import autosar40.commonstructure.internalbehavior.impl.InternalbehaviorPackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface InternalbehaviorPackage
extends EPackage {
    public static final String eNAME = "internalbehavior";
    public static final String eNS_URI = "http://autosar.org/schema/r4.0/autosar40/cs/ib";
    public static final String eNS_PREFIX = "";
    public static final InternalbehaviorPackage eINSTANCE = InternalbehaviorPackageImpl.init();
    public static final int EXCLUSIVE_AREA = 0;
    public static final int EXCLUSIVE_AREA__GCHECKSUM = 0;
    public static final int EXCLUSIVE_AREA__GTIMESTAMP = 1;
    public static final int EXCLUSIVE_AREA__CHECKSUM = 2;
    public static final int EXCLUSIVE_AREA__TIMESTAMP = 3;
    public static final int EXCLUSIVE_AREA__GSHORT_NAME = 4;
    public static final int EXCLUSIVE_AREA__SHORT_NAME = 5;
    public static final int EXCLUSIVE_AREA__LONG_NAME = 6;
    public static final int EXCLUSIVE_AREA__GUUID = 7;
    public static final int EXCLUSIVE_AREA__GCATEGORY = 8;
    public static final int EXCLUSIVE_AREA__GDESC = 9;
    public static final int EXCLUSIVE_AREA__DESC = 10;
    public static final int EXCLUSIVE_AREA__CATEGORY = 11;
    public static final int EXCLUSIVE_AREA__ADMIN_DATA = 12;
    public static final int EXCLUSIVE_AREA__INTRODUCTION = 13;
    public static final int EXCLUSIVE_AREA__ANNOTATIONS = 14;
    public static final int EXCLUSIVE_AREA__UUID = 15;
    public static final int EXCLUSIVE_AREA__ALL_EXTENSIONS = 16;
    public static final int EXCLUSIVE_AREA__CONTAINED_EXTENSIONS = 17;
    public static final int EXCLUSIVE_AREA__INTERNAL_BEHAVIOR = 18;
    public static final int EXCLUSIVE_AREA__VARIATION_POINT = 19;
    public static final int EXCLUSIVE_AREA_FEATURE_COUNT = 20;
    public static final int INTERNAL_BEHAVIOR = 1;
    public static final int INTERNAL_BEHAVIOR__GCHECKSUM = 0;
    public static final int INTERNAL_BEHAVIOR__GTIMESTAMP = 1;
    public static final int INTERNAL_BEHAVIOR__CHECKSUM = 2;
    public static final int INTERNAL_BEHAVIOR__TIMESTAMP = 3;
    public static final int INTERNAL_BEHAVIOR__GSHORT_NAME = 4;
    public static final int INTERNAL_BEHAVIOR__SHORT_NAME = 5;
    public static final int INTERNAL_BEHAVIOR__LONG_NAME = 6;
    public static final int INTERNAL_BEHAVIOR__GUUID = 7;
    public static final int INTERNAL_BEHAVIOR__GCATEGORY = 8;
    public static final int INTERNAL_BEHAVIOR__GDESC = 9;
    public static final int INTERNAL_BEHAVIOR__DESC = 10;
    public static final int INTERNAL_BEHAVIOR__CATEGORY = 11;
    public static final int INTERNAL_BEHAVIOR__ADMIN_DATA = 12;
    public static final int INTERNAL_BEHAVIOR__INTRODUCTION = 13;
    public static final int INTERNAL_BEHAVIOR__ANNOTATIONS = 14;
    public static final int INTERNAL_BEHAVIOR__UUID = 15;
    public static final int INTERNAL_BEHAVIOR__ALL_EXTENSIONS = 16;
    public static final int INTERNAL_BEHAVIOR__CONTAINED_EXTENSIONS = 17;
    public static final int INTERNAL_BEHAVIOR__ATP_CLASSIFIER = 18;
    public static final int INTERNAL_BEHAVIOR__GEXCLUSIVE_AREAS = 19;
    public static final int INTERNAL_BEHAVIOR__CONSTANT_MEMORIES = 20;
    public static final int INTERNAL_BEHAVIOR__CONSTANT_VALUE_MAPPINGS = 21;
    public static final int INTERNAL_BEHAVIOR__DATA_TYPE_MAPPINGS = 22;
    public static final int INTERNAL_BEHAVIOR__EXCLUSIVE_AREAS = 23;
    public static final int INTERNAL_BEHAVIOR__STATIC_MEMORIES = 24;
    public static final int INTERNAL_BEHAVIOR_FEATURE_COUNT = 25;
    public static final int EXECUTABLE_ENTITY = 2;
    public static final int EXECUTABLE_ENTITY__GCHECKSUM = 0;
    public static final int EXECUTABLE_ENTITY__GTIMESTAMP = 1;
    public static final int EXECUTABLE_ENTITY__CHECKSUM = 2;
    public static final int EXECUTABLE_ENTITY__TIMESTAMP = 3;
    public static final int EXECUTABLE_ENTITY__GSHORT_NAME = 4;
    public static final int EXECUTABLE_ENTITY__SHORT_NAME = 5;
    public static final int EXECUTABLE_ENTITY__LONG_NAME = 6;
    public static final int EXECUTABLE_ENTITY__GUUID = 7;
    public static final int EXECUTABLE_ENTITY__GCATEGORY = 8;
    public static final int EXECUTABLE_ENTITY__GDESC = 9;
    public static final int EXECUTABLE_ENTITY__DESC = 10;
    public static final int EXECUTABLE_ENTITY__CATEGORY = 11;
    public static final int EXECUTABLE_ENTITY__ADMIN_DATA = 12;
    public static final int EXECUTABLE_ENTITY__INTRODUCTION = 13;
    public static final int EXECUTABLE_ENTITY__ANNOTATIONS = 14;
    public static final int EXECUTABLE_ENTITY__UUID = 15;
    public static final int EXECUTABLE_ENTITY__ALL_EXTENSIONS = 16;
    public static final int EXECUTABLE_ENTITY__CONTAINED_EXTENSIONS = 17;
    public static final int EXECUTABLE_ENTITY__GRUNS_INSIDE_EXCLUSIVE_AREAS = 18;
    public static final int EXECUTABLE_ENTITY__GCAN_ENTER_EXCLUSIVE_AREAS = 19;
    public static final int EXECUTABLE_ENTITY__CAN_ENTER_EXCLUSIVE_AREAS = 20;
    public static final int EXECUTABLE_ENTITY__MINIMUM_START_INTERVAL = 21;
    public static final int EXECUTABLE_ENTITY__RUNS_INSIDE_EXCLUSIVE_AREAS = 22;
    public static final int EXECUTABLE_ENTITY__SW_ADDR_METHOD = 23;
    public static final int EXECUTABLE_ENTITY_FEATURE_COUNT = 24;

    public EClass getExclusiveArea();

    public EReference getExclusiveArea_InternalBehavior();

    public EReference getExclusiveArea_VariationPoint();

    public EClass getInternalBehavior();

    public EReference getInternalBehavior_ConstantMemories();

    public EReference getInternalBehavior_ConstantValueMappings();

    public EReference getInternalBehavior_DataTypeMappings();

    public EReference getInternalBehavior_ExclusiveAreas();

    public EReference getInternalBehavior_StaticMemories();

    public EClass getExecutableEntity();

    public EReference getExecutableEntity_CanEnterExclusiveAreas();

    public EAttribute getExecutableEntity_MinimumStartInterval();

    public EReference getExecutableEntity_RunsInsideExclusiveAreas();

    public EReference getExecutableEntity_SwAddrMethod();

    public InternalbehaviorFactory getInternalbehaviorFactory();

    public static interface Literals {
        public static final EClass EXCLUSIVE_AREA = eINSTANCE.getExclusiveArea();
        public static final EReference EXCLUSIVE_AREA__INTERNAL_BEHAVIOR = eINSTANCE.getExclusiveArea_InternalBehavior();
        public static final EReference EXCLUSIVE_AREA__VARIATION_POINT = eINSTANCE.getExclusiveArea_VariationPoint();
        public static final EClass INTERNAL_BEHAVIOR = eINSTANCE.getInternalBehavior();
        public static final EReference INTERNAL_BEHAVIOR__CONSTANT_MEMORIES = eINSTANCE.getInternalBehavior_ConstantMemories();
        public static final EReference INTERNAL_BEHAVIOR__CONSTANT_VALUE_MAPPINGS = eINSTANCE.getInternalBehavior_ConstantValueMappings();
        public static final EReference INTERNAL_BEHAVIOR__DATA_TYPE_MAPPINGS = eINSTANCE.getInternalBehavior_DataTypeMappings();
        public static final EReference INTERNAL_BEHAVIOR__EXCLUSIVE_AREAS = eINSTANCE.getInternalBehavior_ExclusiveAreas();
        public static final EReference INTERNAL_BEHAVIOR__STATIC_MEMORIES = eINSTANCE.getInternalBehavior_StaticMemories();
        public static final EClass EXECUTABLE_ENTITY = eINSTANCE.getExecutableEntity();
        public static final EReference EXECUTABLE_ENTITY__CAN_ENTER_EXCLUSIVE_AREAS = eINSTANCE.getExecutableEntity_CanEnterExclusiveAreas();
        public static final EAttribute EXECUTABLE_ENTITY__MINIMUM_START_INTERVAL = eINSTANCE.getExecutableEntity_MinimumStartInterval();
        public static final EReference EXECUTABLE_ENTITY__RUNS_INSIDE_EXCLUSIVE_AREAS = eINSTANCE.getExecutableEntity_RunsInsideExclusiveAreas();
        public static final EReference EXECUTABLE_ENTITY__SW_ADDR_METHOD = eINSTANCE.getExecutableEntity_SwAddrMethod();
    }
}

