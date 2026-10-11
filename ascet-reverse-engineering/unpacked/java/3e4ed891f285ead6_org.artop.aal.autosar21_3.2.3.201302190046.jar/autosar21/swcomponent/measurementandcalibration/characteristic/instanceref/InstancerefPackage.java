/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar21.swcomponent.measurementandcalibration.characteristic.instanceref;

import autosar21.swcomponent.measurementandcalibration.characteristic.instanceref.InstancerefFactory;
import autosar21.swcomponent.measurementandcalibration.characteristic.instanceref.impl.InstancerefPackageImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface InstancerefPackage
extends EPackage {
    public static final String eNAME = "instanceref";
    public static final String eNS_URI = "http://autosar.org/2.1.5/autosar21/swc/mac/c/r";
    public static final String eNS_PREFIX = "";
    public static final InstancerefPackage eINSTANCE = InstancerefPackageImpl.init();
    public static final int AR_CALPRM_REF_CALPRM_ELEMENT_PROTOTYPE = 0;
    public static final int AR_CALPRM_REF_CALPRM_ELEMENT_PROTOTYPE__GCHECKSUM = 0;
    public static final int AR_CALPRM_REF_CALPRM_ELEMENT_PROTOTYPE__GTIMESTAMP = 1;
    public static final int AR_CALPRM_REF_CALPRM_ELEMENT_PROTOTYPE__CHECKSUM = 2;
    public static final int AR_CALPRM_REF_CALPRM_ELEMENT_PROTOTYPE__TIMESTAMP = 3;
    public static final int AR_CALPRM_REF_CALPRM_ELEMENT_PROTOTYPE__AR_CALPRM_REF = 4;
    public static final int AR_CALPRM_REF_CALPRM_ELEMENT_PROTOTYPE__COMPONENT_PROTOTYPE = 5;
    public static final int AR_CALPRM_REF_CALPRM_ELEMENT_PROTOTYPE__PORT_PROTOTYPE = 6;
    public static final int AR_CALPRM_REF_CALPRM_ELEMENT_PROTOTYPE__CALPRM_ELEMENT_PROTOTYPE = 7;
    public static final int AR_CALPRM_REF_CALPRM_ELEMENT_PROTOTYPE_FEATURE_COUNT = 8;
    public static final int CALPRM_ACCESS_CALPRM_ELEMENT_PROTOTYPE = 1;
    public static final int CALPRM_ACCESS_CALPRM_ELEMENT_PROTOTYPE__GCHECKSUM = 0;
    public static final int CALPRM_ACCESS_CALPRM_ELEMENT_PROTOTYPE__GTIMESTAMP = 1;
    public static final int CALPRM_ACCESS_CALPRM_ELEMENT_PROTOTYPE__CHECKSUM = 2;
    public static final int CALPRM_ACCESS_CALPRM_ELEMENT_PROTOTYPE__TIMESTAMP = 3;
    public static final int CALPRM_ACCESS_CALPRM_ELEMENT_PROTOTYPE__GCONTEXT_PORT = 4;
    public static final int CALPRM_ACCESS_CALPRM_ELEMENT_PROTOTYPE__GTARGET_PARAMETER = 5;
    public static final int CALPRM_ACCESS_CALPRM_ELEMENT_PROTOTYPE__CALPRM_ACCESS = 6;
    public static final int CALPRM_ACCESS_CALPRM_ELEMENT_PROTOTYPE__COMPONENT_PROTOTYPE = 7;
    public static final int CALPRM_ACCESS_CALPRM_ELEMENT_PROTOTYPE__PORT_PROTOTYPE = 8;
    public static final int CALPRM_ACCESS_CALPRM_ELEMENT_PROTOTYPE__CALPRM_ELEMENT_PROTOTYPE = 9;
    public static final int CALPRM_ACCESS_CALPRM_ELEMENT_PROTOTYPE_FEATURE_COUNT = 10;

    public EClass getArCalprmRefCalprmElementPrototype();

    public EReference getArCalprmRefCalprmElementPrototype_ArCalprmRef();

    public EReference getArCalprmRefCalprmElementPrototype_ComponentPrototype();

    public EReference getArCalprmRefCalprmElementPrototype_PortPrototype();

    public EReference getArCalprmRefCalprmElementPrototype_CalprmElementPrototype();

    public EClass getCalprmAccessCalprmElementPrototype();

    public EReference getCalprmAccessCalprmElementPrototype_CalprmAccess();

    public EReference getCalprmAccessCalprmElementPrototype_ComponentPrototype();

    public EReference getCalprmAccessCalprmElementPrototype_PortPrototype();

    public EReference getCalprmAccessCalprmElementPrototype_CalprmElementPrototype();

    public InstancerefFactory getInstancerefFactory();

    public static interface Literals {
        public static final EClass AR_CALPRM_REF_CALPRM_ELEMENT_PROTOTYPE = eINSTANCE.getArCalprmRefCalprmElementPrototype();
        public static final EReference AR_CALPRM_REF_CALPRM_ELEMENT_PROTOTYPE__AR_CALPRM_REF = eINSTANCE.getArCalprmRefCalprmElementPrototype_ArCalprmRef();
        public static final EReference AR_CALPRM_REF_CALPRM_ELEMENT_PROTOTYPE__COMPONENT_PROTOTYPE = eINSTANCE.getArCalprmRefCalprmElementPrototype_ComponentPrototype();
        public static final EReference AR_CALPRM_REF_CALPRM_ELEMENT_PROTOTYPE__PORT_PROTOTYPE = eINSTANCE.getArCalprmRefCalprmElementPrototype_PortPrototype();
        public static final EReference AR_CALPRM_REF_CALPRM_ELEMENT_PROTOTYPE__CALPRM_ELEMENT_PROTOTYPE = eINSTANCE.getArCalprmRefCalprmElementPrototype_CalprmElementPrototype();
        public static final EClass CALPRM_ACCESS_CALPRM_ELEMENT_PROTOTYPE = eINSTANCE.getCalprmAccessCalprmElementPrototype();
        public static final EReference CALPRM_ACCESS_CALPRM_ELEMENT_PROTOTYPE__CALPRM_ACCESS = eINSTANCE.getCalprmAccessCalprmElementPrototype_CalprmAccess();
        public static final EReference CALPRM_ACCESS_CALPRM_ELEMENT_PROTOTYPE__COMPONENT_PROTOTYPE = eINSTANCE.getCalprmAccessCalprmElementPrototype_ComponentPrototype();
        public static final EReference CALPRM_ACCESS_CALPRM_ELEMENT_PROTOTYPE__PORT_PROTOTYPE = eINSTANCE.getCalprmAccessCalprmElementPrototype_PortPrototype();
        public static final EReference CALPRM_ACCESS_CALPRM_ELEMENT_PROTOTYPE__CALPRM_ELEMENT_PROTOTYPE = eINSTANCE.getCalprmAccessCalprmElementPrototype_CalprmElementPrototype();
    }
}

