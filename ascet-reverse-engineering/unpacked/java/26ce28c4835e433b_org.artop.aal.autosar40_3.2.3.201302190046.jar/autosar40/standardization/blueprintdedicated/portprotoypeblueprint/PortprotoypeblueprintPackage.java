/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar40.standardization.blueprintdedicated.portprotoypeblueprint;

import autosar40.standardization.blueprintdedicated.portprotoypeblueprint.PortprotoypeblueprintFactory;
import autosar40.standardization.blueprintdedicated.portprotoypeblueprint.impl.PortprotoypeblueprintPackageImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface PortprotoypeblueprintPackage
extends EPackage {
    public static final String eNAME = "portprotoypeblueprint";
    public static final String eNS_URI = "http://autosar.org/schema/r4.0/autosar40/standardization/bd/ppb";
    public static final String eNS_PREFIX = "";
    public static final PortprotoypeblueprintPackage eINSTANCE = PortprotoypeblueprintPackageImpl.init();
    public static final int PORT_PROTOTYPE_BLUEPRINT = 0;
    public static final int PORT_PROTOTYPE_BLUEPRINT__GCHECKSUM = 0;
    public static final int PORT_PROTOTYPE_BLUEPRINT__GTIMESTAMP = 1;
    public static final int PORT_PROTOTYPE_BLUEPRINT__CHECKSUM = 2;
    public static final int PORT_PROTOTYPE_BLUEPRINT__TIMESTAMP = 3;
    public static final int PORT_PROTOTYPE_BLUEPRINT__GSHORT_NAME = 4;
    public static final int PORT_PROTOTYPE_BLUEPRINT__SHORT_NAME = 5;
    public static final int PORT_PROTOTYPE_BLUEPRINT__LONG_NAME = 6;
    public static final int PORT_PROTOTYPE_BLUEPRINT__GUUID = 7;
    public static final int PORT_PROTOTYPE_BLUEPRINT__GCATEGORY = 8;
    public static final int PORT_PROTOTYPE_BLUEPRINT__GDESC = 9;
    public static final int PORT_PROTOTYPE_BLUEPRINT__DESC = 10;
    public static final int PORT_PROTOTYPE_BLUEPRINT__CATEGORY = 11;
    public static final int PORT_PROTOTYPE_BLUEPRINT__ADMIN_DATA = 12;
    public static final int PORT_PROTOTYPE_BLUEPRINT__INTRODUCTION = 13;
    public static final int PORT_PROTOTYPE_BLUEPRINT__ANNOTATIONS = 14;
    public static final int PORT_PROTOTYPE_BLUEPRINT__UUID = 15;
    public static final int PORT_PROTOTYPE_BLUEPRINT__ALL_EXTENSIONS = 16;
    public static final int PORT_PROTOTYPE_BLUEPRINT__CONTAINED_EXTENSIONS = 17;
    public static final int PORT_PROTOTYPE_BLUEPRINT__GAR_PACKAGE = 18;
    public static final int PORT_PROTOTYPE_BLUEPRINT__AR_PACKAGE = 19;
    public static final int PORT_PROTOTYPE_BLUEPRINT__VARIATION_POINT = 20;
    public static final int PORT_PROTOTYPE_BLUEPRINT__SHORT_NAME_PATTERN = 21;
    public static final int PORT_PROTOTYPE_BLUEPRINT__ATP_CLASSIFIER = 22;
    public static final int PORT_PROTOTYPE_BLUEPRINT__INIT_VALUES = 23;
    public static final int PORT_PROTOTYPE_BLUEPRINT__INTERFACE = 24;
    public static final int PORT_PROTOTYPE_BLUEPRINT_FEATURE_COUNT = 25;
    public static final int PORT_PROTOTYPE_BLUEPRINT_INIT_VALUE = 1;
    public static final int PORT_PROTOTYPE_BLUEPRINT_INIT_VALUE__GCHECKSUM = 0;
    public static final int PORT_PROTOTYPE_BLUEPRINT_INIT_VALUE__GTIMESTAMP = 1;
    public static final int PORT_PROTOTYPE_BLUEPRINT_INIT_VALUE__CHECKSUM = 2;
    public static final int PORT_PROTOTYPE_BLUEPRINT_INIT_VALUE__TIMESTAMP = 3;
    public static final int PORT_PROTOTYPE_BLUEPRINT_INIT_VALUE__PORT_PROTOTYPE_BLUEPRINT = 4;
    public static final int PORT_PROTOTYPE_BLUEPRINT_INIT_VALUE__DATA_PROTOTYPE = 5;
    public static final int PORT_PROTOTYPE_BLUEPRINT_INIT_VALUE__VALUE = 6;
    public static final int PORT_PROTOTYPE_BLUEPRINT_INIT_VALUE_FEATURE_COUNT = 7;
    public static final int PORT_PROTOTYPE_BLUEPRINT_MAPPING = 2;
    public static final int PORT_PROTOTYPE_BLUEPRINT_MAPPING__GCHECKSUM = 0;
    public static final int PORT_PROTOTYPE_BLUEPRINT_MAPPING__GTIMESTAMP = 1;
    public static final int PORT_PROTOTYPE_BLUEPRINT_MAPPING__CHECKSUM = 2;
    public static final int PORT_PROTOTYPE_BLUEPRINT_MAPPING__TIMESTAMP = 3;
    public static final int PORT_PROTOTYPE_BLUEPRINT_MAPPING__BLUEPRINT_MAPPING_SET = 4;
    public static final int PORT_PROTOTYPE_BLUEPRINT_MAPPING__PORT_PROTOTYPE_BLUEPRINT = 5;
    public static final int PORT_PROTOTYPE_BLUEPRINT_MAPPING__DERIVED_PORT_PROTOTYPE = 6;
    public static final int PORT_PROTOTYPE_BLUEPRINT_MAPPING_FEATURE_COUNT = 7;

    public EClass getPortPrototypeBlueprint();

    public EReference getPortPrototypeBlueprint_InitValues();

    public EReference getPortPrototypeBlueprint_Interface();

    public EClass getPortPrototypeBlueprintInitValue();

    public EReference getPortPrototypeBlueprintInitValue_PortPrototypeBlueprint();

    public EReference getPortPrototypeBlueprintInitValue_DataPrototype();

    public EReference getPortPrototypeBlueprintInitValue_Value();

    public EClass getPortPrototypeBlueprintMapping();

    public EReference getPortPrototypeBlueprintMapping_PortPrototypeBlueprint();

    public EReference getPortPrototypeBlueprintMapping_DerivedPortPrototype();

    public PortprotoypeblueprintFactory getPortprotoypeblueprintFactory();

    public static interface Literals {
        public static final EClass PORT_PROTOTYPE_BLUEPRINT = eINSTANCE.getPortPrototypeBlueprint();
        public static final EReference PORT_PROTOTYPE_BLUEPRINT__INIT_VALUES = eINSTANCE.getPortPrototypeBlueprint_InitValues();
        public static final EReference PORT_PROTOTYPE_BLUEPRINT__INTERFACE = eINSTANCE.getPortPrototypeBlueprint_Interface();
        public static final EClass PORT_PROTOTYPE_BLUEPRINT_INIT_VALUE = eINSTANCE.getPortPrototypeBlueprintInitValue();
        public static final EReference PORT_PROTOTYPE_BLUEPRINT_INIT_VALUE__PORT_PROTOTYPE_BLUEPRINT = eINSTANCE.getPortPrototypeBlueprintInitValue_PortPrototypeBlueprint();
        public static final EReference PORT_PROTOTYPE_BLUEPRINT_INIT_VALUE__DATA_PROTOTYPE = eINSTANCE.getPortPrototypeBlueprintInitValue_DataPrototype();
        public static final EReference PORT_PROTOTYPE_BLUEPRINT_INIT_VALUE__VALUE = eINSTANCE.getPortPrototypeBlueprintInitValue_Value();
        public static final EClass PORT_PROTOTYPE_BLUEPRINT_MAPPING = eINSTANCE.getPortPrototypeBlueprintMapping();
        public static final EReference PORT_PROTOTYPE_BLUEPRINT_MAPPING__PORT_PROTOTYPE_BLUEPRINT = eINSTANCE.getPortPrototypeBlueprintMapping_PortPrototypeBlueprint();
        public static final EReference PORT_PROTOTYPE_BLUEPRINT_MAPPING__DERIVED_PORT_PROTOTYPE = eINSTANCE.getPortPrototypeBlueprintMapping_DerivedPortPrototype();
    }
}

