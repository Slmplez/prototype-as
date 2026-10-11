/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package gautosar.gswcomponents.gswcinternalbehavior.gdataelements;

import gautosar.gswcomponents.gswcinternalbehavior.gdataelements.GdataelementsFactory;
import gautosar.gswcomponents.gswcinternalbehavior.gdataelements.impl.GdataelementsPackageImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface GdataelementsPackage
extends EPackage {
    public static final String eNAME = "gdataelements";
    public static final String eNS_URI = "http://artop.org/gautosar/swc/sib/de";
    public static final String eNS_PREFIX = "";
    public static final GdataelementsPackage eINSTANCE = GdataelementsPackageImpl.init();
    public static final int GVARIABLE_ACCESS = 0;
    public static final int GVARIABLE_ACCESS__GCHECKSUM = 0;
    public static final int GVARIABLE_ACCESS__GTIMESTAMP = 1;
    public static final int GVARIABLE_ACCESS__GSHORT_NAME = 2;
    public static final int GVARIABLE_ACCESS__GUUID = 3;
    public static final int GVARIABLE_ACCESS__GCATEGORY = 4;
    public static final int GVARIABLE_ACCESS__GDESC = 5;
    public static final int GVARIABLE_ACCESS__GDATA_ELEMENT = 6;
    public static final int GVARIABLE_ACCESS_FEATURE_COUNT = 7;
    public static final int GPARAMETER_ACCESS = 1;
    public static final int GPARAMETER_ACCESS__GCHECKSUM = 0;
    public static final int GPARAMETER_ACCESS__GTIMESTAMP = 1;
    public static final int GPARAMETER_ACCESS__GSHORT_NAME = 2;
    public static final int GPARAMETER_ACCESS__GUUID = 3;
    public static final int GPARAMETER_ACCESS__GCATEGORY = 4;
    public static final int GPARAMETER_ACCESS__GDESC = 5;
    public static final int GPARAMETER_ACCESS__GPARAMETER = 6;
    public static final int GPARAMETER_ACCESS_FEATURE_COUNT = 7;

    public EClass getGVariableAccess();

    public EReference getGVariableAccess_GDataElement();

    public EClass getGParameterAccess();

    public EReference getGParameterAccess_GParameter();

    public GdataelementsFactory getGdataelementsFactory();

    public static interface Literals {
        public static final EClass GVARIABLE_ACCESS = eINSTANCE.getGVariableAccess();
        public static final EReference GVARIABLE_ACCESS__GDATA_ELEMENT = eINSTANCE.getGVariableAccess_GDataElement();
        public static final EClass GPARAMETER_ACCESS = eINSTANCE.getGParameterAccess();
        public static final EReference GPARAMETER_ACCESS__GPARAMETER = eINSTANCE.getGParameterAccess_GParameter();
    }
}

