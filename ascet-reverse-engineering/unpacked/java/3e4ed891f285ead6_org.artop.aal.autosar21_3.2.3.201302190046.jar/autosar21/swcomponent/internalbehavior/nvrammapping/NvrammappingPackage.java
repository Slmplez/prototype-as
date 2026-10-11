/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar21.swcomponent.internalbehavior.nvrammapping;

import autosar21.swcomponent.internalbehavior.nvrammapping.NvrammappingFactory;
import autosar21.swcomponent.internalbehavior.nvrammapping.impl.NvrammappingPackageImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface NvrammappingPackage
extends EPackage {
    public static final String eNAME = "nvrammapping";
    public static final String eNS_URI = "http://autosar.org/2.1.5/autosar21/swc/ib/nvramm";
    public static final String eNS_PREFIX = "";
    public static final NvrammappingPackage eINSTANCE = NvrammappingPackageImpl.init();
    public static final int NVRAM_MAPPING = 0;
    public static final int NVRAM_MAPPING__GCHECKSUM = 0;
    public static final int NVRAM_MAPPING__GTIMESTAMP = 1;
    public static final int NVRAM_MAPPING__CHECKSUM = 2;
    public static final int NVRAM_MAPPING__TIMESTAMP = 3;
    public static final int NVRAM_MAPPING__GSHORT_NAME = 4;
    public static final int NVRAM_MAPPING__GUUID = 5;
    public static final int NVRAM_MAPPING__GCATEGORY = 6;
    public static final int NVRAM_MAPPING__GDESC = 7;
    public static final int NVRAM_MAPPING__SHORT_NAME = 8;
    public static final int NVRAM_MAPPING__LONG_NAME = 9;
    public static final int NVRAM_MAPPING__DESC = 10;
    public static final int NVRAM_MAPPING__CATEGORY = 11;
    public static final int NVRAM_MAPPING__ADMIN_DATA = 12;
    public static final int NVRAM_MAPPING__UUID = 13;
    public static final int NVRAM_MAPPING__ALL_EXTENSIONS = 14;
    public static final int NVRAM_MAPPING__CONTAINED_EXTENSIONS = 15;
    public static final int NVRAM_MAPPING__INTERNAL_BEHAVIOR = 16;
    public static final int NVRAM_MAPPING__DEFAULT_BLOCK = 17;
    public static final int NVRAM_MAPPING__MIRROR_BLOCK = 18;
    public static final int NVRAM_MAPPING__NVRAM_NOTIFICATION = 19;
    public static final int NVRAM_MAPPING__NVRAM_PORT = 20;
    public static final int NVRAM_MAPPING_FEATURE_COUNT = 21;

    public EClass getNVRAMMapping();

    public EReference getNVRAMMapping_InternalBehavior();

    public EReference getNVRAMMapping_DefaultBlock();

    public EReference getNVRAMMapping_MirrorBlock();

    public EReference getNVRAMMapping_NVRAMNotification();

    public EReference getNVRAMMapping_NVRAMPort();

    public NvrammappingFactory getNvrammappingFactory();

    public static interface Literals {
        public static final EClass NVRAM_MAPPING = eINSTANCE.getNVRAMMapping();
        public static final EReference NVRAM_MAPPING__INTERNAL_BEHAVIOR = eINSTANCE.getNVRAMMapping_InternalBehavior();
        public static final EReference NVRAM_MAPPING__DEFAULT_BLOCK = eINSTANCE.getNVRAMMapping_DefaultBlock();
        public static final EReference NVRAM_MAPPING__MIRROR_BLOCK = eINSTANCE.getNVRAMMapping_MirrorBlock();
        public static final EReference NVRAM_MAPPING__NVRAM_NOTIFICATION = eINSTANCE.getNVRAMMapping_NVRAMNotification();
        public static final EReference NVRAM_MAPPING__NVRAM_PORT = eINSTANCE.getNVRAMMapping_NVRAMPort();
    }
}

