/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EAttribute
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar40.standardization.abstractblueprintstructure;

import autosar40.standardization.abstractblueprintstructure.AbstractblueprintstructureFactory;
import autosar40.standardization.abstractblueprintstructure.impl.AbstractblueprintstructurePackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface AbstractblueprintstructurePackage
extends EPackage {
    public static final String eNAME = "abstractblueprintstructure";
    public static final String eNS_URI = "http://autosar.org/schema/r4.0/autosar40/standardization/abs";
    public static final String eNS_PREFIX = "";
    public static final AbstractblueprintstructurePackage eINSTANCE = AbstractblueprintstructurePackageImpl.init();
    public static final int ATP_BLUEPRINT_MAPPING = 0;
    public static final int ATP_BLUEPRINT_MAPPING__GCHECKSUM = 0;
    public static final int ATP_BLUEPRINT_MAPPING__GTIMESTAMP = 1;
    public static final int ATP_BLUEPRINT_MAPPING__CHECKSUM = 2;
    public static final int ATP_BLUEPRINT_MAPPING__TIMESTAMP = 3;
    public static final int ATP_BLUEPRINT_MAPPING__BLUEPRINT_MAPPING_SET = 4;
    public static final int ATP_BLUEPRINT_MAPPING_FEATURE_COUNT = 5;
    public static final int ATP_BLUEPRINTABLE = 1;
    public static final int ATP_BLUEPRINTABLE__GCHECKSUM = 0;
    public static final int ATP_BLUEPRINTABLE__GTIMESTAMP = 1;
    public static final int ATP_BLUEPRINTABLE__CHECKSUM = 2;
    public static final int ATP_BLUEPRINTABLE__TIMESTAMP = 3;
    public static final int ATP_BLUEPRINTABLE__GSHORT_NAME = 4;
    public static final int ATP_BLUEPRINTABLE__SHORT_NAME = 5;
    public static final int ATP_BLUEPRINTABLE__LONG_NAME = 6;
    public static final int ATP_BLUEPRINTABLE__GUUID = 7;
    public static final int ATP_BLUEPRINTABLE__GCATEGORY = 8;
    public static final int ATP_BLUEPRINTABLE__GDESC = 9;
    public static final int ATP_BLUEPRINTABLE__DESC = 10;
    public static final int ATP_BLUEPRINTABLE__CATEGORY = 11;
    public static final int ATP_BLUEPRINTABLE__ADMIN_DATA = 12;
    public static final int ATP_BLUEPRINTABLE__INTRODUCTION = 13;
    public static final int ATP_BLUEPRINTABLE__ANNOTATIONS = 14;
    public static final int ATP_BLUEPRINTABLE__UUID = 15;
    public static final int ATP_BLUEPRINTABLE__ALL_EXTENSIONS = 16;
    public static final int ATP_BLUEPRINTABLE__CONTAINED_EXTENSIONS = 17;
    public static final int ATP_BLUEPRINTABLE_FEATURE_COUNT = 18;
    public static final int ATP_BLUEPRINT = 2;
    public static final int ATP_BLUEPRINT__GCHECKSUM = 0;
    public static final int ATP_BLUEPRINT__GTIMESTAMP = 1;
    public static final int ATP_BLUEPRINT__CHECKSUM = 2;
    public static final int ATP_BLUEPRINT__TIMESTAMP = 3;
    public static final int ATP_BLUEPRINT__GSHORT_NAME = 4;
    public static final int ATP_BLUEPRINT__SHORT_NAME = 5;
    public static final int ATP_BLUEPRINT__LONG_NAME = 6;
    public static final int ATP_BLUEPRINT__GUUID = 7;
    public static final int ATP_BLUEPRINT__GCATEGORY = 8;
    public static final int ATP_BLUEPRINT__GDESC = 9;
    public static final int ATP_BLUEPRINT__DESC = 10;
    public static final int ATP_BLUEPRINT__CATEGORY = 11;
    public static final int ATP_BLUEPRINT__ADMIN_DATA = 12;
    public static final int ATP_BLUEPRINT__INTRODUCTION = 13;
    public static final int ATP_BLUEPRINT__ANNOTATIONS = 14;
    public static final int ATP_BLUEPRINT__UUID = 15;
    public static final int ATP_BLUEPRINT__ALL_EXTENSIONS = 16;
    public static final int ATP_BLUEPRINT__CONTAINED_EXTENSIONS = 17;
    public static final int ATP_BLUEPRINT__SHORT_NAME_PATTERN = 18;
    public static final int ATP_BLUEPRINT_FEATURE_COUNT = 19;

    public EClass getAtpBlueprintMapping();

    public EReference getAtpBlueprintMapping_BlueprintMappingSet();

    public EClass getAtpBlueprintable();

    public EClass getAtpBlueprint();

    public EAttribute getAtpBlueprint_ShortNamePattern();

    public AbstractblueprintstructureFactory getAbstractblueprintstructureFactory();

    public static interface Literals {
        public static final EClass ATP_BLUEPRINT_MAPPING = eINSTANCE.getAtpBlueprintMapping();
        public static final EReference ATP_BLUEPRINT_MAPPING__BLUEPRINT_MAPPING_SET = eINSTANCE.getAtpBlueprintMapping_BlueprintMappingSet();
        public static final EClass ATP_BLUEPRINTABLE = eINSTANCE.getAtpBlueprintable();
        public static final EClass ATP_BLUEPRINT = eINSTANCE.getAtpBlueprint();
        public static final EAttribute ATP_BLUEPRINT__SHORT_NAME_PATTERN = eINSTANCE.getAtpBlueprint_ShortNamePattern();
    }
}

