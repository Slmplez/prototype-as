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
package autosar40.swcomponent.swcinternalbehavior;

import autosar40.swcomponent.swcinternalbehavior.SwcinternalbehaviorFactory;
import autosar40.swcomponent.swcinternalbehavior.impl.SwcinternalbehaviorPackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EEnum;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface SwcinternalbehaviorPackage
extends EPackage {
    public static final String eNAME = "swcinternalbehavior";
    public static final String eNS_URI = "http://autosar.org/schema/r4.0/autosar40/swc/sib";
    public static final String eNS_PREFIX = "";
    public static final SwcinternalbehaviorPackage eINSTANCE = SwcinternalbehaviorPackageImpl.init();
    public static final int SWC_INTERNAL_BEHAVIOR = 0;
    public static final int SWC_INTERNAL_BEHAVIOR__GCHECKSUM = 0;
    public static final int SWC_INTERNAL_BEHAVIOR__GTIMESTAMP = 1;
    public static final int SWC_INTERNAL_BEHAVIOR__CHECKSUM = 2;
    public static final int SWC_INTERNAL_BEHAVIOR__TIMESTAMP = 3;
    public static final int SWC_INTERNAL_BEHAVIOR__GSHORT_NAME = 4;
    public static final int SWC_INTERNAL_BEHAVIOR__SHORT_NAME = 5;
    public static final int SWC_INTERNAL_BEHAVIOR__LONG_NAME = 6;
    public static final int SWC_INTERNAL_BEHAVIOR__GUUID = 7;
    public static final int SWC_INTERNAL_BEHAVIOR__GCATEGORY = 8;
    public static final int SWC_INTERNAL_BEHAVIOR__GDESC = 9;
    public static final int SWC_INTERNAL_BEHAVIOR__DESC = 10;
    public static final int SWC_INTERNAL_BEHAVIOR__CATEGORY = 11;
    public static final int SWC_INTERNAL_BEHAVIOR__ADMIN_DATA = 12;
    public static final int SWC_INTERNAL_BEHAVIOR__INTRODUCTION = 13;
    public static final int SWC_INTERNAL_BEHAVIOR__ANNOTATIONS = 14;
    public static final int SWC_INTERNAL_BEHAVIOR__UUID = 15;
    public static final int SWC_INTERNAL_BEHAVIOR__ALL_EXTENSIONS = 16;
    public static final int SWC_INTERNAL_BEHAVIOR__CONTAINED_EXTENSIONS = 17;
    public static final int SWC_INTERNAL_BEHAVIOR__ATP_CLASSIFIER = 18;
    public static final int SWC_INTERNAL_BEHAVIOR__GEXCLUSIVE_AREAS = 19;
    public static final int SWC_INTERNAL_BEHAVIOR__CONSTANT_MEMORIES = 20;
    public static final int SWC_INTERNAL_BEHAVIOR__CONSTANT_VALUE_MAPPINGS = 21;
    public static final int SWC_INTERNAL_BEHAVIOR__DATA_TYPE_MAPPINGS = 22;
    public static final int SWC_INTERNAL_BEHAVIOR__EXCLUSIVE_AREAS = 23;
    public static final int SWC_INTERNAL_BEHAVIOR__STATIC_MEMORIES = 24;
    public static final int SWC_INTERNAL_BEHAVIOR__GRUNNABLES = 25;
    public static final int SWC_INTERNAL_BEHAVIOR__GEVENTS = 26;
    public static final int SWC_INTERNAL_BEHAVIOR__GPER_INSTANCE_MEMORIES = 27;
    public static final int SWC_INTERNAL_BEHAVIOR__GCOMPONENT = 28;
    public static final int SWC_INTERNAL_BEHAVIOR__GSUPPORTS_MULTIPLE_INSTANTIATION = 29;
    public static final int SWC_INTERNAL_BEHAVIOR__ATOMIC_SW_COMPONENT_TYPE = 30;
    public static final int SWC_INTERNAL_BEHAVIOR__AR_TYPED_PER_INSTANCE_MEMORIES = 31;
    public static final int SWC_INTERNAL_BEHAVIOR__EVENTS = 32;
    public static final int SWC_INTERNAL_BEHAVIOR__EXPLICIT_INTER_RUNNABLE_VARIABLES = 33;
    public static final int SWC_INTERNAL_BEHAVIOR__HANDLE_TERMINATION_AND_RESTART = 34;
    public static final int SWC_INTERNAL_BEHAVIOR__IMPLICIT_INTER_RUNNABLE_VARIABLES = 35;
    public static final int SWC_INTERNAL_BEHAVIOR__INCLUDED_DATA_TYPE_SETS = 36;
    public static final int SWC_INTERNAL_BEHAVIOR__INCLUDED_MODE_DECLARATION_GROUP_SETS = 37;
    public static final int SWC_INTERNAL_BEHAVIOR__INSTANTIATION_DATA_DEF_PROPS = 38;
    public static final int SWC_INTERNAL_BEHAVIOR__PER_INSTANCE_MEMORIES = 39;
    public static final int SWC_INTERNAL_BEHAVIOR__PER_INSTANCE_PARAMETERS = 40;
    public static final int SWC_INTERNAL_BEHAVIOR__PORT_API_OPTIONS = 41;
    public static final int SWC_INTERNAL_BEHAVIOR__RUNNABLES = 42;
    public static final int SWC_INTERNAL_BEHAVIOR__SERVICE_DEPENDENCIES = 43;
    public static final int SWC_INTERNAL_BEHAVIOR__SHARED_PARAMETERS = 44;
    public static final int SWC_INTERNAL_BEHAVIOR__SUPPORTS_MULTIPLE_INSTANTIATION = 45;
    public static final int SWC_INTERNAL_BEHAVIOR__VARIATION_POINT_PROXIES = 46;
    public static final int SWC_INTERNAL_BEHAVIOR__VARIATION_POINT = 47;
    public static final int SWC_INTERNAL_BEHAVIOR_FEATURE_COUNT = 48;
    public static final int RUNNABLE_ENTITY = 1;
    public static final int RUNNABLE_ENTITY__GCHECKSUM = 0;
    public static final int RUNNABLE_ENTITY__GTIMESTAMP = 1;
    public static final int RUNNABLE_ENTITY__CHECKSUM = 2;
    public static final int RUNNABLE_ENTITY__TIMESTAMP = 3;
    public static final int RUNNABLE_ENTITY__GSHORT_NAME = 4;
    public static final int RUNNABLE_ENTITY__SHORT_NAME = 5;
    public static final int RUNNABLE_ENTITY__LONG_NAME = 6;
    public static final int RUNNABLE_ENTITY__GUUID = 7;
    public static final int RUNNABLE_ENTITY__GCATEGORY = 8;
    public static final int RUNNABLE_ENTITY__GDESC = 9;
    public static final int RUNNABLE_ENTITY__DESC = 10;
    public static final int RUNNABLE_ENTITY__CATEGORY = 11;
    public static final int RUNNABLE_ENTITY__ADMIN_DATA = 12;
    public static final int RUNNABLE_ENTITY__INTRODUCTION = 13;
    public static final int RUNNABLE_ENTITY__ANNOTATIONS = 14;
    public static final int RUNNABLE_ENTITY__UUID = 15;
    public static final int RUNNABLE_ENTITY__ALL_EXTENSIONS = 16;
    public static final int RUNNABLE_ENTITY__CONTAINED_EXTENSIONS = 17;
    public static final int RUNNABLE_ENTITY__ATP_CLASSIFIER = 18;
    public static final int RUNNABLE_ENTITY__GRUNS_INSIDE_EXCLUSIVE_AREAS = 19;
    public static final int RUNNABLE_ENTITY__GCAN_ENTER_EXCLUSIVE_AREAS = 20;
    public static final int RUNNABLE_ENTITY__CAN_ENTER_EXCLUSIVE_AREAS = 21;
    public static final int RUNNABLE_ENTITY__MINIMUM_START_INTERVAL = 22;
    public static final int RUNNABLE_ENTITY__RUNS_INSIDE_EXCLUSIVE_AREAS = 23;
    public static final int RUNNABLE_ENTITY__SW_ADDR_METHOD = 24;
    public static final int RUNNABLE_ENTITY__GWAIT_POINTS = 25;
    public static final int RUNNABLE_ENTITY__GSYMBOL = 26;
    public static final int RUNNABLE_ENTITY__GREAD_VARIABLES = 27;
    public static final int RUNNABLE_ENTITY__GWRITTEN_VARIABLES = 28;
    public static final int RUNNABLE_ENTITY__GDATA_READ_ACCESS = 29;
    public static final int RUNNABLE_ENTITY__GDATA_WRITE_ACCESS = 30;
    public static final int RUNNABLE_ENTITY__GDATA_SEND_POINTS = 31;
    public static final int RUNNABLE_ENTITY__GDATA_RECEIVE_POINTS = 32;
    public static final int RUNNABLE_ENTITY__GSERVER_CALL_POINTS = 33;
    public static final int RUNNABLE_ENTITY__SWC_INTERNAL_BEHAVIOR = 34;
    public static final int RUNNABLE_ENTITY__ARGUMENTS = 35;
    public static final int RUNNABLE_ENTITY__ASYNCHRONOUS_SERVER_CALL_RESULT_POINTS = 36;
    public static final int RUNNABLE_ENTITY__CAN_BE_INVOKED_CONCURRENTLY = 37;
    public static final int RUNNABLE_ENTITY__DATA_READ_ACCESS = 38;
    public static final int RUNNABLE_ENTITY__DATA_RECEIVE_POINT_BY_ARGUMENTS = 39;
    public static final int RUNNABLE_ENTITY__DATA_RECEIVE_POINT_BY_VALUES = 40;
    public static final int RUNNABLE_ENTITY__DATA_SEND_POINTS = 41;
    public static final int RUNNABLE_ENTITY__DATA_WRITE_ACCESS = 42;
    public static final int RUNNABLE_ENTITY__EXTERNAL_TRIGGERING_POINTS = 43;
    public static final int RUNNABLE_ENTITY__INTERNAL_TRIGGERING_POINTS = 44;
    public static final int RUNNABLE_ENTITY__MODE_ACCESS_POINTS = 45;
    public static final int RUNNABLE_ENTITY__MODE_SWITCH_POINTS = 46;
    public static final int RUNNABLE_ENTITY__PARAMETER_ACCESS = 47;
    public static final int RUNNABLE_ENTITY__READ_LOCAL_VARIABLES = 48;
    public static final int RUNNABLE_ENTITY__SERVER_CALL_POINTS = 49;
    public static final int RUNNABLE_ENTITY__SYMBOL = 50;
    public static final int RUNNABLE_ENTITY__WAIT_POINTS = 51;
    public static final int RUNNABLE_ENTITY__WRITTEN_LOCAL_VARIABLES = 52;
    public static final int RUNNABLE_ENTITY__VARIATION_POINT = 53;
    public static final int RUNNABLE_ENTITY_FEATURE_COUNT = 54;
    public static final int HANDLE_TERMINATION_AND_RESTART_ENUM = 2;

    public EClass getSwcInternalBehavior();

    public EReference getSwcInternalBehavior_AtomicSwComponentType();

    public EReference getSwcInternalBehavior_ArTypedPerInstanceMemories();

    public EReference getSwcInternalBehavior_Events();

    public EReference getSwcInternalBehavior_ExplicitInterRunnableVariables();

    public EAttribute getSwcInternalBehavior_HandleTerminationAndRestart();

    public EReference getSwcInternalBehavior_ImplicitInterRunnableVariables();

    public EReference getSwcInternalBehavior_IncludedDataTypeSets();

    public EReference getSwcInternalBehavior_IncludedModeDeclarationGroupSets();

    public EReference getSwcInternalBehavior_InstantiationDataDefProps();

    public EReference getSwcInternalBehavior_PerInstanceMemories();

    public EReference getSwcInternalBehavior_PerInstanceParameters();

    public EReference getSwcInternalBehavior_PortAPIOptions();

    public EReference getSwcInternalBehavior_Runnables();

    public EReference getSwcInternalBehavior_ServiceDependencies();

    public EReference getSwcInternalBehavior_SharedParameters();

    public EAttribute getSwcInternalBehavior_SupportsMultipleInstantiation();

    public EReference getSwcInternalBehavior_VariationPointProxies();

    public EReference getSwcInternalBehavior_VariationPoint();

    public EClass getRunnableEntity();

    public EReference getRunnableEntity_SwcInternalBehavior();

    public EReference getRunnableEntity_Arguments();

    public EReference getRunnableEntity_AsynchronousServerCallResultPoints();

    public EAttribute getRunnableEntity_CanBeInvokedConcurrently();

    public EReference getRunnableEntity_DataReadAccess();

    public EReference getRunnableEntity_DataReceivePointByArguments();

    public EReference getRunnableEntity_DataReceivePointByValues();

    public EReference getRunnableEntity_DataSendPoints();

    public EReference getRunnableEntity_DataWriteAccess();

    public EReference getRunnableEntity_ExternalTriggeringPoints();

    public EReference getRunnableEntity_InternalTriggeringPoints();

    public EReference getRunnableEntity_ModeAccessPoints();

    public EReference getRunnableEntity_ModeSwitchPoints();

    public EReference getRunnableEntity_ParameterAccess();

    public EReference getRunnableEntity_ReadLocalVariables();

    public EReference getRunnableEntity_ServerCallPoints();

    public EAttribute getRunnableEntity_Symbol();

    public EReference getRunnableEntity_WaitPoints();

    public EReference getRunnableEntity_WrittenLocalVariables();

    public EReference getRunnableEntity_VariationPoint();

    public EEnum getHandleTerminationAndRestartEnum();

    public SwcinternalbehaviorFactory getSwcinternalbehaviorFactory();

    public static interface Literals {
        public static final EClass SWC_INTERNAL_BEHAVIOR = eINSTANCE.getSwcInternalBehavior();
        public static final EReference SWC_INTERNAL_BEHAVIOR__ATOMIC_SW_COMPONENT_TYPE = eINSTANCE.getSwcInternalBehavior_AtomicSwComponentType();
        public static final EReference SWC_INTERNAL_BEHAVIOR__AR_TYPED_PER_INSTANCE_MEMORIES = eINSTANCE.getSwcInternalBehavior_ArTypedPerInstanceMemories();
        public static final EReference SWC_INTERNAL_BEHAVIOR__EVENTS = eINSTANCE.getSwcInternalBehavior_Events();
        public static final EReference SWC_INTERNAL_BEHAVIOR__EXPLICIT_INTER_RUNNABLE_VARIABLES = eINSTANCE.getSwcInternalBehavior_ExplicitInterRunnableVariables();
        public static final EAttribute SWC_INTERNAL_BEHAVIOR__HANDLE_TERMINATION_AND_RESTART = eINSTANCE.getSwcInternalBehavior_HandleTerminationAndRestart();
        public static final EReference SWC_INTERNAL_BEHAVIOR__IMPLICIT_INTER_RUNNABLE_VARIABLES = eINSTANCE.getSwcInternalBehavior_ImplicitInterRunnableVariables();
        public static final EReference SWC_INTERNAL_BEHAVIOR__INCLUDED_DATA_TYPE_SETS = eINSTANCE.getSwcInternalBehavior_IncludedDataTypeSets();
        public static final EReference SWC_INTERNAL_BEHAVIOR__INCLUDED_MODE_DECLARATION_GROUP_SETS = eINSTANCE.getSwcInternalBehavior_IncludedModeDeclarationGroupSets();
        public static final EReference SWC_INTERNAL_BEHAVIOR__INSTANTIATION_DATA_DEF_PROPS = eINSTANCE.getSwcInternalBehavior_InstantiationDataDefProps();
        public static final EReference SWC_INTERNAL_BEHAVIOR__PER_INSTANCE_MEMORIES = eINSTANCE.getSwcInternalBehavior_PerInstanceMemories();
        public static final EReference SWC_INTERNAL_BEHAVIOR__PER_INSTANCE_PARAMETERS = eINSTANCE.getSwcInternalBehavior_PerInstanceParameters();
        public static final EReference SWC_INTERNAL_BEHAVIOR__PORT_API_OPTIONS = eINSTANCE.getSwcInternalBehavior_PortAPIOptions();
        public static final EReference SWC_INTERNAL_BEHAVIOR__RUNNABLES = eINSTANCE.getSwcInternalBehavior_Runnables();
        public static final EReference SWC_INTERNAL_BEHAVIOR__SERVICE_DEPENDENCIES = eINSTANCE.getSwcInternalBehavior_ServiceDependencies();
        public static final EReference SWC_INTERNAL_BEHAVIOR__SHARED_PARAMETERS = eINSTANCE.getSwcInternalBehavior_SharedParameters();
        public static final EAttribute SWC_INTERNAL_BEHAVIOR__SUPPORTS_MULTIPLE_INSTANTIATION = eINSTANCE.getSwcInternalBehavior_SupportsMultipleInstantiation();
        public static final EReference SWC_INTERNAL_BEHAVIOR__VARIATION_POINT_PROXIES = eINSTANCE.getSwcInternalBehavior_VariationPointProxies();
        public static final EReference SWC_INTERNAL_BEHAVIOR__VARIATION_POINT = eINSTANCE.getSwcInternalBehavior_VariationPoint();
        public static final EClass RUNNABLE_ENTITY = eINSTANCE.getRunnableEntity();
        public static final EReference RUNNABLE_ENTITY__SWC_INTERNAL_BEHAVIOR = eINSTANCE.getRunnableEntity_SwcInternalBehavior();
        public static final EReference RUNNABLE_ENTITY__ARGUMENTS = eINSTANCE.getRunnableEntity_Arguments();
        public static final EReference RUNNABLE_ENTITY__ASYNCHRONOUS_SERVER_CALL_RESULT_POINTS = eINSTANCE.getRunnableEntity_AsynchronousServerCallResultPoints();
        public static final EAttribute RUNNABLE_ENTITY__CAN_BE_INVOKED_CONCURRENTLY = eINSTANCE.getRunnableEntity_CanBeInvokedConcurrently();
        public static final EReference RUNNABLE_ENTITY__DATA_READ_ACCESS = eINSTANCE.getRunnableEntity_DataReadAccess();
        public static final EReference RUNNABLE_ENTITY__DATA_RECEIVE_POINT_BY_ARGUMENTS = eINSTANCE.getRunnableEntity_DataReceivePointByArguments();
        public static final EReference RUNNABLE_ENTITY__DATA_RECEIVE_POINT_BY_VALUES = eINSTANCE.getRunnableEntity_DataReceivePointByValues();
        public static final EReference RUNNABLE_ENTITY__DATA_SEND_POINTS = eINSTANCE.getRunnableEntity_DataSendPoints();
        public static final EReference RUNNABLE_ENTITY__DATA_WRITE_ACCESS = eINSTANCE.getRunnableEntity_DataWriteAccess();
        public static final EReference RUNNABLE_ENTITY__EXTERNAL_TRIGGERING_POINTS = eINSTANCE.getRunnableEntity_ExternalTriggeringPoints();
        public static final EReference RUNNABLE_ENTITY__INTERNAL_TRIGGERING_POINTS = eINSTANCE.getRunnableEntity_InternalTriggeringPoints();
        public static final EReference RUNNABLE_ENTITY__MODE_ACCESS_POINTS = eINSTANCE.getRunnableEntity_ModeAccessPoints();
        public static final EReference RUNNABLE_ENTITY__MODE_SWITCH_POINTS = eINSTANCE.getRunnableEntity_ModeSwitchPoints();
        public static final EReference RUNNABLE_ENTITY__PARAMETER_ACCESS = eINSTANCE.getRunnableEntity_ParameterAccess();
        public static final EReference RUNNABLE_ENTITY__READ_LOCAL_VARIABLES = eINSTANCE.getRunnableEntity_ReadLocalVariables();
        public static final EReference RUNNABLE_ENTITY__SERVER_CALL_POINTS = eINSTANCE.getRunnableEntity_ServerCallPoints();
        public static final EAttribute RUNNABLE_ENTITY__SYMBOL = eINSTANCE.getRunnableEntity_Symbol();
        public static final EReference RUNNABLE_ENTITY__WAIT_POINTS = eINSTANCE.getRunnableEntity_WaitPoints();
        public static final EReference RUNNABLE_ENTITY__WRITTEN_LOCAL_VARIABLES = eINSTANCE.getRunnableEntity_WrittenLocalVariables();
        public static final EReference RUNNABLE_ENTITY__VARIATION_POINT = eINSTANCE.getRunnableEntity_VariationPoint();
        public static final EEnum HANDLE_TERMINATION_AND_RESTART_ENUM = eINSTANCE.getHandleTerminationAndRestartEnum();
    }
}

