/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar40.standardization.blueprintdedicated.genericblueprint;

import autosar40.standardization.blueprintdedicated.genericblueprint.GenericblueprintFactory;
import autosar40.standardization.blueprintdedicated.genericblueprint.impl.GenericblueprintPackageImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface GenericblueprintPackage
extends EPackage {
    public static final String eNAME = "genericblueprint";
    public static final String eNS_URI = "http://autosar.org/schema/r4.0/autosar40/standardization/bd/gb";
    public static final String eNS_PREFIX = "";
    public static final GenericblueprintPackage eINSTANCE = GenericblueprintPackageImpl.init();
    public static final int BLUEPRINT_MAPPING = 0;
    public static final int BLUEPRINT_MAPPING__GCHECKSUM = 0;
    public static final int BLUEPRINT_MAPPING__GTIMESTAMP = 1;
    public static final int BLUEPRINT_MAPPING__CHECKSUM = 2;
    public static final int BLUEPRINT_MAPPING__TIMESTAMP = 3;
    public static final int BLUEPRINT_MAPPING__BLUEPRINT_MAPPING_SET = 4;
    public static final int BLUEPRINT_MAPPING__BLUEPRINT = 5;
    public static final int BLUEPRINT_MAPPING__DERIVED_OBJECT = 6;
    public static final int BLUEPRINT_MAPPING_FEATURE_COUNT = 7;

    public EClass getBlueprintMapping();

    public EReference getBlueprintMapping_Blueprint();

    public EReference getBlueprintMapping_DerivedObject();

    public GenericblueprintFactory getGenericblueprintFactory();

    public static interface Literals {
        public static final EClass BLUEPRINT_MAPPING = eINSTANCE.getBlueprintMapping();
        public static final EReference BLUEPRINT_MAPPING__BLUEPRINT = eINSTANCE.getBlueprintMapping_Blueprint();
        public static final EReference BLUEPRINT_MAPPING__DERIVED_OBJECT = eINSTANCE.getBlueprintMapping_DerivedObject();
    }
}

