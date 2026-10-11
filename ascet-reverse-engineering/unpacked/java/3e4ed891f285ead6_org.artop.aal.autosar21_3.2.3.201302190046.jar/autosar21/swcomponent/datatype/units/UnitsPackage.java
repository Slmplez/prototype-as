/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EAttribute
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar21.swcomponent.datatype.units;

import autosar21.swcomponent.datatype.units.UnitsFactory;
import autosar21.swcomponent.datatype.units.impl.UnitsPackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface UnitsPackage
extends EPackage {
    public static final String eNAME = "units";
    public static final String eNS_URI = "http://autosar.org/2.1.5/autosar21/swc/d/u";
    public static final String eNS_PREFIX = "";
    public static final UnitsPackage eINSTANCE = UnitsPackageImpl.init();
    public static final int DISPLAY_NAME = 0;
    public static final int DISPLAY_NAME__GCHECKSUM = 0;
    public static final int DISPLAY_NAME__GTIMESTAMP = 1;
    public static final int DISPLAY_NAME__CHECKSUM = 2;
    public static final int DISPLAY_NAME__TIMESTAMP = 3;
    public static final int DISPLAY_NAME__MIXED = 4;
    public static final int DISPLAY_NAME_FEATURE_COUNT = 5;
    public static final int PHYSICAL_DIMENSION = 1;
    public static final int PHYSICAL_DIMENSION__GCHECKSUM = 0;
    public static final int PHYSICAL_DIMENSION__GTIMESTAMP = 1;
    public static final int PHYSICAL_DIMENSION__CHECKSUM = 2;
    public static final int PHYSICAL_DIMENSION__TIMESTAMP = 3;
    public static final int PHYSICAL_DIMENSION__GSHORT_NAME = 4;
    public static final int PHYSICAL_DIMENSION__GUUID = 5;
    public static final int PHYSICAL_DIMENSION__GCATEGORY = 6;
    public static final int PHYSICAL_DIMENSION__GDESC = 7;
    public static final int PHYSICAL_DIMENSION__SHORT_NAME = 8;
    public static final int PHYSICAL_DIMENSION__LONG_NAME = 9;
    public static final int PHYSICAL_DIMENSION__DESC = 10;
    public static final int PHYSICAL_DIMENSION__CATEGORY = 11;
    public static final int PHYSICAL_DIMENSION__ADMIN_DATA = 12;
    public static final int PHYSICAL_DIMENSION__UUID = 13;
    public static final int PHYSICAL_DIMENSION__ALL_EXTENSIONS = 14;
    public static final int PHYSICAL_DIMENSION__CONTAINED_EXTENSIONS = 15;
    public static final int PHYSICAL_DIMENSION__GAR_PACKAGE = 16;
    public static final int PHYSICAL_DIMENSION__AR_PACKAGE = 17;
    public static final int PHYSICAL_DIMENSION__GCURRENT_EXP = 18;
    public static final int PHYSICAL_DIMENSION__GLENGTH_EXP = 19;
    public static final int PHYSICAL_DIMENSION__GLUMINOUS_INTENSITY_EXP = 20;
    public static final int PHYSICAL_DIMENSION__GMASS_EXP = 21;
    public static final int PHYSICAL_DIMENSION__GMOLAR_AMOUNT_EXP = 22;
    public static final int PHYSICAL_DIMENSION__GTEMPERATURE_EXP = 23;
    public static final int PHYSICAL_DIMENSION__GTIME_EXP = 24;
    public static final int PHYSICAL_DIMENSION__UNIT_SPEC = 25;
    public static final int PHYSICAL_DIMENSION__LENGTH_EXP = 26;
    public static final int PHYSICAL_DIMENSION__MASS_EXP = 27;
    public static final int PHYSICAL_DIMENSION__TIME_EXP = 28;
    public static final int PHYSICAL_DIMENSION__CURRENT_EXP = 29;
    public static final int PHYSICAL_DIMENSION__TEMPERATURE_EXP = 30;
    public static final int PHYSICAL_DIMENSION__MOLAR_AMOUNT_EXP = 31;
    public static final int PHYSICAL_DIMENSION__LUMINOUS_INTENSITY_EXP = 32;
    public static final int PHYSICAL_DIMENSION_FEATURE_COUNT = 33;
    public static final int UNIT_GROUP = 2;
    public static final int UNIT_GROUP__GCHECKSUM = 0;
    public static final int UNIT_GROUP__GTIMESTAMP = 1;
    public static final int UNIT_GROUP__CHECKSUM = 2;
    public static final int UNIT_GROUP__TIMESTAMP = 3;
    public static final int UNIT_GROUP__GSHORT_NAME = 4;
    public static final int UNIT_GROUP__GUUID = 5;
    public static final int UNIT_GROUP__GCATEGORY = 6;
    public static final int UNIT_GROUP__GDESC = 7;
    public static final int UNIT_GROUP__SHORT_NAME = 8;
    public static final int UNIT_GROUP__LONG_NAME = 9;
    public static final int UNIT_GROUP__DESC = 10;
    public static final int UNIT_GROUP__CATEGORY = 11;
    public static final int UNIT_GROUP__ADMIN_DATA = 12;
    public static final int UNIT_GROUP__UUID = 13;
    public static final int UNIT_GROUP__ALL_EXTENSIONS = 14;
    public static final int UNIT_GROUP__CONTAINED_EXTENSIONS = 15;
    public static final int UNIT_GROUP__UNIT_SPEC = 16;
    public static final int UNIT_GROUP__UNITS = 17;
    public static final int UNIT_GROUP_FEATURE_COUNT = 18;
    public static final int UNIT_SPEC = 3;
    public static final int UNIT_SPEC__GCHECKSUM = 0;
    public static final int UNIT_SPEC__GTIMESTAMP = 1;
    public static final int UNIT_SPEC__CHECKSUM = 2;
    public static final int UNIT_SPEC__TIMESTAMP = 3;
    public static final int UNIT_SPEC__UNIT_GROUPS = 4;
    public static final int UNIT_SPEC__UNITS = 5;
    public static final int UNIT_SPEC__PHYSICAL_DIMENSIONS = 6;
    public static final int UNIT_SPEC_FEATURE_COUNT = 7;
    public static final int UNIT = 4;
    public static final int UNIT__GCHECKSUM = 0;
    public static final int UNIT__GTIMESTAMP = 1;
    public static final int UNIT__CHECKSUM = 2;
    public static final int UNIT__TIMESTAMP = 3;
    public static final int UNIT__GSHORT_NAME = 4;
    public static final int UNIT__GUUID = 5;
    public static final int UNIT__GCATEGORY = 6;
    public static final int UNIT__GDESC = 7;
    public static final int UNIT__SHORT_NAME = 8;
    public static final int UNIT__LONG_NAME = 9;
    public static final int UNIT__DESC = 10;
    public static final int UNIT__CATEGORY = 11;
    public static final int UNIT__ADMIN_DATA = 12;
    public static final int UNIT__UUID = 13;
    public static final int UNIT__ALL_EXTENSIONS = 14;
    public static final int UNIT__CONTAINED_EXTENSIONS = 15;
    public static final int UNIT__GAR_PACKAGE = 16;
    public static final int UNIT__AR_PACKAGE = 17;
    public static final int UNIT__GPHYSICAL_DIMENSION = 18;
    public static final int UNIT__GFACTOR_SI_TO_UNIT = 19;
    public static final int UNIT__GOFFSET_SI_TO_UNIT = 20;
    public static final int UNIT__UNIT_SPEC = 21;
    public static final int UNIT__DISPLAY_NAME = 22;
    public static final int UNIT__FACTOR_SI_TO_UNIT = 23;
    public static final int UNIT__OFFSET_SI_TO_UNIT = 24;
    public static final int UNIT__PHYSICAL_DIMENSION = 25;
    public static final int UNIT_FEATURE_COUNT = 26;

    public EClass getDisplayName();

    public EAttribute getDisplayName_Mixed();

    public EClass getPhysicalDimension();

    public EReference getPhysicalDimension_UnitSpec();

    public EAttribute getPhysicalDimension_LengthExp();

    public EAttribute getPhysicalDimension_MassExp();

    public EAttribute getPhysicalDimension_TimeExp();

    public EAttribute getPhysicalDimension_CurrentExp();

    public EAttribute getPhysicalDimension_TemperatureExp();

    public EAttribute getPhysicalDimension_MolarAmountExp();

    public EAttribute getPhysicalDimension_LuminousIntensityExp();

    public EClass getUnitGroup();

    public EReference getUnitGroup_UnitSpec();

    public EReference getUnitGroup_Units();

    public EClass getUnitSpec();

    public EReference getUnitSpec_UnitGroups();

    public EReference getUnitSpec_Units();

    public EReference getUnitSpec_PhysicalDimensions();

    public EClass getUnit();

    public EReference getUnit_UnitSpec();

    public EReference getUnit_DisplayName();

    public EAttribute getUnit_FactorSiToUnit();

    public EAttribute getUnit_OffsetSiToUnit();

    public EReference getUnit_PhysicalDimension();

    public UnitsFactory getUnitsFactory();

    public static interface Literals {
        public static final EClass DISPLAY_NAME = eINSTANCE.getDisplayName();
        public static final EAttribute DISPLAY_NAME__MIXED = eINSTANCE.getDisplayName_Mixed();
        public static final EClass PHYSICAL_DIMENSION = eINSTANCE.getPhysicalDimension();
        public static final EReference PHYSICAL_DIMENSION__UNIT_SPEC = eINSTANCE.getPhysicalDimension_UnitSpec();
        public static final EAttribute PHYSICAL_DIMENSION__LENGTH_EXP = eINSTANCE.getPhysicalDimension_LengthExp();
        public static final EAttribute PHYSICAL_DIMENSION__MASS_EXP = eINSTANCE.getPhysicalDimension_MassExp();
        public static final EAttribute PHYSICAL_DIMENSION__TIME_EXP = eINSTANCE.getPhysicalDimension_TimeExp();
        public static final EAttribute PHYSICAL_DIMENSION__CURRENT_EXP = eINSTANCE.getPhysicalDimension_CurrentExp();
        public static final EAttribute PHYSICAL_DIMENSION__TEMPERATURE_EXP = eINSTANCE.getPhysicalDimension_TemperatureExp();
        public static final EAttribute PHYSICAL_DIMENSION__MOLAR_AMOUNT_EXP = eINSTANCE.getPhysicalDimension_MolarAmountExp();
        public static final EAttribute PHYSICAL_DIMENSION__LUMINOUS_INTENSITY_EXP = eINSTANCE.getPhysicalDimension_LuminousIntensityExp();
        public static final EClass UNIT_GROUP = eINSTANCE.getUnitGroup();
        public static final EReference UNIT_GROUP__UNIT_SPEC = eINSTANCE.getUnitGroup_UnitSpec();
        public static final EReference UNIT_GROUP__UNITS = eINSTANCE.getUnitGroup_Units();
        public static final EClass UNIT_SPEC = eINSTANCE.getUnitSpec();
        public static final EReference UNIT_SPEC__UNIT_GROUPS = eINSTANCE.getUnitSpec_UnitGroups();
        public static final EReference UNIT_SPEC__UNITS = eINSTANCE.getUnitSpec_Units();
        public static final EReference UNIT_SPEC__PHYSICAL_DIMENSIONS = eINSTANCE.getUnitSpec_PhysicalDimensions();
        public static final EClass UNIT = eINSTANCE.getUnit();
        public static final EReference UNIT__UNIT_SPEC = eINSTANCE.getUnit_UnitSpec();
        public static final EReference UNIT__DISPLAY_NAME = eINSTANCE.getUnit_DisplayName();
        public static final EAttribute UNIT__FACTOR_SI_TO_UNIT = eINSTANCE.getUnit_FactorSiToUnit();
        public static final EAttribute UNIT__OFFSET_SI_TO_UNIT = eINSTANCE.getUnit_OffsetSiToUnit();
        public static final EReference UNIT__PHYSICAL_DIMENSION = eINSTANCE.getUnit_PhysicalDimension();
    }
}

