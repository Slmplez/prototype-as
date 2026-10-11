/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 */
package autosar3x.commonstructure.datadictionaryproxies;

import autosar3x.commonstructure.datadictionaryproxies.DatadictionaryproxiesFactory;
import autosar3x.commonstructure.datadictionaryproxies.impl.DatadictionaryproxiesPackageImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;

public interface DatadictionaryproxiesPackage
extends EPackage {
    public static final String eNAME = "datadictionaryproxies";
    public static final String eNS_URI = "http://autosar.org/3.2.1/autosar3x/cs/dp";
    public static final String eNS_PREFIX = "";
    public static final DatadictionaryproxiesPackage eINSTANCE = DatadictionaryproxiesPackageImpl.init();
    public static final int SW_CALPRM_REF_PROXY = 0;
    public static final int SW_CALPRM_REF_PROXY__GCHECKSUM = 0;
    public static final int SW_CALPRM_REF_PROXY__GTIMESTAMP = 1;
    public static final int SW_CALPRM_REF_PROXY__CHECKSUM = 2;
    public static final int SW_CALPRM_REF_PROXY__TIMESTAMP = 3;
    public static final int SW_CALPRM_REF_PROXY_FEATURE_COUNT = 4;
    public static final int SW_VARIABLE_REF_PROXY = 1;
    public static final int SW_VARIABLE_REF_PROXY__GCHECKSUM = 0;
    public static final int SW_VARIABLE_REF_PROXY__GTIMESTAMP = 1;
    public static final int SW_VARIABLE_REF_PROXY__CHECKSUM = 2;
    public static final int SW_VARIABLE_REF_PROXY__TIMESTAMP = 3;
    public static final int SW_VARIABLE_REF_PROXY_FEATURE_COUNT = 4;

    public EClass getSwCalprmRefProxy();

    public EClass getSwVariableRefProxy();

    public DatadictionaryproxiesFactory getDatadictionaryproxiesFactory();

    public static interface Literals {
        public static final EClass SW_CALPRM_REF_PROXY = eINSTANCE.getSwCalprmRefProxy();
        public static final EClass SW_VARIABLE_REF_PROXY = eINSTANCE.getSwVariableRefProxy();
    }
}

