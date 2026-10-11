/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EAttribute
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar40.ecuresource.hwelementcategory;

import autosar40.ecuresource.hwelementcategory.HwelementcategoryFactory;
import autosar40.ecuresource.hwelementcategory.impl.HwelementcategoryPackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface HwelementcategoryPackage
extends EPackage {
    public static final String eNAME = "hwelementcategory";
    public static final String eNS_URI = "http://autosar.org/schema/r4.0/autosar40/er/hec";
    public static final String eNS_PREFIX = "";
    public static final HwelementcategoryPackage eINSTANCE = HwelementcategoryPackageImpl.init();
    public static final int HW_ATTRIBUTE_DEF = 0;
    public static final int HW_ATTRIBUTE_DEF__GCHECKSUM = 0;
    public static final int HW_ATTRIBUTE_DEF__GTIMESTAMP = 1;
    public static final int HW_ATTRIBUTE_DEF__CHECKSUM = 2;
    public static final int HW_ATTRIBUTE_DEF__TIMESTAMP = 3;
    public static final int HW_ATTRIBUTE_DEF__GSHORT_NAME = 4;
    public static final int HW_ATTRIBUTE_DEF__SHORT_NAME = 5;
    public static final int HW_ATTRIBUTE_DEF__LONG_NAME = 6;
    public static final int HW_ATTRIBUTE_DEF__GUUID = 7;
    public static final int HW_ATTRIBUTE_DEF__GCATEGORY = 8;
    public static final int HW_ATTRIBUTE_DEF__GDESC = 9;
    public static final int HW_ATTRIBUTE_DEF__DESC = 10;
    public static final int HW_ATTRIBUTE_DEF__CATEGORY = 11;
    public static final int HW_ATTRIBUTE_DEF__ADMIN_DATA = 12;
    public static final int HW_ATTRIBUTE_DEF__INTRODUCTION = 13;
    public static final int HW_ATTRIBUTE_DEF__ANNOTATIONS = 14;
    public static final int HW_ATTRIBUTE_DEF__UUID = 15;
    public static final int HW_ATTRIBUTE_DEF__ALL_EXTENSIONS = 16;
    public static final int HW_ATTRIBUTE_DEF__CONTAINED_EXTENSIONS = 17;
    public static final int HW_ATTRIBUTE_DEF__HW_CATEGORY = 18;
    public static final int HW_ATTRIBUTE_DEF__HW_ATTRIBUTE_LITERALS = 19;
    public static final int HW_ATTRIBUTE_DEF__IS_REQUIRED = 20;
    public static final int HW_ATTRIBUTE_DEF__UNIT = 21;
    public static final int HW_ATTRIBUTE_DEF_FEATURE_COUNT = 22;
    public static final int HW_ATTRIBUTE_LITERAL_DEF = 1;
    public static final int HW_ATTRIBUTE_LITERAL_DEF__GCHECKSUM = 0;
    public static final int HW_ATTRIBUTE_LITERAL_DEF__GTIMESTAMP = 1;
    public static final int HW_ATTRIBUTE_LITERAL_DEF__CHECKSUM = 2;
    public static final int HW_ATTRIBUTE_LITERAL_DEF__TIMESTAMP = 3;
    public static final int HW_ATTRIBUTE_LITERAL_DEF__GSHORT_NAME = 4;
    public static final int HW_ATTRIBUTE_LITERAL_DEF__SHORT_NAME = 5;
    public static final int HW_ATTRIBUTE_LITERAL_DEF__LONG_NAME = 6;
    public static final int HW_ATTRIBUTE_LITERAL_DEF__GUUID = 7;
    public static final int HW_ATTRIBUTE_LITERAL_DEF__GCATEGORY = 8;
    public static final int HW_ATTRIBUTE_LITERAL_DEF__GDESC = 9;
    public static final int HW_ATTRIBUTE_LITERAL_DEF__DESC = 10;
    public static final int HW_ATTRIBUTE_LITERAL_DEF__CATEGORY = 11;
    public static final int HW_ATTRIBUTE_LITERAL_DEF__ADMIN_DATA = 12;
    public static final int HW_ATTRIBUTE_LITERAL_DEF__INTRODUCTION = 13;
    public static final int HW_ATTRIBUTE_LITERAL_DEF__ANNOTATIONS = 14;
    public static final int HW_ATTRIBUTE_LITERAL_DEF__UUID = 15;
    public static final int HW_ATTRIBUTE_LITERAL_DEF__ALL_EXTENSIONS = 16;
    public static final int HW_ATTRIBUTE_LITERAL_DEF__CONTAINED_EXTENSIONS = 17;
    public static final int HW_ATTRIBUTE_LITERAL_DEF__HW_ATTRIBUTE_DEF = 18;
    public static final int HW_ATTRIBUTE_LITERAL_DEF_FEATURE_COUNT = 19;
    public static final int HW_ATTRIBUTE_VALUE = 2;
    public static final int HW_ATTRIBUTE_VALUE__GCHECKSUM = 0;
    public static final int HW_ATTRIBUTE_VALUE__GTIMESTAMP = 1;
    public static final int HW_ATTRIBUTE_VALUE__CHECKSUM = 2;
    public static final int HW_ATTRIBUTE_VALUE__TIMESTAMP = 3;
    public static final int HW_ATTRIBUTE_VALUE__HW_DESCRIPTION_ENTITY = 4;
    public static final int HW_ATTRIBUTE_VALUE__ANNOTATION = 5;
    public static final int HW_ATTRIBUTE_VALUE__HW_ATTRIBUTE_DEF = 6;
    public static final int HW_ATTRIBUTE_VALUE__V = 7;
    public static final int HW_ATTRIBUTE_VALUE__VT = 8;
    public static final int HW_ATTRIBUTE_VALUE__VARIATION_POINT = 9;
    public static final int HW_ATTRIBUTE_VALUE_FEATURE_COUNT = 10;
    public static final int HW_CATEGORY = 3;
    public static final int HW_CATEGORY__GCHECKSUM = 0;
    public static final int HW_CATEGORY__GTIMESTAMP = 1;
    public static final int HW_CATEGORY__CHECKSUM = 2;
    public static final int HW_CATEGORY__TIMESTAMP = 3;
    public static final int HW_CATEGORY__GSHORT_NAME = 4;
    public static final int HW_CATEGORY__SHORT_NAME = 5;
    public static final int HW_CATEGORY__LONG_NAME = 6;
    public static final int HW_CATEGORY__GUUID = 7;
    public static final int HW_CATEGORY__GCATEGORY = 8;
    public static final int HW_CATEGORY__GDESC = 9;
    public static final int HW_CATEGORY__DESC = 10;
    public static final int HW_CATEGORY__CATEGORY = 11;
    public static final int HW_CATEGORY__ADMIN_DATA = 12;
    public static final int HW_CATEGORY__INTRODUCTION = 13;
    public static final int HW_CATEGORY__ANNOTATIONS = 14;
    public static final int HW_CATEGORY__UUID = 15;
    public static final int HW_CATEGORY__ALL_EXTENSIONS = 16;
    public static final int HW_CATEGORY__CONTAINED_EXTENSIONS = 17;
    public static final int HW_CATEGORY__GAR_PACKAGE = 18;
    public static final int HW_CATEGORY__AR_PACKAGE = 19;
    public static final int HW_CATEGORY__VARIATION_POINT = 20;
    public static final int HW_CATEGORY__HW_ATTRIBUTE_DEFS = 21;
    public static final int HW_CATEGORY_FEATURE_COUNT = 22;
    public static final int HW_TYPE = 4;
    public static final int HW_TYPE__GCHECKSUM = 0;
    public static final int HW_TYPE__GTIMESTAMP = 1;
    public static final int HW_TYPE__CHECKSUM = 2;
    public static final int HW_TYPE__TIMESTAMP = 3;
    public static final int HW_TYPE__GSHORT_NAME = 4;
    public static final int HW_TYPE__SHORT_NAME = 5;
    public static final int HW_TYPE__LONG_NAME = 6;
    public static final int HW_TYPE__GUUID = 7;
    public static final int HW_TYPE__GCATEGORY = 8;
    public static final int HW_TYPE__GDESC = 9;
    public static final int HW_TYPE__DESC = 10;
    public static final int HW_TYPE__CATEGORY = 11;
    public static final int HW_TYPE__ADMIN_DATA = 12;
    public static final int HW_TYPE__INTRODUCTION = 13;
    public static final int HW_TYPE__ANNOTATIONS = 14;
    public static final int HW_TYPE__UUID = 15;
    public static final int HW_TYPE__ALL_EXTENSIONS = 16;
    public static final int HW_TYPE__CONTAINED_EXTENSIONS = 17;
    public static final int HW_TYPE__GAR_PACKAGE = 18;
    public static final int HW_TYPE__AR_PACKAGE = 19;
    public static final int HW_TYPE__VARIATION_POINT = 20;
    public static final int HW_TYPE__HW_TYPE = 21;
    public static final int HW_TYPE__HW_CATEGORIES = 22;
    public static final int HW_TYPE__HW_ATTRIBUTE_VALUES = 23;
    public static final int HW_TYPE_FEATURE_COUNT = 24;

    public EClass getHwAttributeDef();

    public EReference getHwAttributeDef_HwCategory();

    public EReference getHwAttributeDef_HwAttributeLiterals();

    public EAttribute getHwAttributeDef_IsRequired();

    public EReference getHwAttributeDef_Unit();

    public EClass getHwAttributeLiteralDef();

    public EReference getHwAttributeLiteralDef_HwAttributeDef();

    public EClass getHwAttributeValue();

    public EReference getHwAttributeValue_HwDescriptionEntity();

    public EReference getHwAttributeValue_Annotation();

    public EReference getHwAttributeValue_HwAttributeDef();

    public EReference getHwAttributeValue_V();

    public EAttribute getHwAttributeValue_Vt();

    public EReference getHwAttributeValue_VariationPoint();

    public EClass getHwCategory();

    public EReference getHwCategory_HwAttributeDefs();

    public EClass getHwType();

    public HwelementcategoryFactory getHwelementcategoryFactory();

    public static interface Literals {
        public static final EClass HW_ATTRIBUTE_DEF = eINSTANCE.getHwAttributeDef();
        public static final EReference HW_ATTRIBUTE_DEF__HW_CATEGORY = eINSTANCE.getHwAttributeDef_HwCategory();
        public static final EReference HW_ATTRIBUTE_DEF__HW_ATTRIBUTE_LITERALS = eINSTANCE.getHwAttributeDef_HwAttributeLiterals();
        public static final EAttribute HW_ATTRIBUTE_DEF__IS_REQUIRED = eINSTANCE.getHwAttributeDef_IsRequired();
        public static final EReference HW_ATTRIBUTE_DEF__UNIT = eINSTANCE.getHwAttributeDef_Unit();
        public static final EClass HW_ATTRIBUTE_LITERAL_DEF = eINSTANCE.getHwAttributeLiteralDef();
        public static final EReference HW_ATTRIBUTE_LITERAL_DEF__HW_ATTRIBUTE_DEF = eINSTANCE.getHwAttributeLiteralDef_HwAttributeDef();
        public static final EClass HW_ATTRIBUTE_VALUE = eINSTANCE.getHwAttributeValue();
        public static final EReference HW_ATTRIBUTE_VALUE__HW_DESCRIPTION_ENTITY = eINSTANCE.getHwAttributeValue_HwDescriptionEntity();
        public static final EReference HW_ATTRIBUTE_VALUE__ANNOTATION = eINSTANCE.getHwAttributeValue_Annotation();
        public static final EReference HW_ATTRIBUTE_VALUE__HW_ATTRIBUTE_DEF = eINSTANCE.getHwAttributeValue_HwAttributeDef();
        public static final EReference HW_ATTRIBUTE_VALUE__V = eINSTANCE.getHwAttributeValue_V();
        public static final EAttribute HW_ATTRIBUTE_VALUE__VT = eINSTANCE.getHwAttributeValue_Vt();
        public static final EReference HW_ATTRIBUTE_VALUE__VARIATION_POINT = eINSTANCE.getHwAttributeValue_VariationPoint();
        public static final EClass HW_CATEGORY = eINSTANCE.getHwCategory();
        public static final EReference HW_CATEGORY__HW_ATTRIBUTE_DEFS = eINSTANCE.getHwCategory_HwAttributeDefs();
        public static final EClass HW_TYPE = eINSTANCE.getHwType();
    }
}

