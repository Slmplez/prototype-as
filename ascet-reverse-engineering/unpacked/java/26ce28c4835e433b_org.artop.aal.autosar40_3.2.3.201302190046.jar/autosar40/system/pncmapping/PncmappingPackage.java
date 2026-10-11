/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EAttribute
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar40.system.pncmapping;

import autosar40.system.pncmapping.PncmappingFactory;
import autosar40.system.pncmapping.impl.PncmappingPackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface PncmappingPackage
extends EPackage {
    public static final String eNAME = "pncmapping";
    public static final String eNS_URI = "http://autosar.org/schema/r4.0/autosar40/system/pm";
    public static final String eNS_PREFIX = "";
    public static final PncmappingPackage eINSTANCE = PncmappingPackageImpl.init();
    public static final int PNC_MAPPING = 0;
    public static final int PNC_MAPPING__GCHECKSUM = 0;
    public static final int PNC_MAPPING__GTIMESTAMP = 1;
    public static final int PNC_MAPPING__CHECKSUM = 2;
    public static final int PNC_MAPPING__TIMESTAMP = 3;
    public static final int PNC_MAPPING__SYSTEM_MAPPING = 4;
    public static final int PNC_MAPPING__PNC_GROUPS = 5;
    public static final int PNC_MAPPING__PNC_IDENTIFIER = 6;
    public static final int PNC_MAPPING__VFCS = 7;
    public static final int PNC_MAPPING__WAKEUP_FRAMES = 8;
    public static final int PNC_MAPPING__VARIATION_POINT = 9;
    public static final int PNC_MAPPING_FEATURE_COUNT = 10;

    public EClass getPncMapping();

    public EReference getPncMapping_SystemMapping();

    public EReference getPncMapping_PncGroups();

    public EAttribute getPncMapping_PncIdentifier();

    public EReference getPncMapping_Vfcs();

    public EReference getPncMapping_WakeupFrames();

    public EReference getPncMapping_VariationPoint();

    public PncmappingFactory getPncmappingFactory();

    public static interface Literals {
        public static final EClass PNC_MAPPING = eINSTANCE.getPncMapping();
        public static final EReference PNC_MAPPING__SYSTEM_MAPPING = eINSTANCE.getPncMapping_SystemMapping();
        public static final EReference PNC_MAPPING__PNC_GROUPS = eINSTANCE.getPncMapping_PncGroups();
        public static final EAttribute PNC_MAPPING__PNC_IDENTIFIER = eINSTANCE.getPncMapping_PncIdentifier();
        public static final EReference PNC_MAPPING__VFCS = eINSTANCE.getPncMapping_Vfcs();
        public static final EReference PNC_MAPPING__WAKEUP_FRAMES = eINSTANCE.getPncMapping_WakeupFrames();
        public static final EReference PNC_MAPPING__VARIATION_POINT = eINSTANCE.getPncMapping_VariationPoint();
    }
}

