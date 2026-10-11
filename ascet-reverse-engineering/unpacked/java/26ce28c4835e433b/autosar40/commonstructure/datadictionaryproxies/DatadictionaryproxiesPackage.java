/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar40.commonstructure.datadictionaryproxies;

import autosar40.commonstructure.datadictionaryproxies.DatadictionaryproxiesFactory;
import autosar40.commonstructure.datadictionaryproxies.impl.DatadictionaryproxiesPackageImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface DatadictionaryproxiesPackage
extends EPackage {
    public static final String eNAME = "datadictionaryproxies";
    public static final String eNS_URI = "http://autosar.org/schema/r4.0/autosar40/cs/dp";
    public static final String eNS_PREFIX = "";
    public static final DatadictionaryproxiesPackage eINSTANCE = DatadictionaryproxiesPackageImpl.init();
    public static final int SW_VARIABLE_REF_PROXY = 0;
    public static final int SW_VARIABLE_REF_PROXY__GCHECKSUM = 0;
    public static final int SW_VARIABLE_REF_PROXY__GTIMESTAMP = 1;
    public static final int SW_VARIABLE_REF_PROXY__CHECKSUM = 2;
    public static final int SW_VARIABLE_REF_PROXY__TIMESTAMP = 3;
    public static final int SW_VARIABLE_REF_PROXY__AUTOSAR_VARIABLE = 4;
    public static final int SW_VARIABLE_REF_PROXY__MC_DATA_INSTANCE_VAR = 5;
    public static final int SW_VARIABLE_REF_PROXY_FEATURE_COUNT = 6;
    public static final int SW_CALPRM_REF_PROXY = 1;
    public static final int SW_CALPRM_REF_PROXY__GCHECKSUM = 0;
    public static final int SW_CALPRM_REF_PROXY__GTIMESTAMP = 1;
    public static final int SW_CALPRM_REF_PROXY__CHECKSUM = 2;
    public static final int SW_CALPRM_REF_PROXY__TIMESTAMP = 3;
    public static final int SW_CALPRM_REF_PROXY__AR_PARAMETER = 4;
    public static final int SW_CALPRM_REF_PROXY__MC_DATA_INSTANCE = 5;
    public static final int SW_CALPRM_REF_PROXY_FEATURE_COUNT = 6;

    public EClass getSwVariableRefProxy();

    public EReference getSwVariableRefProxy_AutosarVariable();

    public EReference getSwVariableRefProxy_McDataInstanceVar();

    public EClass getSwCalprmRefProxy();

    public EReference getSwCalprmRefProxy_ArParameter();

    public EReference getSwCalprmRefProxy_McDataInstance();

    public DatadictionaryproxiesFactory getDatadictionaryproxiesFactory();

    public static interface Literals {
        public static final EClass SW_VARIABLE_REF_PROXY = eINSTANCE.getSwVariableRefProxy();
        public static final EReference SW_VARIABLE_REF_PROXY__AUTOSAR_VARIABLE = eINSTANCE.getSwVariableRefProxy_AutosarVariable();
        public static final EReference SW_VARIABLE_REF_PROXY__MC_DATA_INSTANCE_VAR = eINSTANCE.getSwVariableRefProxy_McDataInstanceVar();
        public static final EClass SW_CALPRM_REF_PROXY = eINSTANCE.getSwCalprmRefProxy();
        public static final EReference SW_CALPRM_REF_PROXY__AR_PARAMETER = eINSTANCE.getSwCalprmRefProxy_ArParameter();
        public static final EReference SW_CALPRM_REF_PROXY__MC_DATA_INSTANCE = eINSTANCE.getSwCalprmRefProxy_McDataInstance();
    }
}

