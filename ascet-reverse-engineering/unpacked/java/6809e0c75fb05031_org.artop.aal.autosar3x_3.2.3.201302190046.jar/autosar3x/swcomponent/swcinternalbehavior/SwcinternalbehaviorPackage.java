/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EAttribute
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar3x.swcomponent.swcinternalbehavior;

import autosar3x.swcomponent.swcinternalbehavior.SwcinternalbehaviorFactory;
import autosar3x.swcomponent.swcinternalbehavior.impl.SwcinternalbehaviorPackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface SwcinternalbehaviorPackage
extends EPackage {
    public static final String eNAME = "swcinternalbehavior";
    public static final String eNS_URI = "http://autosar.org/3.2.1/autosar3x/swc/sib";
    public static final String eNS_PREFIX = "";
    public static final SwcinternalbehaviorPackage eINSTANCE = SwcinternalbehaviorPackageImpl.init();
    public static final int INTERNAL_BEHAVIOR = 0;
    public static final int INTERNAL_BEHAVIOR__GCHECKSUM = 0;
    public static final int INTERNAL_BEHAVIOR__GTIMESTAMP = 1;
    public static final int INTERNAL_BEHAVIOR__CHECKSUM = 2;
    public static final int INTERNAL_BEHAVIOR__TIMESTAMP = 3;
    public static final int INTERNAL_BEHAVIOR__GSHORT_NAME = 4;
    public static final int INTERNAL_BEHAVIOR__GUUID = 5;
    public static final int INTERNAL_BEHAVIOR__GCATEGORY = 6;
    public static final int INTERNAL_BEHAVIOR__GDESC = 7;
    public static final int INTERNAL_BEHAVIOR__SHORT_NAME = 8;
    public static final int INTERNAL_BEHAVIOR__LONG_NAME = 9;
    public static final int INTERNAL_BEHAVIOR__DESC = 10;
    public static final int INTERNAL_BEHAVIOR__CATEGORY = 11;
    public static final int INTERNAL_BEHAVIOR__ADMIN_DATA = 12;
    public static final int INTERNAL_BEHAVIOR__INTRODUCTION = 13;
    public static final int INTERNAL_BEHAVIOR__UUID = 14;
    public static final int INTERNAL_BEHAVIOR__ALL_EXTENSIONS = 15;
    public static final int INTERNAL_BEHAVIOR__CONTAINED_EXTENSIONS = 16;
    public static final int INTERNAL_BEHAVIOR__GAR_PACKAGE = 17;
    public static final int INTERNAL_BEHAVIOR__AR_PACKAGE = 18;
    public static final int INTERNAL_BEHAVIOR__GEXCLUSIVE_AREAS = 19;
    public static final int INTERNAL_BEHAVIOR__GRUNNABLES = 20;
    public static final int INTERNAL_BEHAVIOR__GEVENTS = 21;
    public static final int INTERNAL_BEHAVIOR__GPER_INSTANCE_MEMORIES = 22;
    public static final int INTERNAL_BEHAVIOR__GCOMPONENT = 23;
    public static final int INTERNAL_BEHAVIOR__GSUPPORTS_MULTIPLE_INSTANTIATION = 24;
    public static final int INTERNAL_BEHAVIOR__COMPONENT = 25;
    public static final int INTERNAL_BEHAVIOR__EVENTS = 26;
    public static final int INTERNAL_BEHAVIOR__EXCLUSIVE_AREAS = 27;
    public static final int INTERNAL_BEHAVIOR__INIT_VALUES = 28;
    public static final int INTERNAL_BEHAVIOR__INTER_RUNNABLE_VARIABLES = 29;
    public static final int INTERNAL_BEHAVIOR__PER_INSTANCE_CALPRMS = 30;
    public static final int INTERNAL_BEHAVIOR__PER_INSTANCE_MEMORIES = 31;
    public static final int INTERNAL_BEHAVIOR__PORT_API_OPTIONS = 32;
    public static final int INTERNAL_BEHAVIOR__RUNNABLES = 33;
    public static final int INTERNAL_BEHAVIOR__SERVICE_NEEDS = 34;
    public static final int INTERNAL_BEHAVIOR__SHARED_CALPRMS = 35;
    public static final int INTERNAL_BEHAVIOR__SUPPORTS_MULTIPLE_INSTANTIATION = 36;
    public static final int INTERNAL_BEHAVIOR_FEATURE_COUNT = 37;
    public static final int RUNNABLE_ENTITY = 1;
    public static final int RUNNABLE_ENTITY__GCHECKSUM = 0;
    public static final int RUNNABLE_ENTITY__GTIMESTAMP = 1;
    public static final int RUNNABLE_ENTITY__CHECKSUM = 2;
    public static final int RUNNABLE_ENTITY__TIMESTAMP = 3;
    public static final int RUNNABLE_ENTITY__GSHORT_NAME = 4;
    public static final int RUNNABLE_ENTITY__GUUID = 5;
    public static final int RUNNABLE_ENTITY__GCATEGORY = 6;
    public static final int RUNNABLE_ENTITY__GDESC = 7;
    public static final int RUNNABLE_ENTITY__SHORT_NAME = 8;
    public static final int RUNNABLE_ENTITY__LONG_NAME = 9;
    public static final int RUNNABLE_ENTITY__DESC = 10;
    public static final int RUNNABLE_ENTITY__CATEGORY = 11;
    public static final int RUNNABLE_ENTITY__ADMIN_DATA = 12;
    public static final int RUNNABLE_ENTITY__INTRODUCTION = 13;
    public static final int RUNNABLE_ENTITY__UUID = 14;
    public static final int RUNNABLE_ENTITY__ALL_EXTENSIONS = 15;
    public static final int RUNNABLE_ENTITY__CONTAINED_EXTENSIONS = 16;
    public static final int RUNNABLE_ENTITY__GRUNS_INSIDE_EXCLUSIVE_AREAS = 17;
    public static final int RUNNABLE_ENTITY__GCAN_ENTER_EXCLUSIVE_AREAS = 18;
    public static final int RUNNABLE_ENTITY__GWAIT_POINTS = 19;
    public static final int RUNNABLE_ENTITY__GSYMBOL = 20;
    public static final int RUNNABLE_ENTITY__GREAD_VARIABLES = 21;
    public static final int RUNNABLE_ENTITY__GWRITTEN_VARIABLES = 22;
    public static final int RUNNABLE_ENTITY__GDATA_READ_ACCESS = 23;
    public static final int RUNNABLE_ENTITY__GDATA_WRITE_ACCESS = 24;
    public static final int RUNNABLE_ENTITY__GDATA_SEND_POINTS = 25;
    public static final int RUNNABLE_ENTITY__GDATA_RECEIVE_POINTS = 26;
    public static final int RUNNABLE_ENTITY__GSERVER_CALL_POINTS = 27;
    public static final int RUNNABLE_ENTITY__INTERNAL_BEHAVIOR = 28;
    public static final int RUNNABLE_ENTITY__BSW_ENTITY = 29;
    public static final int RUNNABLE_ENTITY__CALPRM_ACCESS = 30;
    public static final int RUNNABLE_ENTITY__CAN_BE_INVOKED_CONCURRENTLY = 31;
    public static final int RUNNABLE_ENTITY__CAN_ENTER_EXCLUSIVE_AREAS = 32;
    public static final int RUNNABLE_ENTITY__DATA_READ_ACCESS = 33;
    public static final int RUNNABLE_ENTITY__DATA_RECEIVE_POINTS = 34;
    public static final int RUNNABLE_ENTITY__DATA_SEND_POINTS = 35;
    public static final int RUNNABLE_ENTITY__DATA_WRITE_ACCESS = 36;
    public static final int RUNNABLE_ENTITY__MINIMUM_START_INTERVAL = 37;
    public static final int RUNNABLE_ENTITY__MODE_SWITCH_POINTS = 38;
    public static final int RUNNABLE_ENTITY__PER_INSTANCE_CALPRM_ACCESS = 39;
    public static final int RUNNABLE_ENTITY__READ_VARIABLES = 40;
    public static final int RUNNABLE_ENTITY__RUNS_INSIDE_EXCLUSIVE_AREAS = 41;
    public static final int RUNNABLE_ENTITY__SERVER_CALL_POINTS = 42;
    public static final int RUNNABLE_ENTITY__SHARED_CALPRM_ACCESS = 43;
    public static final int RUNNABLE_ENTITY__SYMBOL = 44;
    public static final int RUNNABLE_ENTITY__WAIT_POINTS = 45;
    public static final int RUNNABLE_ENTITY__WRITTEN_VARIABLES = 46;
    public static final int RUNNABLE_ENTITY_FEATURE_COUNT = 47;

    public EClass getInternalBehavior();

    public EReference getInternalBehavior_Component();

    public EReference getInternalBehavior_Events();

    public EReference getInternalBehavior_ExclusiveAreas();

    public EReference getInternalBehavior_InitValues();

    public EReference getInternalBehavior_InterRunnableVariables();

    public EReference getInternalBehavior_PerInstanceCalprms();

    public EReference getInternalBehavior_PerInstanceMemories();

    public EReference getInternalBehavior_PortAPIOptions();

    public EReference getInternalBehavior_Runnables();

    public EReference getInternalBehavior_ServiceNeeds();

    public EReference getInternalBehavior_SharedCalprms();

    public EAttribute getInternalBehavior_SupportsMultipleInstantiation();

    public EClass getRunnableEntity();

    public EReference getRunnableEntity_InternalBehavior();

    public EReference getRunnableEntity_BswEntity();

    public EReference getRunnableEntity_CalprmAccess();

    public EAttribute getRunnableEntity_CanBeInvokedConcurrently();

    public EReference getRunnableEntity_CanEnterExclusiveAreas();

    public EReference getRunnableEntity_DataReadAccess();

    public EReference getRunnableEntity_DataReceivePoints();

    public EReference getRunnableEntity_DataSendPoints();

    public EReference getRunnableEntity_DataWriteAccess();

    public EAttribute getRunnableEntity_MinimumStartInterval();

    public EReference getRunnableEntity_ModeSwitchPoints();

    public EReference getRunnableEntity_PerInstanceCalprmAccess();

    public EReference getRunnableEntity_ReadVariables();

    public EReference getRunnableEntity_RunsInsideExclusiveAreas();

    public EReference getRunnableEntity_ServerCallPoints();

    public EReference getRunnableEntity_SharedCalprmAccess();

    public EAttribute getRunnableEntity_Symbol();

    public EReference getRunnableEntity_WaitPoints();

    public EReference getRunnableEntity_WrittenVariables();

    public SwcinternalbehaviorFactory getSwcinternalbehaviorFactory();

    public static interface Literals {
        public static final EClass INTERNAL_BEHAVIOR = eINSTANCE.getInternalBehavior();
        public static final EReference INTERNAL_BEHAVIOR__COMPONENT = eINSTANCE.getInternalBehavior_Component();
        public static final EReference INTERNAL_BEHAVIOR__EVENTS = eINSTANCE.getInternalBehavior_Events();
        public static final EReference INTERNAL_BEHAVIOR__EXCLUSIVE_AREAS = eINSTANCE.getInternalBehavior_ExclusiveAreas();
        public static final EReference INTERNAL_BEHAVIOR__INIT_VALUES = eINSTANCE.getInternalBehavior_InitValues();
        public static final EReference INTERNAL_BEHAVIOR__INTER_RUNNABLE_VARIABLES = eINSTANCE.getInternalBehavior_InterRunnableVariables();
        public static final EReference INTERNAL_BEHAVIOR__PER_INSTANCE_CALPRMS = eINSTANCE.getInternalBehavior_PerInstanceCalprms();
        public static final EReference INTERNAL_BEHAVIOR__PER_INSTANCE_MEMORIES = eINSTANCE.getInternalBehavior_PerInstanceMemories();
        public static final EReference INTERNAL_BEHAVIOR__PORT_API_OPTIONS = eINSTANCE.getInternalBehavior_PortAPIOptions();
        public static final EReference INTERNAL_BEHAVIOR__RUNNABLES = eINSTANCE.getInternalBehavior_Runnables();
        public static final EReference INTERNAL_BEHAVIOR__SERVICE_NEEDS = eINSTANCE.getInternalBehavior_ServiceNeeds();
        public static final EReference INTERNAL_BEHAVIOR__SHARED_CALPRMS = eINSTANCE.getInternalBehavior_SharedCalprms();
        public static final EAttribute INTERNAL_BEHAVIOR__SUPPORTS_MULTIPLE_INSTANTIATION = eINSTANCE.getInternalBehavior_SupportsMultipleInstantiation();
        public static final EClass RUNNABLE_ENTITY = eINSTANCE.getRunnableEntity();
        public static final EReference RUNNABLE_ENTITY__INTERNAL_BEHAVIOR = eINSTANCE.getRunnableEntity_InternalBehavior();
        public static final EReference RUNNABLE_ENTITY__BSW_ENTITY = eINSTANCE.getRunnableEntity_BswEntity();
        public static final EReference RUNNABLE_ENTITY__CALPRM_ACCESS = eINSTANCE.getRunnableEntity_CalprmAccess();
        public static final EAttribute RUNNABLE_ENTITY__CAN_BE_INVOKED_CONCURRENTLY = eINSTANCE.getRunnableEntity_CanBeInvokedConcurrently();
        public static final EReference RUNNABLE_ENTITY__CAN_ENTER_EXCLUSIVE_AREAS = eINSTANCE.getRunnableEntity_CanEnterExclusiveAreas();
        public static final EReference RUNNABLE_ENTITY__DATA_READ_ACCESS = eINSTANCE.getRunnableEntity_DataReadAccess();
        public static final EReference RUNNABLE_ENTITY__DATA_RECEIVE_POINTS = eINSTANCE.getRunnableEntity_DataReceivePoints();
        public static final EReference RUNNABLE_ENTITY__DATA_SEND_POINTS = eINSTANCE.getRunnableEntity_DataSendPoints();
        public static final EReference RUNNABLE_ENTITY__DATA_WRITE_ACCESS = eINSTANCE.getRunnableEntity_DataWriteAccess();
        public static final EAttribute RUNNABLE_ENTITY__MINIMUM_START_INTERVAL = eINSTANCE.getRunnableEntity_MinimumStartInterval();
        public static final EReference RUNNABLE_ENTITY__MODE_SWITCH_POINTS = eINSTANCE.getRunnableEntity_ModeSwitchPoints();
        public static final EReference RUNNABLE_ENTITY__PER_INSTANCE_CALPRM_ACCESS = eINSTANCE.getRunnableEntity_PerInstanceCalprmAccess();
        public static final EReference RUNNABLE_ENTITY__READ_VARIABLES = eINSTANCE.getRunnableEntity_ReadVariables();
        public static final EReference RUNNABLE_ENTITY__RUNS_INSIDE_EXCLUSIVE_AREAS = eINSTANCE.getRunnableEntity_RunsInsideExclusiveAreas();
        public static final EReference RUNNABLE_ENTITY__SERVER_CALL_POINTS = eINSTANCE.getRunnableEntity_ServerCallPoints();
        public static final EReference RUNNABLE_ENTITY__SHARED_CALPRM_ACCESS = eINSTANCE.getRunnableEntity_SharedCalprmAccess();
        public static final EAttribute RUNNABLE_ENTITY__SYMBOL = eINSTANCE.getRunnableEntity_Symbol();
        public static final EReference RUNNABLE_ENTITY__WAIT_POINTS = eINSTANCE.getRunnableEntity_WaitPoints();
        public static final EReference RUNNABLE_ENTITY__WRITTEN_VARIABLES = eINSTANCE.getRunnableEntity_WrittenVariables();
    }
}

