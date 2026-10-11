/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EAttribute
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar40.autosartoplevelstructure;

import autosar40.autosartoplevelstructure.AutosartoplevelstructureFactory;
import autosar40.autosartoplevelstructure.impl.AutosartoplevelstructurePackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface AutosartoplevelstructurePackage
extends EPackage {
    public static final String eNAME = "autosartoplevelstructure";
    public static final String eNS_URI = "http://autosar.org/schema/r4.0/autosar40/atls";
    public static final String eNS_PREFIX = "";
    public static final AutosartoplevelstructurePackage eINSTANCE = AutosartoplevelstructurePackageImpl.init();
    public static final int AUTOSAR = 0;
    public static final int AUTOSAR__GCHECKSUM = 0;
    public static final int AUTOSAR__GTIMESTAMP = 1;
    public static final int AUTOSAR__CHECKSUM = 2;
    public static final int AUTOSAR__TIMESTAMP = 3;
    public static final int AUTOSAR__GAR_PACKAGES = 4;
    public static final int AUTOSAR__MIXED = 5;
    public static final int AUTOSAR__ADMIN_DATA = 6;
    public static final int AUTOSAR__INTRODUCTION = 7;
    public static final int AUTOSAR__AR_PACKAGES = 8;
    public static final int AUTOSAR__XSI_SCHEMA_LOCATION = 9;
    public static final int AUTOSAR__ALL_EXTENSIONS = 10;
    public static final int AUTOSAR__CONTAINED_EXTENSIONS = 11;
    public static final int AUTOSAR_FEATURE_COUNT = 12;
    public static final int AUTOSAR_ALL_EXTENSIONS_MAP_ENTRY = 1;
    public static final int AUTOSAR_ALL_EXTENSIONS_MAP_ENTRY__KEY = 0;
    public static final int AUTOSAR_ALL_EXTENSIONS_MAP_ENTRY__VALUE = 1;
    public static final int AUTOSAR_ALL_EXTENSIONS_MAP_ENTRY_FEATURE_COUNT = 2;

    public EClass getAUTOSAR();

    public EAttribute getAUTOSAR_Mixed();

    public EReference getAUTOSAR_AdminData();

    public EReference getAUTOSAR_Introduction();

    public EReference getAUTOSAR_ArPackages();

    public EReference getAUTOSAR_XSISchemaLocation();

    public EReference getAUTOSAR_AllExtensions();

    public EReference getAUTOSAR_ContainedExtensions();

    public EClass getAUTOSARAllExtensionsMapEntry();

    public EAttribute getAUTOSARAllExtensionsMapEntry_Key();

    public EReference getAUTOSARAllExtensionsMapEntry_Value();

    public AutosartoplevelstructureFactory getAutosartoplevelstructureFactory();

    public static interface Literals {
        public static final EClass AUTOSAR = eINSTANCE.getAUTOSAR();
        public static final EAttribute AUTOSAR__MIXED = eINSTANCE.getAUTOSAR_Mixed();
        public static final EReference AUTOSAR__ADMIN_DATA = eINSTANCE.getAUTOSAR_AdminData();
        public static final EReference AUTOSAR__INTRODUCTION = eINSTANCE.getAUTOSAR_Introduction();
        public static final EReference AUTOSAR__AR_PACKAGES = eINSTANCE.getAUTOSAR_ArPackages();
        public static final EReference AUTOSAR__XSI_SCHEMA_LOCATION = eINSTANCE.getAUTOSAR_XSISchemaLocation();
        public static final EReference AUTOSAR__ALL_EXTENSIONS = eINSTANCE.getAUTOSAR_AllExtensions();
        public static final EReference AUTOSAR__CONTAINED_EXTENSIONS = eINSTANCE.getAUTOSAR_ContainedExtensions();
        public static final EClass AUTOSAR_ALL_EXTENSIONS_MAP_ENTRY = eINSTANCE.getAUTOSARAllExtensionsMapEntry();
        public static final EAttribute AUTOSAR_ALL_EXTENSIONS_MAP_ENTRY__KEY = eINSTANCE.getAUTOSARAllExtensionsMapEntry_Key();
        public static final EReference AUTOSAR_ALL_EXTENSIONS_MAP_ENTRY__VALUE = eINSTANCE.getAUTOSARAllExtensionsMapEntry_Value();
    }
}

