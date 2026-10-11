/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EAttribute
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EEnum
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar40.commonstructure.globalconstraints;

import autosar40.commonstructure.globalconstraints.GlobalconstraintsFactory;
import autosar40.commonstructure.globalconstraints.impl.GlobalconstraintsPackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EEnum;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface GlobalconstraintsPackage
extends EPackage {
    public static final String eNAME = "globalconstraints";
    public static final String eNS_URI = "http://autosar.org/schema/r4.0/autosar40/cs/gc";
    public static final String eNS_PREFIX = "";
    public static final GlobalconstraintsPackage eINSTANCE = GlobalconstraintsPackageImpl.init();
    public static final int DATA_CONSTR_RULE = 0;
    public static final int DATA_CONSTR_RULE__GCHECKSUM = 0;
    public static final int DATA_CONSTR_RULE__GTIMESTAMP = 1;
    public static final int DATA_CONSTR_RULE__CHECKSUM = 2;
    public static final int DATA_CONSTR_RULE__TIMESTAMP = 3;
    public static final int DATA_CONSTR_RULE__DATA_CONSTR = 4;
    public static final int DATA_CONSTR_RULE__CONSTR_LEVEL = 5;
    public static final int DATA_CONSTR_RULE__PHYS_CONSTRS = 6;
    public static final int DATA_CONSTR_RULE__INTERNAL_CONSTRS = 7;
    public static final int DATA_CONSTR_RULE_FEATURE_COUNT = 8;
    public static final int INTERNAL_CONSTRS = 1;
    public static final int INTERNAL_CONSTRS__GCHECKSUM = 0;
    public static final int INTERNAL_CONSTRS__GTIMESTAMP = 1;
    public static final int INTERNAL_CONSTRS__CHECKSUM = 2;
    public static final int INTERNAL_CONSTRS__TIMESTAMP = 3;
    public static final int INTERNAL_CONSTRS__DATA_CONSTR_RULE = 4;
    public static final int INTERNAL_CONSTRS__LOWER_LIMIT = 5;
    public static final int INTERNAL_CONSTRS__UPPER_LIMIT = 6;
    public static final int INTERNAL_CONSTRS__SCALE_CONSTRS = 7;
    public static final int INTERNAL_CONSTRS__MAX_GRADIENT = 8;
    public static final int INTERNAL_CONSTRS__MAX_DIFF = 9;
    public static final int INTERNAL_CONSTRS__MONOTONY = 10;
    public static final int INTERNAL_CONSTRS_FEATURE_COUNT = 11;
    public static final int SCALE_CONSTR = 2;
    public static final int SCALE_CONSTR__GCHECKSUM = 0;
    public static final int SCALE_CONSTR__GTIMESTAMP = 1;
    public static final int SCALE_CONSTR__CHECKSUM = 2;
    public static final int SCALE_CONSTR__TIMESTAMP = 3;
    public static final int SCALE_CONSTR__VALIDITY = 4;
    public static final int SCALE_CONSTR__SHORT_LABEL = 5;
    public static final int SCALE_CONSTR__DESC = 6;
    public static final int SCALE_CONSTR__LOWER_LIMIT = 7;
    public static final int SCALE_CONSTR__UPPER_LIMIT = 8;
    public static final int SCALE_CONSTR_FEATURE_COUNT = 9;
    public static final int PHYS_CONSTRS = 3;
    public static final int PHYS_CONSTRS__GCHECKSUM = 0;
    public static final int PHYS_CONSTRS__GTIMESTAMP = 1;
    public static final int PHYS_CONSTRS__CHECKSUM = 2;
    public static final int PHYS_CONSTRS__TIMESTAMP = 3;
    public static final int PHYS_CONSTRS__DATA_CONSTR_RULE = 4;
    public static final int PHYS_CONSTRS__LOWER_LIMIT = 5;
    public static final int PHYS_CONSTRS__UPPER_LIMIT = 6;
    public static final int PHYS_CONSTRS__SCALE_CONSTRS = 7;
    public static final int PHYS_CONSTRS__MAX_GRADIENT = 8;
    public static final int PHYS_CONSTRS__MAX_DIFF = 9;
    public static final int PHYS_CONSTRS__MONOTONY = 10;
    public static final int PHYS_CONSTRS__UNIT = 11;
    public static final int PHYS_CONSTRS_FEATURE_COUNT = 12;
    public static final int SCALE_CONSTRS = 4;
    public static final int SCALE_CONSTRS__GCHECKSUM = 0;
    public static final int SCALE_CONSTRS__GTIMESTAMP = 1;
    public static final int SCALE_CONSTRS__CHECKSUM = 2;
    public static final int SCALE_CONSTRS__TIMESTAMP = 3;
    public static final int SCALE_CONSTRS__SCALE_CONSTRS = 4;
    public static final int SCALE_CONSTRS_FEATURE_COUNT = 5;
    public static final int DATA_CONSTR = 5;
    public static final int DATA_CONSTR__GCHECKSUM = 0;
    public static final int DATA_CONSTR__GTIMESTAMP = 1;
    public static final int DATA_CONSTR__CHECKSUM = 2;
    public static final int DATA_CONSTR__TIMESTAMP = 3;
    public static final int DATA_CONSTR__GSHORT_NAME = 4;
    public static final int DATA_CONSTR__SHORT_NAME = 5;
    public static final int DATA_CONSTR__LONG_NAME = 6;
    public static final int DATA_CONSTR__GUUID = 7;
    public static final int DATA_CONSTR__GCATEGORY = 8;
    public static final int DATA_CONSTR__GDESC = 9;
    public static final int DATA_CONSTR__DESC = 10;
    public static final int DATA_CONSTR__CATEGORY = 11;
    public static final int DATA_CONSTR__ADMIN_DATA = 12;
    public static final int DATA_CONSTR__INTRODUCTION = 13;
    public static final int DATA_CONSTR__ANNOTATIONS = 14;
    public static final int DATA_CONSTR__UUID = 15;
    public static final int DATA_CONSTR__ALL_EXTENSIONS = 16;
    public static final int DATA_CONSTR__CONTAINED_EXTENSIONS = 17;
    public static final int DATA_CONSTR__GAR_PACKAGE = 18;
    public static final int DATA_CONSTR__AR_PACKAGE = 19;
    public static final int DATA_CONSTR__VARIATION_POINT = 20;
    public static final int DATA_CONSTR__SHORT_NAME_PATTERN = 21;
    public static final int DATA_CONSTR__DATA_CONSTR_RULES = 22;
    public static final int DATA_CONSTR_FEATURE_COUNT = 23;
    public static final int SCALE_CONSTR_VALIDITY_ENUM = 6;

    public EClass getDataConstrRule();

    public EReference getDataConstrRule_DataConstr();

    public EAttribute getDataConstrRule_ConstrLevel();

    public EReference getDataConstrRule_PhysConstrs();

    public EReference getDataConstrRule_InternalConstrs();

    public EClass getInternalConstrs();

    public EReference getInternalConstrs_DataConstrRule();

    public EReference getInternalConstrs_LowerLimit();

    public EReference getInternalConstrs_UpperLimit();

    public EReference getInternalConstrs_ScaleConstrs();

    public EAttribute getInternalConstrs_MaxGradient();

    public EAttribute getInternalConstrs_MaxDiff();

    public EAttribute getInternalConstrs_Monotony();

    public EClass getScaleConstr();

    public EAttribute getScaleConstr_Validity();

    public EAttribute getScaleConstr_ShortLabel();

    public EReference getScaleConstr_Desc();

    public EReference getScaleConstr_LowerLimit();

    public EReference getScaleConstr_UpperLimit();

    public EClass getPhysConstrs();

    public EReference getPhysConstrs_DataConstrRule();

    public EReference getPhysConstrs_LowerLimit();

    public EReference getPhysConstrs_UpperLimit();

    public EReference getPhysConstrs_ScaleConstrs();

    public EAttribute getPhysConstrs_MaxGradient();

    public EAttribute getPhysConstrs_MaxDiff();

    public EAttribute getPhysConstrs_Monotony();

    public EReference getPhysConstrs_Unit();

    public EClass getScaleConstrs();

    public EReference getScaleConstrs_ScaleConstrs();

    public EClass getDataConstr();

    public EReference getDataConstr_DataConstrRules();

    public EEnum getScaleConstrValidityEnum();

    public GlobalconstraintsFactory getGlobalconstraintsFactory();

    public static interface Literals {
        public static final EClass DATA_CONSTR_RULE = eINSTANCE.getDataConstrRule();
        public static final EReference DATA_CONSTR_RULE__DATA_CONSTR = eINSTANCE.getDataConstrRule_DataConstr();
        public static final EAttribute DATA_CONSTR_RULE__CONSTR_LEVEL = eINSTANCE.getDataConstrRule_ConstrLevel();
        public static final EReference DATA_CONSTR_RULE__PHYS_CONSTRS = eINSTANCE.getDataConstrRule_PhysConstrs();
        public static final EReference DATA_CONSTR_RULE__INTERNAL_CONSTRS = eINSTANCE.getDataConstrRule_InternalConstrs();
        public static final EClass INTERNAL_CONSTRS = eINSTANCE.getInternalConstrs();
        public static final EReference INTERNAL_CONSTRS__DATA_CONSTR_RULE = eINSTANCE.getInternalConstrs_DataConstrRule();
        public static final EReference INTERNAL_CONSTRS__LOWER_LIMIT = eINSTANCE.getInternalConstrs_LowerLimit();
        public static final EReference INTERNAL_CONSTRS__UPPER_LIMIT = eINSTANCE.getInternalConstrs_UpperLimit();
        public static final EReference INTERNAL_CONSTRS__SCALE_CONSTRS = eINSTANCE.getInternalConstrs_ScaleConstrs();
        public static final EAttribute INTERNAL_CONSTRS__MAX_GRADIENT = eINSTANCE.getInternalConstrs_MaxGradient();
        public static final EAttribute INTERNAL_CONSTRS__MAX_DIFF = eINSTANCE.getInternalConstrs_MaxDiff();
        public static final EAttribute INTERNAL_CONSTRS__MONOTONY = eINSTANCE.getInternalConstrs_Monotony();
        public static final EClass SCALE_CONSTR = eINSTANCE.getScaleConstr();
        public static final EAttribute SCALE_CONSTR__VALIDITY = eINSTANCE.getScaleConstr_Validity();
        public static final EAttribute SCALE_CONSTR__SHORT_LABEL = eINSTANCE.getScaleConstr_ShortLabel();
        public static final EReference SCALE_CONSTR__DESC = eINSTANCE.getScaleConstr_Desc();
        public static final EReference SCALE_CONSTR__LOWER_LIMIT = eINSTANCE.getScaleConstr_LowerLimit();
        public static final EReference SCALE_CONSTR__UPPER_LIMIT = eINSTANCE.getScaleConstr_UpperLimit();
        public static final EClass PHYS_CONSTRS = eINSTANCE.getPhysConstrs();
        public static final EReference PHYS_CONSTRS__DATA_CONSTR_RULE = eINSTANCE.getPhysConstrs_DataConstrRule();
        public static final EReference PHYS_CONSTRS__LOWER_LIMIT = eINSTANCE.getPhysConstrs_LowerLimit();
        public static final EReference PHYS_CONSTRS__UPPER_LIMIT = eINSTANCE.getPhysConstrs_UpperLimit();
        public static final EReference PHYS_CONSTRS__SCALE_CONSTRS = eINSTANCE.getPhysConstrs_ScaleConstrs();
        public static final EAttribute PHYS_CONSTRS__MAX_GRADIENT = eINSTANCE.getPhysConstrs_MaxGradient();
        public static final EAttribute PHYS_CONSTRS__MAX_DIFF = eINSTANCE.getPhysConstrs_MaxDiff();
        public static final EAttribute PHYS_CONSTRS__MONOTONY = eINSTANCE.getPhysConstrs_Monotony();
        public static final EReference PHYS_CONSTRS__UNIT = eINSTANCE.getPhysConstrs_Unit();
        public static final EClass SCALE_CONSTRS = eINSTANCE.getScaleConstrs();
        public static final EReference SCALE_CONSTRS__SCALE_CONSTRS = eINSTANCE.getScaleConstrs_ScaleConstrs();
        public static final EClass DATA_CONSTR = eINSTANCE.getDataConstr();
        public static final EReference DATA_CONSTR__DATA_CONSTR_RULES = eINSTANCE.getDataConstr_DataConstrRules();
        public static final EEnum SCALE_CONSTR_VALIDITY_ENUM = eINSTANCE.getScaleConstrValidityEnum();
    }
}

