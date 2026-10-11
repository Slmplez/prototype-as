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
package autosar40.commonstructure.serviceprocesstask;

import autosar40.commonstructure.serviceprocesstask.ServiceprocesstaskFactory;
import autosar40.commonstructure.serviceprocesstask.impl.ServiceprocesstaskPackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EEnum;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface ServiceprocesstaskPackage
extends EPackage {
    public static final String eNAME = "serviceprocesstask";
    public static final String eNS_URI = "http://autosar.org/schema/r4.0/autosar40/cs/spt";
    public static final String eNS_PREFIX = "";
    public static final ServiceprocesstaskPackage eINSTANCE = ServiceprocesstaskPackageImpl.init();
    public static final int SW_SERVICE_ARG = 0;
    public static final int SW_SERVICE_ARG__GCHECKSUM = 0;
    public static final int SW_SERVICE_ARG__GTIMESTAMP = 1;
    public static final int SW_SERVICE_ARG__CHECKSUM = 2;
    public static final int SW_SERVICE_ARG__TIMESTAMP = 3;
    public static final int SW_SERVICE_ARG__GSHORT_NAME = 4;
    public static final int SW_SERVICE_ARG__SHORT_NAME = 5;
    public static final int SW_SERVICE_ARG__LONG_NAME = 6;
    public static final int SW_SERVICE_ARG__GUUID = 7;
    public static final int SW_SERVICE_ARG__GCATEGORY = 8;
    public static final int SW_SERVICE_ARG__GDESC = 9;
    public static final int SW_SERVICE_ARG__DESC = 10;
    public static final int SW_SERVICE_ARG__CATEGORY = 11;
    public static final int SW_SERVICE_ARG__ADMIN_DATA = 12;
    public static final int SW_SERVICE_ARG__INTRODUCTION = 13;
    public static final int SW_SERVICE_ARG__ANNOTATIONS = 14;
    public static final int SW_SERVICE_ARG__UUID = 15;
    public static final int SW_SERVICE_ARG__ALL_EXTENSIONS = 16;
    public static final int SW_SERVICE_ARG__CONTAINED_EXTENSIONS = 17;
    public static final int SW_SERVICE_ARG__DIRECTION = 18;
    public static final int SW_SERVICE_ARG__SW_ARRAYSIZE = 19;
    public static final int SW_SERVICE_ARG__SW_DATA_DEF_PROPS = 20;
    public static final int SW_SERVICE_ARG_FEATURE_COUNT = 21;
    public static final int SW_SERVICE_REENTRANCE_ENUM = 1;
    public static final int SW_SERVICE_IMPL_POLICY_ENUM = 2;

    public EClass getSwServiceArg();

    public EAttribute getSwServiceArg_Direction();

    public EReference getSwServiceArg_SwArraysize();

    public EReference getSwServiceArg_SwDataDefProps();

    public EEnum getSwServiceReentranceEnum();

    public EEnum getSwServiceImplPolicyEnum();

    public ServiceprocesstaskFactory getServiceprocesstaskFactory();

    public static interface Literals {
        public static final EClass SW_SERVICE_ARG = eINSTANCE.getSwServiceArg();
        public static final EAttribute SW_SERVICE_ARG__DIRECTION = eINSTANCE.getSwServiceArg_Direction();
        public static final EReference SW_SERVICE_ARG__SW_ARRAYSIZE = eINSTANCE.getSwServiceArg_SwArraysize();
        public static final EReference SW_SERVICE_ARG__SW_DATA_DEF_PROPS = eINSTANCE.getSwServiceArg_SwDataDefProps();
        public static final EEnum SW_SERVICE_REENTRANCE_ENUM = eINSTANCE.getSwServiceReentranceEnum();
        public static final EEnum SW_SERVICE_IMPL_POLICY_ENUM = eINSTANCE.getSwServiceImplPolicyEnum();
    }
}

