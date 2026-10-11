/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventoccurrenceexpression.instancerefs;

import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventoccurrenceexpression.instancerefs.InstancerefsFactory;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventoccurrenceexpression.instancerefs.impl.InstancerefsPackageImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface InstancerefsPackage
extends EPackage {
    public static final String eNAME = "instancerefs";
    public static final String eNS_URI = "http://autosar.org/schema/r4.0/autosar40/cs/t/td/tde/tdeoe/ir";
    public static final String eNS_PREFIX = "";
    public static final InstancerefsPackage eINSTANCE = InstancerefsPackageImpl.init();
    public static final int VARIABLE_IN_COMPONENT_INSTANCE_REF = 0;
    public static final int VARIABLE_IN_COMPONENT_INSTANCE_REF__GCHECKSUM = 0;
    public static final int VARIABLE_IN_COMPONENT_INSTANCE_REF__GTIMESTAMP = 1;
    public static final int VARIABLE_IN_COMPONENT_INSTANCE_REF__CHECKSUM = 2;
    public static final int VARIABLE_IN_COMPONENT_INSTANCE_REF__TIMESTAMP = 3;
    public static final int VARIABLE_IN_COMPONENT_INSTANCE_REF__AUTOSAR_VARIABLE_INSTANCE = 4;
    public static final int VARIABLE_IN_COMPONENT_INSTANCE_REF__BASE = 5;
    public static final int VARIABLE_IN_COMPONENT_INSTANCE_REF__CONTEXT_COMPONENTS = 6;
    public static final int VARIABLE_IN_COMPONENT_INSTANCE_REF__CONTEXT_PORT_PROTOTYPE = 7;
    public static final int VARIABLE_IN_COMPONENT_INSTANCE_REF__ROOT_VARIABLE_DATA_PROTOTYPE = 8;
    public static final int VARIABLE_IN_COMPONENT_INSTANCE_REF__CONTEXT_DATA_PROTOTYPES = 9;
    public static final int VARIABLE_IN_COMPONENT_INSTANCE_REF__TARGET_DATA_PROTOYPE = 10;
    public static final int VARIABLE_IN_COMPONENT_INSTANCE_REF_FEATURE_COUNT = 11;
    public static final int OPERATION_ARGUMENT_IN_COMPONENT_INSTANCE_REF = 1;
    public static final int OPERATION_ARGUMENT_IN_COMPONENT_INSTANCE_REF__GCHECKSUM = 0;
    public static final int OPERATION_ARGUMENT_IN_COMPONENT_INSTANCE_REF__GTIMESTAMP = 1;
    public static final int OPERATION_ARGUMENT_IN_COMPONENT_INSTANCE_REF__CHECKSUM = 2;
    public static final int OPERATION_ARGUMENT_IN_COMPONENT_INSTANCE_REF__TIMESTAMP = 3;
    public static final int OPERATION_ARGUMENT_IN_COMPONENT_INSTANCE_REF__AUTOSAR_OPERATION_ARGUMENT_INSTANCE = 4;
    public static final int OPERATION_ARGUMENT_IN_COMPONENT_INSTANCE_REF__BASE = 5;
    public static final int OPERATION_ARGUMENT_IN_COMPONENT_INSTANCE_REF__CONTEXT_COMPONENTS = 6;
    public static final int OPERATION_ARGUMENT_IN_COMPONENT_INSTANCE_REF__CONTEXT_PORT_PROTOTYPE = 7;
    public static final int OPERATION_ARGUMENT_IN_COMPONENT_INSTANCE_REF__CONTEXT_OPERATION = 8;
    public static final int OPERATION_ARGUMENT_IN_COMPONENT_INSTANCE_REF__ROOT_ARGUMENT_DATA_PROTOTYPE = 9;
    public static final int OPERATION_ARGUMENT_IN_COMPONENT_INSTANCE_REF__CONTEXT_DATA_PROTOTYPES = 10;
    public static final int OPERATION_ARGUMENT_IN_COMPONENT_INSTANCE_REF__TARGET_DATA_PROTOTYPE = 11;
    public static final int OPERATION_ARGUMENT_IN_COMPONENT_INSTANCE_REF_FEATURE_COUNT = 12;

    public EClass getVariableInComponentInstanceRef();

    public EReference getVariableInComponentInstanceRef_AutosarVariableInstance();

    public EReference getVariableInComponentInstanceRef_Base();

    public EReference getVariableInComponentInstanceRef_ContextComponents();

    public EReference getVariableInComponentInstanceRef_ContextPortPrototype();

    public EReference getVariableInComponentInstanceRef_RootVariableDataPrototype();

    public EReference getVariableInComponentInstanceRef_ContextDataPrototypes();

    public EReference getVariableInComponentInstanceRef_TargetDataProtoype();

    public EClass getOperationArgumentInComponentInstanceRef();

    public EReference getOperationArgumentInComponentInstanceRef_AutosarOperationArgumentInstance();

    public EReference getOperationArgumentInComponentInstanceRef_Base();

    public EReference getOperationArgumentInComponentInstanceRef_ContextComponents();

    public EReference getOperationArgumentInComponentInstanceRef_ContextPortPrototype();

    public EReference getOperationArgumentInComponentInstanceRef_ContextOperation();

    public EReference getOperationArgumentInComponentInstanceRef_RootArgumentDataPrototype();

    public EReference getOperationArgumentInComponentInstanceRef_ContextDataPrototypes();

    public EReference getOperationArgumentInComponentInstanceRef_TargetDataPrototype();

    public InstancerefsFactory getInstancerefsFactory();

    public static interface Literals {
        public static final EClass VARIABLE_IN_COMPONENT_INSTANCE_REF = eINSTANCE.getVariableInComponentInstanceRef();
        public static final EReference VARIABLE_IN_COMPONENT_INSTANCE_REF__AUTOSAR_VARIABLE_INSTANCE = eINSTANCE.getVariableInComponentInstanceRef_AutosarVariableInstance();
        public static final EReference VARIABLE_IN_COMPONENT_INSTANCE_REF__BASE = eINSTANCE.getVariableInComponentInstanceRef_Base();
        public static final EReference VARIABLE_IN_COMPONENT_INSTANCE_REF__CONTEXT_COMPONENTS = eINSTANCE.getVariableInComponentInstanceRef_ContextComponents();
        public static final EReference VARIABLE_IN_COMPONENT_INSTANCE_REF__CONTEXT_PORT_PROTOTYPE = eINSTANCE.getVariableInComponentInstanceRef_ContextPortPrototype();
        public static final EReference VARIABLE_IN_COMPONENT_INSTANCE_REF__ROOT_VARIABLE_DATA_PROTOTYPE = eINSTANCE.getVariableInComponentInstanceRef_RootVariableDataPrototype();
        public static final EReference VARIABLE_IN_COMPONENT_INSTANCE_REF__CONTEXT_DATA_PROTOTYPES = eINSTANCE.getVariableInComponentInstanceRef_ContextDataPrototypes();
        public static final EReference VARIABLE_IN_COMPONENT_INSTANCE_REF__TARGET_DATA_PROTOYPE = eINSTANCE.getVariableInComponentInstanceRef_TargetDataProtoype();
        public static final EClass OPERATION_ARGUMENT_IN_COMPONENT_INSTANCE_REF = eINSTANCE.getOperationArgumentInComponentInstanceRef();
        public static final EReference OPERATION_ARGUMENT_IN_COMPONENT_INSTANCE_REF__AUTOSAR_OPERATION_ARGUMENT_INSTANCE = eINSTANCE.getOperationArgumentInComponentInstanceRef_AutosarOperationArgumentInstance();
        public static final EReference OPERATION_ARGUMENT_IN_COMPONENT_INSTANCE_REF__BASE = eINSTANCE.getOperationArgumentInComponentInstanceRef_Base();
        public static final EReference OPERATION_ARGUMENT_IN_COMPONENT_INSTANCE_REF__CONTEXT_COMPONENTS = eINSTANCE.getOperationArgumentInComponentInstanceRef_ContextComponents();
        public static final EReference OPERATION_ARGUMENT_IN_COMPONENT_INSTANCE_REF__CONTEXT_PORT_PROTOTYPE = eINSTANCE.getOperationArgumentInComponentInstanceRef_ContextPortPrototype();
        public static final EReference OPERATION_ARGUMENT_IN_COMPONENT_INSTANCE_REF__CONTEXT_OPERATION = eINSTANCE.getOperationArgumentInComponentInstanceRef_ContextOperation();
        public static final EReference OPERATION_ARGUMENT_IN_COMPONENT_INSTANCE_REF__ROOT_ARGUMENT_DATA_PROTOTYPE = eINSTANCE.getOperationArgumentInComponentInstanceRef_RootArgumentDataPrototype();
        public static final EReference OPERATION_ARGUMENT_IN_COMPONENT_INSTANCE_REF__CONTEXT_DATA_PROTOTYPES = eINSTANCE.getOperationArgumentInComponentInstanceRef_ContextDataPrototypes();
        public static final EReference OPERATION_ARGUMENT_IN_COMPONENT_INSTANCE_REF__TARGET_DATA_PROTOTYPE = eINSTANCE.getOperationArgumentInComponentInstanceRef_TargetDataPrototype();
    }
}

