/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar21.swcomponent.measurementandcalibration.variable;

import autosar21.swcomponent.measurementandcalibration.variable.VariableFactory;
import autosar21.swcomponent.measurementandcalibration.variable.impl.VariablePackageImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface VariablePackage
extends EPackage {
    public static final String eNAME = "variable";
    public static final String eNS_URI = "http://autosar.org/2.1.5/autosar21/swc/mac/v";
    public static final String eNS_PREFIX = "";
    public static final VariablePackage eINSTANCE = VariablePackageImpl.init();
    public static final int SW_VARIABLE = 0;
    public static final int SW_VARIABLE__GCHECKSUM = 0;
    public static final int SW_VARIABLE__GTIMESTAMP = 1;
    public static final int SW_VARIABLE__CHECKSUM = 2;
    public static final int SW_VARIABLE__TIMESTAMP = 3;
    public static final int SW_VARIABLE__GSHORT_NAME = 4;
    public static final int SW_VARIABLE__GUUID = 5;
    public static final int SW_VARIABLE__GCATEGORY = 6;
    public static final int SW_VARIABLE__GDESC = 7;
    public static final int SW_VARIABLE__SHORT_NAME = 8;
    public static final int SW_VARIABLE__LONG_NAME = 9;
    public static final int SW_VARIABLE__DESC = 10;
    public static final int SW_VARIABLE__CATEGORY = 11;
    public static final int SW_VARIABLE__ADMIN_DATA = 12;
    public static final int SW_VARIABLE__UUID = 13;
    public static final int SW_VARIABLE__ALL_EXTENSIONS = 14;
    public static final int SW_VARIABLE__CONTAINED_EXTENSIONS = 15;
    public static final int SW_VARIABLE__GAR_PACKAGE = 16;
    public static final int SW_VARIABLE__AR_PACKAGE = 17;
    public static final int SW_VARIABLE__SW_VARIABLE = 18;
    public static final int SW_VARIABLE__SW_ARRAYSIZE = 19;
    public static final int SW_VARIABLE__SW_DATA_DEF_PROPS = 20;
    public static final int SW_VARIABLE__SW_VARIABLES = 21;
    public static final int SW_VARIABLE_FEATURE_COUNT = 22;

    public EClass getSwVariable();

    public EReference getSwVariable_SwVariable();

    public EReference getSwVariable_SwArraysize();

    public EReference getSwVariable_SwDataDefProps();

    public EReference getSwVariable_SwVariables();

    public VariableFactory getVariableFactory();

    public static interface Literals {
        public static final EClass SW_VARIABLE = eINSTANCE.getSwVariable();
        public static final EReference SW_VARIABLE__SW_VARIABLE = eINSTANCE.getSwVariable_SwVariable();
        public static final EReference SW_VARIABLE__SW_ARRAYSIZE = eINSTANCE.getSwVariable_SwArraysize();
        public static final EReference SW_VARIABLE__SW_DATA_DEF_PROPS = eINSTANCE.getSwVariable_SwDataDefProps();
        public static final EReference SW_VARIABLE__SW_VARIABLES = eINSTANCE.getSwVariable_SwVariables();
    }
}

