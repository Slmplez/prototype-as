/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EAttribute
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package gautosar.gswcomponents.gdatatype.gunits;

import gautosar.gswcomponents.gdatatype.gunits.GunitsFactory;
import gautosar.gswcomponents.gdatatype.gunits.impl.GunitsPackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface GunitsPackage
extends EPackage {
    public static final String eNAME = "gunits";
    public static final String eNS_URI = "http://artop.org/gautosar/swc/d/u";
    public static final String eNS_PREFIX = "null";
    public static final GunitsPackage eINSTANCE = GunitsPackageImpl.init();
    public static final int GUNIT = 0;
    public static final int GUNIT__GCHECKSUM = 0;
    public static final int GUNIT__GTIMESTAMP = 1;
    public static final int GUNIT__GSHORT_NAME = 2;
    public static final int GUNIT__GUUID = 3;
    public static final int GUNIT__GCATEGORY = 4;
    public static final int GUNIT__GDESC = 5;
    public static final int GUNIT__GAR_PACKAGE = 6;
    public static final int GUNIT__GPHYSICAL_DIMENSION = 7;
    public static final int GUNIT__GFACTOR_SI_TO_UNIT = 8;
    public static final int GUNIT__GOFFSET_SI_TO_UNIT = 9;
    public static final int GUNIT_FEATURE_COUNT = 10;
    public static final int GPHYSICAL_DIMENSION = 1;
    public static final int GPHYSICAL_DIMENSION__GCHECKSUM = 0;
    public static final int GPHYSICAL_DIMENSION__GTIMESTAMP = 1;
    public static final int GPHYSICAL_DIMENSION__GSHORT_NAME = 2;
    public static final int GPHYSICAL_DIMENSION__GUUID = 3;
    public static final int GPHYSICAL_DIMENSION__GCATEGORY = 4;
    public static final int GPHYSICAL_DIMENSION__GDESC = 5;
    public static final int GPHYSICAL_DIMENSION__GAR_PACKAGE = 6;
    public static final int GPHYSICAL_DIMENSION__GCURRENT_EXP = 7;
    public static final int GPHYSICAL_DIMENSION__GLENGTH_EXP = 8;
    public static final int GPHYSICAL_DIMENSION__GLUMINOUS_INTENSITY_EXP = 9;
    public static final int GPHYSICAL_DIMENSION__GMASS_EXP = 10;
    public static final int GPHYSICAL_DIMENSION__GMOLAR_AMOUNT_EXP = 11;
    public static final int GPHYSICAL_DIMENSION__GTEMPERATURE_EXP = 12;
    public static final int GPHYSICAL_DIMENSION__GTIME_EXP = 13;
    public static final int GPHYSICAL_DIMENSION_FEATURE_COUNT = 14;

    public EClass getGUnit();

    public EReference getGUnit_GPhysicalDimension();

    public EAttribute getGUnit_GFactorSiToUnit();

    public EAttribute getGUnit_GOffsetSiToUnit();

    public EClass getGPhysicalDimension();

    public EAttribute getGPhysicalDimension_GCurrentExp();

    public EAttribute getGPhysicalDimension_GLengthExp();

    public EAttribute getGPhysicalDimension_GLuminousIntensityExp();

    public EAttribute getGPhysicalDimension_GMassExp();

    public EAttribute getGPhysicalDimension_GMolarAmountExp();

    public EAttribute getGPhysicalDimension_GTemperatureExp();

    public EAttribute getGPhysicalDimension_GTimeExp();

    public GunitsFactory getGunitsFactory();

    public static interface Literals {
        public static final EClass GUNIT = eINSTANCE.getGUnit();
        public static final EReference GUNIT__GPHYSICAL_DIMENSION = eINSTANCE.getGUnit_GPhysicalDimension();
        public static final EAttribute GUNIT__GFACTOR_SI_TO_UNIT = eINSTANCE.getGUnit_GFactorSiToUnit();
        public static final EAttribute GUNIT__GOFFSET_SI_TO_UNIT = eINSTANCE.getGUnit_GOffsetSiToUnit();
        public static final EClass GPHYSICAL_DIMENSION = eINSTANCE.getGPhysicalDimension();
        public static final EAttribute GPHYSICAL_DIMENSION__GCURRENT_EXP = eINSTANCE.getGPhysicalDimension_GCurrentExp();
        public static final EAttribute GPHYSICAL_DIMENSION__GLENGTH_EXP = eINSTANCE.getGPhysicalDimension_GLengthExp();
        public static final EAttribute GPHYSICAL_DIMENSION__GLUMINOUS_INTENSITY_EXP = eINSTANCE.getGPhysicalDimension_GLuminousIntensityExp();
        public static final EAttribute GPHYSICAL_DIMENSION__GMASS_EXP = eINSTANCE.getGPhysicalDimension_GMassExp();
        public static final EAttribute GPHYSICAL_DIMENSION__GMOLAR_AMOUNT_EXP = eINSTANCE.getGPhysicalDimension_GMolarAmountExp();
        public static final EAttribute GPHYSICAL_DIMENSION__GTEMPERATURE_EXP = eINSTANCE.getGPhysicalDimension_GTemperatureExp();
        public static final EAttribute GPHYSICAL_DIMENSION__GTIME_EXP = eINSTANCE.getGPhysicalDimension_GTimeExp();
    }
}

