/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar21.swcomponent.measurementandcalibration.datadictionaryproxies;

import autosar21.swcomponent.measurementandcalibration.datadictionaryproxies.DatadictionaryproxiesFactory;
import autosar21.swcomponent.measurementandcalibration.datadictionaryproxies.impl.DatadictionaryproxiesPackageImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface DatadictionaryproxiesPackage
extends EPackage {
    public static final String eNAME = "datadictionaryproxies";
    public static final String eNS_URI = "http://autosar.org/2.1.5/autosar21/swc/mac/dp";
    public static final String eNS_PREFIX = "";
    public static final DatadictionaryproxiesPackage eINSTANCE = DatadictionaryproxiesPackageImpl.init();
    public static final int SW_CALPRM_REF_PROXY = 1;
    public static final int SW_CALPRM_REF_PROXY__GCHECKSUM = 0;
    public static final int SW_CALPRM_REF_PROXY__GTIMESTAMP = 1;
    public static final int SW_CALPRM_REF_PROXY__CHECKSUM = 2;
    public static final int SW_CALPRM_REF_PROXY__TIMESTAMP = 3;
    public static final int SW_CALPRM_REF_PROXY_FEATURE_COUNT = 4;
    public static final int SW_CALPRM_REF = 0;
    public static final int SW_CALPRM_REF__GCHECKSUM = 0;
    public static final int SW_CALPRM_REF__GTIMESTAMP = 1;
    public static final int SW_CALPRM_REF__CHECKSUM = 2;
    public static final int SW_CALPRM_REF__TIMESTAMP = 3;
    public static final int SW_CALPRM_REF__SW_CALPRM = 4;
    public static final int SW_CALPRM_REF_FEATURE_COUNT = 5;
    public static final int SW_VARIABLE_REF_PROXY = 3;
    public static final int SW_VARIABLE_REF_PROXY__GCHECKSUM = 0;
    public static final int SW_VARIABLE_REF_PROXY__GTIMESTAMP = 1;
    public static final int SW_VARIABLE_REF_PROXY__CHECKSUM = 2;
    public static final int SW_VARIABLE_REF_PROXY__TIMESTAMP = 3;
    public static final int SW_VARIABLE_REF_PROXY_FEATURE_COUNT = 4;
    public static final int SW_VARIABLE_REF_MSR = 2;
    public static final int SW_VARIABLE_REF_MSR__GCHECKSUM = 0;
    public static final int SW_VARIABLE_REF_MSR__GTIMESTAMP = 1;
    public static final int SW_VARIABLE_REF_MSR__CHECKSUM = 2;
    public static final int SW_VARIABLE_REF_MSR__TIMESTAMP = 3;
    public static final int SW_VARIABLE_REF_MSR__SW_VARIABLE = 4;
    public static final int SW_VARIABLE_REF_MSR_FEATURE_COUNT = 5;

    public EClass getswCalprmRef();

    public EReference getswCalprmRef_SwCalprm();

    public EClass getSwCalprmRefProxy();

    public EClass getSwVariableRefMsr();

    public EReference getSwVariableRefMsr_SwVariable();

    public EClass getSwVariableRefProxy();

    public DatadictionaryproxiesFactory getDatadictionaryproxiesFactory();

    public static interface Literals {
        public static final EClass SW_CALPRM_REF = eINSTANCE.getswCalprmRef();
        public static final EReference SW_CALPRM_REF__SW_CALPRM = eINSTANCE.getswCalprmRef_SwCalprm();
        public static final EClass SW_CALPRM_REF_PROXY = eINSTANCE.getSwCalprmRefProxy();
        public static final EClass SW_VARIABLE_REF_MSR = eINSTANCE.getSwVariableRefMsr();
        public static final EReference SW_VARIABLE_REF_MSR__SW_VARIABLE = eINSTANCE.getSwVariableRefMsr_SwVariable();
        public static final EClass SW_VARIABLE_REF_PROXY = eINSTANCE.getSwVariableRefProxy();
    }
}

