/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EAttribute
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar40.ecuresource;

import autosar40.ecuresource.EcuresourceFactory;
import autosar40.ecuresource.impl.EcuresourcePackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface EcuresourcePackage
extends EPackage {
    public static final String eNAME = "ecuresource";
    public static final String eNS_URI = "http://autosar.org/schema/r4.0/autosar40/er";
    public static final String eNS_PREFIX = "";
    public static final EcuresourcePackage eINSTANCE = EcuresourcePackageImpl.init();
    public static final int HW_DESCRIPTION_ENTITY = 0;
    public static final int HW_DESCRIPTION_ENTITY__GCHECKSUM = 0;
    public static final int HW_DESCRIPTION_ENTITY__GTIMESTAMP = 1;
    public static final int HW_DESCRIPTION_ENTITY__CHECKSUM = 2;
    public static final int HW_DESCRIPTION_ENTITY__TIMESTAMP = 3;
    public static final int HW_DESCRIPTION_ENTITY__GSHORT_NAME = 4;
    public static final int HW_DESCRIPTION_ENTITY__SHORT_NAME = 5;
    public static final int HW_DESCRIPTION_ENTITY__HW_TYPE = 6;
    public static final int HW_DESCRIPTION_ENTITY__HW_CATEGORIES = 7;
    public static final int HW_DESCRIPTION_ENTITY__HW_ATTRIBUTE_VALUES = 8;
    public static final int HW_DESCRIPTION_ENTITY_FEATURE_COUNT = 9;
    public static final int HW_ELEMENT_CONNECTOR = 1;
    public static final int HW_ELEMENT_CONNECTOR__GCHECKSUM = 0;
    public static final int HW_ELEMENT_CONNECTOR__GTIMESTAMP = 1;
    public static final int HW_ELEMENT_CONNECTOR__CHECKSUM = 2;
    public static final int HW_ELEMENT_CONNECTOR__TIMESTAMP = 3;
    public static final int HW_ELEMENT_CONNECTOR__DESC = 4;
    public static final int HW_ELEMENT_CONNECTOR__INTRODUCTION = 5;
    public static final int HW_ELEMENT_CONNECTOR__HW_ELEMENT = 6;
    public static final int HW_ELEMENT_CONNECTOR__HW_ELEMENTS = 7;
    public static final int HW_ELEMENT_CONNECTOR__HW_PIN_GROUP_CONNECTIONS = 8;
    public static final int HW_ELEMENT_CONNECTOR__HW_PIN_CONNECTIONS = 9;
    public static final int HW_ELEMENT_CONNECTOR__VARIATION_POINT = 10;
    public static final int HW_ELEMENT_CONNECTOR_FEATURE_COUNT = 11;
    public static final int HW_PIN_GROUP_CONNECTOR = 2;
    public static final int HW_PIN_GROUP_CONNECTOR__GCHECKSUM = 0;
    public static final int HW_PIN_GROUP_CONNECTOR__GTIMESTAMP = 1;
    public static final int HW_PIN_GROUP_CONNECTOR__CHECKSUM = 2;
    public static final int HW_PIN_GROUP_CONNECTOR__TIMESTAMP = 3;
    public static final int HW_PIN_GROUP_CONNECTOR__DESC = 4;
    public static final int HW_PIN_GROUP_CONNECTOR__INTRODUCTION = 5;
    public static final int HW_PIN_GROUP_CONNECTOR__HW_ELEMENT_CONNECTOR = 6;
    public static final int HW_PIN_GROUP_CONNECTOR__HW_PIN_CONNECTIONS = 7;
    public static final int HW_PIN_GROUP_CONNECTOR__HW_PIN_GROUPS = 8;
    public static final int HW_PIN_GROUP_CONNECTOR__VARIATION_POINT = 9;
    public static final int HW_PIN_GROUP_CONNECTOR_FEATURE_COUNT = 10;
    public static final int HW_PIN_GROUP = 3;
    public static final int HW_PIN_GROUP__GCHECKSUM = 0;
    public static final int HW_PIN_GROUP__GTIMESTAMP = 1;
    public static final int HW_PIN_GROUP__CHECKSUM = 2;
    public static final int HW_PIN_GROUP__TIMESTAMP = 3;
    public static final int HW_PIN_GROUP__GSHORT_NAME = 4;
    public static final int HW_PIN_GROUP__SHORT_NAME = 5;
    public static final int HW_PIN_GROUP__LONG_NAME = 6;
    public static final int HW_PIN_GROUP__GUUID = 7;
    public static final int HW_PIN_GROUP__GCATEGORY = 8;
    public static final int HW_PIN_GROUP__GDESC = 9;
    public static final int HW_PIN_GROUP__DESC = 10;
    public static final int HW_PIN_GROUP__CATEGORY = 11;
    public static final int HW_PIN_GROUP__ADMIN_DATA = 12;
    public static final int HW_PIN_GROUP__INTRODUCTION = 13;
    public static final int HW_PIN_GROUP__ANNOTATIONS = 14;
    public static final int HW_PIN_GROUP__UUID = 15;
    public static final int HW_PIN_GROUP__ALL_EXTENSIONS = 16;
    public static final int HW_PIN_GROUP__CONTAINED_EXTENSIONS = 17;
    public static final int HW_PIN_GROUP__HW_TYPE = 18;
    public static final int HW_PIN_GROUP__HW_CATEGORIES = 19;
    public static final int HW_PIN_GROUP__HW_ATTRIBUTE_VALUES = 20;
    public static final int HW_PIN_GROUP__HW_PIN_GROUP_CONTENT = 21;
    public static final int HW_PIN_GROUP__VARIATION_POINT = 22;
    public static final int HW_PIN_GROUP_FEATURE_COUNT = 23;
    public static final int HW_PIN_GROUP_CONTENT = 4;
    public static final int HW_PIN_GROUP_CONTENT__GCHECKSUM = 0;
    public static final int HW_PIN_GROUP_CONTENT__GTIMESTAMP = 1;
    public static final int HW_PIN_GROUP_CONTENT__CHECKSUM = 2;
    public static final int HW_PIN_GROUP_CONTENT__TIMESTAMP = 3;
    public static final int HW_PIN_GROUP_CONTENT__HW_PIN_GROUP = 4;
    public static final int HW_PIN_GROUP_CONTENT__HW_PINS = 5;
    public static final int HW_PIN_GROUP_CONTENT__HW_PIN_GROUPS = 6;
    public static final int HW_PIN_GROUP_CONTENT_FEATURE_COUNT = 7;
    public static final int HW_PIN = 5;
    public static final int HW_PIN__GCHECKSUM = 0;
    public static final int HW_PIN__GTIMESTAMP = 1;
    public static final int HW_PIN__CHECKSUM = 2;
    public static final int HW_PIN__TIMESTAMP = 3;
    public static final int HW_PIN__GSHORT_NAME = 4;
    public static final int HW_PIN__SHORT_NAME = 5;
    public static final int HW_PIN__LONG_NAME = 6;
    public static final int HW_PIN__GUUID = 7;
    public static final int HW_PIN__GCATEGORY = 8;
    public static final int HW_PIN__GDESC = 9;
    public static final int HW_PIN__DESC = 10;
    public static final int HW_PIN__CATEGORY = 11;
    public static final int HW_PIN__ADMIN_DATA = 12;
    public static final int HW_PIN__INTRODUCTION = 13;
    public static final int HW_PIN__ANNOTATIONS = 14;
    public static final int HW_PIN__UUID = 15;
    public static final int HW_PIN__ALL_EXTENSIONS = 16;
    public static final int HW_PIN__CONTAINED_EXTENSIONS = 17;
    public static final int HW_PIN__HW_TYPE = 18;
    public static final int HW_PIN__HW_CATEGORIES = 19;
    public static final int HW_PIN__HW_ATTRIBUTE_VALUES = 20;
    public static final int HW_PIN__HW_PIN_GROUP_CONTENT = 21;
    public static final int HW_PIN__PIN_NUMBER = 22;
    public static final int HW_PIN__VARIATION_POINT = 23;
    public static final int HW_PIN_FEATURE_COUNT = 24;
    public static final int HW_PIN_CONNECTOR = 6;
    public static final int HW_PIN_CONNECTOR__GCHECKSUM = 0;
    public static final int HW_PIN_CONNECTOR__GTIMESTAMP = 1;
    public static final int HW_PIN_CONNECTOR__CHECKSUM = 2;
    public static final int HW_PIN_CONNECTOR__TIMESTAMP = 3;
    public static final int HW_PIN_CONNECTOR__DESC = 4;
    public static final int HW_PIN_CONNECTOR__INTRODUCTION = 5;
    public static final int HW_PIN_CONNECTOR__HW_PINS = 6;
    public static final int HW_PIN_CONNECTOR__VARIATION_POINT = 7;
    public static final int HW_PIN_CONNECTOR_FEATURE_COUNT = 8;
    public static final int HW_ELEMENT_REF_CONDITIONAL = 7;
    public static final int HW_ELEMENT_REF_CONDITIONAL__GCHECKSUM = 0;
    public static final int HW_ELEMENT_REF_CONDITIONAL__GTIMESTAMP = 1;
    public static final int HW_ELEMENT_REF_CONDITIONAL__CHECKSUM = 2;
    public static final int HW_ELEMENT_REF_CONDITIONAL__TIMESTAMP = 3;
    public static final int HW_ELEMENT_REF_CONDITIONAL__HW_ELEMENT = 4;
    public static final int HW_ELEMENT_REF_CONDITIONAL__VARIATION_POINT = 5;
    public static final int HW_ELEMENT_REF_CONDITIONAL_FEATURE_COUNT = 6;
    public static final int HW_ELEMENT = 8;
    public static final int HW_ELEMENT__GCHECKSUM = 0;
    public static final int HW_ELEMENT__GTIMESTAMP = 1;
    public static final int HW_ELEMENT__CHECKSUM = 2;
    public static final int HW_ELEMENT__TIMESTAMP = 3;
    public static final int HW_ELEMENT__GSHORT_NAME = 4;
    public static final int HW_ELEMENT__SHORT_NAME = 5;
    public static final int HW_ELEMENT__LONG_NAME = 6;
    public static final int HW_ELEMENT__GUUID = 7;
    public static final int HW_ELEMENT__GCATEGORY = 8;
    public static final int HW_ELEMENT__GDESC = 9;
    public static final int HW_ELEMENT__DESC = 10;
    public static final int HW_ELEMENT__CATEGORY = 11;
    public static final int HW_ELEMENT__ADMIN_DATA = 12;
    public static final int HW_ELEMENT__INTRODUCTION = 13;
    public static final int HW_ELEMENT__ANNOTATIONS = 14;
    public static final int HW_ELEMENT__UUID = 15;
    public static final int HW_ELEMENT__ALL_EXTENSIONS = 16;
    public static final int HW_ELEMENT__CONTAINED_EXTENSIONS = 17;
    public static final int HW_ELEMENT__GAR_PACKAGE = 18;
    public static final int HW_ELEMENT__AR_PACKAGE = 19;
    public static final int HW_ELEMENT__VARIATION_POINT = 20;
    public static final int HW_ELEMENT__HW_TYPE = 21;
    public static final int HW_ELEMENT__HW_CATEGORIES = 22;
    public static final int HW_ELEMENT__HW_ATTRIBUTE_VALUES = 23;
    public static final int HW_ELEMENT__NESTED_ELEMENTS = 24;
    public static final int HW_ELEMENT__HW_PIN_GROUPS = 25;
    public static final int HW_ELEMENT__HW_ELEMENT_CONNECTIONS = 26;
    public static final int HW_ELEMENT_FEATURE_COUNT = 27;

    public EClass getHwDescriptionEntity();

    public EReference getHwDescriptionEntity_HwType();

    public EReference getHwDescriptionEntity_HwCategories();

    public EReference getHwDescriptionEntity_HwAttributeValues();

    public EClass getHwElementConnector();

    public EReference getHwElementConnector_HwElement();

    public EReference getHwElementConnector_HwElements();

    public EReference getHwElementConnector_HwPinGroupConnections();

    public EReference getHwElementConnector_HwPinConnections();

    public EReference getHwElementConnector_VariationPoint();

    public EClass getHwPinGroupConnector();

    public EReference getHwPinGroupConnector_HwElementConnector();

    public EReference getHwPinGroupConnector_HwPinConnections();

    public EReference getHwPinGroupConnector_HwPinGroups();

    public EReference getHwPinGroupConnector_VariationPoint();

    public EClass getHwPinGroup();

    public EReference getHwPinGroup_HwPinGroupContent();

    public EReference getHwPinGroup_VariationPoint();

    public EClass getHwPinGroupContent();

    public EReference getHwPinGroupContent_HwPinGroup();

    public EReference getHwPinGroupContent_HwPins();

    public EReference getHwPinGroupContent_HwPinGroups();

    public EClass getHwPin();

    public EReference getHwPin_HwPinGroupContent();

    public EAttribute getHwPin_PinNumber();

    public EReference getHwPin_VariationPoint();

    public EClass getHwPinConnector();

    public EReference getHwPinConnector_HwPins();

    public EReference getHwPinConnector_VariationPoint();

    public EClass getHwElementRefConditional();

    public EReference getHwElementRefConditional_HwElement();

    public EReference getHwElementRefConditional_VariationPoint();

    public EClass getHwElement();

    public EReference getHwElement_NestedElements();

    public EReference getHwElement_HwPinGroups();

    public EReference getHwElement_HwElementConnections();

    public EcuresourceFactory getEcuresourceFactory();

    public static interface Literals {
        public static final EClass HW_DESCRIPTION_ENTITY = eINSTANCE.getHwDescriptionEntity();
        public static final EReference HW_DESCRIPTION_ENTITY__HW_TYPE = eINSTANCE.getHwDescriptionEntity_HwType();
        public static final EReference HW_DESCRIPTION_ENTITY__HW_CATEGORIES = eINSTANCE.getHwDescriptionEntity_HwCategories();
        public static final EReference HW_DESCRIPTION_ENTITY__HW_ATTRIBUTE_VALUES = eINSTANCE.getHwDescriptionEntity_HwAttributeValues();
        public static final EClass HW_ELEMENT_CONNECTOR = eINSTANCE.getHwElementConnector();
        public static final EReference HW_ELEMENT_CONNECTOR__HW_ELEMENT = eINSTANCE.getHwElementConnector_HwElement();
        public static final EReference HW_ELEMENT_CONNECTOR__HW_ELEMENTS = eINSTANCE.getHwElementConnector_HwElements();
        public static final EReference HW_ELEMENT_CONNECTOR__HW_PIN_GROUP_CONNECTIONS = eINSTANCE.getHwElementConnector_HwPinGroupConnections();
        public static final EReference HW_ELEMENT_CONNECTOR__HW_PIN_CONNECTIONS = eINSTANCE.getHwElementConnector_HwPinConnections();
        public static final EReference HW_ELEMENT_CONNECTOR__VARIATION_POINT = eINSTANCE.getHwElementConnector_VariationPoint();
        public static final EClass HW_PIN_GROUP_CONNECTOR = eINSTANCE.getHwPinGroupConnector();
        public static final EReference HW_PIN_GROUP_CONNECTOR__HW_ELEMENT_CONNECTOR = eINSTANCE.getHwPinGroupConnector_HwElementConnector();
        public static final EReference HW_PIN_GROUP_CONNECTOR__HW_PIN_CONNECTIONS = eINSTANCE.getHwPinGroupConnector_HwPinConnections();
        public static final EReference HW_PIN_GROUP_CONNECTOR__HW_PIN_GROUPS = eINSTANCE.getHwPinGroupConnector_HwPinGroups();
        public static final EReference HW_PIN_GROUP_CONNECTOR__VARIATION_POINT = eINSTANCE.getHwPinGroupConnector_VariationPoint();
        public static final EClass HW_PIN_GROUP = eINSTANCE.getHwPinGroup();
        public static final EReference HW_PIN_GROUP__HW_PIN_GROUP_CONTENT = eINSTANCE.getHwPinGroup_HwPinGroupContent();
        public static final EReference HW_PIN_GROUP__VARIATION_POINT = eINSTANCE.getHwPinGroup_VariationPoint();
        public static final EClass HW_PIN_GROUP_CONTENT = eINSTANCE.getHwPinGroupContent();
        public static final EReference HW_PIN_GROUP_CONTENT__HW_PIN_GROUP = eINSTANCE.getHwPinGroupContent_HwPinGroup();
        public static final EReference HW_PIN_GROUP_CONTENT__HW_PINS = eINSTANCE.getHwPinGroupContent_HwPins();
        public static final EReference HW_PIN_GROUP_CONTENT__HW_PIN_GROUPS = eINSTANCE.getHwPinGroupContent_HwPinGroups();
        public static final EClass HW_PIN = eINSTANCE.getHwPin();
        public static final EReference HW_PIN__HW_PIN_GROUP_CONTENT = eINSTANCE.getHwPin_HwPinGroupContent();
        public static final EAttribute HW_PIN__PIN_NUMBER = eINSTANCE.getHwPin_PinNumber();
        public static final EReference HW_PIN__VARIATION_POINT = eINSTANCE.getHwPin_VariationPoint();
        public static final EClass HW_PIN_CONNECTOR = eINSTANCE.getHwPinConnector();
        public static final EReference HW_PIN_CONNECTOR__HW_PINS = eINSTANCE.getHwPinConnector_HwPins();
        public static final EReference HW_PIN_CONNECTOR__VARIATION_POINT = eINSTANCE.getHwPinConnector_VariationPoint();
        public static final EClass HW_ELEMENT_REF_CONDITIONAL = eINSTANCE.getHwElementRefConditional();
        public static final EReference HW_ELEMENT_REF_CONDITIONAL__HW_ELEMENT = eINSTANCE.getHwElementRefConditional_HwElement();
        public static final EReference HW_ELEMENT_REF_CONDITIONAL__VARIATION_POINT = eINSTANCE.getHwElementRefConditional_VariationPoint();
        public static final EClass HW_ELEMENT = eINSTANCE.getHwElement();
        public static final EReference HW_ELEMENT__NESTED_ELEMENTS = eINSTANCE.getHwElement_NestedElements();
        public static final EReference HW_ELEMENT__HW_PIN_GROUPS = eINSTANCE.getHwElement_HwPinGroups();
        public static final EReference HW_ELEMENT__HW_ELEMENT_CONNECTIONS = eINSTANCE.getHwElement_HwElementConnections();
    }
}

