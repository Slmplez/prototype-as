/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EAttribute
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package gautosar.gswcomponents.gdatatype.gdatatypes;

import gautosar.gswcomponents.gdatatype.gdatatypes.GdatatypesFactory;
import gautosar.gswcomponents.gdatatype.gdatatypes.impl.GdatatypesPackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface GdatatypesPackage
extends EPackage {
    public static final String eNAME = "gdatatypes";
    public static final String eNS_URI = "http://artop.org/gautosar/swc/d/d";
    public static final String eNS_PREFIX = "";
    public static final GdatatypesPackage eINSTANCE = GdatatypesPackageImpl.init();
    public static final int GAUTOSAR_DATA_TYPE = 1;
    public static final int GAUTOSAR_DATA_TYPE__GCHECKSUM = 0;
    public static final int GAUTOSAR_DATA_TYPE__GTIMESTAMP = 1;
    public static final int GAUTOSAR_DATA_TYPE__GSHORT_NAME = 2;
    public static final int GAUTOSAR_DATA_TYPE__GUUID = 3;
    public static final int GAUTOSAR_DATA_TYPE__GCATEGORY = 4;
    public static final int GAUTOSAR_DATA_TYPE__GDESC = 5;
    public static final int GAUTOSAR_DATA_TYPE__GAR_PACKAGE = 6;
    public static final int GAUTOSAR_DATA_TYPE_FEATURE_COUNT = 7;
    public static final int GAPPLICATION_DATA_TYPE = 0;
    public static final int GAPPLICATION_DATA_TYPE__GCHECKSUM = 0;
    public static final int GAPPLICATION_DATA_TYPE__GTIMESTAMP = 1;
    public static final int GAPPLICATION_DATA_TYPE__GSHORT_NAME = 2;
    public static final int GAPPLICATION_DATA_TYPE__GUUID = 3;
    public static final int GAPPLICATION_DATA_TYPE__GCATEGORY = 4;
    public static final int GAPPLICATION_DATA_TYPE__GDESC = 5;
    public static final int GAPPLICATION_DATA_TYPE__GAR_PACKAGE = 6;
    public static final int GAPPLICATION_DATA_TYPE_FEATURE_COUNT = 7;
    public static final int GAPPLICATION_PRIMITIVE_DATA_TYPE = 2;
    public static final int GAPPLICATION_PRIMITIVE_DATA_TYPE__GCHECKSUM = 0;
    public static final int GAPPLICATION_PRIMITIVE_DATA_TYPE__GTIMESTAMP = 1;
    public static final int GAPPLICATION_PRIMITIVE_DATA_TYPE__GSHORT_NAME = 2;
    public static final int GAPPLICATION_PRIMITIVE_DATA_TYPE__GUUID = 3;
    public static final int GAPPLICATION_PRIMITIVE_DATA_TYPE__GCATEGORY = 4;
    public static final int GAPPLICATION_PRIMITIVE_DATA_TYPE__GDESC = 5;
    public static final int GAPPLICATION_PRIMITIVE_DATA_TYPE__GAR_PACKAGE = 6;
    public static final int GAPPLICATION_PRIMITIVE_DATA_TYPE_FEATURE_COUNT = 7;
    public static final int GAR_LIMIT = 3;
    public static final int GAR_LIMIT__GCHECKSUM = 0;
    public static final int GAR_LIMIT__GTIMESTAMP = 1;
    public static final int GAR_LIMIT__GINTERVAL_TYPE = 2;
    public static final int GAR_LIMIT__GVALUE = 3;
    public static final int GAR_LIMIT_FEATURE_COUNT = 4;
    public static final int GAPPLICATION_COMPOSITE_DATA_TYPE = 5;
    public static final int GAPPLICATION_COMPOSITE_DATA_TYPE__GCHECKSUM = 0;
    public static final int GAPPLICATION_COMPOSITE_DATA_TYPE__GTIMESTAMP = 1;
    public static final int GAPPLICATION_COMPOSITE_DATA_TYPE__GSHORT_NAME = 2;
    public static final int GAPPLICATION_COMPOSITE_DATA_TYPE__GUUID = 3;
    public static final int GAPPLICATION_COMPOSITE_DATA_TYPE__GCATEGORY = 4;
    public static final int GAPPLICATION_COMPOSITE_DATA_TYPE__GDESC = 5;
    public static final int GAPPLICATION_COMPOSITE_DATA_TYPE__GAR_PACKAGE = 6;
    public static final int GAPPLICATION_COMPOSITE_DATA_TYPE_FEATURE_COUNT = 7;
    public static final int GAPPLICATION_RECORD_DATA_TYPE = 4;
    public static final int GAPPLICATION_RECORD_DATA_TYPE__GCHECKSUM = 0;
    public static final int GAPPLICATION_RECORD_DATA_TYPE__GTIMESTAMP = 1;
    public static final int GAPPLICATION_RECORD_DATA_TYPE__GSHORT_NAME = 2;
    public static final int GAPPLICATION_RECORD_DATA_TYPE__GUUID = 3;
    public static final int GAPPLICATION_RECORD_DATA_TYPE__GCATEGORY = 4;
    public static final int GAPPLICATION_RECORD_DATA_TYPE__GDESC = 5;
    public static final int GAPPLICATION_RECORD_DATA_TYPE__GAR_PACKAGE = 6;
    public static final int GAPPLICATION_RECORD_DATA_TYPE__GELEMENTS = 7;
    public static final int GAPPLICATION_RECORD_DATA_TYPE_FEATURE_COUNT = 8;

    public EClass getGApplicationDataType();

    public EClass getGAutosarDataType();

    public EClass getGApplicationPrimitiveDataType();

    public EClass getGARLimit();

    public EAttribute getGARLimit_GValue();

    public EClass getGApplicationRecordDataType();

    public EReference getGApplicationRecordDataType_GElements();

    public EClass getGApplicationCompositeDataType();

    public GdatatypesFactory getGdatatypesFactory();

    public static interface Literals {
        public static final EClass GAPPLICATION_DATA_TYPE = eINSTANCE.getGApplicationDataType();
        public static final EClass GAUTOSAR_DATA_TYPE = eINSTANCE.getGAutosarDataType();
        public static final EClass GAPPLICATION_PRIMITIVE_DATA_TYPE = eINSTANCE.getGApplicationPrimitiveDataType();
        public static final EClass GAR_LIMIT = eINSTANCE.getGARLimit();
        public static final EAttribute GAR_LIMIT__GVALUE = eINSTANCE.getGARLimit_GValue();
        public static final EClass GAPPLICATION_RECORD_DATA_TYPE = eINSTANCE.getGApplicationRecordDataType();
        public static final EReference GAPPLICATION_RECORD_DATA_TYPE__GELEMENTS = eINSTANCE.getGApplicationRecordDataType_GElements();
        public static final EClass GAPPLICATION_COMPOSITE_DATA_TYPE = eINSTANCE.getGApplicationCompositeDataType();
    }
}

