/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EAttribute
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar21.swcomponent.datatype.valuemodel;

import autosar21.swcomponent.datatype.valuemodel.ValuemodelFactory;
import autosar21.swcomponent.datatype.valuemodel.impl.ValuemodelPackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface ValuemodelPackage
extends EPackage {
    public static final String eNAME = "valuemodel";
    public static final String eNS_URI = "http://autosar.org/2.1.5/autosar21/swc/d/vm";
    public static final String eNS_PREFIX = "";
    public static final ValuemodelPackage eINSTANCE = ValuemodelPackageImpl.init();
    public static final int V = 0;
    public static final int V__GCHECKSUM = 0;
    public static final int V__GTIMESTAMP = 1;
    public static final int V__CHECKSUM = 2;
    public static final int V__TIMESTAMP = 3;
    public static final int V__MIXED = 4;
    public static final int V_FEATURE_COUNT = 5;
    public static final int VALUE_BY_FORMULA = 1;
    public static final int VALUE_BY_FORMULA__GCHECKSUM = 0;
    public static final int VALUE_BY_FORMULA__GTIMESTAMP = 1;
    public static final int VALUE_BY_FORMULA__CHECKSUM = 2;
    public static final int VALUE_BY_FORMULA__TIMESTAMP = 3;
    public static final int VALUE_BY_FORMULA__MIXED = 4;
    public static final int VALUE_BY_FORMULA_FEATURE_COUNT = 5;
    public static final int VF = 2;
    public static final int VF__GCHECKSUM = 0;
    public static final int VF__GTIMESTAMP = 1;
    public static final int VF__CHECKSUM = 2;
    public static final int VF__TIMESTAMP = 3;
    public static final int VF__MIXED = 4;
    public static final int VF_FEATURE_COUNT = 5;
    public static final int VT = 3;
    public static final int VT__GCHECKSUM = 0;
    public static final int VT__GTIMESTAMP = 1;
    public static final int VT__CHECKSUM = 2;
    public static final int VT__TIMESTAMP = 3;
    public static final int VT__MIXED = 4;
    public static final int VT__COMPU_CONST_TEXT_CONTENT = 5;
    public static final int VT__XMLSPACES = 6;
    public static final int VT_FEATURE_COUNT = 7;

    public EClass getV();

    public EAttribute getV_Mixed();

    public EClass getValueByFormula();

    public EAttribute getValueByFormula_Mixed();

    public EClass getVf();

    public EClass getVt();

    public EAttribute getVt_Mixed();

    public EReference getVt_CompuConstTextContent();

    public EAttribute getVt_Xmlspaces();

    public ValuemodelFactory getValuemodelFactory();

    public static interface Literals {
        public static final EClass V = eINSTANCE.getV();
        public static final EAttribute V__MIXED = eINSTANCE.getV_Mixed();
        public static final EClass VALUE_BY_FORMULA = eINSTANCE.getValueByFormula();
        public static final EAttribute VALUE_BY_FORMULA__MIXED = eINSTANCE.getValueByFormula_Mixed();
        public static final EClass VF = eINSTANCE.getVf();
        public static final EClass VT = eINSTANCE.getVt();
        public static final EAttribute VT__MIXED = eINSTANCE.getVt_Mixed();
        public static final EReference VT__COMPU_CONST_TEXT_CONTENT = eINSTANCE.getVt_CompuConstTextContent();
        public static final EAttribute VT__XMLSPACES = eINSTANCE.getVt_Xmlspaces();
    }
}

