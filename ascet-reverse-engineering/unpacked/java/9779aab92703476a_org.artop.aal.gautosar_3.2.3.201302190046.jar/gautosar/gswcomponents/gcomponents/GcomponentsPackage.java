/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package gautosar.gswcomponents.gcomponents;

import gautosar.gswcomponents.gcomponents.GcomponentsFactory;
import gautosar.gswcomponents.gcomponents.impl.GcomponentsPackageImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface GcomponentsPackage
extends EPackage {
    public static final String eNAME = "gcomponents";
    public static final String eNS_URI = "http://artop.org/gautosar/swc/components";
    public static final String eNS_PREFIX = "";
    public static final GcomponentsPackage eINSTANCE = GcomponentsPackageImpl.init();
    public static final int GSW_COMPONENT_TYPE = 2;
    public static final int GSW_COMPONENT_TYPE__GCHECKSUM = 0;
    public static final int GSW_COMPONENT_TYPE__GTIMESTAMP = 1;
    public static final int GSW_COMPONENT_TYPE__GSHORT_NAME = 2;
    public static final int GSW_COMPONENT_TYPE__GUUID = 3;
    public static final int GSW_COMPONENT_TYPE__GCATEGORY = 4;
    public static final int GSW_COMPONENT_TYPE__GDESC = 5;
    public static final int GSW_COMPONENT_TYPE__GAR_PACKAGE = 6;
    public static final int GSW_COMPONENT_TYPE__GPORTS = 7;
    public static final int GSW_COMPONENT_TYPE_FEATURE_COUNT = 8;
    public static final int GATOMIC_SW_COMPONENT_TYPE = 1;
    public static final int GATOMIC_SW_COMPONENT_TYPE__GCHECKSUM = 0;
    public static final int GATOMIC_SW_COMPONENT_TYPE__GTIMESTAMP = 1;
    public static final int GATOMIC_SW_COMPONENT_TYPE__GSHORT_NAME = 2;
    public static final int GATOMIC_SW_COMPONENT_TYPE__GUUID = 3;
    public static final int GATOMIC_SW_COMPONENT_TYPE__GCATEGORY = 4;
    public static final int GATOMIC_SW_COMPONENT_TYPE__GDESC = 5;
    public static final int GATOMIC_SW_COMPONENT_TYPE__GAR_PACKAGE = 6;
    public static final int GATOMIC_SW_COMPONENT_TYPE__GPORTS = 7;
    public static final int GATOMIC_SW_COMPONENT_TYPE_FEATURE_COUNT = 8;
    public static final int GAPPLICATION_SW_COMPONENT_TYPE = 0;
    public static final int GAPPLICATION_SW_COMPONENT_TYPE__GCHECKSUM = 0;
    public static final int GAPPLICATION_SW_COMPONENT_TYPE__GTIMESTAMP = 1;
    public static final int GAPPLICATION_SW_COMPONENT_TYPE__GSHORT_NAME = 2;
    public static final int GAPPLICATION_SW_COMPONENT_TYPE__GUUID = 3;
    public static final int GAPPLICATION_SW_COMPONENT_TYPE__GCATEGORY = 4;
    public static final int GAPPLICATION_SW_COMPONENT_TYPE__GDESC = 5;
    public static final int GAPPLICATION_SW_COMPONENT_TYPE__GAR_PACKAGE = 6;
    public static final int GAPPLICATION_SW_COMPONENT_TYPE__GPORTS = 7;
    public static final int GAPPLICATION_SW_COMPONENT_TYPE_FEATURE_COUNT = 8;
    public static final int GSERVICE_SW_COMPONENT_TYPE = 3;
    public static final int GSERVICE_SW_COMPONENT_TYPE__GCHECKSUM = 0;
    public static final int GSERVICE_SW_COMPONENT_TYPE__GTIMESTAMP = 1;
    public static final int GSERVICE_SW_COMPONENT_TYPE__GSHORT_NAME = 2;
    public static final int GSERVICE_SW_COMPONENT_TYPE__GUUID = 3;
    public static final int GSERVICE_SW_COMPONENT_TYPE__GCATEGORY = 4;
    public static final int GSERVICE_SW_COMPONENT_TYPE__GDESC = 5;
    public static final int GSERVICE_SW_COMPONENT_TYPE__GAR_PACKAGE = 6;
    public static final int GSERVICE_SW_COMPONENT_TYPE__GPORTS = 7;
    public static final int GSERVICE_SW_COMPONENT_TYPE_FEATURE_COUNT = 8;
    public static final int GSENSOR_ACTUATOR_SW_COMPONENT_TYPE = 4;
    public static final int GSENSOR_ACTUATOR_SW_COMPONENT_TYPE__GCHECKSUM = 0;
    public static final int GSENSOR_ACTUATOR_SW_COMPONENT_TYPE__GTIMESTAMP = 1;
    public static final int GSENSOR_ACTUATOR_SW_COMPONENT_TYPE__GSHORT_NAME = 2;
    public static final int GSENSOR_ACTUATOR_SW_COMPONENT_TYPE__GUUID = 3;
    public static final int GSENSOR_ACTUATOR_SW_COMPONENT_TYPE__GCATEGORY = 4;
    public static final int GSENSOR_ACTUATOR_SW_COMPONENT_TYPE__GDESC = 5;
    public static final int GSENSOR_ACTUATOR_SW_COMPONENT_TYPE__GAR_PACKAGE = 6;
    public static final int GSENSOR_ACTUATOR_SW_COMPONENT_TYPE__GPORTS = 7;
    public static final int GSENSOR_ACTUATOR_SW_COMPONENT_TYPE_FEATURE_COUNT = 8;
    public static final int GPORT_PROTOTYPE = 5;
    public static final int GPORT_PROTOTYPE__GCHECKSUM = 0;
    public static final int GPORT_PROTOTYPE__GTIMESTAMP = 1;
    public static final int GPORT_PROTOTYPE__GSHORT_NAME = 2;
    public static final int GPORT_PROTOTYPE__GUUID = 3;
    public static final int GPORT_PROTOTYPE__GCATEGORY = 4;
    public static final int GPORT_PROTOTYPE__GDESC = 5;
    public static final int GPORT_PROTOTYPE_FEATURE_COUNT = 6;
    public static final int GP_PORT_PROTOTYPE = 6;
    public static final int GP_PORT_PROTOTYPE__GCHECKSUM = 0;
    public static final int GP_PORT_PROTOTYPE__GTIMESTAMP = 1;
    public static final int GP_PORT_PROTOTYPE__GSHORT_NAME = 2;
    public static final int GP_PORT_PROTOTYPE__GUUID = 3;
    public static final int GP_PORT_PROTOTYPE__GCATEGORY = 4;
    public static final int GP_PORT_PROTOTYPE__GDESC = 5;
    public static final int GP_PORT_PROTOTYPE__GPROVIDED_INTERFACE = 6;
    public static final int GP_PORT_PROTOTYPE_FEATURE_COUNT = 7;
    public static final int GR_PORT_PROTOTYPE = 7;
    public static final int GR_PORT_PROTOTYPE__GCHECKSUM = 0;
    public static final int GR_PORT_PROTOTYPE__GTIMESTAMP = 1;
    public static final int GR_PORT_PROTOTYPE__GSHORT_NAME = 2;
    public static final int GR_PORT_PROTOTYPE__GUUID = 3;
    public static final int GR_PORT_PROTOTYPE__GCATEGORY = 4;
    public static final int GR_PORT_PROTOTYPE__GDESC = 5;
    public static final int GR_PORT_PROTOTYPE__GREQUIRED_INTERFACE = 6;
    public static final int GR_PORT_PROTOTYPE_FEATURE_COUNT = 7;

    public EClass getGApplicationSwComponentType();

    public EClass getGAtomicSwComponentType();

    public EClass getGSwComponentType();

    public EReference getGSwComponentType_GPorts();

    public EClass getGServiceSwComponentType();

    public EClass getGSensorActuatorSwComponentType();

    public EClass getGPortPrototype();

    public EClass getGPPortPrototype();

    public EReference getGPPortPrototype_GProvidedInterface();

    public EClass getGRPortPrototype();

    public EReference getGRPortPrototype_GRequiredInterface();

    public GcomponentsFactory getGcomponentsFactory();

    public static interface Literals {
        public static final EClass GAPPLICATION_SW_COMPONENT_TYPE = eINSTANCE.getGApplicationSwComponentType();
        public static final EClass GATOMIC_SW_COMPONENT_TYPE = eINSTANCE.getGAtomicSwComponentType();
        public static final EClass GSW_COMPONENT_TYPE = eINSTANCE.getGSwComponentType();
        public static final EReference GSW_COMPONENT_TYPE__GPORTS = eINSTANCE.getGSwComponentType_GPorts();
        public static final EClass GSERVICE_SW_COMPONENT_TYPE = eINSTANCE.getGServiceSwComponentType();
        public static final EClass GSENSOR_ACTUATOR_SW_COMPONENT_TYPE = eINSTANCE.getGSensorActuatorSwComponentType();
        public static final EClass GPORT_PROTOTYPE = eINSTANCE.getGPortPrototype();
        public static final EClass GP_PORT_PROTOTYPE = eINSTANCE.getGPPortPrototype();
        public static final EReference GP_PORT_PROTOTYPE__GPROVIDED_INTERFACE = eINSTANCE.getGPPortPrototype_GProvidedInterface();
        public static final EClass GR_PORT_PROTOTYPE = eINSTANCE.getGRPortPrototype();
        public static final EReference GR_PORT_PROTOTYPE__GREQUIRED_INTERFACE = eINSTANCE.getGRPortPrototype_GRequiredInterface();
    }
}

