/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package gautosar.gswcomponents.gdatatype.gdataprototypes;

import gautosar.gswcomponents.gdatatype.gdataprototypes.GdataprototypesFactory;
import gautosar.gswcomponents.gdatatype.gdataprototypes.impl.GdataprototypesPackageImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface GdataprototypesPackage
extends EPackage {
    public static final String eNAME = "gdataprototypes";
    public static final String eNS_URI = "http://artop.org/gautosar/swc/d/dp";
    public static final String eNS_PREFIX = "";
    public static final GdataprototypesPackage eINSTANCE = GdataprototypesPackageImpl.init();
    public static final int GDATA_PROTOTYPE = 1;
    public static final int GDATA_PROTOTYPE__GCHECKSUM = 0;
    public static final int GDATA_PROTOTYPE__GTIMESTAMP = 1;
    public static final int GDATA_PROTOTYPE__GSHORT_NAME = 2;
    public static final int GDATA_PROTOTYPE__GUUID = 3;
    public static final int GDATA_PROTOTYPE__GCATEGORY = 4;
    public static final int GDATA_PROTOTYPE__GDESC = 5;
    public static final int GDATA_PROTOTYPE_FEATURE_COUNT = 6;
    public static final int GAUTOSAR_DATA_PROTOTYPE = 0;
    public static final int GAUTOSAR_DATA_PROTOTYPE__GCHECKSUM = 0;
    public static final int GAUTOSAR_DATA_PROTOTYPE__GTIMESTAMP = 1;
    public static final int GAUTOSAR_DATA_PROTOTYPE__GSHORT_NAME = 2;
    public static final int GAUTOSAR_DATA_PROTOTYPE__GUUID = 3;
    public static final int GAUTOSAR_DATA_PROTOTYPE__GCATEGORY = 4;
    public static final int GAUTOSAR_DATA_PROTOTYPE__GDESC = 5;
    public static final int GAUTOSAR_DATA_PROTOTYPE__GTYPE = 6;
    public static final int GAUTOSAR_DATA_PROTOTYPE_FEATURE_COUNT = 7;
    public static final int GPARAMETER_DATA_PROTOTYPE = 2;
    public static final int GPARAMETER_DATA_PROTOTYPE__GCHECKSUM = 0;
    public static final int GPARAMETER_DATA_PROTOTYPE__GTIMESTAMP = 1;
    public static final int GPARAMETER_DATA_PROTOTYPE__GSHORT_NAME = 2;
    public static final int GPARAMETER_DATA_PROTOTYPE__GUUID = 3;
    public static final int GPARAMETER_DATA_PROTOTYPE__GCATEGORY = 4;
    public static final int GPARAMETER_DATA_PROTOTYPE__GDESC = 5;
    public static final int GPARAMETER_DATA_PROTOTYPE__GTYPE = 6;
    public static final int GPARAMETER_DATA_PROTOTYPE_FEATURE_COUNT = 7;
    public static final int GVARIABLE_DATA_PROTOTYPE = 3;
    public static final int GVARIABLE_DATA_PROTOTYPE__GCHECKSUM = 0;
    public static final int GVARIABLE_DATA_PROTOTYPE__GTIMESTAMP = 1;
    public static final int GVARIABLE_DATA_PROTOTYPE__GSHORT_NAME = 2;
    public static final int GVARIABLE_DATA_PROTOTYPE__GUUID = 3;
    public static final int GVARIABLE_DATA_PROTOTYPE__GCATEGORY = 4;
    public static final int GVARIABLE_DATA_PROTOTYPE__GDESC = 5;
    public static final int GVARIABLE_DATA_PROTOTYPE__GTYPE = 6;
    public static final int GVARIABLE_DATA_PROTOTYPE_FEATURE_COUNT = 7;
    public static final int GAPPLICATION_COMPOSITE_ELEMENT_DATA_PROTOTYPE = 5;
    public static final int GAPPLICATION_COMPOSITE_ELEMENT_DATA_PROTOTYPE__GCHECKSUM = 0;
    public static final int GAPPLICATION_COMPOSITE_ELEMENT_DATA_PROTOTYPE__GTIMESTAMP = 1;
    public static final int GAPPLICATION_COMPOSITE_ELEMENT_DATA_PROTOTYPE__GSHORT_NAME = 2;
    public static final int GAPPLICATION_COMPOSITE_ELEMENT_DATA_PROTOTYPE__GUUID = 3;
    public static final int GAPPLICATION_COMPOSITE_ELEMENT_DATA_PROTOTYPE__GCATEGORY = 4;
    public static final int GAPPLICATION_COMPOSITE_ELEMENT_DATA_PROTOTYPE__GDESC = 5;
    public static final int GAPPLICATION_COMPOSITE_ELEMENT_DATA_PROTOTYPE__GELEMENT_TYPE = 6;
    public static final int GAPPLICATION_COMPOSITE_ELEMENT_DATA_PROTOTYPE_FEATURE_COUNT = 7;
    public static final int GAPPLICATION_RECORD_ELEMENT = 4;
    public static final int GAPPLICATION_RECORD_ELEMENT__GCHECKSUM = 0;
    public static final int GAPPLICATION_RECORD_ELEMENT__GTIMESTAMP = 1;
    public static final int GAPPLICATION_RECORD_ELEMENT__GSHORT_NAME = 2;
    public static final int GAPPLICATION_RECORD_ELEMENT__GUUID = 3;
    public static final int GAPPLICATION_RECORD_ELEMENT__GCATEGORY = 4;
    public static final int GAPPLICATION_RECORD_ELEMENT__GDESC = 5;
    public static final int GAPPLICATION_RECORD_ELEMENT__GELEMENT_TYPE = 6;
    public static final int GAPPLICATION_RECORD_ELEMENT_FEATURE_COUNT = 7;

    public EClass getGAutosarDataPrototype();

    public EReference getGAutosarDataPrototype_GType();

    public EClass getGDataPrototype();

    public EClass getGParameterDataPrototype();

    public EClass getGVariableDataPrototype();

    public EClass getGApplicationRecordElement();

    public EClass getGApplicationCompositeElementDataPrototype();

    public EReference getGApplicationCompositeElementDataPrototype_GElementType();

    public GdataprototypesFactory getGdataprototypesFactory();

    public static interface Literals {
        public static final EClass GAUTOSAR_DATA_PROTOTYPE = eINSTANCE.getGAutosarDataPrototype();
        public static final EReference GAUTOSAR_DATA_PROTOTYPE__GTYPE = eINSTANCE.getGAutosarDataPrototype_GType();
        public static final EClass GDATA_PROTOTYPE = eINSTANCE.getGDataPrototype();
        public static final EClass GPARAMETER_DATA_PROTOTYPE = eINSTANCE.getGParameterDataPrototype();
        public static final EClass GVARIABLE_DATA_PROTOTYPE = eINSTANCE.getGVariableDataPrototype();
        public static final EClass GAPPLICATION_RECORD_ELEMENT = eINSTANCE.getGApplicationRecordElement();
        public static final EClass GAPPLICATION_COMPOSITE_ELEMENT_DATA_PROTOTYPE = eINSTANCE.getGApplicationCompositeElementDataPrototype();
        public static final EReference GAPPLICATION_COMPOSITE_ELEMENT_DATA_PROTOTYPE__GELEMENT_TYPE = eINSTANCE.getGApplicationCompositeElementDataPrototype_GElementType();
    }
}

