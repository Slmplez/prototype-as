/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EAttribute
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EDataType
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar40.genericstructure.generaltemplateclasses.arpackage;

import autosar40.genericstructure.generaltemplateclasses.arpackage.ArpackageFactory;
import autosar40.genericstructure.generaltemplateclasses.arpackage.impl.ArpackagePackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EDataType;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface ArpackagePackage
extends EPackage {
    public static final String eNAME = "arpackage";
    public static final String eNS_URI = "http://autosar.org/schema/r4.0/autosar40/gs/gtc/arp";
    public static final String eNS_PREFIX = "";
    public static final ArpackagePackage eINSTANCE = ArpackagePackageImpl.init();
    public static final int AR_PACKAGE = 0;
    public static final int AR_PACKAGE__GCHECKSUM = 0;
    public static final int AR_PACKAGE__GTIMESTAMP = 1;
    public static final int AR_PACKAGE__CHECKSUM = 2;
    public static final int AR_PACKAGE__TIMESTAMP = 3;
    public static final int AR_PACKAGE__GSHORT_NAME = 4;
    public static final int AR_PACKAGE__SHORT_NAME = 5;
    public static final int AR_PACKAGE__LONG_NAME = 6;
    public static final int AR_PACKAGE__GUUID = 7;
    public static final int AR_PACKAGE__GCATEGORY = 8;
    public static final int AR_PACKAGE__GDESC = 9;
    public static final int AR_PACKAGE__DESC = 10;
    public static final int AR_PACKAGE__CATEGORY = 11;
    public static final int AR_PACKAGE__ADMIN_DATA = 12;
    public static final int AR_PACKAGE__INTRODUCTION = 13;
    public static final int AR_PACKAGE__ANNOTATIONS = 14;
    public static final int AR_PACKAGE__UUID = 15;
    public static final int AR_PACKAGE__ALL_EXTENSIONS = 16;
    public static final int AR_PACKAGE__CONTAINED_EXTENSIONS = 17;
    public static final int AR_PACKAGE__SHORT_NAME_PATTERN = 18;
    public static final int AR_PACKAGE__GELEMENTS = 19;
    public static final int AR_PACKAGE__GSUB_PACKAGES = 20;
    public static final int AR_PACKAGE__REFERENCE_BASES = 21;
    public static final int AR_PACKAGE__ELEMENTS = 22;
    public static final int AR_PACKAGE__AR_PACKAGES = 23;
    public static final int AR_PACKAGE__VARIATION_POINT = 24;
    public static final int AR_PACKAGE_FEATURE_COUNT = 25;
    public static final int REFERENCE_BASE = 1;
    public static final int REFERENCE_BASE__GCHECKSUM = 0;
    public static final int REFERENCE_BASE__GTIMESTAMP = 1;
    public static final int REFERENCE_BASE__CHECKSUM = 2;
    public static final int REFERENCE_BASE__TIMESTAMP = 3;
    public static final int REFERENCE_BASE__AR_PACKAGE = 4;
    public static final int REFERENCE_BASE__SHORT_LABEL = 5;
    public static final int REFERENCE_BASE__IS_DEFAULT = 6;
    public static final int REFERENCE_BASE__IS_GLOBAL = 7;
    public static final int REFERENCE_BASE__BASE_IS_THIS_PACKAGE = 8;
    public static final int REFERENCE_BASE__GLOBAL_ELEMENTS = 9;
    public static final int REFERENCE_BASE__PACKAGE = 10;
    public static final int REFERENCE_BASE_FEATURE_COUNT = 11;
    public static final int PACKAGEABLE_ELEMENT = 2;
    public static final int PACKAGEABLE_ELEMENT__GCHECKSUM = 0;
    public static final int PACKAGEABLE_ELEMENT__GTIMESTAMP = 1;
    public static final int PACKAGEABLE_ELEMENT__CHECKSUM = 2;
    public static final int PACKAGEABLE_ELEMENT__TIMESTAMP = 3;
    public static final int PACKAGEABLE_ELEMENT__GSHORT_NAME = 4;
    public static final int PACKAGEABLE_ELEMENT__SHORT_NAME = 5;
    public static final int PACKAGEABLE_ELEMENT__LONG_NAME = 6;
    public static final int PACKAGEABLE_ELEMENT__GUUID = 7;
    public static final int PACKAGEABLE_ELEMENT__GCATEGORY = 8;
    public static final int PACKAGEABLE_ELEMENT__GDESC = 9;
    public static final int PACKAGEABLE_ELEMENT__DESC = 10;
    public static final int PACKAGEABLE_ELEMENT__CATEGORY = 11;
    public static final int PACKAGEABLE_ELEMENT__ADMIN_DATA = 12;
    public static final int PACKAGEABLE_ELEMENT__INTRODUCTION = 13;
    public static final int PACKAGEABLE_ELEMENT__ANNOTATIONS = 14;
    public static final int PACKAGEABLE_ELEMENT__UUID = 15;
    public static final int PACKAGEABLE_ELEMENT__ALL_EXTENSIONS = 16;
    public static final int PACKAGEABLE_ELEMENT__CONTAINED_EXTENSIONS = 17;
    public static final int PACKAGEABLE_ELEMENT__GAR_PACKAGE = 18;
    public static final int PACKAGEABLE_ELEMENT__AR_PACKAGE = 19;
    public static final int PACKAGEABLE_ELEMENT__VARIATION_POINT = 20;
    public static final int PACKAGEABLE_ELEMENT_FEATURE_COUNT = 21;
    public static final int AR_ELEMENT = 3;
    public static final int AR_ELEMENT__GCHECKSUM = 0;
    public static final int AR_ELEMENT__GTIMESTAMP = 1;
    public static final int AR_ELEMENT__CHECKSUM = 2;
    public static final int AR_ELEMENT__TIMESTAMP = 3;
    public static final int AR_ELEMENT__GSHORT_NAME = 4;
    public static final int AR_ELEMENT__SHORT_NAME = 5;
    public static final int AR_ELEMENT__LONG_NAME = 6;
    public static final int AR_ELEMENT__GUUID = 7;
    public static final int AR_ELEMENT__GCATEGORY = 8;
    public static final int AR_ELEMENT__GDESC = 9;
    public static final int AR_ELEMENT__DESC = 10;
    public static final int AR_ELEMENT__CATEGORY = 11;
    public static final int AR_ELEMENT__ADMIN_DATA = 12;
    public static final int AR_ELEMENT__INTRODUCTION = 13;
    public static final int AR_ELEMENT__ANNOTATIONS = 14;
    public static final int AR_ELEMENT__UUID = 15;
    public static final int AR_ELEMENT__ALL_EXTENSIONS = 16;
    public static final int AR_ELEMENT__CONTAINED_EXTENSIONS = 17;
    public static final int AR_ELEMENT__GAR_PACKAGE = 18;
    public static final int AR_ELEMENT__AR_PACKAGE = 19;
    public static final int AR_ELEMENT__VARIATION_POINT = 20;
    public static final int AR_ELEMENT_FEATURE_COUNT = 21;
    public static final int REFERRABLE_SUBTYPES_ENUM = 4;

    public EClass getARPackage();

    public EReference getARPackage_ReferenceBases();

    public EReference getARPackage_Elements();

    public EReference getARPackage_ArPackages();

    public EReference getARPackage_VariationPoint();

    public EClass getReferenceBase();

    public EReference getReferenceBase_ARPackage();

    public EAttribute getReferenceBase_ShortLabel();

    public EAttribute getReferenceBase_IsDefault();

    public EAttribute getReferenceBase_IsGlobal();

    public EAttribute getReferenceBase_BaseIsThisPackage();

    public EAttribute getReferenceBase_GlobalElements();

    public EReference getReferenceBase_Package();

    public EClass getPackageableElement();

    public EReference getPackageableElement_ARPackage();

    public EReference getPackageableElement_VariationPoint();

    public EClass getARElement();

    public EDataType getReferrableSubtypesEnum();

    public ArpackageFactory getArpackageFactory();

    public static interface Literals {
        public static final EClass AR_PACKAGE = eINSTANCE.getARPackage();
        public static final EReference AR_PACKAGE__REFERENCE_BASES = eINSTANCE.getARPackage_ReferenceBases();
        public static final EReference AR_PACKAGE__ELEMENTS = eINSTANCE.getARPackage_Elements();
        public static final EReference AR_PACKAGE__AR_PACKAGES = eINSTANCE.getARPackage_ArPackages();
        public static final EReference AR_PACKAGE__VARIATION_POINT = eINSTANCE.getARPackage_VariationPoint();
        public static final EClass REFERENCE_BASE = eINSTANCE.getReferenceBase();
        public static final EReference REFERENCE_BASE__AR_PACKAGE = eINSTANCE.getReferenceBase_ARPackage();
        public static final EAttribute REFERENCE_BASE__SHORT_LABEL = eINSTANCE.getReferenceBase_ShortLabel();
        public static final EAttribute REFERENCE_BASE__IS_DEFAULT = eINSTANCE.getReferenceBase_IsDefault();
        public static final EAttribute REFERENCE_BASE__IS_GLOBAL = eINSTANCE.getReferenceBase_IsGlobal();
        public static final EAttribute REFERENCE_BASE__BASE_IS_THIS_PACKAGE = eINSTANCE.getReferenceBase_BaseIsThisPackage();
        public static final EAttribute REFERENCE_BASE__GLOBAL_ELEMENTS = eINSTANCE.getReferenceBase_GlobalElements();
        public static final EReference REFERENCE_BASE__PACKAGE = eINSTANCE.getReferenceBase_Package();
        public static final EClass PACKAGEABLE_ELEMENT = eINSTANCE.getPackageableElement();
        public static final EReference PACKAGEABLE_ELEMENT__AR_PACKAGE = eINSTANCE.getPackageableElement_ARPackage();
        public static final EReference PACKAGEABLE_ELEMENT__VARIATION_POINT = eINSTANCE.getPackageableElement_VariationPoint();
        public static final EClass AR_ELEMENT = eINSTANCE.getARElement();
        public static final EDataType REFERRABLE_SUBTYPES_ENUM = eINSTANCE.getReferrableSubtypesEnum();
    }
}

