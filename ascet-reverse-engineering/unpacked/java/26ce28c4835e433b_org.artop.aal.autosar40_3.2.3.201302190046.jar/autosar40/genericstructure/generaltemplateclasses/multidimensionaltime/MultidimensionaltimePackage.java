/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EAttribute
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EDataType
 *  org.eclipse.emf.ecore.EPackage
 */
package autosar40.genericstructure.generaltemplateclasses.multidimensionaltime;

import autosar40.genericstructure.generaltemplateclasses.multidimensionaltime.MultidimensionaltimeFactory;
import autosar40.genericstructure.generaltemplateclasses.multidimensionaltime.impl.MultidimensionaltimePackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EDataType;
import org.eclipse.emf.ecore.EPackage;

public interface MultidimensionaltimePackage
extends EPackage {
    public static final String eNAME = "multidimensionaltime";
    public static final String eNS_URI = "http://autosar.org/schema/r4.0/autosar40/gs/gtc/mt";
    public static final String eNS_PREFIX = "";
    public static final MultidimensionaltimePackage eINSTANCE = MultidimensionaltimePackageImpl.init();
    public static final int MULTIDIMENSIONAL_TIME = 0;
    public static final int MULTIDIMENSIONAL_TIME__GCHECKSUM = 0;
    public static final int MULTIDIMENSIONAL_TIME__GTIMESTAMP = 1;
    public static final int MULTIDIMENSIONAL_TIME__CHECKSUM = 2;
    public static final int MULTIDIMENSIONAL_TIME__TIMESTAMP = 3;
    public static final int MULTIDIMENSIONAL_TIME__CSE_CODE = 4;
    public static final int MULTIDIMENSIONAL_TIME__CSE_CODE_FACTOR = 5;
    public static final int MULTIDIMENSIONAL_TIME_FEATURE_COUNT = 6;
    public static final int CSE_CODE_TYPE = 1;

    public EClass getMultidimensionalTime();

    public EAttribute getMultidimensionalTime_CseCode();

    public EAttribute getMultidimensionalTime_CseCodeFactor();

    public EDataType getCseCodeType();

    public MultidimensionaltimeFactory getMultidimensionaltimeFactory();

    public static interface Literals {
        public static final EClass MULTIDIMENSIONAL_TIME = eINSTANCE.getMultidimensionalTime();
        public static final EAttribute MULTIDIMENSIONAL_TIME__CSE_CODE = eINSTANCE.getMultidimensionalTime_CseCode();
        public static final EAttribute MULTIDIMENSIONAL_TIME__CSE_CODE_FACTOR = eINSTANCE.getMultidimensionalTime_CseCodeFactor();
        public static final EDataType CSE_CODE_TYPE = eINSTANCE.getCseCodeType();
    }
}

