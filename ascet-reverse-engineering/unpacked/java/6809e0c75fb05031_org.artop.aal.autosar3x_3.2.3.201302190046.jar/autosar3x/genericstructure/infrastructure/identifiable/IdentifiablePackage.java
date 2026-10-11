/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EAttribute
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar3x.genericstructure.infrastructure.identifiable;

import autosar3x.genericstructure.infrastructure.identifiable.IdentifiableFactory;
import autosar3x.genericstructure.infrastructure.identifiable.impl.IdentifiablePackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface IdentifiablePackage
extends EPackage {
    public static final String eNAME = "identifiable";
    public static final String eNS_URI = "http://autosar.org/3.2.1/autosar3x/gs/i/i";
    public static final String eNS_PREFIX = "";
    public static final IdentifiablePackage eINSTANCE = IdentifiablePackageImpl.init();
    public static final int IDENTIFIABLE = 2;
    public static final int IDENTIFIABLE__GCHECKSUM = 0;
    public static final int IDENTIFIABLE__GTIMESTAMP = 1;
    public static final int IDENTIFIABLE__CHECKSUM = 2;
    public static final int IDENTIFIABLE__TIMESTAMP = 3;
    public static final int IDENTIFIABLE__GSHORT_NAME = 4;
    public static final int IDENTIFIABLE__GUUID = 5;
    public static final int IDENTIFIABLE__GCATEGORY = 6;
    public static final int IDENTIFIABLE__GDESC = 7;
    public static final int IDENTIFIABLE__SHORT_NAME = 8;
    public static final int IDENTIFIABLE__LONG_NAME = 9;
    public static final int IDENTIFIABLE__DESC = 10;
    public static final int IDENTIFIABLE__CATEGORY = 11;
    public static final int IDENTIFIABLE__ADMIN_DATA = 12;
    public static final int IDENTIFIABLE__INTRODUCTION = 13;
    public static final int IDENTIFIABLE__UUID = 14;
    public static final int IDENTIFIABLE__ALL_EXTENSIONS = 15;
    public static final int IDENTIFIABLE__CONTAINED_EXTENSIONS = 16;
    public static final int IDENTIFIABLE_FEATURE_COUNT = 17;
    public static final int PACKAGEABLE_ELEMENT = 0;
    public static final int PACKAGEABLE_ELEMENT__GCHECKSUM = 0;
    public static final int PACKAGEABLE_ELEMENT__GTIMESTAMP = 1;
    public static final int PACKAGEABLE_ELEMENT__CHECKSUM = 2;
    public static final int PACKAGEABLE_ELEMENT__TIMESTAMP = 3;
    public static final int PACKAGEABLE_ELEMENT__GSHORT_NAME = 4;
    public static final int PACKAGEABLE_ELEMENT__GUUID = 5;
    public static final int PACKAGEABLE_ELEMENT__GCATEGORY = 6;
    public static final int PACKAGEABLE_ELEMENT__GDESC = 7;
    public static final int PACKAGEABLE_ELEMENT__SHORT_NAME = 8;
    public static final int PACKAGEABLE_ELEMENT__LONG_NAME = 9;
    public static final int PACKAGEABLE_ELEMENT__DESC = 10;
    public static final int PACKAGEABLE_ELEMENT__CATEGORY = 11;
    public static final int PACKAGEABLE_ELEMENT__ADMIN_DATA = 12;
    public static final int PACKAGEABLE_ELEMENT__INTRODUCTION = 13;
    public static final int PACKAGEABLE_ELEMENT__UUID = 14;
    public static final int PACKAGEABLE_ELEMENT__ALL_EXTENSIONS = 15;
    public static final int PACKAGEABLE_ELEMENT__CONTAINED_EXTENSIONS = 16;
    public static final int PACKAGEABLE_ELEMENT__GAR_PACKAGE = 17;
    public static final int PACKAGEABLE_ELEMENT__AR_PACKAGE = 18;
    public static final int PACKAGEABLE_ELEMENT_FEATURE_COUNT = 19;
    public static final int AR_ELEMENT = 1;
    public static final int AR_ELEMENT__GCHECKSUM = 0;
    public static final int AR_ELEMENT__GTIMESTAMP = 1;
    public static final int AR_ELEMENT__CHECKSUM = 2;
    public static final int AR_ELEMENT__TIMESTAMP = 3;
    public static final int AR_ELEMENT__GSHORT_NAME = 4;
    public static final int AR_ELEMENT__GUUID = 5;
    public static final int AR_ELEMENT__GCATEGORY = 6;
    public static final int AR_ELEMENT__GDESC = 7;
    public static final int AR_ELEMENT__SHORT_NAME = 8;
    public static final int AR_ELEMENT__LONG_NAME = 9;
    public static final int AR_ELEMENT__DESC = 10;
    public static final int AR_ELEMENT__CATEGORY = 11;
    public static final int AR_ELEMENT__ADMIN_DATA = 12;
    public static final int AR_ELEMENT__INTRODUCTION = 13;
    public static final int AR_ELEMENT__UUID = 14;
    public static final int AR_ELEMENT__ALL_EXTENSIONS = 15;
    public static final int AR_ELEMENT__CONTAINED_EXTENSIONS = 16;
    public static final int AR_ELEMENT__GAR_PACKAGE = 17;
    public static final int AR_ELEMENT__AR_PACKAGE = 18;
    public static final int AR_ELEMENT_FEATURE_COUNT = 19;
    public static final int IDENTIFIABLE_ALL_EXTENSIONS_MAP_ENTRY = 3;
    public static final int IDENTIFIABLE_ALL_EXTENSIONS_MAP_ENTRY__KEY = 0;
    public static final int IDENTIFIABLE_ALL_EXTENSIONS_MAP_ENTRY__VALUE = 1;
    public static final int IDENTIFIABLE_ALL_EXTENSIONS_MAP_ENTRY_FEATURE_COUNT = 2;

    public EClass getPackageableElement();

    public EReference getPackageableElement_ARPackage();

    public EClass getARElement();

    public EClass getIdentifiable();

    public EAttribute getIdentifiable_ShortName();

    public EReference getIdentifiable_LongName();

    public EReference getIdentifiable_Desc();

    public EAttribute getIdentifiable_Category();

    public EReference getIdentifiable_AdminData();

    public EReference getIdentifiable_Introduction();

    public EAttribute getIdentifiable_Uuid();

    public EReference getIdentifiable_AllExtensions();

    public EReference getIdentifiable_ContainedExtensions();

    public EClass getIdentifiableAllExtensionsMapEntry();

    public EAttribute getIdentifiableAllExtensionsMapEntry_Key();

    public EReference getIdentifiableAllExtensionsMapEntry_Value();

    public IdentifiableFactory getIdentifiableFactory();

    public static interface Literals {
        public static final EClass PACKAGEABLE_ELEMENT = eINSTANCE.getPackageableElement();
        public static final EReference PACKAGEABLE_ELEMENT__AR_PACKAGE = eINSTANCE.getPackageableElement_ARPackage();
        public static final EClass AR_ELEMENT = eINSTANCE.getARElement();
        public static final EClass IDENTIFIABLE = eINSTANCE.getIdentifiable();
        public static final EAttribute IDENTIFIABLE__SHORT_NAME = eINSTANCE.getIdentifiable_ShortName();
        public static final EReference IDENTIFIABLE__LONG_NAME = eINSTANCE.getIdentifiable_LongName();
        public static final EReference IDENTIFIABLE__DESC = eINSTANCE.getIdentifiable_Desc();
        public static final EAttribute IDENTIFIABLE__CATEGORY = eINSTANCE.getIdentifiable_Category();
        public static final EReference IDENTIFIABLE__ADMIN_DATA = eINSTANCE.getIdentifiable_AdminData();
        public static final EReference IDENTIFIABLE__INTRODUCTION = eINSTANCE.getIdentifiable_Introduction();
        public static final EAttribute IDENTIFIABLE__UUID = eINSTANCE.getIdentifiable_Uuid();
        public static final EReference IDENTIFIABLE__ALL_EXTENSIONS = eINSTANCE.getIdentifiable_AllExtensions();
        public static final EReference IDENTIFIABLE__CONTAINED_EXTENSIONS = eINSTANCE.getIdentifiable_ContainedExtensions();
        public static final EClass IDENTIFIABLE_ALL_EXTENSIONS_MAP_ENTRY = eINSTANCE.getIdentifiableAllExtensionsMapEntry();
        public static final EAttribute IDENTIFIABLE_ALL_EXTENSIONS_MAP_ENTRY__KEY = eINSTANCE.getIdentifiableAllExtensionsMapEntry_Key();
        public static final EReference IDENTIFIABLE_ALL_EXTENSIONS_MAP_ENTRY__VALUE = eINSTANCE.getIdentifiableAllExtensionsMapEntry_Value();
    }
}

