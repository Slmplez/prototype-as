/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EAttribute
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar40.swcomponent.datatype.units;

import autosar40.swcomponent.datatype.units.UnitsFactory;
import autosar40.swcomponent.datatype.units.impl.UnitsPackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface UnitsPackage
extends EPackage {
    public static final String eNAME = "units";
    public static final String eNS_URI = "http://autosar.org/schema/r4.0/autosar40/swc/d/u";
    public static final String eNS_PREFIX = "";
    public static final UnitsPackage eINSTANCE = UnitsPackageImpl.init();
    public static final int PHYSICAL_DIMENSION = 0;
    public static final int PHYSICAL_DIMENSION__GCHECKSUM = 0;
    public static final int PHYSICAL_DIMENSION__GTIMESTAMP = 1;
    public static final int PHYSICAL_DIMENSION__CHECKSUM = 2;
    public static final int PHYSICAL_DIMENSION__TIMESTAMP = 3;
    public static final int PHYSICAL_DIMENSION__GSHORT_NAME = 4;
    public static final int PHYSICAL_DIMENSION__SHORT_NAME = 5;
    public static final int PHYSICAL_DIMENSION__LONG_NAME = 6;
    public static final int PHYSICAL_DIMENSION__GUUID = 7;
    public static final int PHYSICAL_DIMENSION__GCATEGORY = 8;
    public static final int PHYSICAL_DIMENSION__GDESC = 9;
    public static final int PHYSICAL_DIMENSION__DESC = 10;
    public static final int PHYSICAL_DIMENSION__CATEGORY = 11;
    public static final int PHYSICAL_DIMENSION__ADMIN_DATA = 12;
    public static final int PHYSICAL_DIMENSION__INTRODUCTION = 13;
    public static final int PHYSICAL_DIMENSION__ANNOTATIONS = 14;
    public static final int PHYSICAL_DIMENSION__UUID = 15;
    public static final int PHYSICAL_DIMENSION__ALL_EXTENSIONS = 16;
    public static final int PHYSICAL_DIMENSION__CONTAINED_EXTENSIONS = 17;
    public static final int PHYSICAL_DIMENSION__GAR_PACKAGE = 18;
    public static final int PHYSICAL_DIMENSION__AR_PACKAGE = 19;
    public static final int PHYSICAL_DIMENSION__VARIATION_POINT = 20;
    public static final int PHYSICAL_DIMENSION__GCURRENT_EXP = 21;
    public static final int PHYSICAL_DIMENSION__GLENGTH_EXP = 22;
    public static final int PHYSICAL_DIMENSION__GLUMINOUS_INTENSITY_EXP = 23;
    public static final int PHYSICAL_DIMENSION__GMASS_EXP = 24;
    public static final int PHYSICAL_DIMENSION__GMOLAR_AMOUNT_EXP = 25;
    public static final int PHYSICAL_DIMENSION__GTEMPERATURE_EXP = 26;
    public static final int PHYSICAL_DIMENSION__GTIME_EXP = 27;
    public static final int PHYSICAL_DIMENSION__LENGTH_EXP = 28;
    public static final int PHYSICAL_DIMENSION__MASS_EXP = 29;
    public static final int PHYSICAL_DIMENSION__TIME_EXP = 30;
    public static final int PHYSICAL_DIMENSION__CURRENT_EXP = 31;
    public static final int PHYSICAL_DIMENSION__TEMPERATURE_EXP = 32;
    public static final int PHYSICAL_DIMENSION__MOLAR_AMOUNT_EXP = 33;
    public static final int PHYSICAL_DIMENSION__LUMINOUS_INTENSITY_EXP = 34;
    public static final int PHYSICAL_DIMENSION_FEATURE_COUNT = 35;
    public static final int UNIT_GROUP = 1;
    public static final int UNIT_GROUP__GCHECKSUM = 0;
    public static final int UNIT_GROUP__GTIMESTAMP = 1;
    public static final int UNIT_GROUP__CHECKSUM = 2;
    public static final int UNIT_GROUP__TIMESTAMP = 3;
    public static final int UNIT_GROUP__GSHORT_NAME = 4;
    public static final int UNIT_GROUP__SHORT_NAME = 5;
    public static final int UNIT_GROUP__LONG_NAME = 6;
    public static final int UNIT_GROUP__GUUID = 7;
    public static final int UNIT_GROUP__GCATEGORY = 8;
    public static final int UNIT_GROUP__GDESC = 9;
    public static final int UNIT_GROUP__DESC = 10;
    public static final int UNIT_GROUP__CATEGORY = 11;
    public static final int UNIT_GROUP__ADMIN_DATA = 12;
    public static final int UNIT_GROUP__INTRODUCTION = 13;
    public static final int UNIT_GROUP__ANNOTATIONS = 14;
    public static final int UNIT_GROUP__UUID = 15;
    public static final int UNIT_GROUP__ALL_EXTENSIONS = 16;
    public static final int UNIT_GROUP__CONTAINED_EXTENSIONS = 17;
    public static final int UNIT_GROUP__GAR_PACKAGE = 18;
    public static final int UNIT_GROUP__AR_PACKAGE = 19;
    public static final int UNIT_GROUP__VARIATION_POINT = 20;
    public static final int UNIT_GROUP__UNITS = 21;
    public static final int UNIT_GROUP_FEATURE_COUNT = 22;
    public static final int UNIT = 2;
    public static final int UNIT__GCHECKSUM = 0;
    public static final int UNIT__GTIMESTAMP = 1;
    public static final int UNIT__CHECKSUM = 2;
    public static final int UNIT__TIMESTAMP = 3;
    public static final int UNIT__GSHORT_NAME = 4;
    public static final int UNIT__SHORT_NAME = 5;
    public static final int UNIT__LONG_NAME = 6;
    public static final int UNIT__GUUID = 7;
    public static final int UNIT__GCATEGORY = 8;
    public static final int UNIT__GDESC = 9;
    public static final int UNIT__DESC = 10;
    public static final int UNIT__CATEGORY = 11;
    public static final int UNIT__ADMIN_DATA = 12;
    public static final int UNIT__INTRODUCTION = 13;
    public static final int UNIT__ANNOTATIONS = 14;
    public static final int UNIT__UUID = 15;
    public static final int UNIT__ALL_EXTENSIONS = 16;
    public static final int UNIT__CONTAINED_EXTENSIONS = 17;
    public static final int UNIT__GAR_PACKAGE = 18;
    public static final int UNIT__AR_PACKAGE = 19;
    public static final int UNIT__VARIATION_POINT = 20;
    public static final int UNIT__GPHYSICAL_DIMENSION = 21;
    public static final int UNIT__GFACTOR_SI_TO_UNIT = 22;
    public static final int UNIT__GOFFSET_SI_TO_UNIT = 23;
    public static final int UNIT__DISPLAY_NAME = 24;
    public static final int UNIT__FACTOR_SI_TO_UNIT = 25;
    public static final int UNIT__OFFSET_SI_TO_UNIT = 26;
    public static final int UNIT__PHYSICAL_DIMENSION = 27;
    public static final int UNIT_FEATURE_COUNT = 28;

    public EClass getPhysicalDimension();

    public EAttribute getPhysicalDimension_LengthExp();

    public EAttribute getPhysicalDimension_MassExp();

    public EAttribute getPhysicalDimension_TimeExp();

    public EAttribute getPhysicalDimension_CurrentExp();

    public EAttribute getPhysicalDimension_TemperatureExp();

    public EAttribute getPhysicalDimension_MolarAmountExp();

    public EAttribute getPhysicalDimension_LuminousIntensityExp();

    public EClass getUnitGroup();

    public EReference getUnitGroup_Units();

    public EClass getUnit();

    public EReference getUnit_DisplayName();

    public EAttribute getUnit_FactorSiToUnit();

    public EAttribute getUnit_OffsetSiToUnit();

    public EReference getUnit_PhysicalDimension();

    public UnitsFactory getUnitsFactory();

    public static interface Literals {
        public static final EClass PHYSICAL_DIMENSION = eINSTANCE.getPhysicalDimension();
        public static final EAttribute PHYSICAL_DIMENSION__LENGTH_EXP = eINSTANCE.getPhysicalDimension_LengthExp();
        public static final EAttribute PHYSICAL_DIMENSION__MASS_EXP = eINSTANCE.getPhysicalDimension_MassExp();
        public static final EAttribute PHYSICAL_DIMENSION__TIME_EXP = eINSTANCE.getPhysicalDimension_TimeExp();
        public static final EAttribute PHYSICAL_DIMENSION__CURRENT_EXP = eINSTANCE.getPhysicalDimension_CurrentExp();
        public static final EAttribute PHYSICAL_DIMENSION__TEMPERATURE_EXP = eINSTANCE.getPhysicalDimension_TemperatureExp();
        public static final EAttribute PHYSICAL_DIMENSION__MOLAR_AMOUNT_EXP = eINSTANCE.getPhysicalDimension_MolarAmountExp();
        public static final EAttribute PHYSICAL_DIMENSION__LUMINOUS_INTENSITY_EXP = eINSTANCE.getPhysicalDimension_LuminousIntensityExp();
        public static final EClass UNIT_GROUP = eINSTANCE.getUnitGroup();
        public static final EReference UNIT_GROUP__UNITS = eINSTANCE.getUnitGroup_Units();
        public static final EClass UNIT = eINSTANCE.getUnit();
        public static final EReference UNIT__DISPLAY_NAME = eINSTANCE.getUnit_DisplayName();
        public static final EAttribute UNIT__FACTOR_SI_TO_UNIT = eINSTANCE.getUnit_FactorSiToUnit();
        public static final EAttribute UNIT__OFFSET_SI_TO_UNIT = eINSTANCE.getUnit_OffsetSiToUnit();
        public static final EReference UNIT__PHYSICAL_DIMENSION = eINSTANCE.getUnit_PhysicalDimension();
    }
}

