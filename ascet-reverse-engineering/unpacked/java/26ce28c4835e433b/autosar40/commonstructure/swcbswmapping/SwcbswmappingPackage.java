/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar40.commonstructure.swcbswmapping;

import autosar40.commonstructure.swcbswmapping.SwcbswmappingFactory;
import autosar40.commonstructure.swcbswmapping.impl.SwcbswmappingPackageImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface SwcbswmappingPackage
extends EPackage {
    public static final String eNAME = "swcbswmapping";
    public static final String eNS_URI = "http://autosar.org/schema/r4.0/autosar40/cs/sbm";
    public static final String eNS_PREFIX = "";
    public static final SwcbswmappingPackage eINSTANCE = SwcbswmappingPackageImpl.init();
    public static final int SWC_BSW_RUNNABLE_MAPPING = 0;
    public static final int SWC_BSW_RUNNABLE_MAPPING__GCHECKSUM = 0;
    public static final int SWC_BSW_RUNNABLE_MAPPING__GTIMESTAMP = 1;
    public static final int SWC_BSW_RUNNABLE_MAPPING__CHECKSUM = 2;
    public static final int SWC_BSW_RUNNABLE_MAPPING__TIMESTAMP = 3;
    public static final int SWC_BSW_RUNNABLE_MAPPING__SWC_BSW_MAPPING = 4;
    public static final int SWC_BSW_RUNNABLE_MAPPING__BSW_ENTITY = 5;
    public static final int SWC_BSW_RUNNABLE_MAPPING__SWC_RUNNABLE = 6;
    public static final int SWC_BSW_RUNNABLE_MAPPING__VARIATION_POINT = 7;
    public static final int SWC_BSW_RUNNABLE_MAPPING_FEATURE_COUNT = 8;
    public static final int SWC_BSW_SYNCHRONIZED_MODE_GROUP_PROTOTYPE = 1;
    public static final int SWC_BSW_SYNCHRONIZED_MODE_GROUP_PROTOTYPE__GCHECKSUM = 0;
    public static final int SWC_BSW_SYNCHRONIZED_MODE_GROUP_PROTOTYPE__GTIMESTAMP = 1;
    public static final int SWC_BSW_SYNCHRONIZED_MODE_GROUP_PROTOTYPE__CHECKSUM = 2;
    public static final int SWC_BSW_SYNCHRONIZED_MODE_GROUP_PROTOTYPE__TIMESTAMP = 3;
    public static final int SWC_BSW_SYNCHRONIZED_MODE_GROUP_PROTOTYPE__SWC_BSW_MAPPING = 4;
    public static final int SWC_BSW_SYNCHRONIZED_MODE_GROUP_PROTOTYPE__BSW_MODE_GROUP = 5;
    public static final int SWC_BSW_SYNCHRONIZED_MODE_GROUP_PROTOTYPE__SWC_MODE_GROUP = 6;
    public static final int SWC_BSW_SYNCHRONIZED_MODE_GROUP_PROTOTYPE__VARIATION_POINT = 7;
    public static final int SWC_BSW_SYNCHRONIZED_MODE_GROUP_PROTOTYPE_FEATURE_COUNT = 8;
    public static final int SWC_BSW_SYNCHRONIZED_TRIGGER = 2;
    public static final int SWC_BSW_SYNCHRONIZED_TRIGGER__GCHECKSUM = 0;
    public static final int SWC_BSW_SYNCHRONIZED_TRIGGER__GTIMESTAMP = 1;
    public static final int SWC_BSW_SYNCHRONIZED_TRIGGER__CHECKSUM = 2;
    public static final int SWC_BSW_SYNCHRONIZED_TRIGGER__TIMESTAMP = 3;
    public static final int SWC_BSW_SYNCHRONIZED_TRIGGER__SWC_BSW_MAPPING = 4;
    public static final int SWC_BSW_SYNCHRONIZED_TRIGGER__BSW_TRIGGER = 5;
    public static final int SWC_BSW_SYNCHRONIZED_TRIGGER__SWC_TRIGGER = 6;
    public static final int SWC_BSW_SYNCHRONIZED_TRIGGER__VARIATION_POINT = 7;
    public static final int SWC_BSW_SYNCHRONIZED_TRIGGER_FEATURE_COUNT = 8;
    public static final int SWC_BSW_MAPPING = 3;
    public static final int SWC_BSW_MAPPING__GCHECKSUM = 0;
    public static final int SWC_BSW_MAPPING__GTIMESTAMP = 1;
    public static final int SWC_BSW_MAPPING__CHECKSUM = 2;
    public static final int SWC_BSW_MAPPING__TIMESTAMP = 3;
    public static final int SWC_BSW_MAPPING__GSHORT_NAME = 4;
    public static final int SWC_BSW_MAPPING__SHORT_NAME = 5;
    public static final int SWC_BSW_MAPPING__LONG_NAME = 6;
    public static final int SWC_BSW_MAPPING__GUUID = 7;
    public static final int SWC_BSW_MAPPING__GCATEGORY = 8;
    public static final int SWC_BSW_MAPPING__GDESC = 9;
    public static final int SWC_BSW_MAPPING__DESC = 10;
    public static final int SWC_BSW_MAPPING__CATEGORY = 11;
    public static final int SWC_BSW_MAPPING__ADMIN_DATA = 12;
    public static final int SWC_BSW_MAPPING__INTRODUCTION = 13;
    public static final int SWC_BSW_MAPPING__ANNOTATIONS = 14;
    public static final int SWC_BSW_MAPPING__UUID = 15;
    public static final int SWC_BSW_MAPPING__ALL_EXTENSIONS = 16;
    public static final int SWC_BSW_MAPPING__CONTAINED_EXTENSIONS = 17;
    public static final int SWC_BSW_MAPPING__GAR_PACKAGE = 18;
    public static final int SWC_BSW_MAPPING__AR_PACKAGE = 19;
    public static final int SWC_BSW_MAPPING__VARIATION_POINT = 20;
    public static final int SWC_BSW_MAPPING__ATP_CLASSIFIER = 21;
    public static final int SWC_BSW_MAPPING__BSW_BEHAVIOR = 22;
    public static final int SWC_BSW_MAPPING__RUNNABLE_MAPPINGS = 23;
    public static final int SWC_BSW_MAPPING__SWC_BEHAVIOR = 24;
    public static final int SWC_BSW_MAPPING__SYNCHRONIZED_MODE_GROUPS = 25;
    public static final int SWC_BSW_MAPPING__SYNCHRONIZED_TRIGGERS = 26;
    public static final int SWC_BSW_MAPPING_FEATURE_COUNT = 27;

    public EClass getSwcBswRunnableMapping();

    public EReference getSwcBswRunnableMapping_SwcBswMapping();

    public EReference getSwcBswRunnableMapping_BswEntity();

    public EReference getSwcBswRunnableMapping_SwcRunnable();

    public EReference getSwcBswRunnableMapping_VariationPoint();

    public EClass getSwcBswSynchronizedModeGroupPrototype();

    public EReference getSwcBswSynchronizedModeGroupPrototype_SwcBswMapping();

    public EReference getSwcBswSynchronizedModeGroupPrototype_BswModeGroup();

    public EReference getSwcBswSynchronizedModeGroupPrototype_SwcModeGroup();

    public EReference getSwcBswSynchronizedModeGroupPrototype_VariationPoint();

    public EClass getSwcBswSynchronizedTrigger();

    public EReference getSwcBswSynchronizedTrigger_SwcBswMapping();

    public EReference getSwcBswSynchronizedTrigger_BswTrigger();

    public EReference getSwcBswSynchronizedTrigger_SwcTrigger();

    public EReference getSwcBswSynchronizedTrigger_VariationPoint();

    public EClass getSwcBswMapping();

    public EReference getSwcBswMapping_BswBehavior();

    public EReference getSwcBswMapping_RunnableMappings();

    public EReference getSwcBswMapping_SwcBehavior();

    public EReference getSwcBswMapping_SynchronizedModeGroups();

    public EReference getSwcBswMapping_SynchronizedTriggers();

    public SwcbswmappingFactory getSwcbswmappingFactory();

    public static interface Literals {
        public static final EClass SWC_BSW_RUNNABLE_MAPPING = eINSTANCE.getSwcBswRunnableMapping();
        public static final EReference SWC_BSW_RUNNABLE_MAPPING__SWC_BSW_MAPPING = eINSTANCE.getSwcBswRunnableMapping_SwcBswMapping();
        public static final EReference SWC_BSW_RUNNABLE_MAPPING__BSW_ENTITY = eINSTANCE.getSwcBswRunnableMapping_BswEntity();
        public static final EReference SWC_BSW_RUNNABLE_MAPPING__SWC_RUNNABLE = eINSTANCE.getSwcBswRunnableMapping_SwcRunnable();
        public static final EReference SWC_BSW_RUNNABLE_MAPPING__VARIATION_POINT = eINSTANCE.getSwcBswRunnableMapping_VariationPoint();
        public static final EClass SWC_BSW_SYNCHRONIZED_MODE_GROUP_PROTOTYPE = eINSTANCE.getSwcBswSynchronizedModeGroupPrototype();
        public static final EReference SWC_BSW_SYNCHRONIZED_MODE_GROUP_PROTOTYPE__SWC_BSW_MAPPING = eINSTANCE.getSwcBswSynchronizedModeGroupPrototype_SwcBswMapping();
        public static final EReference SWC_BSW_SYNCHRONIZED_MODE_GROUP_PROTOTYPE__BSW_MODE_GROUP = eINSTANCE.getSwcBswSynchronizedModeGroupPrototype_BswModeGroup();
        public static final EReference SWC_BSW_SYNCHRONIZED_MODE_GROUP_PROTOTYPE__SWC_MODE_GROUP = eINSTANCE.getSwcBswSynchronizedModeGroupPrototype_SwcModeGroup();
        public static final EReference SWC_BSW_SYNCHRONIZED_MODE_GROUP_PROTOTYPE__VARIATION_POINT = eINSTANCE.getSwcBswSynchronizedModeGroupPrototype_VariationPoint();
        public static final EClass SWC_BSW_SYNCHRONIZED_TRIGGER = eINSTANCE.getSwcBswSynchronizedTrigger();
        public static final EReference SWC_BSW_SYNCHRONIZED_TRIGGER__SWC_BSW_MAPPING = eINSTANCE.getSwcBswSynchronizedTrigger_SwcBswMapping();
        public static final EReference SWC_BSW_SYNCHRONIZED_TRIGGER__BSW_TRIGGER = eINSTANCE.getSwcBswSynchronizedTrigger_BswTrigger();
        public static final EReference SWC_BSW_SYNCHRONIZED_TRIGGER__SWC_TRIGGER = eINSTANCE.getSwcBswSynchronizedTrigger_SwcTrigger();
        public static final EReference SWC_BSW_SYNCHRONIZED_TRIGGER__VARIATION_POINT = eINSTANCE.getSwcBswSynchronizedTrigger_VariationPoint();
        public static final EClass SWC_BSW_MAPPING = eINSTANCE.getSwcBswMapping();
        public static final EReference SWC_BSW_MAPPING__BSW_BEHAVIOR = eINSTANCE.getSwcBswMapping_BswBehavior();
        public static final EReference SWC_BSW_MAPPING__RUNNABLE_MAPPINGS = eINSTANCE.getSwcBswMapping_RunnableMappings();
        public static final EReference SWC_BSW_MAPPING__SWC_BEHAVIOR = eINSTANCE.getSwcBswMapping_SwcBehavior();
        public static final EReference SWC_BSW_MAPPING__SYNCHRONIZED_MODE_GROUPS = eINSTANCE.getSwcBswMapping_SynchronizedModeGroups();
        public static final EReference SWC_BSW_MAPPING__SYNCHRONIZED_TRIGGERS = eINSTANCE.getSwcBswMapping_SynchronizedTriggers();
    }
}

