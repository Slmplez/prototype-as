/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EAttribute
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar21.swcomponent.internalbehavior;

import autosar21.swcomponent.internalbehavior.InternalbehaviorFactory;
import autosar21.swcomponent.internalbehavior.impl.InternalbehaviorPackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface InternalbehaviorPackage
extends EPackage {
    public static final String eNAME = "internalbehavior";
    public static final String eNS_URI = "http://autosar.org/2.1.5/autosar21/swc/ib";
    public static final String eNS_PREFIX = "";
    public static final InternalbehaviorPackage eINSTANCE = InternalbehaviorPackageImpl.init();
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
    public static final int INTERNAL_BEHAVIOR__UUID = 13;
    public static final int INTERNAL_BEHAVIOR__ALL_EXTENSIONS = 14;
    public static final int INTERNAL_BEHAVIOR__CONTAINED_EXTENSIONS = 15;
    public static final int INTERNAL_BEHAVIOR__GAR_PACKAGE = 16;
    public static final int INTERNAL_BEHAVIOR__AR_PACKAGE = 17;
    public static final int INTERNAL_BEHAVIOR__GEXCLUSIVE_AREAS = 18;
    public static final int INTERNAL_BEHAVIOR__GRUNNABLES = 19;
    public static final int INTERNAL_BEHAVIOR__GEVENTS = 20;
    public static final int INTERNAL_BEHAVIOR__GPER_INSTANCE_MEMORIES = 21;
    public static final int INTERNAL_BEHAVIOR__GCOMPONENT = 22;
    public static final int INTERNAL_BEHAVIOR__GSUPPORTS_MULTIPLE_INSTANTIATION = 23;
    public static final int INTERNAL_BEHAVIOR__COMPONENT = 24;
    public static final int INTERNAL_BEHAVIOR__EVENTS = 25;
    public static final int INTERNAL_BEHAVIOR__EXCLUSIVE_AREAS = 26;
    public static final int INTERNAL_BEHAVIOR__INTER_RUNNABLE_VARIABLES = 27;
    public static final int INTERNAL_BEHAVIOR__NVRAM_MAPPINGS = 28;
    public static final int INTERNAL_BEHAVIOR__PER_INSTANCE_CALPRMS = 29;
    public static final int INTERNAL_BEHAVIOR__PER_INSTANCE_MEMORIES = 30;
    public static final int INTERNAL_BEHAVIOR__PORT_API_OPTIONS = 31;
    public static final int INTERNAL_BEHAVIOR__RUNNABLES = 32;
    public static final int INTERNAL_BEHAVIOR__SHARED_CALPRMS = 33;
    public static final int INTERNAL_BEHAVIOR__SUPPORTS_MULTIPLE_INSTANTIATION = 34;
    public static final int INTERNAL_BEHAVIOR_FEATURE_COUNT = 35;
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
    public static final int RUNNABLE_ENTITY__UUID = 13;
    public static final int RUNNABLE_ENTITY__ALL_EXTENSIONS = 14;
    public static final int RUNNABLE_ENTITY__CONTAINED_EXTENSIONS = 15;
    public static final int RUNNABLE_ENTITY__GRUNS_INSIDE_EXCLUSIVE_AREAS = 16;
    public static final int RUNNABLE_ENTITY__GCAN_ENTER_EXCLUSIVE_AREAS = 17;
    public static final int RUNNABLE_ENTITY__GWAIT_POINTS = 18;
    public static final int RUNNABLE_ENTITY__GSYMBOL = 19;
    public static final int RUNNABLE_ENTITY__GREAD_VARIABLES = 20;
    public static final int RUNNABLE_ENTITY__GWRITTEN_VARIABLES = 21;
    public static final int RUNNABLE_ENTITY__GDATA_READ_ACCESS = 22;
    public static final int RUNNABLE_ENTITY__GDATA_WRITE_ACCESS = 23;
    public static final int RUNNABLE_ENTITY__GDATA_SEND_POINTS = 24;
    public static final int RUNNABLE_ENTITY__GDATA_RECEIVE_POINTS = 25;
    public static final int RUNNABLE_ENTITY__GSERVER_CALL_POINTS = 26;
    public static final int RUNNABLE_ENTITY__INTERNAL_BEHAVIOR = 27;
    public static final int RUNNABLE_ENTITY__CALPRM_ACCESS = 28;
    public static final int RUNNABLE_ENTITY__CAN_BE_INVOKED_CONCURRENTLY = 29;
    public static final int RUNNABLE_ENTITY__DATA_READ_ACCESS = 30;
    public static final int RUNNABLE_ENTITY__DATA_RECEIVE_POINTS = 31;
    public static final int RUNNABLE_ENTITY__DATA_SEND_POINTS = 32;
    public static final int RUNNABLE_ENTITY__DATA_WRITE_ACCESS = 33;
    public static final int RUNNABLE_ENTITY__INSIDE_EXCLUSIVE_AREAS = 34;
    public static final int RUNNABLE_ENTITY__MINIMUM_START_INTERVAL = 35;
    public static final int RUNNABLE_ENTITY__MODE_SWITCH_POINTS = 36;
    public static final int RUNNABLE_ENTITY__PER_INSTANCE_CALPRM_ACCESS = 37;
    public static final int RUNNABLE_ENTITY__READ_VARIABLES = 38;
    public static final int RUNNABLE_ENTITY__SERVER_CALL_POINTS = 39;
    public static final int RUNNABLE_ENTITY__SHARED_CALPRM_ACCESS = 40;
    public static final int RUNNABLE_ENTITY__SYMBOL = 41;
    public static final int RUNNABLE_ENTITY__USES_EXCLUSIVE_AREAS = 42;
    public static final int RUNNABLE_ENTITY__WAIT_POINTS = 43;
    public static final int RUNNABLE_ENTITY__WRITTEN_VARIABLES = 44;
    public static final int RUNNABLE_ENTITY_FEATURE_COUNT = 45;

    public EClass getInternalBehavior();

    public EReference getInternalBehavior_Component();

    public EReference getInternalBehavior_Events();

    public EReference getInternalBehavior_ExclusiveAreas();

    public EReference getInternalBehavior_InterRunnableVariables();

    public EReference getInternalBehavior_NVRAMMappings();

    public EReference getInternalBehavior_PerInstanceCalprms();

    public EReference getInternalBehavior_PerInstanceMemories();

    public EReference getInternalBehavior_PortAPIOptions();

    public EReference getInternalBehavior_Runnables();

    public EReference getInternalBehavior_SharedCalprms();

    public EAttribute getInternalBehavior_SupportsMultipleInstantiation();

    public EClass getRunnableEntity();

    public EReference getRunnableEntity_InternalBehavior();

    public EReference getRunnableEntity_CalprmAccess();

    public EAttribute getRunnableEntity_CanBeInvokedConcurrently();

    public EReference getRunnableEntity_DataReadAccess();

    public EReference getRunnableEntity_DataReceivePoints();

    public EReference getRunnableEntity_DataSendPoints();

    public EReference getRunnableEntity_DataWriteAccess();

    public EReference getRunnableEntity_InsideExclusiveAreas();

    public EAttribute getRunnableEntity_MinimumStartInterval();

    public EReference getRunnableEntity_ModeSwitchPoints();

    public EReference getRunnableEntity_PerInstanceCalprmAccess();

    public EReference getRunnableEntity_ReadVariables();

    public EReference getRunnableEntity_ServerCallPoints();

    public EReference getRunnableEntity_SharedCalprmAccess();

    public EAttribute getRunnableEntity_Symbol();

    public EReference getRunnableEntity_UsesExclusiveAreas();

    public EReference getRunnableEntity_WaitPoints();

    public EReference getRunnableEntity_WrittenVariables();

    public InternalbehaviorFactory getInternalbehaviorFactory();

    public static interface Literals {
        public static final EClass INTERNAL_BEHAVIOR = eINSTANCE.getInternalBehavior();
        public static final EReference INTERNAL_BEHAVIOR__COMPONENT = eINSTANCE.getInternalBehavior_Component();
        public static final EReference INTERNAL_BEHAVIOR__EVENTS = eINSTANCE.getInternalBehavior_Events();
        public static final EReference INTERNAL_BEHAVIOR__EXCLUSIVE_AREAS = eINSTANCE.getInternalBehavior_ExclusiveAreas();
        public static final EReference INTERNAL_BEHAVIOR__INTER_RUNNABLE_VARIABLES = eINSTANCE.getInternalBehavior_InterRunnableVariables();
        public static final EReference INTERNAL_BEHAVIOR__NVRAM_MAPPINGS = eINSTANCE.getInternalBehavior_NVRAMMappings();
        public static final EReference INTERNAL_BEHAVIOR__PER_INSTANCE_CALPRMS = eINSTANCE.getInternalBehavior_PerInstanceCalprms();
        public static final EReference INTERNAL_BEHAVIOR__PER_INSTANCE_MEMORIES = eINSTANCE.getInternalBehavior_PerInstanceMemories();
        public static final EReference INTERNAL_BEHAVIOR__PORT_API_OPTIONS = eINSTANCE.getInternalBehavior_PortAPIOptions();
        public static final EReference INTERNAL_BEHAVIOR__RUNNABLES = eINSTANCE.getInternalBehavior_Runnables();
        public static final EReference INTERNAL_BEHAVIOR__SHARED_CALPRMS = eINSTANCE.getInternalBehavior_SharedCalprms();
        public static final EAttribute INTERNAL_BEHAVIOR__SUPPORTS_MULTIPLE_INSTANTIATION = eINSTANCE.getInternalBehavior_SupportsMultipleInstantiation();
        public static final EClass RUNNABLE_ENTITY = eINSTANCE.getRunnableEntity();
        public static final EReference RUNNABLE_ENTITY__INTERNAL_BEHAVIOR = eINSTANCE.getRunnableEntity_InternalBehavior();
        public static final EReference RUNNABLE_ENTITY__CALPRM_ACCESS = eINSTANCE.getRunnableEntity_CalprmAccess();
        public static final EAttribute RUNNABLE_ENTITY__CAN_BE_INVOKED_CONCURRENTLY = eINSTANCE.getRunnableEntity_CanBeInvokedConcurrently();
        public static final EReference RUNNABLE_ENTITY__DATA_READ_ACCESS = eINSTANCE.getRunnableEntity_DataReadAccess();
        public static final EReference RUNNABLE_ENTITY__DATA_RECEIVE_POINTS = eINSTANCE.getRunnableEntity_DataReceivePoints();
        public static final EReference RUNNABLE_ENTITY__DATA_SEND_POINTS = eINSTANCE.getRunnableEntity_DataSendPoints();
        public static final EReference RUNNABLE_ENTITY__DATA_WRITE_ACCESS = eINSTANCE.getRunnableEntity_DataWriteAccess();
        public static final EReference RUNNABLE_ENTITY__INSIDE_EXCLUSIVE_AREAS = eINSTANCE.getRunnableEntity_InsideExclusiveAreas();
        public static final EAttribute RUNNABLE_ENTITY__MINIMUM_START_INTERVAL = eINSTANCE.getRunnableEntity_MinimumStartInterval();
        public static final EReference RUNNABLE_ENTITY__MODE_SWITCH_POINTS = eINSTANCE.getRunnableEntity_ModeSwitchPoints();
        public static final EReference RUNNABLE_ENTITY__PER_INSTANCE_CALPRM_ACCESS = eINSTANCE.getRunnableEntity_PerInstanceCalprmAccess();
        public static final EReference RUNNABLE_ENTITY__READ_VARIABLES = eINSTANCE.getRunnableEntity_ReadVariables();
        public static final EReference RUNNABLE_ENTITY__SERVER_CALL_POINTS = eINSTANCE.getRunnableEntity_ServerCallPoints();
        public static final EReference RUNNABLE_ENTITY__SHARED_CALPRM_ACCESS = eINSTANCE.getRunnableEntity_SharedCalprmAccess();
        public static final EAttribute RUNNABLE_ENTITY__SYMBOL = eINSTANCE.getRunnableEntity_Symbol();
        public static final EReference RUNNABLE_ENTITY__USES_EXCLUSIVE_AREAS = eINSTANCE.getRunnableEntity_UsesExclusiveAreas();
        public static final EReference RUNNABLE_ENTITY__WAIT_POINTS = eINSTANCE.getRunnableEntity_WaitPoints();
        public static final EReference RUNNABLE_ENTITY__WRITTEN_VARIABLES = eINSTANCE.getRunnableEntity_WrittenVariables();
    }
}

