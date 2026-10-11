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
package autosar21.swcomponent.measurementandcalibration.globalconstraints;

import autosar21.swcomponent.measurementandcalibration.globalconstraints.GlobalconstraintsFactory;
import autosar21.swcomponent.measurementandcalibration.globalconstraints.impl.GlobalconstraintsPackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EEnum;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface GlobalconstraintsPackage
extends EPackage {
    public static final String eNAME = "globalconstraints";
    public static final String eNS_URI = "http://autosar.org/2.1.5/autosar21/swc/mac/gc";
    public static final String eNS_PREFIX = "";
    public static final GlobalconstraintsPackage eINSTANCE = GlobalconstraintsPackageImpl.init();
    public static final int DATA_CONSTR_RULE = 0;
    public static final int DATA_CONSTR_RULE__GCHECKSUM = 0;
    public static final int DATA_CONSTR_RULE__GTIMESTAMP = 1;
    public static final int DATA_CONSTR_RULE__CHECKSUM = 2;
    public static final int DATA_CONSTR_RULE__TIMESTAMP = 3;
    public static final int DATA_CONSTR_RULE__DATA_CONSTR = 4;
    public static final int DATA_CONSTR_RULE__PHYS_CONSTRS = 5;
    public static final int DATA_CONSTR_RULE__INTERNAL_CONSTRS = 6;
    public static final int DATA_CONSTR_RULE_FEATURE_COUNT = 7;
    public static final int PHYS_CONSTRS = 1;
    public static final int PHYS_CONSTRS__GCHECKSUM = 0;
    public static final int PHYS_CONSTRS__GTIMESTAMP = 1;
    public static final int PHYS_CONSTRS__CHECKSUM = 2;
    public static final int PHYS_CONSTRS__TIMESTAMP = 3;
    public static final int PHYS_CONSTRS__DATA_CONSTR_RULE = 4;
    public static final int PHYS_CONSTRS__LOWER_LIMIT = 5;
    public static final int PHYS_CONSTRS__UPPER_LIMIT = 6;
    public static final int PHYS_CONSTRS_FEATURE_COUNT = 7;
    public static final int INTERNAL_CONSTRS = 2;
    public static final int INTERNAL_CONSTRS__GCHECKSUM = 0;
    public static final int INTERNAL_CONSTRS__GTIMESTAMP = 1;
    public static final int INTERNAL_CONSTRS__CHECKSUM = 2;
    public static final int INTERNAL_CONSTRS__TIMESTAMP = 3;
    public static final int INTERNAL_CONSTRS__DATA_CONSTR_RULE = 4;
    public static final int INTERNAL_CONSTRS__LOWER_LIMIT = 5;
    public static final int INTERNAL_CONSTRS__UPPER_LIMIT = 6;
    public static final int INTERNAL_CONSTRS_FEATURE_COUNT = 7;
    public static final int SCALE_CONSTR = 3;
    public static final int SCALE_CONSTR__GCHECKSUM = 0;
    public static final int SCALE_CONSTR__GTIMESTAMP = 1;
    public static final int SCALE_CONSTR__CHECKSUM = 2;
    public static final int SCALE_CONSTR__TIMESTAMP = 3;
    public static final int SCALE_CONSTR__SCALE_CONSTRS = 4;
    public static final int SCALE_CONSTR__VALIDITY = 5;
    public static final int SCALE_CONSTR__SHORT_LABEL = 6;
    public static final int SCALE_CONSTR__DESC = 7;
    public static final int SCALE_CONSTR__LOWER_LIMIT = 8;
    public static final int SCALE_CONSTR__UPPER_LIMIT = 9;
    public static final int SCALE_CONSTR_FEATURE_COUNT = 10;
    public static final int SCALE_CONSTRS = 4;
    public static final int SCALE_CONSTRS__GCHECKSUM = 0;
    public static final int SCALE_CONSTRS__GTIMESTAMP = 1;
    public static final int SCALE_CONSTRS__CHECKSUM = 2;
    public static final int SCALE_CONSTRS__TIMESTAMP = 3;
    public static final int SCALE_CONSTRS__SCALE_CONSTRS = 4;
    public static final int SCALE_CONSTRS_FEATURE_COUNT = 5;
    public static final int SW_CONSTR_OBJECTS = 5;
    public static final int SW_CONSTR_OBJECTS__GCHECKSUM = 0;
    public static final int SW_CONSTR_OBJECTS__GTIMESTAMP = 1;
    public static final int SW_CONSTR_OBJECTS__CHECKSUM = 2;
    public static final int SW_CONSTR_OBJECTS__TIMESTAMP = 3;
    public static final int SW_CONSTR_OBJECTS_FEATURE_COUNT = 4;
    public static final int DATA_CONSTR = 6;
    public static final int DATA_CONSTR__GCHECKSUM = 0;
    public static final int DATA_CONSTR__GTIMESTAMP = 1;
    public static final int DATA_CONSTR__CHECKSUM = 2;
    public static final int DATA_CONSTR__TIMESTAMP = 3;
    public static final int DATA_CONSTR__GSHORT_NAME = 4;
    public static final int DATA_CONSTR__GUUID = 5;
    public static final int DATA_CONSTR__GCATEGORY = 6;
    public static final int DATA_CONSTR__GDESC = 7;
    public static final int DATA_CONSTR__SHORT_NAME = 8;
    public static final int DATA_CONSTR__LONG_NAME = 9;
    public static final int DATA_CONSTR__DESC = 10;
    public static final int DATA_CONSTR__CATEGORY = 11;
    public static final int DATA_CONSTR__ADMIN_DATA = 12;
    public static final int DATA_CONSTR__UUID = 13;
    public static final int DATA_CONSTR__ALL_EXTENSIONS = 14;
    public static final int DATA_CONSTR__CONTAINED_EXTENSIONS = 15;
    public static final int DATA_CONSTR__GAR_PACKAGE = 16;
    public static final int DATA_CONSTR__AR_PACKAGE = 17;
    public static final int DATA_CONSTR__DATA_CONSTR_RULES = 18;
    public static final int DATA_CONSTR_FEATURE_COUNT = 19;
    public static final int SCALE_CONSTR_VALIDITY_ENUM = 7;

    public EClass getDataConstrRule();

    public EReference getDataConstrRule_DataConstr();

    public EReference getDataConstrRule_PhysConstrs();

    public EReference getDataConstrRule_InternalConstrs();

    public EClass getPhysConstrs();

    public EReference getPhysConstrs_DataConstrRule();

    public EReference getPhysConstrs_LowerLimit();

    public EReference getPhysConstrs_UpperLimit();

    public EClass getInternalConstrs();

    public EReference getInternalConstrs_DataConstrRule();

    public EReference getInternalConstrs_LowerLimit();

    public EReference getInternalConstrs_UpperLimit();

    public EClass getScaleConstr();

    public EReference getScaleConstr_ScaleConstrs();

    public EAttribute getScaleConstr_Validity();

    public EAttribute getScaleConstr_ShortLabel();

    public EReference getScaleConstr_Desc();

    public EReference getScaleConstr_LowerLimit();

    public EReference getScaleConstr_UpperLimit();

    public EClass getScaleConstrs();

    public EReference getScaleConstrs_ScaleConstrs();

    public EClass getSwConstrObjects();

    public EClass getDataConstr();

    public EReference getDataConstr_DataConstrRules();

    public EEnum getScaleConstrValidityEnum();

    public GlobalconstraintsFactory getGlobalconstraintsFactory();

    public static interface Literals {
        public static final EClass DATA_CONSTR_RULE = eINSTANCE.getDataConstrRule();
        public static final EReference DATA_CONSTR_RULE__DATA_CONSTR = eINSTANCE.getDataConstrRule_DataConstr();
        public static final EReference DATA_CONSTR_RULE__PHYS_CONSTRS = eINSTANCE.getDataConstrRule_PhysConstrs();
        public static final EReference DATA_CONSTR_RULE__INTERNAL_CONSTRS = eINSTANCE.getDataConstrRule_InternalConstrs();
        public static final EClass PHYS_CONSTRS = eINSTANCE.getPhysConstrs();
        public static final EReference PHYS_CONSTRS__DATA_CONSTR_RULE = eINSTANCE.getPhysConstrs_DataConstrRule();
        public static final EReference PHYS_CONSTRS__LOWER_LIMIT = eINSTANCE.getPhysConstrs_LowerLimit();
        public static final EReference PHYS_CONSTRS__UPPER_LIMIT = eINSTANCE.getPhysConstrs_UpperLimit();
        public static final EClass INTERNAL_CONSTRS = eINSTANCE.getInternalConstrs();
        public static final EReference INTERNAL_CONSTRS__DATA_CONSTR_RULE = eINSTANCE.getInternalConstrs_DataConstrRule();
        public static final EReference INTERNAL_CONSTRS__LOWER_LIMIT = eINSTANCE.getInternalConstrs_LowerLimit();
        public static final EReference INTERNAL_CONSTRS__UPPER_LIMIT = eINSTANCE.getInternalConstrs_UpperLimit();
        public static final EClass SCALE_CONSTR = eINSTANCE.getScaleConstr();
        public static final EReference SCALE_CONSTR__SCALE_CONSTRS = eINSTANCE.getScaleConstr_ScaleConstrs();
        public static final EAttribute SCALE_CONSTR__VALIDITY = eINSTANCE.getScaleConstr_Validity();
        public static final EAttribute SCALE_CONSTR__SHORT_LABEL = eINSTANCE.getScaleConstr_ShortLabel();
        public static final EReference SCALE_CONSTR__DESC = eINSTANCE.getScaleConstr_Desc();
        public static final EReference SCALE_CONSTR__LOWER_LIMIT = eINSTANCE.getScaleConstr_LowerLimit();
        public static final EReference SCALE_CONSTR__UPPER_LIMIT = eINSTANCE.getScaleConstr_UpperLimit();
        public static final EClass SCALE_CONSTRS = eINSTANCE.getScaleConstrs();
        public static final EReference SCALE_CONSTRS__SCALE_CONSTRS = eINSTANCE.getScaleConstrs_ScaleConstrs();
        public static final EClass SW_CONSTR_OBJECTS = eINSTANCE.getSwConstrObjects();
        public static final EClass DATA_CONSTR = eINSTANCE.getDataConstr();
        public static final EReference DATA_CONSTR__DATA_CONSTR_RULES = eINSTANCE.getDataConstr_DataConstrRules();
        public static final EEnum SCALE_CONSTR_VALIDITY_ENUM = eINSTANCE.getScaleConstrValidityEnum();
    }
}

