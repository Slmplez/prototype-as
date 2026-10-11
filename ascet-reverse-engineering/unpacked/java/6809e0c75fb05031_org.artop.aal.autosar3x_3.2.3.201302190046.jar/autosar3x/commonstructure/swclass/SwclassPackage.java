/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar3x.commonstructure.swclass;

import autosar3x.commonstructure.swclass.SwclassFactory;
import autosar3x.commonstructure.swclass.impl.SwclassPackageImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface SwclassPackage
extends EPackage {
    public static final String eNAME = "swclass";
    public static final String eNS_URI = "http://autosar.org/3.2.1/autosar3x/cs/sc";
    public static final String eNS_PREFIX = "";
    public static final SwclassPackage eINSTANCE = SwclassPackageImpl.init();
    public static final int SW_CALPRM_IMPL = 0;
    public static final int SW_CALPRM_IMPL__GCHECKSUM = 0;
    public static final int SW_CALPRM_IMPL__GTIMESTAMP = 1;
    public static final int SW_CALPRM_IMPL__CHECKSUM = 2;
    public static final int SW_CALPRM_IMPL__TIMESTAMP = 3;
    public static final int SW_CALPRM_IMPL__SW_CALPRM_PROTOTYPE = 4;
    public static final int SW_CALPRM_IMPL__SW_DATA_DEF_PROPS = 5;
    public static final int SW_CALPRM_IMPL_FEATURE_COUNT = 6;
    public static final int SW_CALPRM_PROTOTYPE = 1;
    public static final int SW_CALPRM_PROTOTYPE__GCHECKSUM = 0;
    public static final int SW_CALPRM_PROTOTYPE__GTIMESTAMP = 1;
    public static final int SW_CALPRM_PROTOTYPE__CHECKSUM = 2;
    public static final int SW_CALPRM_PROTOTYPE__TIMESTAMP = 3;
    public static final int SW_CALPRM_PROTOTYPE__GSHORT_NAME = 4;
    public static final int SW_CALPRM_PROTOTYPE__GUUID = 5;
    public static final int SW_CALPRM_PROTOTYPE__GCATEGORY = 6;
    public static final int SW_CALPRM_PROTOTYPE__GDESC = 7;
    public static final int SW_CALPRM_PROTOTYPE__SHORT_NAME = 8;
    public static final int SW_CALPRM_PROTOTYPE__LONG_NAME = 9;
    public static final int SW_CALPRM_PROTOTYPE__DESC = 10;
    public static final int SW_CALPRM_PROTOTYPE__CATEGORY = 11;
    public static final int SW_CALPRM_PROTOTYPE__ADMIN_DATA = 12;
    public static final int SW_CALPRM_PROTOTYPE__INTRODUCTION = 13;
    public static final int SW_CALPRM_PROTOTYPE__UUID = 14;
    public static final int SW_CALPRM_PROTOTYPE__ALL_EXTENSIONS = 15;
    public static final int SW_CALPRM_PROTOTYPE__CONTAINED_EXTENSIONS = 16;
    public static final int SW_CALPRM_PROTOTYPE__SW_CLASS_ATTR = 17;
    public static final int SW_CALPRM_PROTOTYPE__SW_DATA_DEF_PROPS = 18;
    public static final int SW_CALPRM_PROTOTYPE_FEATURE_COUNT = 19;
    public static final int SW_CLASS_ATTR = 2;
    public static final int SW_CLASS_ATTR__GCHECKSUM = 0;
    public static final int SW_CLASS_ATTR__GTIMESTAMP = 1;
    public static final int SW_CLASS_ATTR__CHECKSUM = 2;
    public static final int SW_CLASS_ATTR__TIMESTAMP = 3;
    public static final int SW_CLASS_ATTR__SW_VARIABLE_PROTOTYPES = 4;
    public static final int SW_CLASS_ATTR__SW_CALPRM_PROTOTYPES = 5;
    public static final int SW_CLASS_ATTR_FEATURE_COUNT = 6;
    public static final int SW_VARIABLE_PROTOTYPE = 3;
    public static final int SW_VARIABLE_PROTOTYPE__GCHECKSUM = 0;
    public static final int SW_VARIABLE_PROTOTYPE__GTIMESTAMP = 1;
    public static final int SW_VARIABLE_PROTOTYPE__CHECKSUM = 2;
    public static final int SW_VARIABLE_PROTOTYPE__TIMESTAMP = 3;
    public static final int SW_VARIABLE_PROTOTYPE__GSHORT_NAME = 4;
    public static final int SW_VARIABLE_PROTOTYPE__GUUID = 5;
    public static final int SW_VARIABLE_PROTOTYPE__GCATEGORY = 6;
    public static final int SW_VARIABLE_PROTOTYPE__GDESC = 7;
    public static final int SW_VARIABLE_PROTOTYPE__SHORT_NAME = 8;
    public static final int SW_VARIABLE_PROTOTYPE__LONG_NAME = 9;
    public static final int SW_VARIABLE_PROTOTYPE__DESC = 10;
    public static final int SW_VARIABLE_PROTOTYPE__CATEGORY = 11;
    public static final int SW_VARIABLE_PROTOTYPE__ADMIN_DATA = 12;
    public static final int SW_VARIABLE_PROTOTYPE__INTRODUCTION = 13;
    public static final int SW_VARIABLE_PROTOTYPE__UUID = 14;
    public static final int SW_VARIABLE_PROTOTYPE__ALL_EXTENSIONS = 15;
    public static final int SW_VARIABLE_PROTOTYPE__CONTAINED_EXTENSIONS = 16;
    public static final int SW_VARIABLE_PROTOTYPE__SW_CLASS_ATTR = 17;
    public static final int SW_VARIABLE_PROTOTYPE__SW_DATA_DEF_PROPS = 18;
    public static final int SW_VARIABLE_PROTOTYPE_FEATURE_COUNT = 19;
    public static final int SW_CLASS_PROTOTYPE = 4;
    public static final int SW_CLASS_PROTOTYPE__GCHECKSUM = 0;
    public static final int SW_CLASS_PROTOTYPE__GTIMESTAMP = 1;
    public static final int SW_CLASS_PROTOTYPE__CHECKSUM = 2;
    public static final int SW_CLASS_PROTOTYPE__TIMESTAMP = 3;
    public static final int SW_CLASS_PROTOTYPE__GSHORT_NAME = 4;
    public static final int SW_CLASS_PROTOTYPE__GUUID = 5;
    public static final int SW_CLASS_PROTOTYPE__GCATEGORY = 6;
    public static final int SW_CLASS_PROTOTYPE__GDESC = 7;
    public static final int SW_CLASS_PROTOTYPE__SHORT_NAME = 8;
    public static final int SW_CLASS_PROTOTYPE__LONG_NAME = 9;
    public static final int SW_CLASS_PROTOTYPE__DESC = 10;
    public static final int SW_CLASS_PROTOTYPE__CATEGORY = 11;
    public static final int SW_CLASS_PROTOTYPE__ADMIN_DATA = 12;
    public static final int SW_CLASS_PROTOTYPE__INTRODUCTION = 13;
    public static final int SW_CLASS_PROTOTYPE__UUID = 14;
    public static final int SW_CLASS_PROTOTYPE__ALL_EXTENSIONS = 15;
    public static final int SW_CLASS_PROTOTYPE__CONTAINED_EXTENSIONS = 16;
    public static final int SW_CLASS_PROTOTYPE_FEATURE_COUNT = 17;
    public static final int SW_SERVICE_PROTOTYPE = 5;
    public static final int SW_SERVICE_PROTOTYPE__GCHECKSUM = 0;
    public static final int SW_SERVICE_PROTOTYPE__GTIMESTAMP = 1;
    public static final int SW_SERVICE_PROTOTYPE__CHECKSUM = 2;
    public static final int SW_SERVICE_PROTOTYPE__TIMESTAMP = 3;
    public static final int SW_SERVICE_PROTOTYPE__GSHORT_NAME = 4;
    public static final int SW_SERVICE_PROTOTYPE__GUUID = 5;
    public static final int SW_SERVICE_PROTOTYPE__GCATEGORY = 6;
    public static final int SW_SERVICE_PROTOTYPE__GDESC = 7;
    public static final int SW_SERVICE_PROTOTYPE__SHORT_NAME = 8;
    public static final int SW_SERVICE_PROTOTYPE__LONG_NAME = 9;
    public static final int SW_SERVICE_PROTOTYPE__DESC = 10;
    public static final int SW_SERVICE_PROTOTYPE__CATEGORY = 11;
    public static final int SW_SERVICE_PROTOTYPE__ADMIN_DATA = 12;
    public static final int SW_SERVICE_PROTOTYPE__INTRODUCTION = 13;
    public static final int SW_SERVICE_PROTOTYPE__UUID = 14;
    public static final int SW_SERVICE_PROTOTYPE__ALL_EXTENSIONS = 15;
    public static final int SW_SERVICE_PROTOTYPE__CONTAINED_EXTENSIONS = 16;
    public static final int SW_SERVICE_PROTOTYPE_FEATURE_COUNT = 17;
    public static final int SW_CLASS_ATTR_IMPL = 6;
    public static final int SW_CLASS_ATTR_IMPL__GCHECKSUM = 0;
    public static final int SW_CLASS_ATTR_IMPL__GTIMESTAMP = 1;
    public static final int SW_CLASS_ATTR_IMPL__CHECKSUM = 2;
    public static final int SW_CLASS_ATTR_IMPL__TIMESTAMP = 3;
    public static final int SW_CLASS_ATTR_IMPL__GSHORT_NAME = 4;
    public static final int SW_CLASS_ATTR_IMPL__GUUID = 5;
    public static final int SW_CLASS_ATTR_IMPL__GCATEGORY = 6;
    public static final int SW_CLASS_ATTR_IMPL__GDESC = 7;
    public static final int SW_CLASS_ATTR_IMPL__SHORT_NAME = 8;
    public static final int SW_CLASS_ATTR_IMPL__LONG_NAME = 9;
    public static final int SW_CLASS_ATTR_IMPL__DESC = 10;
    public static final int SW_CLASS_ATTR_IMPL__CATEGORY = 11;
    public static final int SW_CLASS_ATTR_IMPL__ADMIN_DATA = 12;
    public static final int SW_CLASS_ATTR_IMPL__INTRODUCTION = 13;
    public static final int SW_CLASS_ATTR_IMPL__UUID = 14;
    public static final int SW_CLASS_ATTR_IMPL__ALL_EXTENSIONS = 15;
    public static final int SW_CLASS_ATTR_IMPL__CONTAINED_EXTENSIONS = 16;
    public static final int SW_CLASS_ATTR_IMPL__SW_DATA_DEF_PROPS = 17;
    public static final int SW_CLASS_ATTR_IMPL__SW_VARIABLE_IMPLS = 18;
    public static final int SW_CLASS_ATTR_IMPL__SW_CALPRM_IMPLS = 19;
    public static final int SW_CLASS_ATTR_IMPL_FEATURE_COUNT = 20;
    public static final int SW_CLASS_IMPL = 7;
    public static final int SW_CLASS_IMPL__GCHECKSUM = 0;
    public static final int SW_CLASS_IMPL__GTIMESTAMP = 1;
    public static final int SW_CLASS_IMPL__CHECKSUM = 2;
    public static final int SW_CLASS_IMPL__TIMESTAMP = 3;
    public static final int SW_CLASS_IMPL__SW_CLASS_ATTR_INSTANCE_IMPL = 4;
    public static final int SW_CLASS_IMPL__SW_CLASS_PROTOTYPE = 5;
    public static final int SW_CLASS_IMPL__SW_DATA_DEF_PROPS = 6;
    public static final int SW_CLASS_IMPL_FEATURE_COUNT = 7;
    public static final int SW_VARIABLE_IMPL = 8;
    public static final int SW_VARIABLE_IMPL__GCHECKSUM = 0;
    public static final int SW_VARIABLE_IMPL__GTIMESTAMP = 1;
    public static final int SW_VARIABLE_IMPL__CHECKSUM = 2;
    public static final int SW_VARIABLE_IMPL__TIMESTAMP = 3;
    public static final int SW_VARIABLE_IMPL__SW_VARIABLE_PROTOTYPE = 4;
    public static final int SW_VARIABLE_IMPL__SW_DATA_DEF_PROPS = 5;
    public static final int SW_VARIABLE_IMPL_FEATURE_COUNT = 6;
    public static final int SW_CLASS_ATTR_INSTANCE_IMPL = 9;
    public static final int SW_CLASS_ATTR_INSTANCE_IMPL__GCHECKSUM = 0;
    public static final int SW_CLASS_ATTR_INSTANCE_IMPL__GTIMESTAMP = 1;
    public static final int SW_CLASS_ATTR_INSTANCE_IMPL__CHECKSUM = 2;
    public static final int SW_CLASS_ATTR_INSTANCE_IMPL__TIMESTAMP = 3;
    public static final int SW_CLASS_ATTR_INSTANCE_IMPL__SW_CLASS_INSTANCE = 4;
    public static final int SW_CLASS_ATTR_INSTANCE_IMPL__SW_VARIABLE_IMPLS = 5;
    public static final int SW_CLASS_ATTR_INSTANCE_IMPL__SW_CALPRM_IMPLS = 6;
    public static final int SW_CLASS_ATTR_INSTANCE_IMPL__SW_CLASS_IMPLS = 7;
    public static final int SW_CLASS_ATTR_INSTANCE_IMPL_FEATURE_COUNT = 8;
    public static final int SW_CLASS_INSTANCE = 10;
    public static final int SW_CLASS_INSTANCE__GCHECKSUM = 0;
    public static final int SW_CLASS_INSTANCE__GTIMESTAMP = 1;
    public static final int SW_CLASS_INSTANCE__CHECKSUM = 2;
    public static final int SW_CLASS_INSTANCE__TIMESTAMP = 3;
    public static final int SW_CLASS_INSTANCE__GSHORT_NAME = 4;
    public static final int SW_CLASS_INSTANCE__GUUID = 5;
    public static final int SW_CLASS_INSTANCE__GCATEGORY = 6;
    public static final int SW_CLASS_INSTANCE__GDESC = 7;
    public static final int SW_CLASS_INSTANCE__SHORT_NAME = 8;
    public static final int SW_CLASS_INSTANCE__LONG_NAME = 9;
    public static final int SW_CLASS_INSTANCE__DESC = 10;
    public static final int SW_CLASS_INSTANCE__CATEGORY = 11;
    public static final int SW_CLASS_INSTANCE__ADMIN_DATA = 12;
    public static final int SW_CLASS_INSTANCE__INTRODUCTION = 13;
    public static final int SW_CLASS_INSTANCE__UUID = 14;
    public static final int SW_CLASS_INSTANCE__ALL_EXTENSIONS = 15;
    public static final int SW_CLASS_INSTANCE__CONTAINED_EXTENSIONS = 16;
    public static final int SW_CLASS_INSTANCE__GAR_PACKAGE = 17;
    public static final int SW_CLASS_INSTANCE__AR_PACKAGE = 18;
    public static final int SW_CLASS_INSTANCE__SW_DATA_DEF_PROPS = 19;
    public static final int SW_CLASS_INSTANCE__SW_CLASS_ATTR_INSTANCE_IMPL = 20;
    public static final int SW_CLASS_INSTANCE_FEATURE_COUNT = 21;

    public EClass getSwCalprmImpl();

    public EReference getSwCalprmImpl_SwCalprmPrototype();

    public EReference getSwCalprmImpl_SwDataDefProps();

    public EClass getSwCalprmPrototype();

    public EReference getSwCalprmPrototype_SwClassAttr();

    public EReference getSwCalprmPrototype_SwDataDefProps();

    public EClass getSwClassAttr();

    public EReference getSwClassAttr_SwVariablePrototypes();

    public EReference getSwClassAttr_SwCalprmPrototypes();

    public EClass getSwVariablePrototype();

    public EReference getSwVariablePrototype_SwClassAttr();

    public EReference getSwVariablePrototype_SwDataDefProps();

    public EClass getSwClassPrototype();

    public EClass getSwServicePrototype();

    public EClass getSwClassAttrImpl();

    public EReference getSwClassAttrImpl_SwDataDefProps();

    public EReference getSwClassAttrImpl_SwVariableImpls();

    public EReference getSwClassAttrImpl_SwCalprmImpls();

    public EClass getSwClassImpl();

    public EReference getSwClassImpl_SwClassAttrInstanceImpl();

    public EReference getSwClassImpl_SwClassPrototype();

    public EReference getSwClassImpl_SwDataDefProps();

    public EClass getSwVariableImpl();

    public EReference getSwVariableImpl_SwVariablePrototype();

    public EReference getSwVariableImpl_SwDataDefProps();

    public EClass getSwClassAttrInstanceImpl();

    public EReference getSwClassAttrInstanceImpl_SwClassInstance();

    public EReference getSwClassAttrInstanceImpl_SwVariableImpls();

    public EReference getSwClassAttrInstanceImpl_SwCalprmImpls();

    public EReference getSwClassAttrInstanceImpl_SwClassImpls();

    public EClass getSwClassInstance();

    public EReference getSwClassInstance_SwDataDefProps();

    public EReference getSwClassInstance_SwClassAttrInstanceImpl();

    public SwclassFactory getSwclassFactory();

    public static interface Literals {
        public static final EClass SW_CALPRM_IMPL = eINSTANCE.getSwCalprmImpl();
        public static final EReference SW_CALPRM_IMPL__SW_CALPRM_PROTOTYPE = eINSTANCE.getSwCalprmImpl_SwCalprmPrototype();
        public static final EReference SW_CALPRM_IMPL__SW_DATA_DEF_PROPS = eINSTANCE.getSwCalprmImpl_SwDataDefProps();
        public static final EClass SW_CALPRM_PROTOTYPE = eINSTANCE.getSwCalprmPrototype();
        public static final EReference SW_CALPRM_PROTOTYPE__SW_CLASS_ATTR = eINSTANCE.getSwCalprmPrototype_SwClassAttr();
        public static final EReference SW_CALPRM_PROTOTYPE__SW_DATA_DEF_PROPS = eINSTANCE.getSwCalprmPrototype_SwDataDefProps();
        public static final EClass SW_CLASS_ATTR = eINSTANCE.getSwClassAttr();
        public static final EReference SW_CLASS_ATTR__SW_VARIABLE_PROTOTYPES = eINSTANCE.getSwClassAttr_SwVariablePrototypes();
        public static final EReference SW_CLASS_ATTR__SW_CALPRM_PROTOTYPES = eINSTANCE.getSwClassAttr_SwCalprmPrototypes();
        public static final EClass SW_VARIABLE_PROTOTYPE = eINSTANCE.getSwVariablePrototype();
        public static final EReference SW_VARIABLE_PROTOTYPE__SW_CLASS_ATTR = eINSTANCE.getSwVariablePrototype_SwClassAttr();
        public static final EReference SW_VARIABLE_PROTOTYPE__SW_DATA_DEF_PROPS = eINSTANCE.getSwVariablePrototype_SwDataDefProps();
        public static final EClass SW_CLASS_PROTOTYPE = eINSTANCE.getSwClassPrototype();
        public static final EClass SW_SERVICE_PROTOTYPE = eINSTANCE.getSwServicePrototype();
        public static final EClass SW_CLASS_ATTR_IMPL = eINSTANCE.getSwClassAttrImpl();
        public static final EReference SW_CLASS_ATTR_IMPL__SW_DATA_DEF_PROPS = eINSTANCE.getSwClassAttrImpl_SwDataDefProps();
        public static final EReference SW_CLASS_ATTR_IMPL__SW_VARIABLE_IMPLS = eINSTANCE.getSwClassAttrImpl_SwVariableImpls();
        public static final EReference SW_CLASS_ATTR_IMPL__SW_CALPRM_IMPLS = eINSTANCE.getSwClassAttrImpl_SwCalprmImpls();
        public static final EClass SW_CLASS_IMPL = eINSTANCE.getSwClassImpl();
        public static final EReference SW_CLASS_IMPL__SW_CLASS_ATTR_INSTANCE_IMPL = eINSTANCE.getSwClassImpl_SwClassAttrInstanceImpl();
        public static final EReference SW_CLASS_IMPL__SW_CLASS_PROTOTYPE = eINSTANCE.getSwClassImpl_SwClassPrototype();
        public static final EReference SW_CLASS_IMPL__SW_DATA_DEF_PROPS = eINSTANCE.getSwClassImpl_SwDataDefProps();
        public static final EClass SW_VARIABLE_IMPL = eINSTANCE.getSwVariableImpl();
        public static final EReference SW_VARIABLE_IMPL__SW_VARIABLE_PROTOTYPE = eINSTANCE.getSwVariableImpl_SwVariablePrototype();
        public static final EReference SW_VARIABLE_IMPL__SW_DATA_DEF_PROPS = eINSTANCE.getSwVariableImpl_SwDataDefProps();
        public static final EClass SW_CLASS_ATTR_INSTANCE_IMPL = eINSTANCE.getSwClassAttrInstanceImpl();
        public static final EReference SW_CLASS_ATTR_INSTANCE_IMPL__SW_CLASS_INSTANCE = eINSTANCE.getSwClassAttrInstanceImpl_SwClassInstance();
        public static final EReference SW_CLASS_ATTR_INSTANCE_IMPL__SW_VARIABLE_IMPLS = eINSTANCE.getSwClassAttrInstanceImpl_SwVariableImpls();
        public static final EReference SW_CLASS_ATTR_INSTANCE_IMPL__SW_CALPRM_IMPLS = eINSTANCE.getSwClassAttrInstanceImpl_SwCalprmImpls();
        public static final EReference SW_CLASS_ATTR_INSTANCE_IMPL__SW_CLASS_IMPLS = eINSTANCE.getSwClassAttrInstanceImpl_SwClassImpls();
        public static final EClass SW_CLASS_INSTANCE = eINSTANCE.getSwClassInstance();
        public static final EReference SW_CLASS_INSTANCE__SW_DATA_DEF_PROPS = eINSTANCE.getSwClassInstance_SwDataDefProps();
        public static final EReference SW_CLASS_INSTANCE__SW_CLASS_ATTR_INSTANCE_IMPL = eINSTANCE.getSwClassInstance_SwClassAttrInstanceImpl();
    }
}

