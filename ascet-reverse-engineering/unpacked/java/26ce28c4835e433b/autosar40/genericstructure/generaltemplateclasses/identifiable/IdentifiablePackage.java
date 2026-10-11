/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EAttribute
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar40.genericstructure.generaltemplateclasses.identifiable;

import autosar40.genericstructure.generaltemplateclasses.identifiable.IdentifiableFactory;
import autosar40.genericstructure.generaltemplateclasses.identifiable.impl.IdentifiablePackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface IdentifiablePackage
extends EPackage {
    public static final String eNAME = "identifiable";
    public static final String eNS_URI = "http://autosar.org/schema/r4.0/autosar40/gs/gtc/i";
    public static final String eNS_PREFIX = "";
    public static final IdentifiablePackage eINSTANCE = IdentifiablePackageImpl.init();
    public static final int DESCRIBABLE = 0;
    public static final int DESCRIBABLE__GCHECKSUM = 0;
    public static final int DESCRIBABLE__GTIMESTAMP = 1;
    public static final int DESCRIBABLE__CHECKSUM = 2;
    public static final int DESCRIBABLE__TIMESTAMP = 3;
    public static final int DESCRIBABLE__DESC = 4;
    public static final int DESCRIBABLE__INTRODUCTION = 5;
    public static final int DESCRIBABLE_FEATURE_COUNT = 6;
    public static final int REFERRABLE = 2;
    public static final int REFERRABLE__GCHECKSUM = 0;
    public static final int REFERRABLE__GTIMESTAMP = 1;
    public static final int REFERRABLE__CHECKSUM = 2;
    public static final int REFERRABLE__TIMESTAMP = 3;
    public static final int REFERRABLE__GSHORT_NAME = 4;
    public static final int REFERRABLE__SHORT_NAME = 5;
    public static final int REFERRABLE_FEATURE_COUNT = 6;
    public static final int SINGLE_LANGUAGE_REFERRABLE = 1;
    public static final int SINGLE_LANGUAGE_REFERRABLE__GCHECKSUM = 0;
    public static final int SINGLE_LANGUAGE_REFERRABLE__GTIMESTAMP = 1;
    public static final int SINGLE_LANGUAGE_REFERRABLE__CHECKSUM = 2;
    public static final int SINGLE_LANGUAGE_REFERRABLE__TIMESTAMP = 3;
    public static final int SINGLE_LANGUAGE_REFERRABLE__GSHORT_NAME = 4;
    public static final int SINGLE_LANGUAGE_REFERRABLE__SHORT_NAME = 5;
    public static final int SINGLE_LANGUAGE_REFERRABLE__LONG_NAME1 = 6;
    public static final int SINGLE_LANGUAGE_REFERRABLE_FEATURE_COUNT = 7;
    public static final int MULTILANGUAGE_REFERRABLE = 3;
    public static final int MULTILANGUAGE_REFERRABLE__GCHECKSUM = 0;
    public static final int MULTILANGUAGE_REFERRABLE__GTIMESTAMP = 1;
    public static final int MULTILANGUAGE_REFERRABLE__CHECKSUM = 2;
    public static final int MULTILANGUAGE_REFERRABLE__TIMESTAMP = 3;
    public static final int MULTILANGUAGE_REFERRABLE__GSHORT_NAME = 4;
    public static final int MULTILANGUAGE_REFERRABLE__SHORT_NAME = 5;
    public static final int MULTILANGUAGE_REFERRABLE__LONG_NAME = 6;
    public static final int MULTILANGUAGE_REFERRABLE_FEATURE_COUNT = 7;
    public static final int IDENTIFIABLE = 4;
    public static final int IDENTIFIABLE__GCHECKSUM = 0;
    public static final int IDENTIFIABLE__GTIMESTAMP = 1;
    public static final int IDENTIFIABLE__CHECKSUM = 2;
    public static final int IDENTIFIABLE__TIMESTAMP = 3;
    public static final int IDENTIFIABLE__GSHORT_NAME = 4;
    public static final int IDENTIFIABLE__SHORT_NAME = 5;
    public static final int IDENTIFIABLE__LONG_NAME = 6;
    public static final int IDENTIFIABLE__GUUID = 7;
    public static final int IDENTIFIABLE__GCATEGORY = 8;
    public static final int IDENTIFIABLE__GDESC = 9;
    public static final int IDENTIFIABLE__DESC = 10;
    public static final int IDENTIFIABLE__CATEGORY = 11;
    public static final int IDENTIFIABLE__ADMIN_DATA = 12;
    public static final int IDENTIFIABLE__INTRODUCTION = 13;
    public static final int IDENTIFIABLE__ANNOTATIONS = 14;
    public static final int IDENTIFIABLE__UUID = 15;
    public static final int IDENTIFIABLE__ALL_EXTENSIONS = 16;
    public static final int IDENTIFIABLE__CONTAINED_EXTENSIONS = 17;
    public static final int IDENTIFIABLE_FEATURE_COUNT = 18;
    public static final int IDENTIFIABLE_ALL_EXTENSIONS_MAP_ENTRY = 5;
    public static final int IDENTIFIABLE_ALL_EXTENSIONS_MAP_ENTRY__KEY = 0;
    public static final int IDENTIFIABLE_ALL_EXTENSIONS_MAP_ENTRY__VALUE = 1;
    public static final int IDENTIFIABLE_ALL_EXTENSIONS_MAP_ENTRY_FEATURE_COUNT = 2;

    public EClass getDescribable();

    public EReference getDescribable_Desc();

    public EReference getDescribable_Introduction();

    public EClass getSingleLanguageReferrable();

    public EReference getSingleLanguageReferrable_LongName1();

    public EClass getReferrable();

    public EAttribute getReferrable_ShortName();

    public EClass getMultilanguageReferrable();

    public EReference getMultilanguageReferrable_LongName();

    public EClass getIdentifiable();

    public EReference getIdentifiable_Desc();

    public EAttribute getIdentifiable_Category();

    public EReference getIdentifiable_AdminData();

    public EReference getIdentifiable_Introduction();

    public EReference getIdentifiable_Annotations();

    public EAttribute getIdentifiable_Uuid();

    public EReference getIdentifiable_AllExtensions();

    public EReference getIdentifiable_ContainedExtensions();

    public EClass getIdentifiableAllExtensionsMapEntry();

    public EAttribute getIdentifiableAllExtensionsMapEntry_Key();

    public EReference getIdentifiableAllExtensionsMapEntry_Value();

    public IdentifiableFactory getIdentifiableFactory();

    public static interface Literals {
        public static final EClass DESCRIBABLE = eINSTANCE.getDescribable();
        public static final EReference DESCRIBABLE__DESC = eINSTANCE.getDescribable_Desc();
        public static final EReference DESCRIBABLE__INTRODUCTION = eINSTANCE.getDescribable_Introduction();
        public static final EClass SINGLE_LANGUAGE_REFERRABLE = eINSTANCE.getSingleLanguageReferrable();
        public static final EReference SINGLE_LANGUAGE_REFERRABLE__LONG_NAME1 = eINSTANCE.getSingleLanguageReferrable_LongName1();
        public static final EClass REFERRABLE = eINSTANCE.getReferrable();
        public static final EAttribute REFERRABLE__SHORT_NAME = eINSTANCE.getReferrable_ShortName();
        public static final EClass MULTILANGUAGE_REFERRABLE = eINSTANCE.getMultilanguageReferrable();
        public static final EReference MULTILANGUAGE_REFERRABLE__LONG_NAME = eINSTANCE.getMultilanguageReferrable_LongName();
        public static final EClass IDENTIFIABLE = eINSTANCE.getIdentifiable();
        public static final EReference IDENTIFIABLE__DESC = eINSTANCE.getIdentifiable_Desc();
        public static final EAttribute IDENTIFIABLE__CATEGORY = eINSTANCE.getIdentifiable_Category();
        public static final EReference IDENTIFIABLE__ADMIN_DATA = eINSTANCE.getIdentifiable_AdminData();
        public static final EReference IDENTIFIABLE__INTRODUCTION = eINSTANCE.getIdentifiable_Introduction();
        public static final EReference IDENTIFIABLE__ANNOTATIONS = eINSTANCE.getIdentifiable_Annotations();
        public static final EAttribute IDENTIFIABLE__UUID = eINSTANCE.getIdentifiable_Uuid();
        public static final EReference IDENTIFIABLE__ALL_EXTENSIONS = eINSTANCE.getIdentifiable_AllExtensions();
        public static final EReference IDENTIFIABLE__CONTAINED_EXTENSIONS = eINSTANCE.getIdentifiable_ContainedExtensions();
        public static final EClass IDENTIFIABLE_ALL_EXTENSIONS_MAP_ENTRY = eINSTANCE.getIdentifiableAllExtensionsMapEntry();
        public static final EAttribute IDENTIFIABLE_ALL_EXTENSIONS_MAP_ENTRY__KEY = eINSTANCE.getIdentifiableAllExtensionsMapEntry_Key();
        public static final EReference IDENTIFIABLE_ALL_EXTENSIONS_MAP_ENTRY__VALUE = eINSTANCE.getIdentifiableAllExtensionsMapEntry_Value();
    }
}

