/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EAttribute
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EDataType
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar40.swcomponent.datatype.recordlayout;

import autosar40.swcomponent.datatype.recordlayout.RecordlayoutFactory;
import autosar40.swcomponent.datatype.recordlayout.impl.RecordlayoutPackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EDataType;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface RecordlayoutPackage
extends EPackage {
    public static final String eNAME = "recordlayout";
    public static final String eNS_URI = "http://autosar.org/schema/r4.0/autosar40/swc/d/rl";
    public static final String eNS_PREFIX = "";
    public static final RecordlayoutPackage eINSTANCE = RecordlayoutPackageImpl.init();
    public static final int SW_RECORD_LAYOUT = 0;
    public static final int SW_RECORD_LAYOUT__GCHECKSUM = 0;
    public static final int SW_RECORD_LAYOUT__GTIMESTAMP = 1;
    public static final int SW_RECORD_LAYOUT__CHECKSUM = 2;
    public static final int SW_RECORD_LAYOUT__TIMESTAMP = 3;
    public static final int SW_RECORD_LAYOUT__GSHORT_NAME = 4;
    public static final int SW_RECORD_LAYOUT__SHORT_NAME = 5;
    public static final int SW_RECORD_LAYOUT__LONG_NAME = 6;
    public static final int SW_RECORD_LAYOUT__GUUID = 7;
    public static final int SW_RECORD_LAYOUT__GCATEGORY = 8;
    public static final int SW_RECORD_LAYOUT__GDESC = 9;
    public static final int SW_RECORD_LAYOUT__DESC = 10;
    public static final int SW_RECORD_LAYOUT__CATEGORY = 11;
    public static final int SW_RECORD_LAYOUT__ADMIN_DATA = 12;
    public static final int SW_RECORD_LAYOUT__INTRODUCTION = 13;
    public static final int SW_RECORD_LAYOUT__ANNOTATIONS = 14;
    public static final int SW_RECORD_LAYOUT__UUID = 15;
    public static final int SW_RECORD_LAYOUT__ALL_EXTENSIONS = 16;
    public static final int SW_RECORD_LAYOUT__CONTAINED_EXTENSIONS = 17;
    public static final int SW_RECORD_LAYOUT__GAR_PACKAGE = 18;
    public static final int SW_RECORD_LAYOUT__AR_PACKAGE = 19;
    public static final int SW_RECORD_LAYOUT__VARIATION_POINT = 20;
    public static final int SW_RECORD_LAYOUT__SW_RECORD_LAYOUT_GROUP = 21;
    public static final int SW_RECORD_LAYOUT_FEATURE_COUNT = 22;
    public static final int SW_RECORD_LAYOUT_GROUP = 1;
    public static final int SW_RECORD_LAYOUT_GROUP__GCHECKSUM = 0;
    public static final int SW_RECORD_LAYOUT_GROUP__GTIMESTAMP = 1;
    public static final int SW_RECORD_LAYOUT_GROUP__CHECKSUM = 2;
    public static final int SW_RECORD_LAYOUT_GROUP__TIMESTAMP = 3;
    public static final int SW_RECORD_LAYOUT_GROUP__SHORT_LABEL = 4;
    public static final int SW_RECORD_LAYOUT_GROUP__CATEGORY = 5;
    public static final int SW_RECORD_LAYOUT_GROUP__DESC = 6;
    public static final int SW_RECORD_LAYOUT_GROUP__SW_RECORD_LAYOUT_GROUP_AXIS = 7;
    public static final int SW_RECORD_LAYOUT_GROUP__SW_RECORD_LAYOUT_GROUP_INDEX = 8;
    public static final int SW_RECORD_LAYOUT_GROUP__SW_GENERIC_AXIS_PARAM_TYPE = 9;
    public static final int SW_RECORD_LAYOUT_GROUP__SW_RECORD_LAYOUT_GROUP_FROM = 10;
    public static final int SW_RECORD_LAYOUT_GROUP__SW_RECORD_LAYOUT_GROUP_TO = 11;
    public static final int SW_RECORD_LAYOUT_GROUP__SW_RECORD_LAYOUT_GROUP_STEP = 12;
    public static final int SW_RECORD_LAYOUT_GROUP__SW_RECORD_LAYOUT_COMPONENT = 13;
    public static final int SW_RECORD_LAYOUT_GROUP__SW_RECORD_LAYOUT_GROUP_CONTENT_TYPE = 14;
    public static final int SW_RECORD_LAYOUT_GROUP_FEATURE_COUNT = 15;
    public static final int SW_RECORD_LAYOUT_GROUP_CONTENT = 2;
    public static final int SW_RECORD_LAYOUT_GROUP_CONTENT__GCHECKSUM = 0;
    public static final int SW_RECORD_LAYOUT_GROUP_CONTENT__GTIMESTAMP = 1;
    public static final int SW_RECORD_LAYOUT_GROUP_CONTENT__CHECKSUM = 2;
    public static final int SW_RECORD_LAYOUT_GROUP_CONTENT__TIMESTAMP = 3;
    public static final int SW_RECORD_LAYOUT_GROUP_CONTENT__SW_RECORD_LAYOUT_GROUP = 4;
    public static final int SW_RECORD_LAYOUT_GROUP_CONTENT__SW_RECORD_LAYOUTS = 5;
    public static final int SW_RECORD_LAYOUT_GROUP_CONTENT__SW_RECORD_LAYOUT_VS = 6;
    public static final int SW_RECORD_LAYOUT_GROUP_CONTENT__SW_RECORD_LAYOUT_GROUPS = 7;
    public static final int SW_RECORD_LAYOUT_GROUP_CONTENT_FEATURE_COUNT = 8;
    public static final int SW_RECORD_LAYOUT_V = 3;
    public static final int SW_RECORD_LAYOUT_V__GCHECKSUM = 0;
    public static final int SW_RECORD_LAYOUT_V__GTIMESTAMP = 1;
    public static final int SW_RECORD_LAYOUT_V__CHECKSUM = 2;
    public static final int SW_RECORD_LAYOUT_V__TIMESTAMP = 3;
    public static final int SW_RECORD_LAYOUT_V__SW_RECORD_LAYOUT_GROUP_CONTENT = 4;
    public static final int SW_RECORD_LAYOUT_V__SHORT_LABEL = 5;
    public static final int SW_RECORD_LAYOUT_V__CATEGORY = 6;
    public static final int SW_RECORD_LAYOUT_V__DESC = 7;
    public static final int SW_RECORD_LAYOUT_V__BASE_TYPE = 8;
    public static final int SW_RECORD_LAYOUT_V__SW_RECORD_LAYOUT_VAXIS = 9;
    public static final int SW_RECORD_LAYOUT_V__SW_RECORD_LAYOUT_VPROP = 10;
    public static final int SW_RECORD_LAYOUT_V__SW_RECORD_LAYOUT_VINDEX = 11;
    public static final int SW_RECORD_LAYOUT_V__SW_GENERIC_AXIS_PARAM_TYPE = 12;
    public static final int SW_RECORD_LAYOUT_V__SW_RECORD_LAYOUT_VFIX_VALUE = 13;
    public static final int SW_RECORD_LAYOUT_V_FEATURE_COUNT = 14;
    public static final int ASAM_RECORD_LAYOUT_SEMANTICS = 4;
    public static final int AXIS_INDEX_TYPE = 5;
    public static final int RECORD_LAYOUT_ITERATOR_POINT = 6;

    public EClass getSwRecordLayout();

    public EReference getSwRecordLayout_SwRecordLayoutGroup();

    public EClass getSwRecordLayoutGroup();

    public EAttribute getSwRecordLayoutGroup_ShortLabel();

    public EAttribute getSwRecordLayoutGroup_Category();

    public EReference getSwRecordLayoutGroup_Desc();

    public EAttribute getSwRecordLayoutGroup_SwRecordLayoutGroupAxis();

    public EAttribute getSwRecordLayoutGroup_SwRecordLayoutGroupIndex();

    public EReference getSwRecordLayoutGroup_SwGenericAxisParamType();

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

    public EAttribute getSwRecordLayoutV_ShortLabel();

    public EAttribute getSwRecordLayoutV_Category();

    public EReference getSwRecordLayoutV_Desc();

    public EReference getSwRecordLayoutV_BaseType();

    public EAttribute getSwRecordLayoutV_SwRecordLayoutVAxis();

    public EAttribute getSwRecordLayoutV_SwRecordLayoutVProp();

    public EAttribute getSwRecordLayoutV_SwRecordLayoutVIndex();

    public EReference getSwRecordLayoutV_SwGenericAxisParamType();

    public EAttribute getSwRecordLayoutV_SwRecordLayoutVFixValue();

    public EDataType getAsamRecordLayoutSemantics();

    public EDataType getAxisIndexType();

    public EDataType getRecordLayoutIteratorPoint();

    public RecordlayoutFactory getRecordlayoutFactory();

    public static interface Literals {
        public static final EClass SW_RECORD_LAYOUT = eINSTANCE.getSwRecordLayout();
        public static final EReference SW_RECORD_LAYOUT__SW_RECORD_LAYOUT_GROUP = eINSTANCE.getSwRecordLayout_SwRecordLayoutGroup();
        public static final EClass SW_RECORD_LAYOUT_GROUP = eINSTANCE.getSwRecordLayoutGroup();
        public static final EAttribute SW_RECORD_LAYOUT_GROUP__SHORT_LABEL = eINSTANCE.getSwRecordLayoutGroup_ShortLabel();
        public static final EAttribute SW_RECORD_LAYOUT_GROUP__CATEGORY = eINSTANCE.getSwRecordLayoutGroup_Category();
        public static final EReference SW_RECORD_LAYOUT_GROUP__DESC = eINSTANCE.getSwRecordLayoutGroup_Desc();
        public static final EAttribute SW_RECORD_LAYOUT_GROUP__SW_RECORD_LAYOUT_GROUP_AXIS = eINSTANCE.getSwRecordLayoutGroup_SwRecordLayoutGroupAxis();
        public static final EAttribute SW_RECORD_LAYOUT_GROUP__SW_RECORD_LAYOUT_GROUP_INDEX = eINSTANCE.getSwRecordLayoutGroup_SwRecordLayoutGroupIndex();
        public static final EReference SW_RECORD_LAYOUT_GROUP__SW_GENERIC_AXIS_PARAM_TYPE = eINSTANCE.getSwRecordLayoutGroup_SwGenericAxisParamType();
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
        public static final EAttribute SW_RECORD_LAYOUT_V__SHORT_LABEL = eINSTANCE.getSwRecordLayoutV_ShortLabel();
        public static final EAttribute SW_RECORD_LAYOUT_V__CATEGORY = eINSTANCE.getSwRecordLayoutV_Category();
        public static final EReference SW_RECORD_LAYOUT_V__DESC = eINSTANCE.getSwRecordLayoutV_Desc();
        public static final EReference SW_RECORD_LAYOUT_V__BASE_TYPE = eINSTANCE.getSwRecordLayoutV_BaseType();
        public static final EAttribute SW_RECORD_LAYOUT_V__SW_RECORD_LAYOUT_VAXIS = eINSTANCE.getSwRecordLayoutV_SwRecordLayoutVAxis();
        public static final EAttribute SW_RECORD_LAYOUT_V__SW_RECORD_LAYOUT_VPROP = eINSTANCE.getSwRecordLayoutV_SwRecordLayoutVProp();
        public static final EAttribute SW_RECORD_LAYOUT_V__SW_RECORD_LAYOUT_VINDEX = eINSTANCE.getSwRecordLayoutV_SwRecordLayoutVIndex();
        public static final EReference SW_RECORD_LAYOUT_V__SW_GENERIC_AXIS_PARAM_TYPE = eINSTANCE.getSwRecordLayoutV_SwGenericAxisParamType();
        public static final EAttribute SW_RECORD_LAYOUT_V__SW_RECORD_LAYOUT_VFIX_VALUE = eINSTANCE.getSwRecordLayoutV_SwRecordLayoutVFixValue();
        public static final EDataType ASAM_RECORD_LAYOUT_SEMANTICS = eINSTANCE.getAsamRecordLayoutSemantics();
        public static final EDataType AXIS_INDEX_TYPE = eINSTANCE.getAxisIndexType();
        public static final EDataType RECORD_LAYOUT_ITERATOR_POINT = eINSTANCE.getRecordLayoutIteratorPoint();
    }
}

