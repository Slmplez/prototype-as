/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EAttribute
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 */
package autosar3x.commonstructure.filter;

import autosar3x.commonstructure.filter.FilterFactory;
import autosar3x.commonstructure.filter.impl.FilterPackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;

public interface FilterPackage
extends EPackage {
    public static final String eNAME = "filter";
    public static final String eNS_URI = "http://autosar.org/3.2.1/autosar3x/cs/f";
    public static final String eNS_PREFIX = "";
    public static final FilterPackage eINSTANCE = FilterPackageImpl.init();
    public static final int DATA_FILTER = 1;
    public static final int DATA_FILTER__GCHECKSUM = 0;
    public static final int DATA_FILTER__GTIMESTAMP = 1;
    public static final int DATA_FILTER__CHECKSUM = 2;
    public static final int DATA_FILTER__TIMESTAMP = 3;
    public static final int DATA_FILTER_FEATURE_COUNT = 4;
    public static final int ALWAYS = 0;
    public static final int ALWAYS__GCHECKSUM = 0;
    public static final int ALWAYS__GTIMESTAMP = 1;
    public static final int ALWAYS__CHECKSUM = 2;
    public static final int ALWAYS__TIMESTAMP = 3;
    public static final int ALWAYS_FEATURE_COUNT = 4;
    public static final int MASKED_NEW_DIFFERS_MASKED_OLD = 2;
    public static final int MASKED_NEW_DIFFERS_MASKED_OLD__GCHECKSUM = 0;
    public static final int MASKED_NEW_DIFFERS_MASKED_OLD__GTIMESTAMP = 1;
    public static final int MASKED_NEW_DIFFERS_MASKED_OLD__CHECKSUM = 2;
    public static final int MASKED_NEW_DIFFERS_MASKED_OLD__TIMESTAMP = 3;
    public static final int MASKED_NEW_DIFFERS_MASKED_OLD__MASK = 4;
    public static final int MASKED_NEW_DIFFERS_MASKED_OLD_FEATURE_COUNT = 5;
    public static final int MASKED_NEW_DIFFERS_X = 3;
    public static final int MASKED_NEW_DIFFERS_X__GCHECKSUM = 0;
    public static final int MASKED_NEW_DIFFERS_X__GTIMESTAMP = 1;
    public static final int MASKED_NEW_DIFFERS_X__CHECKSUM = 2;
    public static final int MASKED_NEW_DIFFERS_X__TIMESTAMP = 3;
    public static final int MASKED_NEW_DIFFERS_X__MASK = 4;
    public static final int MASKED_NEW_DIFFERS_X__X = 5;
    public static final int MASKED_NEW_DIFFERS_X_FEATURE_COUNT = 6;
    public static final int MASKED_NEW_EQUALS_X = 4;
    public static final int MASKED_NEW_EQUALS_X__GCHECKSUM = 0;
    public static final int MASKED_NEW_EQUALS_X__GTIMESTAMP = 1;
    public static final int MASKED_NEW_EQUALS_X__CHECKSUM = 2;
    public static final int MASKED_NEW_EQUALS_X__TIMESTAMP = 3;
    public static final int MASKED_NEW_EQUALS_X__MASK = 4;
    public static final int MASKED_NEW_EQUALS_X__X = 5;
    public static final int MASKED_NEW_EQUALS_X_FEATURE_COUNT = 6;
    public static final int NEVER = 5;
    public static final int NEVER__GCHECKSUM = 0;
    public static final int NEVER__GTIMESTAMP = 1;
    public static final int NEVER__CHECKSUM = 2;
    public static final int NEVER__TIMESTAMP = 3;
    public static final int NEVER_FEATURE_COUNT = 4;
    public static final int NEW_IS_OUTSIDE = 6;
    public static final int NEW_IS_OUTSIDE__GCHECKSUM = 0;
    public static final int NEW_IS_OUTSIDE__GTIMESTAMP = 1;
    public static final int NEW_IS_OUTSIDE__CHECKSUM = 2;
    public static final int NEW_IS_OUTSIDE__TIMESTAMP = 3;
    public static final int NEW_IS_OUTSIDE__MAX = 4;
    public static final int NEW_IS_OUTSIDE__MIN = 5;
    public static final int NEW_IS_OUTSIDE_FEATURE_COUNT = 6;
    public static final int NEW_IS_WITHIN = 7;
    public static final int NEW_IS_WITHIN__GCHECKSUM = 0;
    public static final int NEW_IS_WITHIN__GTIMESTAMP = 1;
    public static final int NEW_IS_WITHIN__CHECKSUM = 2;
    public static final int NEW_IS_WITHIN__TIMESTAMP = 3;
    public static final int NEW_IS_WITHIN__MAX = 4;
    public static final int NEW_IS_WITHIN__MIN = 5;
    public static final int NEW_IS_WITHIN_FEATURE_COUNT = 6;
    public static final int ONE_EVERY_N = 8;
    public static final int ONE_EVERY_N__GCHECKSUM = 0;
    public static final int ONE_EVERY_N__GTIMESTAMP = 1;
    public static final int ONE_EVERY_N__CHECKSUM = 2;
    public static final int ONE_EVERY_N__TIMESTAMP = 3;
    public static final int ONE_EVERY_N__OFFSET = 4;
    public static final int ONE_EVERY_N__PERIOD = 5;
    public static final int ONE_EVERY_N_FEATURE_COUNT = 6;

    public EClass getAlways();

    public EClass getDataFilter();

    public EClass getMaskedNewDiffersMaskedOld();

    public EAttribute getMaskedNewDiffersMaskedOld_Mask();

    public EClass getMaskedNewDiffersX();

    public EAttribute getMaskedNewDiffersX_Mask();

    public EAttribute getMaskedNewDiffersX_X();

    public EClass getMaskedNewEqualsX();

    public EAttribute getMaskedNewEqualsX_Mask();

    public EAttribute getMaskedNewEqualsX_X();

    public EClass getNever();

    public EClass getNewIsOutside();

    public EAttribute getNewIsOutside_Max();

    public EAttribute getNewIsOutside_Min();

    public EClass getNewIsWithin();

    public EAttribute getNewIsWithin_Max();

    public EAttribute getNewIsWithin_Min();

    public EClass getOneEveryN();

    public EAttribute getOneEveryN_Offset();

    public EAttribute getOneEveryN_Period();

    public FilterFactory getFilterFactory();

    public static interface Literals {
        public static final EClass ALWAYS = eINSTANCE.getAlways();
        public static final EClass DATA_FILTER = eINSTANCE.getDataFilter();
        public static final EClass MASKED_NEW_DIFFERS_MASKED_OLD = eINSTANCE.getMaskedNewDiffersMaskedOld();
        public static final EAttribute MASKED_NEW_DIFFERS_MASKED_OLD__MASK = eINSTANCE.getMaskedNewDiffersMaskedOld_Mask();
        public static final EClass MASKED_NEW_DIFFERS_X = eINSTANCE.getMaskedNewDiffersX();
        public static final EAttribute MASKED_NEW_DIFFERS_X__MASK = eINSTANCE.getMaskedNewDiffersX_Mask();
        public static final EAttribute MASKED_NEW_DIFFERS_X__X = eINSTANCE.getMaskedNewDiffersX_X();
        public static final EClass MASKED_NEW_EQUALS_X = eINSTANCE.getMaskedNewEqualsX();
        public static final EAttribute MASKED_NEW_EQUALS_X__MASK = eINSTANCE.getMaskedNewEqualsX_Mask();
        public static final EAttribute MASKED_NEW_EQUALS_X__X = eINSTANCE.getMaskedNewEqualsX_X();
        public static final EClass NEVER = eINSTANCE.getNever();
        public static final EClass NEW_IS_OUTSIDE = eINSTANCE.getNewIsOutside();
        public static final EAttribute NEW_IS_OUTSIDE__MAX = eINSTANCE.getNewIsOutside_Max();
        public static final EAttribute NEW_IS_OUTSIDE__MIN = eINSTANCE.getNewIsOutside_Min();
        public static final EClass NEW_IS_WITHIN = eINSTANCE.getNewIsWithin();
        public static final EAttribute NEW_IS_WITHIN__MAX = eINSTANCE.getNewIsWithin_Max();
        public static final EAttribute NEW_IS_WITHIN__MIN = eINSTANCE.getNewIsWithin_Min();
        public static final EClass ONE_EVERY_N = eINSTANCE.getOneEveryN();
        public static final EAttribute ONE_EVERY_N__OFFSET = eINSTANCE.getOneEveryN_Offset();
        public static final EAttribute ONE_EVERY_N__PERIOD = eINSTANCE.getOneEveryN_Period();
    }
}

