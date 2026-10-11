/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EAttribute
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar21.swcomponent.measurementandcalibration.auxillaryobjects;

import autosar21.swcomponent.measurementandcalibration.auxillaryobjects.AuxillaryobjectsFactory;
import autosar21.swcomponent.measurementandcalibration.auxillaryobjects.impl.AuxillaryobjectsPackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface AuxillaryobjectsPackage
extends EPackage {
    public static final String eNAME = "auxillaryobjects";
    public static final String eNS_URI = "http://autosar.org/2.1.5/autosar21/swc/mac/ao";
    public static final String eNS_PREFIX = "";
    public static final AuxillaryobjectsPackage eINSTANCE = AuxillaryobjectsPackageImpl.init();
    public static final int SW_ADDR_METHOD = 0;
    public static final int SW_ADDR_METHOD__GCHECKSUM = 0;
    public static final int SW_ADDR_METHOD__GTIMESTAMP = 1;
    public static final int SW_ADDR_METHOD__CHECKSUM = 2;
    public static final int SW_ADDR_METHOD__TIMESTAMP = 3;
    public static final int SW_ADDR_METHOD__GSHORT_NAME = 4;
    public static final int SW_ADDR_METHOD__GUUID = 5;
    public static final int SW_ADDR_METHOD__GCATEGORY = 6;
    public static final int SW_ADDR_METHOD__GDESC = 7;
    public static final int SW_ADDR_METHOD__SHORT_NAME = 8;
    public static final int SW_ADDR_METHOD__LONG_NAME = 9;
    public static final int SW_ADDR_METHOD__DESC = 10;
    public static final int SW_ADDR_METHOD__CATEGORY = 11;
    public static final int SW_ADDR_METHOD__ADMIN_DATA = 12;
    public static final int SW_ADDR_METHOD__UUID = 13;
    public static final int SW_ADDR_METHOD__ALL_EXTENSIONS = 14;
    public static final int SW_ADDR_METHOD__CONTAINED_EXTENSIONS = 15;
    public static final int SW_ADDR_METHOD__GAR_PACKAGE = 16;
    public static final int SW_ADDR_METHOD__AR_PACKAGE = 17;
    public static final int SW_ADDR_METHOD_FEATURE_COUNT = 18;
    public static final int SW_CODE_SYNTAX = 1;
    public static final int SW_CODE_SYNTAX__GCHECKSUM = 0;
    public static final int SW_CODE_SYNTAX__GTIMESTAMP = 1;
    public static final int SW_CODE_SYNTAX__CHECKSUM = 2;
    public static final int SW_CODE_SYNTAX__TIMESTAMP = 3;
    public static final int SW_CODE_SYNTAX__GSHORT_NAME = 4;
    public static final int SW_CODE_SYNTAX__GUUID = 5;
    public static final int SW_CODE_SYNTAX__GCATEGORY = 6;
    public static final int SW_CODE_SYNTAX__GDESC = 7;
    public static final int SW_CODE_SYNTAX__SHORT_NAME = 8;
    public static final int SW_CODE_SYNTAX__LONG_NAME = 9;
    public static final int SW_CODE_SYNTAX__DESC = 10;
    public static final int SW_CODE_SYNTAX__CATEGORY = 11;
    public static final int SW_CODE_SYNTAX__ADMIN_DATA = 12;
    public static final int SW_CODE_SYNTAX__UUID = 13;
    public static final int SW_CODE_SYNTAX__ALL_EXTENSIONS = 14;
    public static final int SW_CODE_SYNTAX__CONTAINED_EXTENSIONS = 15;
    public static final int SW_CODE_SYNTAX__GAR_PACKAGE = 16;
    public static final int SW_CODE_SYNTAX__AR_PACKAGE = 17;
    public static final int SW_CODE_SYNTAX_FEATURE_COUNT = 18;
    public static final int SW_RECORD_LAYOUT_GROUP = 2;
    public static final int SW_RECORD_LAYOUT_GROUP__GCHECKSUM = 0;
    public static final int SW_RECORD_LAYOUT_GROUP__GTIMESTAMP = 1;
    public static final int SW_RECORD_LAYOUT_GROUP__CHECKSUM = 2;
    public static final int SW_RECORD_LAYOUT_GROUP__TIMESTAMP = 3;
    public static final int SW_RECORD_LAYOUT_GROUP__SW_RECORD_LAYOUT_GROUP_AXIS = 4;
    public static final int SW_RECORD_LAYOUT_GROUP__SW_RECORD_LAYOUT_GROUP_INDEX = 5;
    public static final int SW_RECORD_LAYOUT_GROUP__SW_RECORD_LAYOUT_GROUP_FROM = 6;
    public static final int SW_RECORD_LAYOUT_GROUP__SW_RECORD_LAYOUT_GROUP_TO = 7;
    public static final int SW_RECORD_LAYOUT_GROUP__SW_RECORD_LAYOUT_GROUP_STEP = 8;
    public static final int SW_RECORD_LAYOUT_GROUP__SW_RECORD_LAYOUT_COMPONENT = 9;
    public static final int SW_RECORD_LAYOUT_GROUP__SW_RECORD_LAYOUT_GROUP_CONTENT_TYPE = 10;
    public static final int SW_RECORD_LAYOUT_GROUP_FEATURE_COUNT = 11;
    public static final int SW_RECORD_LAYOUT_GROUP_CONTENT = 3;
    public static final int SW_RECORD_LAYOUT_GROUP_CONTENT__GCHECKSUM = 0;
    public static final int SW_RECORD_LAYOUT_GROUP_CONTENT__GTIMESTAMP = 1;
    public static final int SW_RECORD_LAYOUT_GROUP_CONTENT__CHECKSUM = 2;
    public static final int SW_RECORD_LAYOUT_GROUP_CONTENT__TIMESTAMP = 3;
    public static final int SW_RECORD_LAYOUT_GROUP_CONTENT__SW_RECORD_LAYOUT_GROUP = 4;
    public static final int SW_RECORD_LAYOUT_GROUP_CONTENT__SW_RECORD_LAYOUTS = 5;
    public static final int SW_RECORD_LAYOUT_GROUP_CONTENT__SW_RECORD_LAYOUT_VS = 6;
    public static final int SW_RECORD_LAYOUT_GROUP_CONTENT__SW_RECORD_LAYOUT_GROUPS = 7;
    public static final int SW_RECORD_LAYOUT_GROUP_CONTENT_FEATURE_COUNT = 8;
    public static final int SW_RECORD_LAYOUT_V = 4;
    public static final int SW_RECORD_LAYOUT_V__GCHECKSUM = 0;
    public static final int SW_RECORD_LAYOUT_V__GTIMESTAMP = 1;
    public static final int SW_RECORD_LAYOUT_V__CHECKSUM = 2;
    public static final int SW_RECORD_LAYOUT_V__TIMESTAMP = 3;
    public static final int SW_RECORD_LAYOUT_V__SW_RECORD_LAYOUT_GROUP_CONTENT = 4;
    public static final int SW_RECORD_LAYOUT_V__BASE_TYPE = 5;
    public static final int SW_RECORD_LAYOUT_V__SW_RECORD_LAYOUT_VAXIS = 6;
    public static final int SW_RECORD_LAYOUT_V__SW_RECORD_LAYOUT_VPROP = 7;
    public static final int SW_RECORD_LAYOUT_V__SW_RECORD_LAYOUT_VINDEX = 8;
    public static final int SW_RECORD_LAYOUT_V__SW_RECORD_LAYOUT_VFIX_VALUE = 9;
    public static final int SW_RECORD_LAYOUT_V__SW_RECORD_LAYOUT = 10;
    public static final int SW_RECORD_LAYOUT_V_FEATURE_COUNT = 11;
    public static final int SW_RELATED_CONSTRS = 5;
    public static final int SW_RELATED_CONSTRS__GCHECKSUM = 0;
    public static final int SW_RELATED_CONSTRS__GTIMESTAMP = 1;
    public static final int SW_RELATED_CONSTRS__CHECKSUM = 2;
    public static final int SW_RELATED_CONSTRS__TIMESTAMP = 3;
    public static final int SW_RELATED_CONSTRS_FEATURE_COUNT = 4;
    public static final int SW_RECORD_LAYOUT = 6;
    public static final int SW_RECORD_LAYOUT__GCHECKSUM = 0;
    public static final int SW_RECORD_LAYOUT__GTIMESTAMP = 1;
    public static final int SW_RECORD_LAYOUT__CHECKSUM = 2;
    public static final int SW_RECORD_LAYOUT__TIMESTAMP = 3;
    public static final int SW_RECORD_LAYOUT__GSHORT_NAME = 4;
    public static final int SW_RECORD_LAYOUT__GUUID = 5;
    public static final int SW_RECORD_LAYOUT__GCATEGORY = 6;
    public static final int SW_RECORD_LAYOUT__GDESC = 7;
    public static final int SW_RECORD_LAYOUT__SHORT_NAME = 8;
    public static final int SW_RECORD_LAYOUT__LONG_NAME = 9;
    public static final int SW_RECORD_LAYOUT__DESC = 10;
    public static final int SW_RECORD_LAYOUT__CATEGORY = 11;
    public static final int SW_RECORD_LAYOUT__ADMIN_DATA = 12;
    public static final int SW_RECORD_LAYOUT__UUID = 13;
    public static final int SW_RECORD_LAYOUT__ALL_EXTENSIONS = 14;
    public static final int SW_RECORD_LAYOUT__CONTAINED_EXTENSIONS = 15;
    public static final int SW_RECORD_LAYOUT__GAR_PACKAGE = 16;
    public static final int SW_RECORD_LAYOUT__AR_PACKAGE = 17;
    public static final int SW_RECORD_LAYOUT__SW_RECORD_LAYOUT_GROUPS = 18;
    public static final int SW_RECORD_LAYOUT_FEATURE_COUNT = 19;

    public EClass getSwAddrMethod();

    public EClass getSwCodeSyntax();

    public EClass getSwRecordLayoutGroup();

    public EAttribute getSwRecordLayoutGroup_SwRecordLayoutGroupAxis();

    public EAttribute getSwRecordLayoutGroup_SwRecordLayoutGroupIndex();

    public EAttribute getSwRecordLayoutGroup_SwRecordLayoutGroupFrom();

    public EAttribute getSwRecordLayoutGroup_SwRecordLayoutGroupTo();

    public EAttribute getSwRecordLayoutGroup_SwRecordLayoutGroupStep();

    public EAttribute getSwRecordLayoutGroup_SwRecordLayoutComponent();

    public EReference getSwRecordLayoutGroup_SwRecordLayoutGroupContentType();

    public EClass getSwRecordLayoutGroupContent();

    public EReference getSwRecordLayoutGroupContent_SwRecordLayoutGroup();

    public EReference getSwRecordLayoutGroupContent_SwRecordLayouts();

    public EReference getSwRecordLayoutGroupContent_SwRecordLayoutVs();

    public EReference getSwRecordLayoutGroupContent_SwRecordLayoutGroups();

    public EClass getSwRecordLayoutV();

    public EReference getSwRecordLayoutV_SwRecordLayoutGroupContent();

    public EReference getSwRecordLayoutV_BaseType();

    public EAttribute getSwRecordLayoutV_SwRecordLayoutVAxis();

    public EAttribute getSwRecordLayoutV_SwRecordLayoutVProp();

    public EAttribute getSwRecordLayoutV_SwRecordLayoutVIndex();

    public EAttribute getSwRecordLayoutV_SwRecordLayoutVFixValue();

    public EReference getSwRecordLayoutV_SwRecordLayout();

    public EClass getSwRelatedConstrs();

    public EClass getSwRecordLayout();

    public EReference getSwRecordLayout_SwRecordLayoutGroups();

    public AuxillaryobjectsFactory getAuxillaryobjectsFactory();

    public static interface Literals {
        public static final EClass SW_ADDR_METHOD = eINSTANCE.getSwAddrMethod();
        public static final EClass SW_CODE_SYNTAX = eINSTANCE.getSwCodeSyntax();
        public static final EClass SW_RECORD_LAYOUT_GROUP = eINSTANCE.getSwRecordLayoutGroup();
        public static final EAttribute SW_RECORD_LAYOUT_GROUP__SW_RECORD_LAYOUT_GROUP_AXIS = eINSTANCE.getSwRecordLayoutGroup_SwRecordLayoutGroupAxis();
        public static final EAttribute SW_RECORD_LAYOUT_GROUP__SW_RECORD_LAYOUT_GROUP_INDEX = eINSTANCE.getSwRecordLayoutGroup_SwRecordLayoutGroupIndex();
        public static final EAttribute SW_RECORD_LAYOUT_GROUP__SW_RECORD_LAYOUT_GROUP_FROM = eINSTANCE.getSwRecordLayoutGroup_SwRecordLayoutGroupFrom();
        public static final EAttribute SW_RECORD_LAYOUT_GROUP__SW_RECORD_LAYOUT_GROUP_TO = eINSTANCE.getSwRecordLayoutGroup_SwRecordLayoutGroupTo();
        public static final EAttribute SW_RECORD_LAYOUT_GROUP__SW_RECORD_LAYOUT_GROUP_STEP = eINSTANCE.getSwRecordLayoutGroup_SwRecordLayoutGroupStep();
        public static final EAttribute SW_RECORD_LAYOUT_GROUP__SW_RECORD_LAYOUT_COMPONENT = eINSTANCE.getSwRecordLayoutGroup_SwRecordLayoutComponent();
        public static final EReference SW_RECORD_LAYOUT_GROUP__SW_RECORD_LAYOUT_GROUP_CONTENT_TYPE = eINSTANCE.getSwRecordLayoutGroup_SwRecordLayoutGroupContentType();
        public static final EClass SW_RECORD_LAYOUT_GROUP_CONTENT = eINSTANCE.getSwRecordLayoutGroupContent();
        public static final EReference SW_RECORD_LAYOUT_GROUP_CONTENT__SW_RECORD_LAYOUT_GROUP = eINSTANCE.getSwRecordLayoutGroupContent_SwRecordLayoutGroup();
        public static final EReference SW_RECORD_LAYOUT_GROUP_CONTENT__SW_RECORD_LAYOUTS = eINSTANCE.getSwRecordLayoutGroupContent_SwRecordLayouts();
        public static final EReference SW_RECORD_LAYOUT_GROUP_CONTENT__SW_RECORD_LAYOUT_VS = eINSTANCE.getSwRecordLayoutGroupContent_SwRecordLayoutVs();
        public static final EReference SW_RECORD_LAYOUT_GROUP_CONTENT__SW_RECORD_LAYOUT_GROUPS = eINSTANCE.getSwRecordLayoutGroupContent_SwRecordLayoutGroups();
        public static final EClass SW_RECORD_LAYOUT_V = eINSTANCE.getSwRecordLayoutV();
        public static final EReference SW_RECORD_LAYOUT_V__SW_RECORD_LAYOUT_GROUP_CONTENT = eINSTANCE.getSwRecordLayoutV_SwRecordLayoutGroupContent();
        public static final EReference SW_RECORD_LAYOUT_V__BASE_TYPE = eINSTANCE.getSwRecordLayoutV_BaseType();
        public static final EAttribute SW_RECORD_LAYOUT_V__SW_RECORD_LAYOUT_VAXIS = eINSTANCE.getSwRecordLayoutV_SwRecordLayoutVAxis();
        public static final EAttribute SW_RECORD_LAYOUT_V__SW_RECORD_LAYOUT_VPROP = eINSTANCE.getSwRecordLayoutV_SwRecordLayoutVProp();
        public static final EAttribute SW_RECORD_LAYOUT_V__SW_RECORD_LAYOUT_VINDEX = eINSTANCE.getSwRecordLayoutV_SwRecordLayoutVIndex();
        public static final EAttribute SW_RECORD_LAYOUT_V__SW_RECORD_LAYOUT_VFIX_VALUE = eINSTANCE.getSwRecordLayoutV_SwRecordLayoutVFixValue();
        public static final EReference SW_RECORD_LAYOUT_V__SW_RECORD_LAYOUT = eINSTANCE.getSwRecordLayoutV_SwRecordLayout();
        public static final EClass SW_RELATED_CONSTRS = eINSTANCE.getSwRelatedConstrs();
        public static final EClass SW_RECORD_LAYOUT = eINSTANCE.getSwRecordLayout();
        public static final EReference SW_RECORD_LAYOUT__SW_RECORD_LAYOUT_GROUPS = eINSTANCE.getSwRecordLayout_SwRecordLayoutGroups();
    }
}

