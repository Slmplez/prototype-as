/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar3x.swcomponent.services;

import autosar3x.swcomponent.services.ServicesFactory;
import autosar3x.swcomponent.services.impl.ServicesPackageImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface ServicesPackage
extends EPackage {
    public static final String eNAME = "services";
    public static final String eNS_URI = "http://autosar.org/3.2.1/autosar3x/swc/s";
    public static final String eNS_PREFIX = "";
    public static final ServicesPackage eINSTANCE = ServicesPackageImpl.init();
    public static final int SERVICE_COMPONENT_PROTOTYPE = 0;
    public static final int SERVICE_COMPONENT_PROTOTYPE__GCHECKSUM = 0;
    public static final int SERVICE_COMPONENT_PROTOTYPE__GTIMESTAMP = 1;
    public static final int SERVICE_COMPONENT_PROTOTYPE__CHECKSUM = 2;
    public static final int SERVICE_COMPONENT_PROTOTYPE__TIMESTAMP = 3;
    public static final int SERVICE_COMPONENT_PROTOTYPE__GSHORT_NAME = 4;
    public static final int SERVICE_COMPONENT_PROTOTYPE__GUUID = 5;
    public static final int SERVICE_COMPONENT_PROTOTYPE__GCATEGORY = 6;
    public static final int SERVICE_COMPONENT_PROTOTYPE__GDESC = 7;
    public static final int SERVICE_COMPONENT_PROTOTYPE__SHORT_NAME = 8;
    public static final int SERVICE_COMPONENT_PROTOTYPE__LONG_NAME = 9;
    public static final int SERVICE_COMPONENT_PROTOTYPE__DESC = 10;
    public static final int SERVICE_COMPONENT_PROTOTYPE__CATEGORY = 11;
    public static final int SERVICE_COMPONENT_PROTOTYPE__ADMIN_DATA = 12;
    public static final int SERVICE_COMPONENT_PROTOTYPE__INTRODUCTION = 13;
    public static final int SERVICE_COMPONENT_PROTOTYPE__UUID = 14;
    public static final int SERVICE_COMPONENT_PROTOTYPE__ALL_EXTENSIONS = 15;
    public static final int SERVICE_COMPONENT_PROTOTYPE__CONTAINED_EXTENSIONS = 16;
    public static final int SERVICE_COMPONENT_PROTOTYPE__ECU_SW_COMPOSITION = 17;
    public static final int SERVICE_COMPONENT_PROTOTYPE__SERVICE_COMPONENT = 18;
    public static final int SERVICE_COMPONENT_PROTOTYPE_FEATURE_COUNT = 19;
    public static final int ECU_SW_COMPOSITION = 1;
    public static final int ECU_SW_COMPOSITION__GCHECKSUM = 0;
    public static final int ECU_SW_COMPOSITION__GTIMESTAMP = 1;
    public static final int ECU_SW_COMPOSITION__CHECKSUM = 2;
    public static final int ECU_SW_COMPOSITION__TIMESTAMP = 3;
    public static final int ECU_SW_COMPOSITION__GSHORT_NAME = 4;
    public static final int ECU_SW_COMPOSITION__GUUID = 5;
    public static final int ECU_SW_COMPOSITION__GCATEGORY = 6;
    public static final int ECU_SW_COMPOSITION__GDESC = 7;
    public static final int ECU_SW_COMPOSITION__SHORT_NAME = 8;
    public static final int ECU_SW_COMPOSITION__LONG_NAME = 9;
    public static final int ECU_SW_COMPOSITION__DESC = 10;
    public static final int ECU_SW_COMPOSITION__CATEGORY = 11;
    public static final int ECU_SW_COMPOSITION__ADMIN_DATA = 12;
    public static final int ECU_SW_COMPOSITION__INTRODUCTION = 13;
    public static final int ECU_SW_COMPOSITION__UUID = 14;
    public static final int ECU_SW_COMPOSITION__ALL_EXTENSIONS = 15;
    public static final int ECU_SW_COMPOSITION__CONTAINED_EXTENSIONS = 16;
    public static final int ECU_SW_COMPOSITION__GAR_PACKAGE = 17;
    public static final int ECU_SW_COMPOSITION__AR_PACKAGE = 18;
    public static final int ECU_SW_COMPOSITION__COMPONENTS = 19;
    public static final int ECU_SW_COMPOSITION__CONNECTORS = 20;
    public static final int ECU_SW_COMPOSITION__ECU_EXTRACT = 21;
    public static final int ECU_SW_COMPOSITION_FEATURE_COUNT = 22;

    public EClass getServiceComponentPrototype();

    public EReference getServiceComponentPrototype_EcuSwComposition();

    public EReference getServiceComponentPrototype_ServiceComponent();

    public EClass getEcuSwComposition();

    public EReference getEcuSwComposition_Components();

    public EReference getEcuSwComposition_Connectors();

    public EReference getEcuSwComposition_EcuExtract();

    public ServicesFactory getServicesFactory();

    public static interface Literals {
        public static final EClass SERVICE_COMPONENT_PROTOTYPE = eINSTANCE.getServiceComponentPrototype();
        public static final EReference SERVICE_COMPONENT_PROTOTYPE__ECU_SW_COMPOSITION = eINSTANCE.getServiceComponentPrototype_EcuSwComposition();
        public static final EReference SERVICE_COMPONENT_PROTOTYPE__SERVICE_COMPONENT = eINSTANCE.getServiceComponentPrototype_ServiceComponent();
        public static final EClass ECU_SW_COMPOSITION = eINSTANCE.getEcuSwComposition();
        public static final EReference ECU_SW_COMPOSITION__COMPONENTS = eINSTANCE.getEcuSwComposition_Components();
        public static final EReference ECU_SW_COMPOSITION__CONNECTORS = eINSTANCE.getEcuSwComposition_Connectors();
        public static final EReference ECU_SW_COMPOSITION__ECU_EXTRACT = eINSTANCE.getEcuSwComposition_EcuExtract();
    }
}

