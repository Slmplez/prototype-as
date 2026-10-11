/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar40.standardization.blueprintmapping;

import autosar40.standardization.blueprintmapping.BlueprintmappingFactory;
import autosar40.standardization.blueprintmapping.impl.BlueprintmappingPackageImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface BlueprintmappingPackage
extends EPackage {
    public static final String eNAME = "blueprintmapping";
    public static final String eNS_URI = "http://autosar.org/schema/r4.0/autosar40/standardization/bm";
    public static final String eNS_PREFIX = "";
    public static final BlueprintmappingPackage eINSTANCE = BlueprintmappingPackageImpl.init();
    public static final int BLUEPRINT_MAPPING_SET = 0;
    public static final int BLUEPRINT_MAPPING_SET__GCHECKSUM = 0;
    public static final int BLUEPRINT_MAPPING_SET__GTIMESTAMP = 1;
    public static final int BLUEPRINT_MAPPING_SET__CHECKSUM = 2;
    public static final int BLUEPRINT_MAPPING_SET__TIMESTAMP = 3;
    public static final int BLUEPRINT_MAPPING_SET__GSHORT_NAME = 4;
    public static final int BLUEPRINT_MAPPING_SET__SHORT_NAME = 5;
    public static final int BLUEPRINT_MAPPING_SET__LONG_NAME = 6;
    public static final int BLUEPRINT_MAPPING_SET__GUUID = 7;
    public static final int BLUEPRINT_MAPPING_SET__GCATEGORY = 8;
    public static final int BLUEPRINT_MAPPING_SET__GDESC = 9;
    public static final int BLUEPRINT_MAPPING_SET__DESC = 10;
    public static final int BLUEPRINT_MAPPING_SET__CATEGORY = 11;
    public static final int BLUEPRINT_MAPPING_SET__ADMIN_DATA = 12;
    public static final int BLUEPRINT_MAPPING_SET__INTRODUCTION = 13;
    public static final int BLUEPRINT_MAPPING_SET__ANNOTATIONS = 14;
    public static final int BLUEPRINT_MAPPING_SET__UUID = 15;
    public static final int BLUEPRINT_MAPPING_SET__ALL_EXTENSIONS = 16;
    public static final int BLUEPRINT_MAPPING_SET__CONTAINED_EXTENSIONS = 17;
    public static final int BLUEPRINT_MAPPING_SET__GAR_PACKAGE = 18;
    public static final int BLUEPRINT_MAPPING_SET__AR_PACKAGE = 19;
    public static final int BLUEPRINT_MAPPING_SET__VARIATION_POINT = 20;
    public static final int BLUEPRINT_MAPPING_SET__BLUEPRINT_MAPS = 21;
    public static final int BLUEPRINT_MAPPING_SET_FEATURE_COUNT = 22;

    public EClass getBlueprintMappingSet();

    public EReference getBlueprintMappingSet_BlueprintMaps();

    public BlueprintmappingFactory getBlueprintmappingFactory();

    public static interface Literals {
        public static final EClass BLUEPRINT_MAPPING_SET = eINSTANCE.getBlueprintMappingSet();
        public static final EReference BLUEPRINT_MAPPING_SET__BLUEPRINT_MAPS = eINSTANCE.getBlueprintMappingSet_BlueprintMaps();
    }
}

