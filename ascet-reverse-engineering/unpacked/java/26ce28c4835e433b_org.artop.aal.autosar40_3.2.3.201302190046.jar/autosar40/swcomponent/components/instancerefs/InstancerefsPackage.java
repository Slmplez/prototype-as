/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar40.swcomponent.components.instancerefs;

import autosar40.swcomponent.components.instancerefs.InstancerefsFactory;
import autosar40.swcomponent.components.instancerefs.impl.InstancerefsPackageImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface InstancerefsPackage
extends EPackage {
    public static final String eNAME = "instancerefs";
    public static final String eNS_URI = "http://autosar.org/schema/r4.0/autosar40/swc/components/ir";
    public static final String eNS_PREFIX = "";
    public static final InstancerefsPackage eINSTANCE = InstancerefsPackageImpl.init();
    public static final int MODE_GROUP_IN_ATOMIC_SWC_INSTANCE_REF = 0;
    public static final int MODE_GROUP_IN_ATOMIC_SWC_INSTANCE_REF__GCHECKSUM = 0;
    public static final int MODE_GROUP_IN_ATOMIC_SWC_INSTANCE_REF__GTIMESTAMP = 1;
    public static final int MODE_GROUP_IN_ATOMIC_SWC_INSTANCE_REF__CHECKSUM = 2;
    public static final int MODE_GROUP_IN_ATOMIC_SWC_INSTANCE_REF__TIMESTAMP = 3;
    public static final int MODE_GROUP_IN_ATOMIC_SWC_INSTANCE_REF__MODE_ACCESS_POINT = 4;
    public static final int MODE_GROUP_IN_ATOMIC_SWC_INSTANCE_REF_FEATURE_COUNT = 5;
    public static final int OPERATION_IN_ATOMIC_SWC_INSTANCE_REF = 1;
    public static final int OPERATION_IN_ATOMIC_SWC_INSTANCE_REF__GCHECKSUM = 0;
    public static final int OPERATION_IN_ATOMIC_SWC_INSTANCE_REF__GTIMESTAMP = 1;
    public static final int OPERATION_IN_ATOMIC_SWC_INSTANCE_REF__CHECKSUM = 2;
    public static final int OPERATION_IN_ATOMIC_SWC_INSTANCE_REF__TIMESTAMP = 3;
    public static final int OPERATION_IN_ATOMIC_SWC_INSTANCE_REF_FEATURE_COUNT = 4;
    public static final int PMODE_GROUP_IN_ATOMIC_SWC_INSTANCE_REF = 2;
    public static final int PMODE_GROUP_IN_ATOMIC_SWC_INSTANCE_REF__GCHECKSUM = 0;
    public static final int PMODE_GROUP_IN_ATOMIC_SWC_INSTANCE_REF__GTIMESTAMP = 1;
    public static final int PMODE_GROUP_IN_ATOMIC_SWC_INSTANCE_REF__CHECKSUM = 2;
    public static final int PMODE_GROUP_IN_ATOMIC_SWC_INSTANCE_REF__TIMESTAMP = 3;
    public static final int PMODE_GROUP_IN_ATOMIC_SWC_INSTANCE_REF__MODE_ACCESS_POINT = 4;
    public static final int PMODE_GROUP_IN_ATOMIC_SWC_INSTANCE_REF__GCONTEXT_PPORT = 5;
    public static final int PMODE_GROUP_IN_ATOMIC_SWC_INSTANCE_REF__GTARGET_MODE_GROUP = 6;
    public static final int PMODE_GROUP_IN_ATOMIC_SWC_INSTANCE_REF__CONTEXT_PPORT = 7;
    public static final int PMODE_GROUP_IN_ATOMIC_SWC_INSTANCE_REF__TARGET_MODE_GROUP = 8;
    public static final int PMODE_GROUP_IN_ATOMIC_SWC_INSTANCE_REF__BASE = 9;
    public static final int PMODE_GROUP_IN_ATOMIC_SWC_INSTANCE_REF_FEATURE_COUNT = 10;
    public static final int POPERATION_IN_ATOMIC_SWC_INSTANCE_REF = 3;
    public static final int POPERATION_IN_ATOMIC_SWC_INSTANCE_REF__GCHECKSUM = 0;
    public static final int POPERATION_IN_ATOMIC_SWC_INSTANCE_REF__GTIMESTAMP = 1;
    public static final int POPERATION_IN_ATOMIC_SWC_INSTANCE_REF__CHECKSUM = 2;
    public static final int POPERATION_IN_ATOMIC_SWC_INSTANCE_REF__TIMESTAMP = 3;
    public static final int POPERATION_IN_ATOMIC_SWC_INSTANCE_REF__GCONTEXT_PPORT = 4;
    public static final int POPERATION_IN_ATOMIC_SWC_INSTANCE_REF__GTARGET_PROVIDED_OPERATION = 5;
    public static final int POPERATION_IN_ATOMIC_SWC_INSTANCE_REF__OPERATION_INVOKED_EVENT = 6;
    public static final int POPERATION_IN_ATOMIC_SWC_INSTANCE_REF__CONTEXT_PPORT = 7;
    public static final int POPERATION_IN_ATOMIC_SWC_INSTANCE_REF__TARGET_PROVIDED_OPERATION = 8;
    public static final int POPERATION_IN_ATOMIC_SWC_INSTANCE_REF__BASE = 9;
    public static final int POPERATION_IN_ATOMIC_SWC_INSTANCE_REF_FEATURE_COUNT = 10;
    public static final int TRIGGER_IN_ATOMIC_SWC_INSTANCE_REF = 5;
    public static final int TRIGGER_IN_ATOMIC_SWC_INSTANCE_REF__GCHECKSUM = 0;
    public static final int TRIGGER_IN_ATOMIC_SWC_INSTANCE_REF__GTIMESTAMP = 1;
    public static final int TRIGGER_IN_ATOMIC_SWC_INSTANCE_REF__CHECKSUM = 2;
    public static final int TRIGGER_IN_ATOMIC_SWC_INSTANCE_REF__TIMESTAMP = 3;
    public static final int TRIGGER_IN_ATOMIC_SWC_INSTANCE_REF_FEATURE_COUNT = 4;
    public static final int PTRIGGER_IN_ATOMIC_SWC_TYPE_INSTANCE_REF = 4;
    public static final int PTRIGGER_IN_ATOMIC_SWC_TYPE_INSTANCE_REF__GCHECKSUM = 0;
    public static final int PTRIGGER_IN_ATOMIC_SWC_TYPE_INSTANCE_REF__GTIMESTAMP = 1;
    public static final int PTRIGGER_IN_ATOMIC_SWC_TYPE_INSTANCE_REF__CHECKSUM = 2;
    public static final int PTRIGGER_IN_ATOMIC_SWC_TYPE_INSTANCE_REF__TIMESTAMP = 3;
    public static final int PTRIGGER_IN_ATOMIC_SWC_TYPE_INSTANCE_REF__CONTEXT_PPORT = 4;
    public static final int PTRIGGER_IN_ATOMIC_SWC_TYPE_INSTANCE_REF__TARGET_TRIGGER = 5;
    public static final int PTRIGGER_IN_ATOMIC_SWC_TYPE_INSTANCE_REF__BASE = 6;
    public static final int PTRIGGER_IN_ATOMIC_SWC_TYPE_INSTANCE_REF_FEATURE_COUNT = 7;
    public static final int VARIABLE_IN_ATOMIC_SWC_INSTANCE_REF = 7;
    public static final int VARIABLE_IN_ATOMIC_SWC_INSTANCE_REF__GCHECKSUM = 0;
    public static final int VARIABLE_IN_ATOMIC_SWC_INSTANCE_REF__GTIMESTAMP = 1;
    public static final int VARIABLE_IN_ATOMIC_SWC_INSTANCE_REF__CHECKSUM = 2;
    public static final int VARIABLE_IN_ATOMIC_SWC_INSTANCE_REF__TIMESTAMP = 3;
    public static final int VARIABLE_IN_ATOMIC_SWC_INSTANCE_REF_FEATURE_COUNT = 4;
    public static final int PVARIABLE_IN_ATOMIC_SWC_INSTANCE_REF = 6;
    public static final int PVARIABLE_IN_ATOMIC_SWC_INSTANCE_REF__GCHECKSUM = 0;
    public static final int PVARIABLE_IN_ATOMIC_SWC_INSTANCE_REF__GTIMESTAMP = 1;
    public static final int PVARIABLE_IN_ATOMIC_SWC_INSTANCE_REF__CHECKSUM = 2;
    public static final int PVARIABLE_IN_ATOMIC_SWC_INSTANCE_REF__TIMESTAMP = 3;
    public static final int PVARIABLE_IN_ATOMIC_SWC_INSTANCE_REF__GCONTEXT_PPORT = 4;
    public static final int PVARIABLE_IN_ATOMIC_SWC_INSTANCE_REF__GTARGET_DATA_ELEMENT = 5;
    public static final int PVARIABLE_IN_ATOMIC_SWC_INSTANCE_REF__CONTEXT_PPORT = 6;
    public static final int PVARIABLE_IN_ATOMIC_SWC_INSTANCE_REF__TARGET_DATA_ELEMENT = 7;
    public static final int PVARIABLE_IN_ATOMIC_SWC_INSTANCE_REF__BASE = 8;
    public static final int PVARIABLE_IN_ATOMIC_SWC_INSTANCE_REF_FEATURE_COUNT = 9;
    public static final int RMODE_GROUP_IN_ATOMIC_SWC_INSTANCE_REF = 8;
    public static final int RMODE_GROUP_IN_ATOMIC_SWC_INSTANCE_REF__GCHECKSUM = 0;
    public static final int RMODE_GROUP_IN_ATOMIC_SWC_INSTANCE_REF__GTIMESTAMP = 1;
    public static final int RMODE_GROUP_IN_ATOMIC_SWC_INSTANCE_REF__CHECKSUM = 2;
    public static final int RMODE_GROUP_IN_ATOMIC_SWC_INSTANCE_REF__TIMESTAMP = 3;
    public static final int RMODE_GROUP_IN_ATOMIC_SWC_INSTANCE_REF__MODE_ACCESS_POINT = 4;
    public static final int RMODE_GROUP_IN_ATOMIC_SWC_INSTANCE_REF__GCONTEXT_RPORT = 5;
    public static final int RMODE_GROUP_IN_ATOMIC_SWC_INSTANCE_REF__GTARGET_MODE_GROUP = 6;
    public static final int RMODE_GROUP_IN_ATOMIC_SWC_INSTANCE_REF__CONTEXT_RPORT = 7;
    public static final int RMODE_GROUP_IN_ATOMIC_SWC_INSTANCE_REF__TARGET_MODE_GROUP = 8;
    public static final int RMODE_GROUP_IN_ATOMIC_SWC_INSTANCE_REF__BASE = 9;
    public static final int RMODE_GROUP_IN_ATOMIC_SWC_INSTANCE_REF_FEATURE_COUNT = 10;
    public static final int RMODE_IN_ATOMIC_SWC_INSTANCE_REF = 9;
    public static final int RMODE_IN_ATOMIC_SWC_INSTANCE_REF__GCHECKSUM = 0;
    public static final int RMODE_IN_ATOMIC_SWC_INSTANCE_REF__GTIMESTAMP = 1;
    public static final int RMODE_IN_ATOMIC_SWC_INSTANCE_REF__CHECKSUM = 2;
    public static final int RMODE_IN_ATOMIC_SWC_INSTANCE_REF__TIMESTAMP = 3;
    public static final int RMODE_IN_ATOMIC_SWC_INSTANCE_REF__GCONTEXT_RPORT = 4;
    public static final int RMODE_IN_ATOMIC_SWC_INSTANCE_REF__GCONTEXT_MODE_DECLARATION_GROUP_PROTOTYPE = 5;
    public static final int RMODE_IN_ATOMIC_SWC_INSTANCE_REF__GTARGET_MODE_DECLARATION = 6;
    public static final int RMODE_IN_ATOMIC_SWC_INSTANCE_REF__BASE = 7;
    public static final int RMODE_IN_ATOMIC_SWC_INSTANCE_REF__CONTEXT_PORT = 8;
    public static final int RMODE_IN_ATOMIC_SWC_INSTANCE_REF__CONTEXT_MODE_DECLARATION_GROUP_PROTOTYPE = 9;
    public static final int RMODE_IN_ATOMIC_SWC_INSTANCE_REF__TARGET_MODE_DECLARATION = 10;
    public static final int RMODE_IN_ATOMIC_SWC_INSTANCE_REF_FEATURE_COUNT = 11;
    public static final int ROPERATION_IN_ATOMIC_SWC_INSTANCE_REF = 10;
    public static final int ROPERATION_IN_ATOMIC_SWC_INSTANCE_REF__GCHECKSUM = 0;
    public static final int ROPERATION_IN_ATOMIC_SWC_INSTANCE_REF__GTIMESTAMP = 1;
    public static final int ROPERATION_IN_ATOMIC_SWC_INSTANCE_REF__CHECKSUM = 2;
    public static final int ROPERATION_IN_ATOMIC_SWC_INSTANCE_REF__TIMESTAMP = 3;
    public static final int ROPERATION_IN_ATOMIC_SWC_INSTANCE_REF__GCONTEXT_RPORT = 4;
    public static final int ROPERATION_IN_ATOMIC_SWC_INSTANCE_REF__GTARGET_REQUIRED_OPERATION = 5;
    public static final int ROPERATION_IN_ATOMIC_SWC_INSTANCE_REF__SERVER_CALL_POINT = 6;
    public static final int ROPERATION_IN_ATOMIC_SWC_INSTANCE_REF__CONTEXT_RPORT = 7;
    public static final int ROPERATION_IN_ATOMIC_SWC_INSTANCE_REF__TARGET_REQUIRED_OPERATION = 8;
    public static final int ROPERATION_IN_ATOMIC_SWC_INSTANCE_REF__BASE = 9;
    public static final int ROPERATION_IN_ATOMIC_SWC_INSTANCE_REF_FEATURE_COUNT = 10;
    public static final int RTRIGGER_IN_ATOMIC_SWC_INSTANCE_REF = 11;
    public static final int RTRIGGER_IN_ATOMIC_SWC_INSTANCE_REF__GCHECKSUM = 0;
    public static final int RTRIGGER_IN_ATOMIC_SWC_INSTANCE_REF__GTIMESTAMP = 1;
    public static final int RTRIGGER_IN_ATOMIC_SWC_INSTANCE_REF__CHECKSUM = 2;
    public static final int RTRIGGER_IN_ATOMIC_SWC_INSTANCE_REF__TIMESTAMP = 3;
    public static final int RTRIGGER_IN_ATOMIC_SWC_INSTANCE_REF__EXTERNAL_TRIGGER_OCCURRED_EVENT = 4;
    public static final int RTRIGGER_IN_ATOMIC_SWC_INSTANCE_REF__CONTEXT_RPORT = 5;
    public static final int RTRIGGER_IN_ATOMIC_SWC_INSTANCE_REF__TARGET_TRIGGER = 6;
    public static final int RTRIGGER_IN_ATOMIC_SWC_INSTANCE_REF__BASE = 7;
    public static final int RTRIGGER_IN_ATOMIC_SWC_INSTANCE_REF_FEATURE_COUNT = 8;
    public static final int RVARIABLE_IN_ATOMIC_SWC_INSTANCE_REF = 12;
    public static final int RVARIABLE_IN_ATOMIC_SWC_INSTANCE_REF__GCHECKSUM = 0;
    public static final int RVARIABLE_IN_ATOMIC_SWC_INSTANCE_REF__GTIMESTAMP = 1;
    public static final int RVARIABLE_IN_ATOMIC_SWC_INSTANCE_REF__CHECKSUM = 2;
    public static final int RVARIABLE_IN_ATOMIC_SWC_INSTANCE_REF__TIMESTAMP = 3;
    public static final int RVARIABLE_IN_ATOMIC_SWC_INSTANCE_REF__GCONTEXT_RPORT = 4;
    public static final int RVARIABLE_IN_ATOMIC_SWC_INSTANCE_REF__GTARGET_DATA_ELEMENT = 5;
    public static final int RVARIABLE_IN_ATOMIC_SWC_INSTANCE_REF__CONTEXT_RPORT = 6;
    public static final int RVARIABLE_IN_ATOMIC_SWC_INSTANCE_REF__TARGET_DATA_ELEMENT = 7;
    public static final int RVARIABLE_IN_ATOMIC_SWC_INSTANCE_REF__BASE = 8;
    public static final int RVARIABLE_IN_ATOMIC_SWC_INSTANCE_REF_FEATURE_COUNT = 9;
    public static final int INNER_PORT_GROUP_IN_COMPOSITION_INSTANCE_REF = 13;
    public static final int INNER_PORT_GROUP_IN_COMPOSITION_INSTANCE_REF__GCHECKSUM = 0;
    public static final int INNER_PORT_GROUP_IN_COMPOSITION_INSTANCE_REF__GTIMESTAMP = 1;
    public static final int INNER_PORT_GROUP_IN_COMPOSITION_INSTANCE_REF__CHECKSUM = 2;
    public static final int INNER_PORT_GROUP_IN_COMPOSITION_INSTANCE_REF__TIMESTAMP = 3;
    public static final int INNER_PORT_GROUP_IN_COMPOSITION_INSTANCE_REF__PORT_GROUP = 4;
    public static final int INNER_PORT_GROUP_IN_COMPOSITION_INSTANCE_REF__BASE = 5;
    public static final int INNER_PORT_GROUP_IN_COMPOSITION_INSTANCE_REF__CONTEXTS = 6;
    public static final int INNER_PORT_GROUP_IN_COMPOSITION_INSTANCE_REF__TARGET = 7;
    public static final int INNER_PORT_GROUP_IN_COMPOSITION_INSTANCE_REF_FEATURE_COUNT = 8;

    public EClass getModeGroupInAtomicSwcInstanceRef();

    public EReference getModeGroupInAtomicSwcInstanceRef_ModeAccessPoint();

    public EClass getOperationInAtomicSwcInstanceRef();

    public EClass getPModeGroupInAtomicSwcInstanceRef();

    public EReference getPModeGroupInAtomicSwcInstanceRef_ContextPPort();

    public EReference getPModeGroupInAtomicSwcInstanceRef_TargetModeGroup();

    public EReference getPModeGroupInAtomicSwcInstanceRef_Base();

    public EClass getPOperationInAtomicSwcInstanceRef();

    public EReference getPOperationInAtomicSwcInstanceRef_OperationInvokedEvent();

    public EReference getPOperationInAtomicSwcInstanceRef_ContextPPort();

    public EReference getPOperationInAtomicSwcInstanceRef_TargetProvidedOperation();

    public EReference getPOperationInAtomicSwcInstanceRef_Base();

    public EClass getPTriggerInAtomicSwcTypeInstanceRef();

    public EReference getPTriggerInAtomicSwcTypeInstanceRef_ContextPPort();

    public EReference getPTriggerInAtomicSwcTypeInstanceRef_TargetTrigger();

    public EReference getPTriggerInAtomicSwcTypeInstanceRef_Base();

    public EClass getTriggerInAtomicSwcInstanceRef();

    public EClass getPVariableInAtomicSwcInstanceRef();

    public EReference getPVariableInAtomicSwcInstanceRef_ContextPPort();

    public EReference getPVariableInAtomicSwcInstanceRef_TargetDataElement();

    public EReference getPVariableInAtomicSwcInstanceRef_Base();

    public EClass getVariableInAtomicSwcInstanceRef();

    public EClass getRModeGroupInAtomicSWCInstanceRef();

    public EReference getRModeGroupInAtomicSWCInstanceRef_ContextRPort();

    public EReference getRModeGroupInAtomicSWCInstanceRef_TargetModeGroup();

    public EReference getRModeGroupInAtomicSWCInstanceRef_Base();

    public EClass getRModeInAtomicSwcInstanceRef();

    public EReference getRModeInAtomicSwcInstanceRef_Base();

    public EReference getRModeInAtomicSwcInstanceRef_ContextPort();

    public EReference getRModeInAtomicSwcInstanceRef_ContextModeDeclarationGroupPrototype();

    public EReference getRModeInAtomicSwcInstanceRef_TargetModeDeclaration();

    public EClass getROperationInAtomicSwcInstanceRef();

    public EReference getROperationInAtomicSwcInstanceRef_ServerCallPoint();

    public EReference getROperationInAtomicSwcInstanceRef_ContextRPort();

    public EReference getROperationInAtomicSwcInstanceRef_TargetRequiredOperation();

    public EReference getROperationInAtomicSwcInstanceRef_Base();

    public EClass getRTriggerInAtomicSwcInstanceRef();

    public EReference getRTriggerInAtomicSwcInstanceRef_ExternalTriggerOccurredEvent();

    public EReference getRTriggerInAtomicSwcInstanceRef_ContextRPort();

    public EReference getRTriggerInAtomicSwcInstanceRef_TargetTrigger();

    public EReference getRTriggerInAtomicSwcInstanceRef_Base();

    public EClass getRVariableInAtomicSwcInstanceRef();

    public EReference getRVariableInAtomicSwcInstanceRef_ContextRPort();

    public EReference getRVariableInAtomicSwcInstanceRef_TargetDataElement();

    public EReference getRVariableInAtomicSwcInstanceRef_Base();

    public EClass getInnerPortGroupInCompositionInstanceRef();

    public EReference getInnerPortGroupInCompositionInstanceRef_PortGroup();

    public EReference getInnerPortGroupInCompositionInstanceRef_Base();

    public EReference getInnerPortGroupInCompositionInstanceRef_Contexts();

    public EReference getInnerPortGroupInCompositionInstanceRef_Target();

    public InstancerefsFactory getInstancerefsFactory();

    public static interface Literals {
        public static final EClass MODE_GROUP_IN_ATOMIC_SWC_INSTANCE_REF = eINSTANCE.getModeGroupInAtomicSwcInstanceRef();
        public static final EReference MODE_GROUP_IN_ATOMIC_SWC_INSTANCE_REF__MODE_ACCESS_POINT = eINSTANCE.getModeGroupInAtomicSwcInstanceRef_ModeAccessPoint();
        public static final EClass OPERATION_IN_ATOMIC_SWC_INSTANCE_REF = eINSTANCE.getOperationInAtomicSwcInstanceRef();
        public static final EClass PMODE_GROUP_IN_ATOMIC_SWC_INSTANCE_REF = eINSTANCE.getPModeGroupInAtomicSwcInstanceRef();
        public static final EReference PMODE_GROUP_IN_ATOMIC_SWC_INSTANCE_REF__CONTEXT_PPORT = eINSTANCE.getPModeGroupInAtomicSwcInstanceRef_ContextPPort();
        public static final EReference PMODE_GROUP_IN_ATOMIC_SWC_INSTANCE_REF__TARGET_MODE_GROUP = eINSTANCE.getPModeGroupInAtomicSwcInstanceRef_TargetModeGroup();
        public static final EReference PMODE_GROUP_IN_ATOMIC_SWC_INSTANCE_REF__BASE = eINSTANCE.getPModeGroupInAtomicSwcInstanceRef_Base();
        public static final EClass POPERATION_IN_ATOMIC_SWC_INSTANCE_REF = eINSTANCE.getPOperationInAtomicSwcInstanceRef();
        public static final EReference POPERATION_IN_ATOMIC_SWC_INSTANCE_REF__OPERATION_INVOKED_EVENT = eINSTANCE.getPOperationInAtomicSwcInstanceRef_OperationInvokedEvent();
        public static final EReference POPERATION_IN_ATOMIC_SWC_INSTANCE_REF__CONTEXT_PPORT = eINSTANCE.getPOperationInAtomicSwcInstanceRef_ContextPPort();
        public static final EReference POPERATION_IN_ATOMIC_SWC_INSTANCE_REF__TARGET_PROVIDED_OPERATION = eINSTANCE.getPOperationInAtomicSwcInstanceRef_TargetProvidedOperation();
        public static final EReference POPERATION_IN_ATOMIC_SWC_INSTANCE_REF__BASE = eINSTANCE.getPOperationInAtomicSwcInstanceRef_Base();
        public static final EClass PTRIGGER_IN_ATOMIC_SWC_TYPE_INSTANCE_REF = eINSTANCE.getPTriggerInAtomicSwcTypeInstanceRef();
        public static final EReference PTRIGGER_IN_ATOMIC_SWC_TYPE_INSTANCE_REF__CONTEXT_PPORT = eINSTANCE.getPTriggerInAtomicSwcTypeInstanceRef_ContextPPort();
        public static final EReference PTRIGGER_IN_ATOMIC_SWC_TYPE_INSTANCE_REF__TARGET_TRIGGER = eINSTANCE.getPTriggerInAtomicSwcTypeInstanceRef_TargetTrigger();
        public static final EReference PTRIGGER_IN_ATOMIC_SWC_TYPE_INSTANCE_REF__BASE = eINSTANCE.getPTriggerInAtomicSwcTypeInstanceRef_Base();
        public static final EClass TRIGGER_IN_ATOMIC_SWC_INSTANCE_REF = eINSTANCE.getTriggerInAtomicSwcInstanceRef();
        public static final EClass PVARIABLE_IN_ATOMIC_SWC_INSTANCE_REF = eINSTANCE.getPVariableInAtomicSwcInstanceRef();
        public static final EReference PVARIABLE_IN_ATOMIC_SWC_INSTANCE_REF__CONTEXT_PPORT = eINSTANCE.getPVariableInAtomicSwcInstanceRef_ContextPPort();
        public static final EReference PVARIABLE_IN_ATOMIC_SWC_INSTANCE_REF__TARGET_DATA_ELEMENT = eINSTANCE.getPVariableInAtomicSwcInstanceRef_TargetDataElement();
        public static final EReference PVARIABLE_IN_ATOMIC_SWC_INSTANCE_REF__BASE = eINSTANCE.getPVariableInAtomicSwcInstanceRef_Base();
        public static final EClass VARIABLE_IN_ATOMIC_SWC_INSTANCE_REF = eINSTANCE.getVariableInAtomicSwcInstanceRef();
        public static final EClass RMODE_GROUP_IN_ATOMIC_SWC_INSTANCE_REF = eINSTANCE.getRModeGroupInAtomicSWCInstanceRef();
        public static final EReference RMODE_GROUP_IN_ATOMIC_SWC_INSTANCE_REF__CONTEXT_RPORT = eINSTANCE.getRModeGroupInAtomicSWCInstanceRef_ContextRPort();
        public static final EReference RMODE_GROUP_IN_ATOMIC_SWC_INSTANCE_REF__TARGET_MODE_GROUP = eINSTANCE.getRModeGroupInAtomicSWCInstanceRef_TargetModeGroup();
        public static final EReference RMODE_GROUP_IN_ATOMIC_SWC_INSTANCE_REF__BASE = eINSTANCE.getRModeGroupInAtomicSWCInstanceRef_Base();
        public static final EClass RMODE_IN_ATOMIC_SWC_INSTANCE_REF = eINSTANCE.getRModeInAtomicSwcInstanceRef();
        public static final EReference RMODE_IN_ATOMIC_SWC_INSTANCE_REF__BASE = eINSTANCE.getRModeInAtomicSwcInstanceRef_Base();
        public static final EReference RMODE_IN_ATOMIC_SWC_INSTANCE_REF__CONTEXT_PORT = eINSTANCE.getRModeInAtomicSwcInstanceRef_ContextPort();
        public static final EReference RMODE_IN_ATOMIC_SWC_INSTANCE_REF__CONTEXT_MODE_DECLARATION_GROUP_PROTOTYPE = eINSTANCE.getRModeInAtomicSwcInstanceRef_ContextModeDeclarationGroupPrototype();
        public static final EReference RMODE_IN_ATOMIC_SWC_INSTANCE_REF__TARGET_MODE_DECLARATION = eINSTANCE.getRModeInAtomicSwcInstanceRef_TargetModeDeclaration();
        public static final EClass ROPERATION_IN_ATOMIC_SWC_INSTANCE_REF = eINSTANCE.getROperationInAtomicSwcInstanceRef();
        public static final EReference ROPERATION_IN_ATOMIC_SWC_INSTANCE_REF__SERVER_CALL_POINT = eINSTANCE.getROperationInAtomicSwcInstanceRef_ServerCallPoint();
        public static final EReference ROPERATION_IN_ATOMIC_SWC_INSTANCE_REF__CONTEXT_RPORT = eINSTANCE.getROperationInAtomicSwcInstanceRef_ContextRPort();
        public static final EReference ROPERATION_IN_ATOMIC_SWC_INSTANCE_REF__TARGET_REQUIRED_OPERATION = eINSTANCE.getROperationInAtomicSwcInstanceRef_TargetRequiredOperation();
        public static final EReference ROPERATION_IN_ATOMIC_SWC_INSTANCE_REF__BASE = eINSTANCE.getROperationInAtomicSwcInstanceRef_Base();
        public static final EClass RTRIGGER_IN_ATOMIC_SWC_INSTANCE_REF = eINSTANCE.getRTriggerInAtomicSwcInstanceRef();
        public static final EReference RTRIGGER_IN_ATOMIC_SWC_INSTANCE_REF__EXTERNAL_TRIGGER_OCCURRED_EVENT = eINSTANCE.getRTriggerInAtomicSwcInstanceRef_ExternalTriggerOccurredEvent();
        public static final EReference RTRIGGER_IN_ATOMIC_SWC_INSTANCE_REF__CONTEXT_RPORT = eINSTANCE.getRTriggerInAtomicSwcInstanceRef_ContextRPort();
        public static final EReference RTRIGGER_IN_ATOMIC_SWC_INSTANCE_REF__TARGET_TRIGGER = eINSTANCE.getRTriggerInAtomicSwcInstanceRef_TargetTrigger();
        public static final EReference RTRIGGER_IN_ATOMIC_SWC_INSTANCE_REF__BASE = eINSTANCE.getRTriggerInAtomicSwcInstanceRef_Base();
        public static final EClass RVARIABLE_IN_ATOMIC_SWC_INSTANCE_REF = eINSTANCE.getRVariableInAtomicSwcInstanceRef();
        public static final EReference RVARIABLE_IN_ATOMIC_SWC_INSTANCE_REF__CONTEXT_RPORT = eINSTANCE.getRVariableInAtomicSwcInstanceRef_ContextRPort();
        public static final EReference RVARIABLE_IN_ATOMIC_SWC_INSTANCE_REF__TARGET_DATA_ELEMENT = eINSTANCE.getRVariableInAtomicSwcInstanceRef_TargetDataElement();
        public static final EReference RVARIABLE_IN_ATOMIC_SWC_INSTANCE_REF__BASE = eINSTANCE.getRVariableInAtomicSwcInstanceRef_Base();
        public static final EClass INNER_PORT_GROUP_IN_COMPOSITION_INSTANCE_REF = eINSTANCE.getInnerPortGroupInCompositionInstanceRef();
        public static final EReference INNER_PORT_GROUP_IN_COMPOSITION_INSTANCE_REF__PORT_GROUP = eINSTANCE.getInnerPortGroupInCompositionInstanceRef_PortGroup();
        public static final EReference INNER_PORT_GROUP_IN_COMPOSITION_INSTANCE_REF__BASE = eINSTANCE.getInnerPortGroupInCompositionInstanceRef_Base();
        public static final EReference INNER_PORT_GROUP_IN_COMPOSITION_INSTANCE_REF__CONTEXTS = eINSTANCE.getInnerPortGroupInCompositionInstanceRef_Contexts();
        public static final EReference INNER_PORT_GROUP_IN_COMPOSITION_INSTANCE_REF__TARGET = eINSTANCE.getInnerPortGroupInCompositionInstanceRef_Target();
    }
}

