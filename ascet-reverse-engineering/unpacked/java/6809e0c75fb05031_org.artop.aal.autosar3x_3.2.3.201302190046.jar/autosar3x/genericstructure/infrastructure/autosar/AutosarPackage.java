/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EAttribute
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar3x.genericstructure.infrastructure.autosar;

import autosar3x.genericstructure.infrastructure.autosar.AutosarFactory;
import autosar3x.genericstructure.infrastructure.autosar.impl.AutosarPackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface AutosarPackage
extends EPackage {
    public static final String eNAME = "autosar";
    public static final String eNS_URI = "http://autosar.org/3.2.1/autosar3x/gs/i/a";
    public static final String eNS_PREFIX = "";
    public static final AutosarPackage eINSTANCE = AutosarPackageImpl.init();
    public static final int AR_PACKAGE = 0;
    public static final int AR_PACKAGE__GCHECKSUM = 0;
    public static final int AR_PACKAGE__GTIMESTAMP = 1;
    public static final int AR_PACKAGE__CHECKSUM = 2;
    public static final int AR_PACKAGE__TIMESTAMP = 3;
    public static final int AR_PACKAGE__GSHORT_NAME = 4;
    public static final int AR_PACKAGE__GUUID = 5;
    public static final int AR_PACKAGE__GCATEGORY = 6;
    public static final int AR_PACKAGE__GDESC = 7;
    public static final int AR_PACKAGE__SHORT_NAME = 8;
    public static final int AR_PACKAGE__LONG_NAME = 9;
    public static final int AR_PACKAGE__DESC = 10;
    public static final int AR_PACKAGE__CATEGORY = 11;
    public static final int AR_PACKAGE__ADMIN_DATA = 12;
    public static final int AR_PACKAGE__INTRODUCTION = 13;
    public static final int AR_PACKAGE__UUID = 14;
    public static final int AR_PACKAGE__ALL_EXTENSIONS = 15;
    public static final int AR_PACKAGE__CONTAINED_EXTENSIONS = 16;
    public static final int AR_PACKAGE__GELEMENTS = 17;
    public static final int AR_PACKAGE__GSUB_PACKAGES = 18;
    public static final int AR_PACKAGE__ELEMENTS = 19;
    public static final int AR_PACKAGE__SUB_PACKAGES = 20;
    public static final int AR_PACKAGE_FEATURE_COUNT = 21;
    public static final int AUTOSAR = 1;
    public static final int AUTOSAR__GCHECKSUM = 0;
    public static final int AUTOSAR__GTIMESTAMP = 1;
    public static final int AUTOSAR__CHECKSUM = 2;
    public static final int AUTOSAR__TIMESTAMP = 3;
    public static final int AUTOSAR__GAR_PACKAGES = 4;
    public static final int AUTOSAR__MIXED = 5;
    public static final int AUTOSAR__ADMIN_DATA = 6;
    public static final int AUTOSAR__TOP_LEVEL_PACKAGES = 7;
    public static final int AUTOSAR__XSI_SCHEMA_LOCATION = 8;
    public static final int AUTOSAR__ALL_EXTENSIONS = 9;
    public static final int AUTOSAR__CONTAINED_EXTENSIONS = 10;
    public static final int AUTOSAR_FEATURE_COUNT = 11;
    public static final int AUTOSAR_ALL_EXTENSIONS_MAP_ENTRY = 2;
    public static final int AUTOSAR_ALL_EXTENSIONS_MAP_ENTRY__KEY = 0;
    public static final int AUTOSAR_ALL_EXTENSIONS_MAP_ENTRY__VALUE = 1;
    public static final int AUTOSAR_ALL_EXTENSIONS_MAP_ENTRY_FEATURE_COUNT = 2;

    public EClass getARPackage();

    public EReference getARPackage_Elements();

    public EReference getARPackage_SubPackages();

    public EClass getAUTOSAR();

    public EAttribute getAUTOSAR_Mixed();

    public EReference getAUTOSAR_AdminData();

    public EReference getAUTOSAR_TopLevelPackages();

    public EReference getAUTOSAR_XSISchemaLocation();

    public EReference getAUTOSAR_AllExtensions();

    public EReference getAUTOSAR_ContainedExtensions();

    public EClass getAUTOSARAllExtensionsMapEntry();

    public EAttribute getAUTOSARAllExtensionsMapEntry_Key();

    public EReference getAUTOSARAllExtensionsMapEntry_Value();

    public AutosarFactory getAutosarFactory();

    public static interface Literals {
        public static final EClass AR_PACKAGE = eINSTANCE.getARPackage();
        public static final EReference AR_PACKAGE__ELEMENTS = eINSTANCE.getARPackage_Elements();
        public static final EReference AR_PACKAGE__SUB_PACKAGES = eINSTANCE.getARPackage_SubPackages();
        public static final EClass AUTOSAR = eINSTANCE.getAUTOSAR();
        public static final EAttribute AUTOSAR__MIXED = eINSTANCE.getAUTOSAR_Mixed();
        public static final EReference AUTOSAR__ADMIN_DATA = eINSTANCE.getAUTOSAR_AdminData();
        public static final EReference AUTOSAR__TOP_LEVEL_PACKAGES = eINSTANCE.getAUTOSAR_TopLevelPackages();
        public static final EReference AUTOSAR__XSI_SCHEMA_LOCATION = eINSTANCE.getAUTOSAR_XSISchemaLocation();
        public static final EReference AUTOSAR__ALL_EXTENSIONS = eINSTANCE.getAUTOSAR_AllExtensions();
        public static final EReference AUTOSAR__CONTAINED_EXTENSIONS = eINSTANCE.getAUTOSAR_ContainedExtensions();
        public static final EClass AUTOSAR_ALL_EXTENSIONS_MAP_ENTRY = eINSTANCE.getAUTOSARAllExtensionsMapEntry();
        public static final EAttribute AUTOSAR_ALL_EXTENSIONS_MAP_ENTRY__KEY = eINSTANCE.getAUTOSARAllExtensionsMapEntry_Key();
        public static final EReference AUTOSAR_ALL_EXTENSIONS_MAP_ENTRY__VALUE = eINSTANCE.getAUTOSARAllExtensionsMapEntry_Value();
    }
}

