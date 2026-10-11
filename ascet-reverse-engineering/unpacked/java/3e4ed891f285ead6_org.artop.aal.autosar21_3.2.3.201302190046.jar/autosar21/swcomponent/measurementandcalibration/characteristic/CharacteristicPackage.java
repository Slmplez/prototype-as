/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar21.swcomponent.measurementandcalibration.characteristic;

import autosar21.swcomponent.measurementandcalibration.characteristic.CharacteristicFactory;
import autosar21.swcomponent.measurementandcalibration.characteristic.impl.CharacteristicPackageImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface CharacteristicPackage
extends EPackage {
    public static final String eNAME = "characteristic";
    public static final String eNS_URI = "http://autosar.org/2.1.5/autosar21/swc/mac/c";
    public static final String eNS_PREFIX = "";
    public static final CharacteristicPackage eINSTANCE = CharacteristicPackageImpl.init();
    public static final int CALPRM_ELEMENT_PROTOTYPE = 0;
    public static final int CALPRM_ELEMENT_PROTOTYPE__GCHECKSUM = 0;
    public static final int CALPRM_ELEMENT_PROTOTYPE__GTIMESTAMP = 1;
    public static final int CALPRM_ELEMENT_PROTOTYPE__CHECKSUM = 2;
    public static final int CALPRM_ELEMENT_PROTOTYPE__TIMESTAMP = 3;
    public static final int CALPRM_ELEMENT_PROTOTYPE__GSHORT_NAME = 4;
    public static final int CALPRM_ELEMENT_PROTOTYPE__GUUID = 5;
    public static final int CALPRM_ELEMENT_PROTOTYPE__GCATEGORY = 6;
    public static final int CALPRM_ELEMENT_PROTOTYPE__GDESC = 7;
    public static final int CALPRM_ELEMENT_PROTOTYPE__SHORT_NAME = 8;
    public static final int CALPRM_ELEMENT_PROTOTYPE__LONG_NAME = 9;
    public static final int CALPRM_ELEMENT_PROTOTYPE__DESC = 10;
    public static final int CALPRM_ELEMENT_PROTOTYPE__CATEGORY = 11;
    public static final int CALPRM_ELEMENT_PROTOTYPE__ADMIN_DATA = 12;
    public static final int CALPRM_ELEMENT_PROTOTYPE__UUID = 13;
    public static final int CALPRM_ELEMENT_PROTOTYPE__ALL_EXTENSIONS = 14;
    public static final int CALPRM_ELEMENT_PROTOTYPE__CONTAINED_EXTENSIONS = 15;
    public static final int CALPRM_ELEMENT_PROTOTYPE__GTYPE = 16;
    public static final int CALPRM_ELEMENT_PROTOTYPE__GELEMENT_TYPE = 17;
    public static final int CALPRM_ELEMENT_PROTOTYPE__SW_DATA_DEF_PROPS = 18;
    public static final int CALPRM_ELEMENT_PROTOTYPE__TYPE = 19;
    public static final int CALPRM_ELEMENT_PROTOTYPE_FEATURE_COUNT = 20;
    public static final int CALPRM_ACCESS = 1;
    public static final int CALPRM_ACCESS__GCHECKSUM = 0;
    public static final int CALPRM_ACCESS__GTIMESTAMP = 1;
    public static final int CALPRM_ACCESS__CHECKSUM = 2;
    public static final int CALPRM_ACCESS__TIMESTAMP = 3;
    public static final int CALPRM_ACCESS__GSHORT_NAME = 4;
    public static final int CALPRM_ACCESS__GUUID = 5;
    public static final int CALPRM_ACCESS__GCATEGORY = 6;
    public static final int CALPRM_ACCESS__GDESC = 7;
    public static final int CALPRM_ACCESS__SHORT_NAME = 8;
    public static final int CALPRM_ACCESS__LONG_NAME = 9;
    public static final int CALPRM_ACCESS__DESC = 10;
    public static final int CALPRM_ACCESS__CATEGORY = 11;
    public static final int CALPRM_ACCESS__ADMIN_DATA = 12;
    public static final int CALPRM_ACCESS__UUID = 13;
    public static final int CALPRM_ACCESS__ALL_EXTENSIONS = 14;
    public static final int CALPRM_ACCESS__CONTAINED_EXTENSIONS = 15;
    public static final int CALPRM_ACCESS__GPARAMETER = 16;
    public static final int CALPRM_ACCESS__RUNNABLE_ENTITY = 17;
    public static final int CALPRM_ACCESS__CALPRM_ACCESS = 18;
    public static final int CALPRM_ACCESS_FEATURE_COUNT = 19;
    public static final int AR_CALPRM_REF = 2;
    public static final int AR_CALPRM_REF__GCHECKSUM = 0;
    public static final int AR_CALPRM_REF__GTIMESTAMP = 1;
    public static final int AR_CALPRM_REF__CHECKSUM = 2;
    public static final int AR_CALPRM_REF__TIMESTAMP = 3;
    public static final int AR_CALPRM_REF__AR_CALPRM = 4;
    public static final int AR_CALPRM_REF_FEATURE_COUNT = 5;
    public static final int CALPRM_INTERFACE = 3;
    public static final int CALPRM_INTERFACE__GCHECKSUM = 0;
    public static final int CALPRM_INTERFACE__GTIMESTAMP = 1;
    public static final int CALPRM_INTERFACE__CHECKSUM = 2;
    public static final int CALPRM_INTERFACE__TIMESTAMP = 3;
    public static final int CALPRM_INTERFACE__GSHORT_NAME = 4;
    public static final int CALPRM_INTERFACE__GUUID = 5;
    public static final int CALPRM_INTERFACE__GCATEGORY = 6;
    public static final int CALPRM_INTERFACE__GDESC = 7;
    public static final int CALPRM_INTERFACE__SHORT_NAME = 8;
    public static final int CALPRM_INTERFACE__LONG_NAME = 9;
    public static final int CALPRM_INTERFACE__DESC = 10;
    public static final int CALPRM_INTERFACE__CATEGORY = 11;
    public static final int CALPRM_INTERFACE__ADMIN_DATA = 12;
    public static final int CALPRM_INTERFACE__UUID = 13;
    public static final int CALPRM_INTERFACE__ALL_EXTENSIONS = 14;
    public static final int CALPRM_INTERFACE__CONTAINED_EXTENSIONS = 15;
    public static final int CALPRM_INTERFACE__GAR_PACKAGE = 16;
    public static final int CALPRM_INTERFACE__AR_PACKAGE = 17;
    public static final int CALPRM_INTERFACE__GIS_SERVICE = 18;
    public static final int CALPRM_INTERFACE__IS_SERVICE = 19;
    public static final int CALPRM_INTERFACE__GPARAMETERS = 20;
    public static final int CALPRM_INTERFACE__CALPRM_ELEMENTS = 21;
    public static final int CALPRM_INTERFACE_FEATURE_COUNT = 22;

    public EClass getCalprmElementPrototype();

    public EClass getCalprmAccess();

    public EReference getCalprmAccess_RunnableEntity();

    public EReference getCalprmAccess_CalprmAccess();

    public EClass getArCalprmRef();

    public EReference getArCalprmRef_ArCalprm();

    public EClass getCalprmInterface();

    public EReference getCalprmInterface_CalprmElements();

    public CharacteristicFactory getCharacteristicFactory();

    public static interface Literals {
        public static final EClass CALPRM_ELEMENT_PROTOTYPE = eINSTANCE.getCalprmElementPrototype();
        public static final EClass CALPRM_ACCESS = eINSTANCE.getCalprmAccess();
        public static final EReference CALPRM_ACCESS__RUNNABLE_ENTITY = eINSTANCE.getCalprmAccess_RunnableEntity();
        public static final EReference CALPRM_ACCESS__CALPRM_ACCESS = eINSTANCE.getCalprmAccess_CalprmAccess();
        public static final EClass AR_CALPRM_REF = eINSTANCE.getArCalprmRef();
        public static final EReference AR_CALPRM_REF__AR_CALPRM = eINSTANCE.getArCalprmRef_ArCalprm();
        public static final EClass CALPRM_INTERFACE = eINSTANCE.getCalprmInterface();
        public static final EReference CALPRM_INTERFACE__CALPRM_ELEMENTS = eINSTANCE.getCalprmInterface_CalprmElements();
    }
}

