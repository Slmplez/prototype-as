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
package autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventbswinternalbehavior;

import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventbswinternalbehavior.TdeventbswinternalbehaviorFactory;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventbswinternalbehavior.impl.TdeventbswinternalbehaviorPackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EEnum;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface TdeventbswinternalbehaviorPackage
extends EPackage {
    public static final String eNAME = "tdeventbswinternalbehavior";
    public static final String eNS_URI = "http://autosar.org/schema/r4.0/autosar40/cs/t/td/tde/tdebib";
    public static final String eNS_PREFIX = "";
    public static final TdeventbswinternalbehaviorPackage eINSTANCE = TdeventbswinternalbehaviorPackageImpl.init();
    public static final int TD_EVENT_BSW_INTERNAL_BEHAVIOR = 0;
    public static final int TD_EVENT_BSW_INTERNAL_BEHAVIOR__GCHECKSUM = 0;
    public static final int TD_EVENT_BSW_INTERNAL_BEHAVIOR__GTIMESTAMP = 1;
    public static final int TD_EVENT_BSW_INTERNAL_BEHAVIOR__CHECKSUM = 2;
    public static final int TD_EVENT_BSW_INTERNAL_BEHAVIOR__TIMESTAMP = 3;
    public static final int TD_EVENT_BSW_INTERNAL_BEHAVIOR__GSHORT_NAME = 4;
    public static final int TD_EVENT_BSW_INTERNAL_BEHAVIOR__SHORT_NAME = 5;
    public static final int TD_EVENT_BSW_INTERNAL_BEHAVIOR__LONG_NAME = 6;
    public static final int TD_EVENT_BSW_INTERNAL_BEHAVIOR__GUUID = 7;
    public static final int TD_EVENT_BSW_INTERNAL_BEHAVIOR__GCATEGORY = 8;
    public static final int TD_EVENT_BSW_INTERNAL_BEHAVIOR__GDESC = 9;
    public static final int TD_EVENT_BSW_INTERNAL_BEHAVIOR__DESC = 10;
    public static final int TD_EVENT_BSW_INTERNAL_BEHAVIOR__CATEGORY = 11;
    public static final int TD_EVENT_BSW_INTERNAL_BEHAVIOR__ADMIN_DATA = 12;
    public static final int TD_EVENT_BSW_INTERNAL_BEHAVIOR__INTRODUCTION = 13;
    public static final int TD_EVENT_BSW_INTERNAL_BEHAVIOR__ANNOTATIONS = 14;
    public static final int TD_EVENT_BSW_INTERNAL_BEHAVIOR__UUID = 15;
    public static final int TD_EVENT_BSW_INTERNAL_BEHAVIOR__ALL_EXTENSIONS = 16;
    public static final int TD_EVENT_BSW_INTERNAL_BEHAVIOR__CONTAINED_EXTENSIONS = 17;
    public static final int TD_EVENT_BSW_INTERNAL_BEHAVIOR__TIMING_EXTENSION = 18;
    public static final int TD_EVENT_BSW_INTERNAL_BEHAVIOR__VARIATION_POINT = 19;
    public static final int TD_EVENT_BSW_INTERNAL_BEHAVIOR__OCCURRENCE_EXPRESSION = 20;
    public static final int TD_EVENT_BSW_INTERNAL_BEHAVIOR__BSW_MODULE_ENTITY = 21;
    public static final int TD_EVENT_BSW_INTERNAL_BEHAVIOR__TD_EVENT_BSW_INTERNAL_BEHAVIOR_TYPE = 22;
    public static final int TD_EVENT_BSW_INTERNAL_BEHAVIOR_FEATURE_COUNT = 23;
    public static final int TD_EVENT_BSW_INTERNAL_BEHAVIOR_TYPE_ENUM = 1;

    public EClass getTDEventBswInternalBehavior();

    public EReference getTDEventBswInternalBehavior_BswModuleEntity();

    public EAttribute getTDEventBswInternalBehavior_TdEventBswInternalBehaviorType();

    public EEnum getTDEventBswInternalBehaviorTypeEnum();

    public TdeventbswinternalbehaviorFactory getTdeventbswinternalbehaviorFactory();

    public static interface Literals {
        public static final EClass TD_EVENT_BSW_INTERNAL_BEHAVIOR = eINSTANCE.getTDEventBswInternalBehavior();
        public static final EReference TD_EVENT_BSW_INTERNAL_BEHAVIOR__BSW_MODULE_ENTITY = eINSTANCE.getTDEventBswInternalBehavior_BswModuleEntity();
        public static final EAttribute TD_EVENT_BSW_INTERNAL_BEHAVIOR__TD_EVENT_BSW_INTERNAL_BEHAVIOR_TYPE = eINSTANCE.getTDEventBswInternalBehavior_TdEventBswInternalBehaviorType();
        public static final EEnum TD_EVENT_BSW_INTERNAL_BEHAVIOR_TYPE_ENUM = eINSTANCE.getTDEventBswInternalBehaviorTypeEnum();
    }
}

