/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EAttribute
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EEnum
 *  org.eclipse.emf.ecore.EPackage
 */
package autosar40.commonstructure.filter;

import autosar40.commonstructure.filter.FilterFactory;
import autosar40.commonstructure.filter.impl.FilterPackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EEnum;
import org.eclipse.emf.ecore.EPackage;

public interface FilterPackage
extends EPackage {
    public static final String eNAME = "filter";
    public static final String eNS_URI = "http://autosar.org/schema/r4.0/autosar40/cs/f";
    public static final String eNS_PREFIX = "";
    public static final FilterPackage eINSTANCE = FilterPackageImpl.init();
    public static final int DATA_FILTER = 0;
    public static final int DATA_FILTER__GCHECKSUM = 0;
    public static final int DATA_FILTER__GTIMESTAMP = 1;
    public static final int DATA_FILTER__CHECKSUM = 2;
    public static final int DATA_FILTER__TIMESTAMP = 3;
    public static final int DATA_FILTER__DATA_FILTER_TYPE = 4;
    public static final int DATA_FILTER__MASK = 5;
    public static final int DATA_FILTER__MAX = 6;
    public static final int DATA_FILTER__MIN = 7;
    public static final int DATA_FILTER__OFFSET = 8;
    public static final int DATA_FILTER__PERIOD = 9;
    public static final int DATA_FILTER__X = 10;
    public static final int DATA_FILTER_FEATURE_COUNT = 11;
    public static final int DATA_FILTER_TYPE_ENUM = 1;

    public EClass getDataFilter();

    public EAttribute getDataFilter_DataFilterType();

    public EAttribute getDataFilter_Mask();

    public EAttribute getDataFilter_Max();

    public EAttribute getDataFilter_Min();

    public EAttribute getDataFilter_Offset();

    public EAttribute getDataFilter_Period();

    public EAttribute getDataFilter_X();

    public EEnum getDataFilterTypeEnum();

    public FilterFactory getFilterFactory();

    public static interface Literals {
        public static final EClass DATA_FILTER = eINSTANCE.getDataFilter();
        public static final EAttribute DATA_FILTER__DATA_FILTER_TYPE = eINSTANCE.getDataFilter_DataFilterType();
        public static final EAttribute DATA_FILTER__MASK = eINSTANCE.getDataFilter_Mask();
        public static final EAttribute DATA_FILTER__MAX = eINSTANCE.getDataFilter_Max();
        public static final EAttribute DATA_FILTER__MIN = eINSTANCE.getDataFilter_Min();
        public static final EAttribute DATA_FILTER__OFFSET = eINSTANCE.getDataFilter_Offset();
        public static final EAttribute DATA_FILTER__PERIOD = eINSTANCE.getDataFilter_Period();
        public static final EAttribute DATA_FILTER__X = eINSTANCE.getDataFilter_X();
        public static final EEnum DATA_FILTER_TYPE_ENUM = eINSTANCE.getDataFilterTypeEnum();
    }
}

