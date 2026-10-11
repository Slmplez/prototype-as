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
package autosar3x.bswmodule.bswbehavior;

import autosar3x.bswmodule.bswbehavior.BswbehaviorFactory;
import autosar3x.bswmodule.bswbehavior.impl.BswbehaviorPackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EEnum;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface BswbehaviorPackage
extends EPackage {
    public static final String eNAME = "bswbehavior";
    public static final String eNS_URI = "http://autosar.org/3.2.1/autosar3x/bm/bb";
    public static final String eNS_PREFIX = "";
    public static final BswbehaviorPackage eINSTANCE = BswbehaviorPackageImpl.init();
    public static final int BSW_BEHAVIOR = 0;
    public static final int BSW_BEHAVIOR__GCHECKSUM = 0;
    public static final int BSW_BEHAVIOR__GTIMESTAMP = 1;
    public static final int BSW_BEHAVIOR__CHECKSUM = 2;
    public static final int BSW_BEHAVIOR__TIMESTAMP = 3;
    public static final int BSW_BEHAVIOR__GSHORT_NAME = 4;
    public static final int BSW_BEHAVIOR__GUUID = 5;
    public static final int BSW_BEHAVIOR__GCATEGORY = 6;
    public static final int BSW_BEHAVIOR__GDESC = 7;
    public static final int BSW_BEHAVIOR__SHORT_NAME = 8;
    public static final int BSW_BEHAVIOR__LONG_NAME = 9;
    public static final int BSW_BEHAVIOR__DESC = 10;
    public static final int BSW_BEHAVIOR__CATEGORY = 11;
    public static final int BSW_BEHAVIOR__ADMIN_DATA = 12;
    public static final int BSW_BEHAVIOR__INTRODUCTION = 13;
    public static final int BSW_BEHAVIOR__UUID = 14;
    public static final int BSW_BEHAVIOR__ALL_EXTENSIONS = 15;
    public static final int BSW_BEHAVIOR__CONTAINED_EXTENSIONS = 16;
    public static final int BSW_BEHAVIOR__GAR_PACKAGE = 17;
    public static final int BSW_BEHAVIOR__AR_PACKAGE = 18;
    public static final int BSW_BEHAVIOR__ENTITIES = 19;
    public static final int BSW_BEHAVIOR__EVENTS = 20;
    public static final int BSW_BEHAVIOR__EXCLUSIVE_AREAS = 21;
    public static final int BSW_BEHAVIOR__MODULE = 22;
    public static final int BSW_BEHAVIOR_FEATURE_COUNT = 23;
    public static final int BSW_EVENT = 1;
    public static final int BSW_EVENT__GCHECKSUM = 0;
    public static final int BSW_EVENT__GTIMESTAMP = 1;
    public static final int BSW_EVENT__CHECKSUM = 2;
    public static final int BSW_EVENT__TIMESTAMP = 3;
    public static final int BSW_EVENT__GSHORT_NAME = 4;
    public static final int BSW_EVENT__GUUID = 5;
    public static final int BSW_EVENT__GCATEGORY = 6;
    public static final int BSW_EVENT__GDESC = 7;
    public static final int BSW_EVENT__SHORT_NAME = 8;
    public static final int BSW_EVENT__LONG_NAME = 9;
    public static final int BSW_EVENT__DESC = 10;
    public static final int BSW_EVENT__CATEGORY = 11;
    public static final int BSW_EVENT__ADMIN_DATA = 12;
    public static final int BSW_EVENT__INTRODUCTION = 13;
    public static final int BSW_EVENT__UUID = 14;
    public static final int BSW_EVENT__ALL_EXTENSIONS = 15;
    public static final int BSW_EVENT__CONTAINED_EXTENSIONS = 16;
    public static final int BSW_EVENT__BSW_BEHAVIOR = 17;
    public static final int BSW_EVENT__STARTS_ON_EVENT = 18;
    public static final int BSW_EVENT_FEATURE_COUNT = 19;
    public static final int BSW_MODULE_ENTITY = 6;
    public static final int BSW_MODULE_ENTITY__GCHECKSUM = 0;
    public static final int BSW_MODULE_ENTITY__GTIMESTAMP = 1;
    public static final int BSW_MODULE_ENTITY__CHECKSUM = 2;
    public static final int BSW_MODULE_ENTITY__TIMESTAMP = 3;
    public static final int BSW_MODULE_ENTITY__GSHORT_NAME = 4;
    public static final int BSW_MODULE_ENTITY__GUUID = 5;
    public static final int BSW_MODULE_ENTITY__GCATEGORY = 6;
    public static final int BSW_MODULE_ENTITY__GDESC = 7;
    public static final int BSW_MODULE_ENTITY__SHORT_NAME = 8;
    public static final int BSW_MODULE_ENTITY__LONG_NAME = 9;
    public static final int BSW_MODULE_ENTITY__DESC = 10;
    public static final int BSW_MODULE_ENTITY__CATEGORY = 11;
    public static final int BSW_MODULE_ENTITY__ADMIN_DATA = 12;
    public static final int BSW_MODULE_ENTITY__INTRODUCTION = 13;
    public static final int BSW_MODULE_ENTITY__UUID = 14;
    public static final int BSW_MODULE_ENTITY__ALL_EXTENSIONS = 15;
    public static final int BSW_MODULE_ENTITY__CONTAINED_EXTENSIONS = 16;
    public static final int BSW_MODULE_ENTITY__BSW_BEHAVIOR = 17;
    public static final int BSW_MODULE_ENTITY__ACTIVATION_POINTS = 18;
    public static final int BSW_MODULE_ENTITY__CALLED_ENTRIES = 19;
    public static final int BSW_MODULE_ENTITY__CAN_ENTER_EXCLUSIVE_AREAS = 20;
    public static final int BSW_MODULE_ENTITY__CANCELLATION_POINTS = 21;
    public static final int BSW_MODULE_ENTITY__IMPLEMENTED_ENTRY = 22;
    public static final int BSW_MODULE_ENTITY_FEATURE_COUNT = 23;
    public static final int BSW_SCHEDULABLE_ENTITY = 2;
    public static final int BSW_SCHEDULABLE_ENTITY__GCHECKSUM = 0;
    public static final int BSW_SCHEDULABLE_ENTITY__GTIMESTAMP = 1;
    public static final int BSW_SCHEDULABLE_ENTITY__CHECKSUM = 2;
    public static final int BSW_SCHEDULABLE_ENTITY__TIMESTAMP = 3;
    public static final int BSW_SCHEDULABLE_ENTITY__GSHORT_NAME = 4;
    public static final int BSW_SCHEDULABLE_ENTITY__GUUID = 5;
    public static final int BSW_SCHEDULABLE_ENTITY__GCATEGORY = 6;
    public static final int BSW_SCHEDULABLE_ENTITY__GDESC = 7;
    public static final int BSW_SCHEDULABLE_ENTITY__SHORT_NAME = 8;
    public static final int BSW_SCHEDULABLE_ENTITY__LONG_NAME = 9;
    public static final int BSW_SCHEDULABLE_ENTITY__DESC = 10;
    public static final int BSW_SCHEDULABLE_ENTITY__CATEGORY = 11;
    public static final int BSW_SCHEDULABLE_ENTITY__ADMIN_DATA = 12;
    public static final int BSW_SCHEDULABLE_ENTITY__INTRODUCTION = 13;
    public static final int BSW_SCHEDULABLE_ENTITY__UUID = 14;
    public static final int BSW_SCHEDULABLE_ENTITY__ALL_EXTENSIONS = 15;
    public static final int BSW_SCHEDULABLE_ENTITY__CONTAINED_EXTENSIONS = 16;
    public static final int BSW_SCHEDULABLE_ENTITY__BSW_BEHAVIOR = 17;
    public static final int BSW_SCHEDULABLE_ENTITY__ACTIVATION_POINTS = 18;
    public static final int BSW_SCHEDULABLE_ENTITY__CALLED_ENTRIES = 19;
    public static final int BSW_SCHEDULABLE_ENTITY__CAN_ENTER_EXCLUSIVE_AREAS = 20;
    public static final int BSW_SCHEDULABLE_ENTITY__CANCELLATION_POINTS = 21;
    public static final int BSW_SCHEDULABLE_ENTITY__IMPLEMENTED_ENTRY = 22;
    public static final int BSW_SCHEDULABLE_ENTITY_FEATURE_COUNT = 23;
    public static final int BSW_CYCLIC_EVENT = 3;
    public static final int BSW_CYCLIC_EVENT__GCHECKSUM = 0;
    public static final int BSW_CYCLIC_EVENT__GTIMESTAMP = 1;
    public static final int BSW_CYCLIC_EVENT__CHECKSUM = 2;
    public static final int BSW_CYCLIC_EVENT__TIMESTAMP = 3;
    public static final int BSW_CYCLIC_EVENT__GSHORT_NAME = 4;
    public static final int BSW_CYCLIC_EVENT__GUUID = 5;
    public static final int BSW_CYCLIC_EVENT__GCATEGORY = 6;
    public static final int BSW_CYCLIC_EVENT__GDESC = 7;
    public static final int BSW_CYCLIC_EVENT__SHORT_NAME = 8;
    public static final int BSW_CYCLIC_EVENT__LONG_NAME = 9;
    public static final int BSW_CYCLIC_EVENT__DESC = 10;
    public static final int BSW_CYCLIC_EVENT__CATEGORY = 11;
    public static final int BSW_CYCLIC_EVENT__ADMIN_DATA = 12;
    public static final int BSW_CYCLIC_EVENT__INTRODUCTION = 13;
    public static final int BSW_CYCLIC_EVENT__UUID = 14;
    public static final int BSW_CYCLIC_EVENT__ALL_EXTENSIONS = 15;
    public static final int BSW_CYCLIC_EVENT__CONTAINED_EXTENSIONS = 16;
    public static final int BSW_CYCLIC_EVENT__BSW_BEHAVIOR = 17;
    public static final int BSW_CYCLIC_EVENT__STARTS_ON_EVENT = 18;
    public static final int BSW_CYCLIC_EVENT__CYCLE_TIME = 19;
    public static final int BSW_CYCLIC_EVENT_FEATURE_COUNT = 20;
    public static final int BSW_INTERRUPT_ENTITY = 4;
    public static final int BSW_INTERRUPT_ENTITY__GCHECKSUM = 0;
    public static final int BSW_INTERRUPT_ENTITY__GTIMESTAMP = 1;
    public static final int BSW_INTERRUPT_ENTITY__CHECKSUM = 2;
    public static final int BSW_INTERRUPT_ENTITY__TIMESTAMP = 3;
    public static final int BSW_INTERRUPT_ENTITY__GSHORT_NAME = 4;
    public static final int BSW_INTERRUPT_ENTITY__GUUID = 5;
    public static final int BSW_INTERRUPT_ENTITY__GCATEGORY = 6;
    public static final int BSW_INTERRUPT_ENTITY__GDESC = 7;
    public static final int BSW_INTERRUPT_ENTITY__SHORT_NAME = 8;
    public static final int BSW_INTERRUPT_ENTITY__LONG_NAME = 9;
    public static final int BSW_INTERRUPT_ENTITY__DESC = 10;
    public static final int BSW_INTERRUPT_ENTITY__CATEGORY = 11;
    public static final int BSW_INTERRUPT_ENTITY__ADMIN_DATA = 12;
    public static final int BSW_INTERRUPT_ENTITY__INTRODUCTION = 13;
    public static final int BSW_INTERRUPT_ENTITY__UUID = 14;
    public static final int BSW_INTERRUPT_ENTITY__ALL_EXTENSIONS = 15;
    public static final int BSW_INTERRUPT_ENTITY__CONTAINED_EXTENSIONS = 16;
    public static final int BSW_INTERRUPT_ENTITY__BSW_BEHAVIOR = 17;
    public static final int BSW_INTERRUPT_ENTITY__ACTIVATION_POINTS = 18;
    public static final int BSW_INTERRUPT_ENTITY__CALLED_ENTRIES = 19;
    public static final int BSW_INTERRUPT_ENTITY__CAN_ENTER_EXCLUSIVE_AREAS = 20;
    public static final int BSW_INTERRUPT_ENTITY__CANCELLATION_POINTS = 21;
    public static final int BSW_INTERRUPT_ENTITY__IMPLEMENTED_ENTRY = 22;
    public static final int BSW_INTERRUPT_ENTITY__INTERRUPT_CATEGORY = 23;
    public static final int BSW_INTERRUPT_ENTITY__INTERRUPT_SOURCE = 24;
    public static final int BSW_INTERRUPT_ENTITY_FEATURE_COUNT = 25;
    public static final int BSW_SPORADIC_EVENT = 5;
    public static final int BSW_SPORADIC_EVENT__GCHECKSUM = 0;
    public static final int BSW_SPORADIC_EVENT__GTIMESTAMP = 1;
    public static final int BSW_SPORADIC_EVENT__CHECKSUM = 2;
    public static final int BSW_SPORADIC_EVENT__TIMESTAMP = 3;
    public static final int BSW_SPORADIC_EVENT__GSHORT_NAME = 4;
    public static final int BSW_SPORADIC_EVENT__GUUID = 5;
    public static final int BSW_SPORADIC_EVENT__GCATEGORY = 6;
    public static final int BSW_SPORADIC_EVENT__GDESC = 7;
    public static final int BSW_SPORADIC_EVENT__SHORT_NAME = 8;
    public static final int BSW_SPORADIC_EVENT__LONG_NAME = 9;
    public static final int BSW_SPORADIC_EVENT__DESC = 10;
    public static final int BSW_SPORADIC_EVENT__CATEGORY = 11;
    public static final int BSW_SPORADIC_EVENT__ADMIN_DATA = 12;
    public static final int BSW_SPORADIC_EVENT__INTRODUCTION = 13;
    public static final int BSW_SPORADIC_EVENT__UUID = 14;
    public static final int BSW_SPORADIC_EVENT__ALL_EXTENSIONS = 15;
    public static final int BSW_SPORADIC_EVENT__CONTAINED_EXTENSIONS = 16;
    public static final int BSW_SPORADIC_EVENT__BSW_BEHAVIOR = 17;
    public static final int BSW_SPORADIC_EVENT__STARTS_ON_EVENT = 18;
    public static final int BSW_SPORADIC_EVENT__DELAY_TIME = 19;
    public static final int BSW_SPORADIC_EVENT_FEATURE_COUNT = 20;
    public static final int BSW_INTERRUPT_CATEGORY = 7;

    public EClass getBswBehavior();

    public EReference getBswBehavior_Entities();

    public EReference getBswBehavior_Events();

    public EReference getBswBehavior_ExclusiveAreas();

    public EReference getBswBehavior_Module();

    public EClass getBswEvent();

    public EReference getBswEvent_BswBehavior();

    public EReference getBswEvent_StartsOnEvent();

    public EClass getBswSchedulableEntity();

    public EClass getBswCyclicEvent();

    public EAttribute getBswCyclicEvent_CycleTime();

    public EClass getBswInterruptEntity();

    public EAttribute getBswInterruptEntity_InterruptCategory();

    public EAttribute getBswInterruptEntity_InterruptSource();

    public EClass getBswSporadicEvent();

    public EAttribute getBswSporadicEvent_DelayTime();

    public EClass getBswModuleEntity();

    public EReference getBswModuleEntity_BswBehavior();

    public EReference getBswModuleEntity_ActivationPoints();

    public EReference getBswModuleEntity_CalledEntries();

    public EReference getBswModuleEntity_CanEnterExclusiveAreas();

    public EReference getBswModuleEntity_CancellationPoints();

    public EReference getBswModuleEntity_ImplementedEntry();

    public EEnum getBswInterruptCategory();

    public BswbehaviorFactory getBswbehaviorFactory();

    public static interface Literals {
        public static final EClass BSW_BEHAVIOR = eINSTANCE.getBswBehavior();
        public static final EReference BSW_BEHAVIOR__ENTITIES = eINSTANCE.getBswBehavior_Entities();
        public static final EReference BSW_BEHAVIOR__EVENTS = eINSTANCE.getBswBehavior_Events();
        public static final EReference BSW_BEHAVIOR__EXCLUSIVE_AREAS = eINSTANCE.getBswBehavior_ExclusiveAreas();
        public static final EReference BSW_BEHAVIOR__MODULE = eINSTANCE.getBswBehavior_Module();
        public static final EClass BSW_EVENT = eINSTANCE.getBswEvent();
        public static final EReference BSW_EVENT__BSW_BEHAVIOR = eINSTANCE.getBswEvent_BswBehavior();
        public static final EReference BSW_EVENT__STARTS_ON_EVENT = eINSTANCE.getBswEvent_StartsOnEvent();
        public static final EClass BSW_SCHEDULABLE_ENTITY = eINSTANCE.getBswSchedulableEntity();
        public static final EClass BSW_CYCLIC_EVENT = eINSTANCE.getBswCyclicEvent();
        public static final EAttribute BSW_CYCLIC_EVENT__CYCLE_TIME = eINSTANCE.getBswCyclicEvent_CycleTime();
        public static final EClass BSW_INTERRUPT_ENTITY = eINSTANCE.getBswInterruptEntity();
        public static final EAttribute BSW_INTERRUPT_ENTITY__INTERRUPT_CATEGORY = eINSTANCE.getBswInterruptEntity_InterruptCategory();
        public static final EAttribute BSW_INTERRUPT_ENTITY__INTERRUPT_SOURCE = eINSTANCE.getBswInterruptEntity_InterruptSource();
        public static final EClass BSW_SPORADIC_EVENT = eINSTANCE.getBswSporadicEvent();
        public static final EAttribute BSW_SPORADIC_EVENT__DELAY_TIME = eINSTANCE.getBswSporadicEvent_DelayTime();
        public static final EClass BSW_MODULE_ENTITY = eINSTANCE.getBswModuleEntity();
        public static final EReference BSW_MODULE_ENTITY__BSW_BEHAVIOR = eINSTANCE.getBswModuleEntity_BswBehavior();
        public static final EReference BSW_MODULE_ENTITY__ACTIVATION_POINTS = eINSTANCE.getBswModuleEntity_ActivationPoints();
        public static final EReference BSW_MODULE_ENTITY__CALLED_ENTRIES = eINSTANCE.getBswModuleEntity_CalledEntries();
        public static final EReference BSW_MODULE_ENTITY__CAN_ENTER_EXCLUSIVE_AREAS = eINSTANCE.getBswModuleEntity_CanEnterExclusiveAreas();
        public static final EReference BSW_MODULE_ENTITY__CANCELLATION_POINTS = eINSTANCE.getBswModuleEntity_CancellationPoints();
        public static final EReference BSW_MODULE_ENTITY__IMPLEMENTED_ENTRY = eINSTANCE.getBswModuleEntity_ImplementedEntry();
        public static final EEnum BSW_INTERRUPT_CATEGORY = eINSTANCE.getBswInterruptCategory();
    }
}

