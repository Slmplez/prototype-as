/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar21.swcomponent.measurementandcalibration.measurementproperty.instanceref;

import autosar21.swcomponent.measurementandcalibration.measurementproperty.instanceref.InstancerefFactory;
import autosar21.swcomponent.measurementandcalibration.measurementproperty.instanceref.impl.InstancerefPackageImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface InstancerefPackage
extends EPackage {
    public static final String eNAME = "instanceref";
    public static final String eNS_URI = "http://autosar.org/2.1.5/autosar21/swc/mac/mp/r";
    public static final String eNS_PREFIX = "";
    public static final InstancerefPackage eINSTANCE = InstancerefPackageImpl.init();
    public static final int DATA_PROTOTYPE_REF_DATA_PROTOTYPE = 0;
    public static final int DATA_PROTOTYPE_REF_DATA_PROTOTYPE__GCHECKSUM = 0;
    public static final int DATA_PROTOTYPE_REF_DATA_PROTOTYPE__GTIMESTAMP = 1;
    public static final int DATA_PROTOTYPE_REF_DATA_PROTOTYPE__CHECKSUM = 2;
    public static final int DATA_PROTOTYPE_REF_DATA_PROTOTYPE__TIMESTAMP = 3;
    public static final int DATA_PROTOTYPE_REF_DATA_PROTOTYPE__DATA_PROTOTYPE_REF = 4;
    public static final int DATA_PROTOTYPE_REF_DATA_PROTOTYPE__COMPOSITE_COMPONENT_PROTOTYPES = 5;
    public static final int DATA_PROTOTYPE_REF_DATA_PROTOTYPE__ASSEMBLY_CONNECTOR_PROTOTYPE = 6;
    public static final int DATA_PROTOTYPE_REF_DATA_PROTOTYPE__COMPONENT_PROTOTYPE = 7;
    public static final int DATA_PROTOTYPE_REF_DATA_PROTOTYPE__PORT_PROTOTYPE = 8;
    public static final int DATA_PROTOTYPE_REF_DATA_PROTOTYPE__DATA_PROTOTYPE_REF_DATA_PROTOTYPE = 9;
    public static final int DATA_PROTOTYPE_REF_DATA_PROTOTYPE__DATA_PROTOTYPE = 10;
    public static final int DATA_PROTOTYPE_REF_DATA_PROTOTYPE_FEATURE_COUNT = 11;
    public static final int RECORD_ELEMENT_REF_RECORD_ELEMENT = 1;
    public static final int RECORD_ELEMENT_REF_RECORD_ELEMENT__GCHECKSUM = 0;
    public static final int RECORD_ELEMENT_REF_RECORD_ELEMENT__GTIMESTAMP = 1;
    public static final int RECORD_ELEMENT_REF_RECORD_ELEMENT__CHECKSUM = 2;
    public static final int RECORD_ELEMENT_REF_RECORD_ELEMENT__TIMESTAMP = 3;
    public static final int RECORD_ELEMENT_REF_RECORD_ELEMENT__RECORD_ELEMENT_REF = 4;
    public static final int RECORD_ELEMENT_REF_RECORD_ELEMENT__ASSEMBLY_CONNECTOR_PROTOTYPE = 5;
    public static final int RECORD_ELEMENT_REF_RECORD_ELEMENT__COMPONENT_PROTOTYPE = 6;
    public static final int RECORD_ELEMENT_REF_RECORD_ELEMENT__COMPOSITION_COMPONENT_PROTOTYPES = 7;
    public static final int RECORD_ELEMENT_REF_RECORD_ELEMENT__DATA_ELEMENT_PROTOTYPES = 8;
    public static final int RECORD_ELEMENT_REF_RECORD_ELEMENT__PORT_PROTOTYPE = 9;
    public static final int RECORD_ELEMENT_REF_RECORD_ELEMENT__RECORD_ELEMENT = 10;
    public static final int RECORD_ELEMENT_REF_RECORD_ELEMENT_FEATURE_COUNT = 11;

    public EClass getDataPrototypeRefDataPrototype();

    public EReference getDataPrototypeRefDataPrototype_DataPrototypeRef();

    public EReference getDataPrototypeRefDataPrototype_CompositeComponentPrototypes();

    public EReference getDataPrototypeRefDataPrototype_AssemblyConnectorPrototype();

    public EReference getDataPrototypeRefDataPrototype_ComponentPrototype();

    public EReference getDataPrototypeRefDataPrototype_PortPrototype();

    public EReference getDataPrototypeRefDataPrototype_DataPrototypeRef_DataPrototype();

    public EReference getDataPrototypeRefDataPrototype_DataPrototype();

    public EClass getRecordElementRefRecordElement();

    public EReference getRecordElementRefRecordElement_RecordElementRef();

    public EReference getRecordElementRefRecordElement_AssemblyConnectorPrototype();

    public EReference getRecordElementRefRecordElement_ComponentPrototype();

    public EReference getRecordElementRefRecordElement_CompositionComponentPrototypes();

    public EReference getRecordElementRefRecordElement_DataElementPrototypes();

    public EReference getRecordElementRefRecordElement_PortPrototype();

    public EReference getRecordElementRefRecordElement_RecordElement();

    public InstancerefFactory getInstancerefFactory();

    public static interface Literals {
        public static final EClass DATA_PROTOTYPE_REF_DATA_PROTOTYPE = eINSTANCE.getDataPrototypeRefDataPrototype();
        public static final EReference DATA_PROTOTYPE_REF_DATA_PROTOTYPE__DATA_PROTOTYPE_REF = eINSTANCE.getDataPrototypeRefDataPrototype_DataPrototypeRef();
        public static final EReference DATA_PROTOTYPE_REF_DATA_PROTOTYPE__COMPOSITE_COMPONENT_PROTOTYPES = eINSTANCE.getDataPrototypeRefDataPrototype_CompositeComponentPrototypes();
        public static final EReference DATA_PROTOTYPE_REF_DATA_PROTOTYPE__ASSEMBLY_CONNECTOR_PROTOTYPE = eINSTANCE.getDataPrototypeRefDataPrototype_AssemblyConnectorPrototype();
        public static final EReference DATA_PROTOTYPE_REF_DATA_PROTOTYPE__COMPONENT_PROTOTYPE = eINSTANCE.getDataPrototypeRefDataPrototype_ComponentPrototype();
        public static final EReference DATA_PROTOTYPE_REF_DATA_PROTOTYPE__PORT_PROTOTYPE = eINSTANCE.getDataPrototypeRefDataPrototype_PortPrototype();
        public static final EReference DATA_PROTOTYPE_REF_DATA_PROTOTYPE__DATA_PROTOTYPE_REF_DATA_PROTOTYPE = eINSTANCE.getDataPrototypeRefDataPrototype_DataPrototypeRef_DataPrototype();
        public static final EReference DATA_PROTOTYPE_REF_DATA_PROTOTYPE__DATA_PROTOTYPE = eINSTANCE.getDataPrototypeRefDataPrototype_DataPrototype();
        public static final EClass RECORD_ELEMENT_REF_RECORD_ELEMENT = eINSTANCE.getRecordElementRefRecordElement();
        public static final EReference RECORD_ELEMENT_REF_RECORD_ELEMENT__RECORD_ELEMENT_REF = eINSTANCE.getRecordElementRefRecordElement_RecordElementRef();
        public static final EReference RECORD_ELEMENT_REF_RECORD_ELEMENT__ASSEMBLY_CONNECTOR_PROTOTYPE = eINSTANCE.getRecordElementRefRecordElement_AssemblyConnectorPrototype();
        public static final EReference RECORD_ELEMENT_REF_RECORD_ELEMENT__COMPONENT_PROTOTYPE = eINSTANCE.getRecordElementRefRecordElement_ComponentPrototype();
        public static final EReference RECORD_ELEMENT_REF_RECORD_ELEMENT__COMPOSITION_COMPONENT_PROTOTYPES = eINSTANCE.getRecordElementRefRecordElement_CompositionComponentPrototypes();
        public static final EReference RECORD_ELEMENT_REF_RECORD_ELEMENT__DATA_ELEMENT_PROTOTYPES = eINSTANCE.getRecordElementRefRecordElement_DataElementPrototypes();
        public static final EReference RECORD_ELEMENT_REF_RECORD_ELEMENT__PORT_PROTOTYPE = eINSTANCE.getRecordElementRefRecordElement_PortPrototype();
        public static final EReference RECORD_ELEMENT_REF_RECORD_ELEMENT__RECORD_ELEMENT = eINSTANCE.getRecordElementRefRecordElement_RecordElement();
    }
}

