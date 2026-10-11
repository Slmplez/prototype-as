/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EAttribute
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar40.swcomponent.measurementandcalibration.interpolationroutinemappingset;

import autosar40.swcomponent.measurementandcalibration.interpolationroutinemappingset.InterpolationroutinemappingsetFactory;
import autosar40.swcomponent.measurementandcalibration.interpolationroutinemappingset.impl.InterpolationroutinemappingsetPackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface InterpolationroutinemappingsetPackage
extends EPackage {
    public static final String eNAME = "interpolationroutinemappingset";
    public static final String eNS_URI = "http://autosar.org/schema/r4.0/autosar40/swc/mac/irms";
    public static final String eNS_PREFIX = "";
    public static final InterpolationroutinemappingsetPackage eINSTANCE = InterpolationroutinemappingsetPackageImpl.init();
    public static final int INTERPOLATION_ROUTINE = 0;
    public static final int INTERPOLATION_ROUTINE__GCHECKSUM = 0;
    public static final int INTERPOLATION_ROUTINE__GTIMESTAMP = 1;
    public static final int INTERPOLATION_ROUTINE__CHECKSUM = 2;
    public static final int INTERPOLATION_ROUTINE__TIMESTAMP = 3;
    public static final int INTERPOLATION_ROUTINE__INTERPOLATION_ROUTINE_MAPPING = 4;
    public static final int INTERPOLATION_ROUTINE__SHORT_LABEL = 5;
    public static final int INTERPOLATION_ROUTINE__IS_DEFAULT = 6;
    public static final int INTERPOLATION_ROUTINE__INTERPOLATION_ROUTINE = 7;
    public static final int INTERPOLATION_ROUTINE_FEATURE_COUNT = 8;
    public static final int INTERPOLATION_ROUTINE_MAPPING = 1;
    public static final int INTERPOLATION_ROUTINE_MAPPING__GCHECKSUM = 0;
    public static final int INTERPOLATION_ROUTINE_MAPPING__GTIMESTAMP = 1;
    public static final int INTERPOLATION_ROUTINE_MAPPING__CHECKSUM = 2;
    public static final int INTERPOLATION_ROUTINE_MAPPING__TIMESTAMP = 3;
    public static final int INTERPOLATION_ROUTINE_MAPPING__INTERPOLATION_ROUTINE_MAPPING_SET = 4;
    public static final int INTERPOLATION_ROUTINE_MAPPING__INTERPOLATION_ROUTINES = 5;
    public static final int INTERPOLATION_ROUTINE_MAPPING__SW_RECORD_LAYOUT = 6;
    public static final int INTERPOLATION_ROUTINE_MAPPING_FEATURE_COUNT = 7;
    public static final int INTERPOLATION_ROUTINE_MAPPING_SET = 2;
    public static final int INTERPOLATION_ROUTINE_MAPPING_SET__GCHECKSUM = 0;
    public static final int INTERPOLATION_ROUTINE_MAPPING_SET__GTIMESTAMP = 1;
    public static final int INTERPOLATION_ROUTINE_MAPPING_SET__CHECKSUM = 2;
    public static final int INTERPOLATION_ROUTINE_MAPPING_SET__TIMESTAMP = 3;
    public static final int INTERPOLATION_ROUTINE_MAPPING_SET__GSHORT_NAME = 4;
    public static final int INTERPOLATION_ROUTINE_MAPPING_SET__SHORT_NAME = 5;
    public static final int INTERPOLATION_ROUTINE_MAPPING_SET__LONG_NAME = 6;
    public static final int INTERPOLATION_ROUTINE_MAPPING_SET__GUUID = 7;
    public static final int INTERPOLATION_ROUTINE_MAPPING_SET__GCATEGORY = 8;
    public static final int INTERPOLATION_ROUTINE_MAPPING_SET__GDESC = 9;
    public static final int INTERPOLATION_ROUTINE_MAPPING_SET__DESC = 10;
    public static final int INTERPOLATION_ROUTINE_MAPPING_SET__CATEGORY = 11;
    public static final int INTERPOLATION_ROUTINE_MAPPING_SET__ADMIN_DATA = 12;
    public static final int INTERPOLATION_ROUTINE_MAPPING_SET__INTRODUCTION = 13;
    public static final int INTERPOLATION_ROUTINE_MAPPING_SET__ANNOTATIONS = 14;
    public static final int INTERPOLATION_ROUTINE_MAPPING_SET__UUID = 15;
    public static final int INTERPOLATION_ROUTINE_MAPPING_SET__ALL_EXTENSIONS = 16;
    public static final int INTERPOLATION_ROUTINE_MAPPING_SET__CONTAINED_EXTENSIONS = 17;
    public static final int INTERPOLATION_ROUTINE_MAPPING_SET__GAR_PACKAGE = 18;
    public static final int INTERPOLATION_ROUTINE_MAPPING_SET__AR_PACKAGE = 19;
    public static final int INTERPOLATION_ROUTINE_MAPPING_SET__VARIATION_POINT = 20;
    public static final int INTERPOLATION_ROUTINE_MAPPING_SET__INTERPOLATION_ROUTINE_MAPPINGS = 21;
    public static final int INTERPOLATION_ROUTINE_MAPPING_SET_FEATURE_COUNT = 22;

    public EClass getInterpolationRoutine();

    public EReference getInterpolationRoutine_InterpolationRoutineMapping();

    public EAttribute getInterpolationRoutine_ShortLabel();

    public EAttribute getInterpolationRoutine_IsDefault();

    public EReference getInterpolationRoutine_InterpolationRoutine();

    public EClass getInterpolationRoutineMapping();

    public EReference getInterpolationRoutineMapping_InterpolationRoutineMappingSet();

    public EReference getInterpolationRoutineMapping_InterpolationRoutines();

    public EReference getInterpolationRoutineMapping_SwRecordLayout();

    public EClass getInterpolationRoutineMappingSet();

    public EReference getInterpolationRoutineMappingSet_InterpolationRoutineMappings();

    public InterpolationroutinemappingsetFactory getInterpolationroutinemappingsetFactory();

    public static interface Literals {
        public static final EClass INTERPOLATION_ROUTINE = eINSTANCE.getInterpolationRoutine();
        public static final EReference INTERPOLATION_ROUTINE__INTERPOLATION_ROUTINE_MAPPING = eINSTANCE.getInterpolationRoutine_InterpolationRoutineMapping();
        public static final EAttribute INTERPOLATION_ROUTINE__SHORT_LABEL = eINSTANCE.getInterpolationRoutine_ShortLabel();
        public static final EAttribute INTERPOLATION_ROUTINE__IS_DEFAULT = eINSTANCE.getInterpolationRoutine_IsDefault();
        public static final EReference INTERPOLATION_ROUTINE__INTERPOLATION_ROUTINE = eINSTANCE.getInterpolationRoutine_InterpolationRoutine();
        public static final EClass INTERPOLATION_ROUTINE_MAPPING = eINSTANCE.getInterpolationRoutineMapping();
        public static final EReference INTERPOLATION_ROUTINE_MAPPING__INTERPOLATION_ROUTINE_MAPPING_SET = eINSTANCE.getInterpolationRoutineMapping_InterpolationRoutineMappingSet();
        public static final EReference INTERPOLATION_ROUTINE_MAPPING__INTERPOLATION_ROUTINES = eINSTANCE.getInterpolationRoutineMapping_InterpolationRoutines();
        public static final EReference INTERPOLATION_ROUTINE_MAPPING__SW_RECORD_LAYOUT = eINSTANCE.getInterpolationRoutineMapping_SwRecordLayout();
        public static final EClass INTERPOLATION_ROUTINE_MAPPING_SET = eINSTANCE.getInterpolationRoutineMappingSet();
        public static final EReference INTERPOLATION_ROUTINE_MAPPING_SET__INTERPOLATION_ROUTINE_MAPPINGS = eINSTANCE.getInterpolationRoutineMappingSet_InterpolationRoutineMappings();
    }
}

