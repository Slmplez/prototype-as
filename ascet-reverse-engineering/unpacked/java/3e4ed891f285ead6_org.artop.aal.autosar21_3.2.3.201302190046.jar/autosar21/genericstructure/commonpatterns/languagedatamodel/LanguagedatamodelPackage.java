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
package autosar21.genericstructure.commonpatterns.languagedatamodel;

import autosar21.genericstructure.commonpatterns.languagedatamodel.LanguagedatamodelFactory;
import autosar21.genericstructure.commonpatterns.languagedatamodel.impl.LanguagedatamodelPackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EEnum;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface LanguagedatamodelPackage
extends EPackage {
    public static final String eNAME = "languagedatamodel";
    public static final String eNS_URI = "http://autosar.org/2.1.5/autosar21/gs/cp/ldm";
    public static final String eNS_PREFIX = "";
    public static final LanguagedatamodelPackage eINSTANCE = LanguagedatamodelPackageImpl.init();
    public static final int L1 = 0;
    public static final int L1__GCHECKSUM = 0;
    public static final int L1__GTIMESTAMP = 1;
    public static final int L1__CHECKSUM = 2;
    public static final int L1__TIMESTAMP = 3;
    public static final int L1__MIXED = 4;
    public static final int L1__ML_DATA_MODEL1 = 5;
    public static final int L1__L = 6;
    public static final int L1_FEATURE_COUNT = 7;
    public static final int L10 = 1;
    public static final int L10__GCHECKSUM = 0;
    public static final int L10__GTIMESTAMP = 1;
    public static final int L10__CHECKSUM = 2;
    public static final int L10__TIMESTAMP = 3;
    public static final int L10__MIXED = 4;
    public static final int L10__ML_DATA_MODEL10 = 5;
    public static final int L10__L = 6;
    public static final int L10_FEATURE_COUNT = 7;
    public static final int L2 = 2;
    public static final int L2__GCHECKSUM = 0;
    public static final int L2__GTIMESTAMP = 1;
    public static final int L2__CHECKSUM = 2;
    public static final int L2__TIMESTAMP = 3;
    public static final int L2__MIXED = 4;
    public static final int L2__ML_DATA_MODEL2 = 5;
    public static final int L2__L = 6;
    public static final int L2_FEATURE_COUNT = 7;
    public static final int L3 = 3;
    public static final int L3__GCHECKSUM = 0;
    public static final int L3__GTIMESTAMP = 1;
    public static final int L3__CHECKSUM = 2;
    public static final int L3__TIMESTAMP = 3;
    public static final int L3__MIXED = 4;
    public static final int L3__ML_DATA_MODEL3 = 5;
    public static final int L3__L = 6;
    public static final int L3_FEATURE_COUNT = 7;
    public static final int L4 = 4;
    public static final int L4__GCHECKSUM = 0;
    public static final int L4__GTIMESTAMP = 1;
    public static final int L4__CHECKSUM = 2;
    public static final int L4__TIMESTAMP = 3;
    public static final int L4__MIXED = 4;
    public static final int L4__ML_DATA_MODEL4 = 5;
    public static final int L4__L = 6;
    public static final int L4_FEATURE_COUNT = 7;
    public static final int L5 = 5;
    public static final int L5__GCHECKSUM = 0;
    public static final int L5__GTIMESTAMP = 1;
    public static final int L5__CHECKSUM = 2;
    public static final int L5__TIMESTAMP = 3;
    public static final int L5__MIXED = 4;
    public static final int L5__ML_DATA_MODEL5 = 5;
    public static final int L5__L = 6;
    public static final int L5_FEATURE_COUNT = 7;
    public static final int ML_DATA_MODEL1 = 6;
    public static final int ML_DATA_MODEL1__GCHECKSUM = 0;
    public static final int ML_DATA_MODEL1__GTIMESTAMP = 1;
    public static final int ML_DATA_MODEL1__CHECKSUM = 2;
    public static final int ML_DATA_MODEL1__TIMESTAMP = 3;
    public static final int ML_DATA_MODEL1__L1S = 4;
    public static final int ML_DATA_MODEL1_FEATURE_COUNT = 5;
    public static final int ML_DATA_MODEL10 = 7;
    public static final int ML_DATA_MODEL10__GCHECKSUM = 0;
    public static final int ML_DATA_MODEL10__GTIMESTAMP = 1;
    public static final int ML_DATA_MODEL10__CHECKSUM = 2;
    public static final int ML_DATA_MODEL10__TIMESTAMP = 3;
    public static final int ML_DATA_MODEL10__L10S = 4;
    public static final int ML_DATA_MODEL10_FEATURE_COUNT = 5;
    public static final int ML_DATA_MODEL2 = 8;
    public static final int ML_DATA_MODEL2__GCHECKSUM = 0;
    public static final int ML_DATA_MODEL2__GTIMESTAMP = 1;
    public static final int ML_DATA_MODEL2__CHECKSUM = 2;
    public static final int ML_DATA_MODEL2__TIMESTAMP = 3;
    public static final int ML_DATA_MODEL2__L2S = 4;
    public static final int ML_DATA_MODEL2_FEATURE_COUNT = 5;
    public static final int ML_DATA_MODEL3 = 9;
    public static final int ML_DATA_MODEL3__GCHECKSUM = 0;
    public static final int ML_DATA_MODEL3__GTIMESTAMP = 1;
    public static final int ML_DATA_MODEL3__CHECKSUM = 2;
    public static final int ML_DATA_MODEL3__TIMESTAMP = 3;
    public static final int ML_DATA_MODEL3__L3S = 4;
    public static final int ML_DATA_MODEL3_FEATURE_COUNT = 5;
    public static final int ML_DATA_MODEL4 = 10;
    public static final int ML_DATA_MODEL4__GCHECKSUM = 0;
    public static final int ML_DATA_MODEL4__GTIMESTAMP = 1;
    public static final int ML_DATA_MODEL4__CHECKSUM = 2;
    public static final int ML_DATA_MODEL4__TIMESTAMP = 3;
    public static final int ML_DATA_MODEL4__L4S = 4;
    public static final int ML_DATA_MODEL4_FEATURE_COUNT = 5;
    public static final int ML_DATA_MODEL5 = 11;
    public static final int ML_DATA_MODEL5__GCHECKSUM = 0;
    public static final int ML_DATA_MODEL5__GTIMESTAMP = 1;
    public static final int ML_DATA_MODEL5__CHECKSUM = 2;
    public static final int ML_DATA_MODEL5__TIMESTAMP = 3;
    public static final int ML_DATA_MODEL5__L5S = 4;
    public static final int ML_DATA_MODEL5_FEATURE_COUNT = 5;
    public static final int LENUM = 12;

    public EClass getL1();

    public EReference getL1_MlDataModel1();

    public EAttribute getL1_L();

    public EClass getL10();

    public EReference getL10_MlDataModel10();

    public EAttribute getL10_L();

    public EClass getL2();

    public EReference getL2_MlDataModel2();

    public EAttribute getL2_L();

    public EClass getL3();

    public EReference getL3_MlDataModel3();

    public EAttribute getL3_L();

    public EClass getL4();

    public EReference getL4_MlDataModel4();

    public EAttribute getL4_L();

    public EClass getL5();

    public EReference getL5_MlDataModel5();

    public EAttribute getL5_L();

    public EClass getMlDataModel1();

    public EReference getMlDataModel1_L1s();

    public EClass getMlDataModel10();

    public EReference getMlDataModel10_L10s();

    public EClass getMlDataModel2();

    public EReference getMlDataModel2_L2s();

    public EClass getMlDataModel3();

    public EReference getMlDataModel3_L3s();

    public EClass getMlDataModel4();

    public EReference getMlDataModel4_L4s();

    public EClass getMlDataModel5();

    public EReference getMlDataModel5_L5s();

    public EEnum getLEnum();

    public LanguagedatamodelFactory getLanguagedatamodelFactory();

    public static interface Literals {
        public static final EClass L1 = eINSTANCE.getL1();
        public static final EReference L1__ML_DATA_MODEL1 = eINSTANCE.getL1_MlDataModel1();
        public static final EAttribute L1__L = eINSTANCE.getL1_L();
        public static final EClass L10 = eINSTANCE.getL10();
        public static final EReference L10__ML_DATA_MODEL10 = eINSTANCE.getL10_MlDataModel10();
        public static final EAttribute L10__L = eINSTANCE.getL10_L();
        public static final EClass L2 = eINSTANCE.getL2();
        public static final EReference L2__ML_DATA_MODEL2 = eINSTANCE.getL2_MlDataModel2();
        public static final EAttribute L2__L = eINSTANCE.getL2_L();
        public static final EClass L3 = eINSTANCE.getL3();
        public static final EReference L3__ML_DATA_MODEL3 = eINSTANCE.getL3_MlDataModel3();
        public static final EAttribute L3__L = eINSTANCE.getL3_L();
        public static final EClass L4 = eINSTANCE.getL4();
        public static final EReference L4__ML_DATA_MODEL4 = eINSTANCE.getL4_MlDataModel4();
        public static final EAttribute L4__L = eINSTANCE.getL4_L();
        public static final EClass L5 = eINSTANCE.getL5();
        public static final EReference L5__ML_DATA_MODEL5 = eINSTANCE.getL5_MlDataModel5();
        public static final EAttribute L5__L = eINSTANCE.getL5_L();
        public static final EClass ML_DATA_MODEL1 = eINSTANCE.getMlDataModel1();
        public static final EReference ML_DATA_MODEL1__L1S = eINSTANCE.getMlDataModel1_L1s();
        public static final EClass ML_DATA_MODEL10 = eINSTANCE.getMlDataModel10();
        public static final EReference ML_DATA_MODEL10__L10S = eINSTANCE.getMlDataModel10_L10s();
        public static final EClass ML_DATA_MODEL2 = eINSTANCE.getMlDataModel2();
        public static final EReference ML_DATA_MODEL2__L2S = eINSTANCE.getMlDataModel2_L2s();
        public static final EClass ML_DATA_MODEL3 = eINSTANCE.getMlDataModel3();
        public static final EReference ML_DATA_MODEL3__L3S = eINSTANCE.getMlDataModel3_L3s();
        public static final EClass ML_DATA_MODEL4 = eINSTANCE.getMlDataModel4();
        public static final EReference ML_DATA_MODEL4__L4S = eINSTANCE.getMlDataModel4_L4s();
        public static final EClass ML_DATA_MODEL5 = eINSTANCE.getMlDataModel5();
        public static final EReference ML_DATA_MODEL5__L5S = eINSTANCE.getMlDataModel5_L5s();
        public static final EEnum LENUM = eINSTANCE.getLEnum();
    }
}

