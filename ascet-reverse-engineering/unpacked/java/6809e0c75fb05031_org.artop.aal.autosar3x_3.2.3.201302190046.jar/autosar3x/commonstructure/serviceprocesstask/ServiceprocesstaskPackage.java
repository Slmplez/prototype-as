/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EAttribute
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EEnum
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar3x.commonstructure.serviceprocesstask;

import autosar3x.commonstructure.serviceprocesstask.ServiceprocesstaskFactory;
import autosar3x.commonstructure.serviceprocesstask.impl.ServiceprocesstaskPackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EEnum;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface ServiceprocesstaskPackage
extends EPackage {
    public static final String eNAME = "serviceprocesstask";
    public static final String eNS_URI = "http://autosar.org/3.2.1/autosar3x/cs/spt";
    public static final String eNS_PREFIX = "";
    public static final ServiceprocesstaskPackage eINSTANCE = ServiceprocesstaskPackageImpl.init();
    public static final int SW_SERVICE = 0;
    public static final int SW_SERVICE__GCHECKSUM = 0;
    public static final int SW_SERVICE__GTIMESTAMP = 1;
    public static final int SW_SERVICE__CHECKSUM = 2;
    public static final int SW_SERVICE__TIMESTAMP = 3;
    public static final int SW_SERVICE__GSHORT_NAME = 4;
    public static final int SW_SERVICE__GUUID = 5;
    public static final int SW_SERVICE__GCATEGORY = 6;
    public static final int SW_SERVICE__GDESC = 7;
    public static final int SW_SERVICE__SHORT_NAME = 8;
    public static final int SW_SERVICE__LONG_NAME = 9;
    public static final int SW_SERVICE__DESC = 10;
    public static final int SW_SERVICE__CATEGORY = 11;
    public static final int SW_SERVICE__ADMIN_DATA = 12;
    public static final int SW_SERVICE__INTRODUCTION = 13;
    public static final int SW_SERVICE__UUID = 14;
    public static final int SW_SERVICE__ALL_EXTENSIONS = 15;
    public static final int SW_SERVICE__CONTAINED_EXTENSIONS = 16;
    public static final int SW_SERVICE__GAR_PACKAGE = 17;
    public static final int SW_SERVICE__AR_PACKAGE = 18;
    public static final int SW_SERVICE__SW_SERVICE_RETURN = 19;
    public static final int SW_SERVICE__SW_SERVICE_ARGS = 20;
    public static final int SW_SERVICE__SW_SERVICE_ACCESSED_ELEMENT_SETS = 21;
    public static final int SW_SERVICE__SW_SERVICE_PROPS = 22;
    public static final int SW_SERVICE_FEATURE_COUNT = 23;
    public static final int SW_SERVICE_ARG = 1;
    public static final int SW_SERVICE_ARG__GCHECKSUM = 0;
    public static final int SW_SERVICE_ARG__GTIMESTAMP = 1;
    public static final int SW_SERVICE_ARG__CHECKSUM = 2;
    public static final int SW_SERVICE_ARG__TIMESTAMP = 3;
    public static final int SW_SERVICE_ARG__GSHORT_NAME = 4;
    public static final int SW_SERVICE_ARG__GUUID = 5;
    public static final int SW_SERVICE_ARG__GCATEGORY = 6;
    public static final int SW_SERVICE_ARG__GDESC = 7;
    public static final int SW_SERVICE_ARG__SHORT_NAME = 8;
    public static final int SW_SERVICE_ARG__LONG_NAME = 9;
    public static final int SW_SERVICE_ARG__DESC = 10;
    public static final int SW_SERVICE_ARG__CATEGORY = 11;
    public static final int SW_SERVICE_ARG__ADMIN_DATA = 12;
    public static final int SW_SERVICE_ARG__INTRODUCTION = 13;
    public static final int SW_SERVICE_ARG__UUID = 14;
    public static final int SW_SERVICE_ARG__ALL_EXTENSIONS = 15;
    public static final int SW_SERVICE_ARG__CONTAINED_EXTENSIONS = 16;
    public static final int SW_SERVICE_ARG__SW_ARRAYSIZE = 17;
    public static final int SW_SERVICE_ARG__SW_DATA_DEF_PROPS = 18;
    public static final int SW_SERVICE_ARG_FEATURE_COUNT = 19;
    public static final int SW_SERVICE_PROPS = 2;
    public static final int SW_SERVICE_PROPS__GCHECKSUM = 0;
    public static final int SW_SERVICE_PROPS__GTIMESTAMP = 1;
    public static final int SW_SERVICE_PROPS__CHECKSUM = 2;
    public static final int SW_SERVICE_PROPS__TIMESTAMP = 3;
    public static final int SW_SERVICE_PROPS__SW_SERVICE = 4;
    public static final int SW_SERVICE_PROPS__SW_SERVICE_REENTRANCE = 5;
    public static final int SW_SERVICE_PROPS__SW_IMPL_POLICY = 6;
    public static final int SW_SERVICE_PROPS_FEATURE_COUNT = 7;
    public static final int SW_SERVICE_ACCESSED_ELEMENT_SET = 3;
    public static final int SW_SERVICE_ACCESSED_ELEMENT_SET__GCHECKSUM = 0;
    public static final int SW_SERVICE_ACCESSED_ELEMENT_SET__GTIMESTAMP = 1;
    public static final int SW_SERVICE_ACCESSED_ELEMENT_SET__CHECKSUM = 2;
    public static final int SW_SERVICE_ACCESSED_ELEMENT_SET__TIMESTAMP = 3;
    public static final int SW_SERVICE_ACCESSED_ELEMENT_SET__SW_SERVICE = 4;
    public static final int SW_SERVICE_ACCESSED_ELEMENT_SET_FEATURE_COUNT = 5;
    public static final int SW_SERVICE_IMPL = 4;
    public static final int SW_SERVICE_IMPL__GCHECKSUM = 0;
    public static final int SW_SERVICE_IMPL__GTIMESTAMP = 1;
    public static final int SW_SERVICE_IMPL__CHECKSUM = 2;
    public static final int SW_SERVICE_IMPL__TIMESTAMP = 3;
    public static final int SW_SERVICE_IMPL_FEATURE_COUNT = 4;
    public static final int SW_SERVICE_IMPL_POLICY_ENUM = 5;
    public static final int SW_SERVICE_REENTRANCE_ENUM = 6;

    public EClass getSwService();

    public EReference getSwService_SwServiceReturn();

    public EReference getSwService_SwServiceArgs();

    public EReference getSwService_SwServiceAccessedElementSets();

    public EReference getSwService_SwServiceProps();

    public EClass getSwServiceArg();

    public EReference getSwServiceArg_SwArraysize();

    public EReference getSwServiceArg_SwDataDefProps();

    public EClass getSwServiceProps();

    public EReference getSwServiceProps_SwService();

    public EAttribute getSwServiceProps_SwServiceReentrance();

    public EAttribute getSwServiceProps_SwImplPolicy();

    public EClass getSwServiceAccessedElementSet();

    public EReference getSwServiceAccessedElementSet_SwService();

    public EClass getSwServiceImpl();

    public EEnum getSwServiceImplPolicyEnum();

    public EEnum getSwServiceReentranceEnum();

    public ServiceprocesstaskFactory getServiceprocesstaskFactory();

    public static interface Literals {
        public static final EClass SW_SERVICE = eINSTANCE.getSwService();
        public static final EReference SW_SERVICE__SW_SERVICE_RETURN = eINSTANCE.getSwService_SwServiceReturn();
        public static final EReference SW_SERVICE__SW_SERVICE_ARGS = eINSTANCE.getSwService_SwServiceArgs();
        public static final EReference SW_SERVICE__SW_SERVICE_ACCESSED_ELEMENT_SETS = eINSTANCE.getSwService_SwServiceAccessedElementSets();
        public static final EReference SW_SERVICE__SW_SERVICE_PROPS = eINSTANCE.getSwService_SwServiceProps();
        public static final EClass SW_SERVICE_ARG = eINSTANCE.getSwServiceArg();
        public static final EReference SW_SERVICE_ARG__SW_ARRAYSIZE = eINSTANCE.getSwServiceArg_SwArraysize();
        public static final EReference SW_SERVICE_ARG__SW_DATA_DEF_PROPS = eINSTANCE.getSwServiceArg_SwDataDefProps();
        public static final EClass SW_SERVICE_PROPS = eINSTANCE.getSwServiceProps();
        public static final EReference SW_SERVICE_PROPS__SW_SERVICE = eINSTANCE.getSwServiceProps_SwService();
        public static final EAttribute SW_SERVICE_PROPS__SW_SERVICE_REENTRANCE = eINSTANCE.getSwServiceProps_SwServiceReentrance();
        public static final EAttribute SW_SERVICE_PROPS__SW_IMPL_POLICY = eINSTANCE.getSwServiceProps_SwImplPolicy();
        public static final EClass SW_SERVICE_ACCESSED_ELEMENT_SET = eINSTANCE.getSwServiceAccessedElementSet();
        public static final EReference SW_SERVICE_ACCESSED_ELEMENT_SET__SW_SERVICE = eINSTANCE.getSwServiceAccessedElementSet_SwService();
        public static final EClass SW_SERVICE_IMPL = eINSTANCE.getSwServiceImpl();
        public static final EEnum SW_SERVICE_IMPL_POLICY_ENUM = eINSTANCE.getSwServiceImplPolicyEnum();
        public static final EEnum SW_SERVICE_REENTRANCE_ENUM = eINSTANCE.getSwServiceReentranceEnum();
    }
}

