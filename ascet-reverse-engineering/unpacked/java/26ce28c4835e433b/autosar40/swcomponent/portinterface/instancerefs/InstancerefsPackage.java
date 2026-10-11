/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar40.swcomponent.portinterface.instancerefs;

import autosar40.swcomponent.portinterface.instancerefs.InstancerefsFactory;
import autosar40.swcomponent.portinterface.instancerefs.impl.InstancerefsPackageImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface InstancerefsPackage
extends EPackage {
    public static final String eNAME = "instancerefs";
    public static final String eNS_URI = "http://autosar.org/schema/r4.0/autosar40/swc/pi/ir";
    public static final String eNS_PREFIX = "";
    public static final InstancerefsPackage eINSTANCE = InstancerefsPackageImpl.init();
    public static final int APPLICATION_COMPOSITE_ELEMENT_IN_PORT_INTERFACE_INSTANCE_REF = 0;
    public static final int APPLICATION_COMPOSITE_ELEMENT_IN_PORT_INTERFACE_INSTANCE_REF__GCHECKSUM = 0;
    public static final int APPLICATION_COMPOSITE_ELEMENT_IN_PORT_INTERFACE_INSTANCE_REF__GTIMESTAMP = 1;
    public static final int APPLICATION_COMPOSITE_ELEMENT_IN_PORT_INTERFACE_INSTANCE_REF__CHECKSUM = 2;
    public static final int APPLICATION_COMPOSITE_ELEMENT_IN_PORT_INTERFACE_INSTANCE_REF__TIMESTAMP = 3;
    public static final int APPLICATION_COMPOSITE_ELEMENT_IN_PORT_INTERFACE_INSTANCE_REF__APPLICATION_COMPOSITE_DATA_TYPE_SUB_ELEMENT_REF = 4;
    public static final int APPLICATION_COMPOSITE_ELEMENT_IN_PORT_INTERFACE_INSTANCE_REF__ROOT_DATA_PROTOTYPE = 5;
    public static final int APPLICATION_COMPOSITE_ELEMENT_IN_PORT_INTERFACE_INSTANCE_REF__BASE = 6;
    public static final int APPLICATION_COMPOSITE_ELEMENT_IN_PORT_INTERFACE_INSTANCE_REF__CONTEXT_DATA_PROTOTYPES = 7;
    public static final int APPLICATION_COMPOSITE_ELEMENT_IN_PORT_INTERFACE_INSTANCE_REF__TARGET_DATA_PROTOTYPE = 8;
    public static final int APPLICATION_COMPOSITE_ELEMENT_IN_PORT_INTERFACE_INSTANCE_REF_FEATURE_COUNT = 9;

    public EClass getApplicationCompositeElementInPortInterfaceInstanceRef();

    public EReference getApplicationCompositeElementInPortInterfaceInstanceRef_ApplicationCompositeDataTypeSubElementRef();

    public EReference getApplicationCompositeElementInPortInterfaceInstanceRef_RootDataPrototype();

    public EReference getApplicationCompositeElementInPortInterfaceInstanceRef_Base();

    public EReference getApplicationCompositeElementInPortInterfaceInstanceRef_ContextDataPrototypes();

    public EReference getApplicationCompositeElementInPortInterfaceInstanceRef_TargetDataPrototype();

    public InstancerefsFactory getInstancerefsFactory();

    public static interface Literals {
        public static final EClass APPLICATION_COMPOSITE_ELEMENT_IN_PORT_INTERFACE_INSTANCE_REF = eINSTANCE.getApplicationCompositeElementInPortInterfaceInstanceRef();
        public static final EReference APPLICATION_COMPOSITE_ELEMENT_IN_PORT_INTERFACE_INSTANCE_REF__APPLICATION_COMPOSITE_DATA_TYPE_SUB_ELEMENT_REF = eINSTANCE.getApplicationCompositeElementInPortInterfaceInstanceRef_ApplicationCompositeDataTypeSubElementRef();
        public static final EReference APPLICATION_COMPOSITE_ELEMENT_IN_PORT_INTERFACE_INSTANCE_REF__ROOT_DATA_PROTOTYPE = eINSTANCE.getApplicationCompositeElementInPortInterfaceInstanceRef_RootDataPrototype();
        public static final EReference APPLICATION_COMPOSITE_ELEMENT_IN_PORT_INTERFACE_INSTANCE_REF__BASE = eINSTANCE.getApplicationCompositeElementInPortInterfaceInstanceRef_Base();
        public static final EReference APPLICATION_COMPOSITE_ELEMENT_IN_PORT_INTERFACE_INSTANCE_REF__CONTEXT_DATA_PROTOTYPES = eINSTANCE.getApplicationCompositeElementInPortInterfaceInstanceRef_ContextDataPrototypes();
        public static final EReference APPLICATION_COMPOSITE_ELEMENT_IN_PORT_INTERFACE_INSTANCE_REF__TARGET_DATA_PROTOTYPE = eINSTANCE.getApplicationCompositeElementInPortInterfaceInstanceRef_TargetDataPrototype();
    }
}

