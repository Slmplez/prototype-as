/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EAttribute
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar3x.genericstructure.commonpatterns.multilanguagedata;

import autosar3x.genericstructure.commonpatterns.multilanguagedata.MultilanguagedataFactory;
import autosar3x.genericstructure.commonpatterns.multilanguagedata.impl.MultilanguagedataPackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface MultilanguagedataPackage
extends EPackage {
    public static final String eNAME = "multilanguagedata";
    public static final String eNS_URI = "http://autosar.org/3.2.1/autosar3x/gs/cp/md";
    public static final String eNS_PREFIX = "";
    public static final MultilanguagedataPackage eINSTANCE = MultilanguagedataPackageImpl.init();
    public static final int ML_DATA1 = 0;
    public static final int ML_DATA1__GCHECKSUM = 0;
    public static final int ML_DATA1__GTIMESTAMP = 1;
    public static final int ML_DATA1__CHECKSUM = 2;
    public static final int ML_DATA1__TIMESTAMP = 3;
    public static final int ML_DATA1__L1S = 4;
    public static final int ML_DATA1__GL_1S = 5;
    public static final int ML_DATA1__HELP_ENTRY = 6;
    public static final int ML_DATA1__KEEP_WITH_PREVIOUS = 7;
    public static final int ML_DATA1_FEATURE_COUNT = 8;
    public static final int ML_DATA10 = 1;
    public static final int ML_DATA10__GCHECKSUM = 0;
    public static final int ML_DATA10__GTIMESTAMP = 1;
    public static final int ML_DATA10__CHECKSUM = 2;
    public static final int ML_DATA10__TIMESTAMP = 3;
    public static final int ML_DATA10__L10S = 4;
    public static final int ML_DATA10__ADMIN_DATA = 5;
    public static final int ML_DATA10_FEATURE_COUNT = 6;
    public static final int ML_DATA3 = 2;
    public static final int ML_DATA3__GCHECKSUM = 0;
    public static final int ML_DATA3__GTIMESTAMP = 1;
    public static final int ML_DATA3__CHECKSUM = 2;
    public static final int ML_DATA3__TIMESTAMP = 3;
    public static final int ML_DATA3__L3S = 4;
    public static final int ML_DATA3_FEATURE_COUNT = 5;
    public static final int ML_DATA3P = 3;
    public static final int ML_DATA3P__GCHECKSUM = 0;
    public static final int ML_DATA3P__GTIMESTAMP = 1;
    public static final int ML_DATA3P__CHECKSUM = 2;
    public static final int ML_DATA3P__TIMESTAMP = 3;
    public static final int ML_DATA3P__L3S = 4;
    public static final int ML_DATA3P__XMLSPACE = 5;
    public static final int ML_DATA3P_FEATURE_COUNT = 6;
    public static final int ML_DATA4 = 4;
    public static final int ML_DATA4__GCHECKSUM = 0;
    public static final int ML_DATA4__GTIMESTAMP = 1;
    public static final int ML_DATA4__CHECKSUM = 2;
    public static final int ML_DATA4__TIMESTAMP = 3;
    public static final int ML_DATA4__L4S = 4;
    public static final int ML_DATA4_FEATURE_COUNT = 5;
    public static final int ML_DATA5 = 5;
    public static final int ML_DATA5__GCHECKSUM = 0;
    public static final int ML_DATA5__GTIMESTAMP = 1;
    public static final int ML_DATA5__CHECKSUM = 2;
    public static final int ML_DATA5__TIMESTAMP = 3;
    public static final int ML_DATA5__L5S = 4;
    public static final int ML_DATA5__REMARK = 5;
    public static final int ML_DATA5__ALLOW_BREAK = 6;
    public static final int ML_DATA5__FLOAT = 7;
    public static final int ML_DATA5__HELP_ENTRY = 8;
    public static final int ML_DATA5__KEEP_WITH_PREVIOUS = 9;
    public static final int ML_DATA5__PGWIDE = 10;
    public static final int ML_DATA5__XMLSPACE = 11;
    public static final int ML_DATA5_FEATURE_COUNT = 12;
    public static final int ML_DATA2 = 6;
    public static final int ML_DATA2__GCHECKSUM = 0;
    public static final int ML_DATA2__GTIMESTAMP = 1;
    public static final int ML_DATA2__CHECKSUM = 2;
    public static final int ML_DATA2__TIMESTAMP = 3;
    public static final int ML_DATA2__L2S = 4;
    public static final int ML_DATA2__GL_2S = 5;
    public static final int ML_DATA2_FEATURE_COUNT = 6;

    public EClass getMlData1();

    public EAttribute getMlData1_HelpEntry();

    public EAttribute getMlData1_KeepWithPrevious();

    public EClass getMlData10();

    public EReference getMlData10_AdminData();

    public EClass getMlData3();

    public EClass getMlData3p();

    public EAttribute getMlData3p_Xmlspace();

    public EClass getMlData4();

    public EClass getMlData5();

    public EReference getMlData5_Remark();

    public EAttribute getMlData5_AllowBreak();

    public EAttribute getMlData5_Float();

    public EAttribute getMlData5_HelpEntry();

    public EAttribute getMlData5_KeepWithPrevious();

    public EAttribute getMlData5_Pgwide();

    public EAttribute getMlData5_Xmlspace();

    public EClass getMlData2();

    public MultilanguagedataFactory getMultilanguagedataFactory();

    public static interface Literals {
        public static final EClass ML_DATA1 = eINSTANCE.getMlData1();
        public static final EAttribute ML_DATA1__HELP_ENTRY = eINSTANCE.getMlData1_HelpEntry();
        public static final EAttribute ML_DATA1__KEEP_WITH_PREVIOUS = eINSTANCE.getMlData1_KeepWithPrevious();
        public static final EClass ML_DATA10 = eINSTANCE.getMlData10();
        public static final EReference ML_DATA10__ADMIN_DATA = eINSTANCE.getMlData10_AdminData();
        public static final EClass ML_DATA3 = eINSTANCE.getMlData3();
        public static final EClass ML_DATA3P = eINSTANCE.getMlData3p();
        public static final EAttribute ML_DATA3P__XMLSPACE = eINSTANCE.getMlData3p_Xmlspace();
        public static final EClass ML_DATA4 = eINSTANCE.getMlData4();
        public static final EClass ML_DATA5 = eINSTANCE.getMlData5();
        public static final EReference ML_DATA5__REMARK = eINSTANCE.getMlData5_Remark();
        public static final EAttribute ML_DATA5__ALLOW_BREAK = eINSTANCE.getMlData5_AllowBreak();
        public static final EAttribute ML_DATA5__FLOAT = eINSTANCE.getMlData5_Float();
        public static final EAttribute ML_DATA5__HELP_ENTRY = eINSTANCE.getMlData5_HelpEntry();
        public static final EAttribute ML_DATA5__KEEP_WITH_PREVIOUS = eINSTANCE.getMlData5_KeepWithPrevious();
        public static final EAttribute ML_DATA5__PGWIDE = eINSTANCE.getMlData5_Pgwide();
        public static final EAttribute ML_DATA5__XMLSPACE = eINSTANCE.getMlData5_Xmlspace();
        public static final EClass ML_DATA2 = eINSTANCE.getMlData2();
    }
}

