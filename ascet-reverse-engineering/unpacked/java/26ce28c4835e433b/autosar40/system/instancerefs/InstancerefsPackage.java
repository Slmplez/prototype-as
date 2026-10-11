/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar40.system.instancerefs;

import autosar40.system.instancerefs.InstancerefsFactory;
import autosar40.system.instancerefs.impl.InstancerefsPackageImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface InstancerefsPackage
extends EPackage {
    public static final String eNAME = "instancerefs";
    public static final String eNS_URI = "http://autosar.org/schema/r4.0/autosar40/system/ir";
    public static final String eNS_PREFIX = "";
    public static final InstancerefsPackage eINSTANCE = InstancerefsPackageImpl.init();
    public static final int OPERATION_IN_SYSTEM_INSTANCE_REF = 0;
    public static final int OPERATION_IN_SYSTEM_INSTANCE_REF__GCHECKSUM = 0;
    public static final int OPERATION_IN_SYSTEM_INSTANCE_REF__GTIMESTAMP = 1;
    public static final int OPERATION_IN_SYSTEM_INSTANCE_REF__CHECKSUM = 2;
    public static final int OPERATION_IN_SYSTEM_INSTANCE_REF__TIMESTAMP = 3;
    public static final int OPERATION_IN_SYSTEM_INSTANCE_REF__BASE = 4;
    public static final int OPERATION_IN_SYSTEM_INSTANCE_REF__CONTEXT_COMPOSITION = 5;
    public static final int OPERATION_IN_SYSTEM_INSTANCE_REF__CONTEXT_COMPONENTS = 6;
    public static final int OPERATION_IN_SYSTEM_INSTANCE_REF__CONTEXT_PORT = 7;
    public static final int OPERATION_IN_SYSTEM_INSTANCE_REF__TARGET_OPERATION = 8;
    public static final int OPERATION_IN_SYSTEM_INSTANCE_REF_FEATURE_COUNT = 9;
    public static final int PORT_GROUP_IN_SYSTEM_INSTANCE_REF = 1;
    public static final int PORT_GROUP_IN_SYSTEM_INSTANCE_REF__GCHECKSUM = 0;
    public static final int PORT_GROUP_IN_SYSTEM_INSTANCE_REF__GTIMESTAMP = 1;
    public static final int PORT_GROUP_IN_SYSTEM_INSTANCE_REF__CHECKSUM = 2;
    public static final int PORT_GROUP_IN_SYSTEM_INSTANCE_REF__TIMESTAMP = 3;
    public static final int PORT_GROUP_IN_SYSTEM_INSTANCE_REF__PNC_MAPPING = 4;
    public static final int PORT_GROUP_IN_SYSTEM_INSTANCE_REF__BASE = 5;
    public static final int PORT_GROUP_IN_SYSTEM_INSTANCE_REF__CONTEXT_COMPOSITION = 6;
    public static final int PORT_GROUP_IN_SYSTEM_INSTANCE_REF__CONTEXT_COMPONENTS = 7;
    public static final int PORT_GROUP_IN_SYSTEM_INSTANCE_REF__TARGET = 8;
    public static final int PORT_GROUP_IN_SYSTEM_INSTANCE_REF_FEATURE_COUNT = 9;
    public static final int VARIABLE_DATA_PROTOTYPE_IN_SYSTEM_INSTANCE_REF = 2;
    public static final int VARIABLE_DATA_PROTOTYPE_IN_SYSTEM_INSTANCE_REF__GCHECKSUM = 0;
    public static final int VARIABLE_DATA_PROTOTYPE_IN_SYSTEM_INSTANCE_REF__GTIMESTAMP = 1;
    public static final int VARIABLE_DATA_PROTOTYPE_IN_SYSTEM_INSTANCE_REF__CHECKSUM = 2;
    public static final int VARIABLE_DATA_PROTOTYPE_IN_SYSTEM_INSTANCE_REF__TIMESTAMP = 3;
    public static final int VARIABLE_DATA_PROTOTYPE_IN_SYSTEM_INSTANCE_REF__BASE = 4;
    public static final int VARIABLE_DATA_PROTOTYPE_IN_SYSTEM_INSTANCE_REF__CONTEXT_COMPONENTS = 5;
    public static final int VARIABLE_DATA_PROTOTYPE_IN_SYSTEM_INSTANCE_REF__CONTEXT_COMPOSITION = 6;
    public static final int VARIABLE_DATA_PROTOTYPE_IN_SYSTEM_INSTANCE_REF__CONTEXT_PORT = 7;
    public static final int VARIABLE_DATA_PROTOTYPE_IN_SYSTEM_INSTANCE_REF__TARGET_DATA_PROTOTYPE = 8;
    public static final int VARIABLE_DATA_PROTOTYPE_IN_SYSTEM_INSTANCE_REF_FEATURE_COUNT = 9;
    public static final int COMPONENT_IN_SYSTEM_INSTANCE_REF = 3;
    public static final int COMPONENT_IN_SYSTEM_INSTANCE_REF__GCHECKSUM = 0;
    public static final int COMPONENT_IN_SYSTEM_INSTANCE_REF__GTIMESTAMP = 1;
    public static final int COMPONENT_IN_SYSTEM_INSTANCE_REF__CHECKSUM = 2;
    public static final int COMPONENT_IN_SYSTEM_INSTANCE_REF__TIMESTAMP = 3;
    public static final int COMPONENT_IN_SYSTEM_INSTANCE_REF__BASE = 4;
    public static final int COMPONENT_IN_SYSTEM_INSTANCE_REF__CONTEXT_COMPOSITION = 5;
    public static final int COMPONENT_IN_SYSTEM_INSTANCE_REF__CONTEXT_COMPONENTS = 6;
    public static final int COMPONENT_IN_SYSTEM_INSTANCE_REF__TARGET_COMPONENT = 7;
    public static final int COMPONENT_IN_SYSTEM_INSTANCE_REF_FEATURE_COUNT = 8;

    public EClass getOperationInSystemInstanceRef();

    public EReference getOperationInSystemInstanceRef_Base();

    public EReference getOperationInSystemInstanceRef_ContextComposition();

    public EReference getOperationInSystemInstanceRef_ContextComponents();

    public EReference getOperationInSystemInstanceRef_ContextPort();

    public EReference getOperationInSystemInstanceRef_TargetOperation();

    public EClass getPortGroupInSystemInstanceRef();

    public EReference getPortGroupInSystemInstanceRef_PncMapping();

    public EReference getPortGroupInSystemInstanceRef_Base();

    public EReference getPortGroupInSystemInstanceRef_ContextComposition();

    public EReference getPortGroupInSystemInstanceRef_ContextComponents();

    public EReference getPortGroupInSystemInstanceRef_Target();

    public EClass getVariableDataPrototypeInSystemInstanceRef();

    public EReference getVariableDataPrototypeInSystemInstanceRef_Base();

    public EReference getVariableDataPrototypeInSystemInstanceRef_ContextComponents();

    public EReference getVariableDataPrototypeInSystemInstanceRef_ContextComposition();

    public EReference getVariableDataPrototypeInSystemInstanceRef_ContextPort();

    public EReference getVariableDataPrototypeInSystemInstanceRef_TargetDataPrototype();

    public EClass getComponentInSystemInstanceRef();

    public EReference getComponentInSystemInstanceRef_Base();

    public EReference getComponentInSystemInstanceRef_ContextComposition();

    public EReference getComponentInSystemInstanceRef_ContextComponents();

    public EReference getComponentInSystemInstanceRef_TargetComponent();

    public InstancerefsFactory getInstancerefsFactory();

    public static interface Literals {
        public static final EClass OPERATION_IN_SYSTEM_INSTANCE_REF = eINSTANCE.getOperationInSystemInstanceRef();
        public static final EReference OPERATION_IN_SYSTEM_INSTANCE_REF__BASE = eINSTANCE.getOperationInSystemInstanceRef_Base();
        public static final EReference OPERATION_IN_SYSTEM_INSTANCE_REF__CONTEXT_COMPOSITION = eINSTANCE.getOperationInSystemInstanceRef_ContextComposition();
        public static final EReference OPERATION_IN_SYSTEM_INSTANCE_REF__CONTEXT_COMPONENTS = eINSTANCE.getOperationInSystemInstanceRef_ContextComponents();
        public static final EReference OPERATION_IN_SYSTEM_INSTANCE_REF__CONTEXT_PORT = eINSTANCE.getOperationInSystemInstanceRef_ContextPort();
        public static final EReference OPERATION_IN_SYSTEM_INSTANCE_REF__TARGET_OPERATION = eINSTANCE.getOperationInSystemInstanceRef_TargetOperation();
        public static final EClass PORT_GROUP_IN_SYSTEM_INSTANCE_REF = eINSTANCE.getPortGroupInSystemInstanceRef();
        public static final EReference PORT_GROUP_IN_SYSTEM_INSTANCE_REF__PNC_MAPPING = eINSTANCE.getPortGroupInSystemInstanceRef_PncMapping();
        public static final EReference PORT_GROUP_IN_SYSTEM_INSTANCE_REF__BASE = eINSTANCE.getPortGroupInSystemInstanceRef_Base();
        public static final EReference PORT_GROUP_IN_SYSTEM_INSTANCE_REF__CONTEXT_COMPOSITION = eINSTANCE.getPortGroupInSystemInstanceRef_ContextComposition();
        public static final EReference PORT_GROUP_IN_SYSTEM_INSTANCE_REF__CONTEXT_COMPONENTS = eINSTANCE.getPortGroupInSystemInstanceRef_ContextComponents();
        public static final EReference PORT_GROUP_IN_SYSTEM_INSTANCE_REF__TARGET = eINSTANCE.getPortGroupInSystemInstanceRef_Target();
        public static final EClass VARIABLE_DATA_PROTOTYPE_IN_SYSTEM_INSTANCE_REF = eINSTANCE.getVariableDataPrototypeInSystemInstanceRef();
        public static final EReference VARIABLE_DATA_PROTOTYPE_IN_SYSTEM_INSTANCE_REF__BASE = eINSTANCE.getVariableDataPrototypeInSystemInstanceRef_Base();
        public static final EReference VARIABLE_DATA_PROTOTYPE_IN_SYSTEM_INSTANCE_REF__CONTEXT_COMPONENTS = eINSTANCE.getVariableDataPrototypeInSystemInstanceRef_ContextComponents();
        public static final EReference VARIABLE_DATA_PROTOTYPE_IN_SYSTEM_INSTANCE_REF__CONTEXT_COMPOSITION = eINSTANCE.getVariableDataPrototypeInSystemInstanceRef_ContextComposition();
        public static final EReference VARIABLE_DATA_PROTOTYPE_IN_SYSTEM_INSTANCE_REF__CONTEXT_PORT = eINSTANCE.getVariableDataPrototypeInSystemInstanceRef_ContextPort();
        public static final EReference VARIABLE_DATA_PROTOTYPE_IN_SYSTEM_INSTANCE_REF__TARGET_DATA_PROTOTYPE = eINSTANCE.getVariableDataPrototypeInSystemInstanceRef_TargetDataPrototype();
        public static final EClass COMPONENT_IN_SYSTEM_INSTANCE_REF = eINSTANCE.getComponentInSystemInstanceRef();
        public static final EReference COMPONENT_IN_SYSTEM_INSTANCE_REF__BASE = eINSTANCE.getComponentInSystemInstanceRef_Base();
        public static final EReference COMPONENT_IN_SYSTEM_INSTANCE_REF__CONTEXT_COMPOSITION = eINSTANCE.getComponentInSystemInstanceRef_ContextComposition();
        public static final EReference COMPONENT_IN_SYSTEM_INSTANCE_REF__CONTEXT_COMPONENTS = eINSTANCE.getComponentInSystemInstanceRef_ContextComponents();
        public static final EReference COMPONENT_IN_SYSTEM_INSTANCE_REF__TARGET_COMPONENT = eINSTANCE.getComponentInSystemInstanceRef_TargetComponent();
    }
}

