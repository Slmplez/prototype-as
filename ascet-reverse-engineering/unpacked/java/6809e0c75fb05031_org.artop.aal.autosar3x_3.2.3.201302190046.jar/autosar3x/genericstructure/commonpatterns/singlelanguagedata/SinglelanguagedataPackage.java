/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EAttribute
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar3x.genericstructure.commonpatterns.singlelanguagedata;

import autosar3x.genericstructure.commonpatterns.singlelanguagedata.SinglelanguagedataFactory;
import autosar3x.genericstructure.commonpatterns.singlelanguagedata.impl.SinglelanguagedataPackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface SinglelanguagedataPackage
extends EPackage {
    public static final String eNAME = "singlelanguagedata";
    public static final String eNS_URI = "http://autosar.org/3.2.1/autosar3x/gs/cp/sld";
    public static final String eNS_PREFIX = "";
    public static final SinglelanguagedataPackage eINSTANCE = SinglelanguagedataPackageImpl.init();
    public static final int SL_DATA1 = 0;
    public static final int SL_DATA1__GCHECKSUM = 0;
    public static final int SL_DATA1__GTIMESTAMP = 1;
    public static final int SL_DATA1__CHECKSUM = 2;
    public static final int SL_DATA1__TIMESTAMP = 3;
    public static final int SL_DATA1__MIXED = 4;
    public static final int SL_DATA1__XFILES = 5;
    public static final int SL_DATA1_FEATURE_COUNT = 6;
    public static final int SL_DATA10 = 1;
    public static final int SL_DATA10__GCHECKSUM = 0;
    public static final int SL_DATA10__GTIMESTAMP = 1;
    public static final int SL_DATA10__CHECKSUM = 2;
    public static final int SL_DATA10__TIMESTAMP = 3;
    public static final int SL_DATA10__MIXED = 4;
    public static final int SL_DATA10_FEATURE_COUNT = 5;
    public static final int SL_DATA2 = 2;
    public static final int SL_DATA2__GCHECKSUM = 0;
    public static final int SL_DATA2__GTIMESTAMP = 1;
    public static final int SL_DATA2__CHECKSUM = 2;
    public static final int SL_DATA2__TIMESTAMP = 3;
    public static final int SL_DATA2__MIXED = 4;
    public static final int SL_DATA2_FEATURE_COUNT = 5;
    public static final int SL_DATA3 = 3;
    public static final int SL_DATA3__GCHECKSUM = 0;
    public static final int SL_DATA3__GTIMESTAMP = 1;
    public static final int SL_DATA3__CHECKSUM = 2;
    public static final int SL_DATA3__TIMESTAMP = 3;
    public static final int SL_DATA3__MIXED = 4;
    public static final int SL_DATA3__UNIT = 5;
    public static final int SL_DATA3_FEATURE_COUNT = 6;
    public static final int SL_DATA3P = 4;
    public static final int SL_DATA3P__GCHECKSUM = 0;
    public static final int SL_DATA3P__GTIMESTAMP = 1;
    public static final int SL_DATA3P__CHECKSUM = 2;
    public static final int SL_DATA3P__TIMESTAMP = 3;
    public static final int SL_DATA3P__MIXED = 4;
    public static final int SL_DATA3P__XMLSPACE = 5;
    public static final int SL_DATA3P_FEATURE_COUNT = 6;
    public static final int SL_DATA5 = 5;
    public static final int SL_DATA5__GCHECKSUM = 0;
    public static final int SL_DATA5__GTIMESTAMP = 1;
    public static final int SL_DATA5__CHECKSUM = 2;
    public static final int SL_DATA5__TIMESTAMP = 3;
    public static final int SL_DATA5__MIXED = 4;
    public static final int SL_DATA5__ALLOW_BREAK = 5;
    public static final int SL_DATA5__FLOAT = 6;
    public static final int SL_DATA5__HELP_ENTRY = 7;
    public static final int SL_DATA5__KEEP_WITH_PREVIOUS = 8;
    public static final int SL_DATA5__PGWIDE = 9;
    public static final int SL_DATA5__XMLSPACE = 10;
    public static final int SL_DATA5_FEATURE_COUNT = 11;
    public static final int SL_DATA4 = 6;
    public static final int SL_DATA4__GCHECKSUM = 0;
    public static final int SL_DATA4__GTIMESTAMP = 1;
    public static final int SL_DATA4__CHECKSUM = 2;
    public static final int SL_DATA4__TIMESTAMP = 3;
    public static final int SL_DATA4__MIXED = 4;
    public static final int SL_DATA4__XFILE = 5;
    public static final int SL_DATA4_FEATURE_COUNT = 6;

    public EClass getSlData1();

    public EClass getSlData10();

    public EClass getSlData2();

    public EClass getSlData3();

    public EReference getSlData3_Unit();

    public EClass getSlData3p();

    public EAttribute getSlData3p_Xmlspace();

    public EClass getSlData5();

    public EAttribute getSlData5_AllowBreak();

    public EAttribute getSlData5_Float();

    public EAttribute getSlData5_HelpEntry();

    public EAttribute getSlData5_KeepWithPrevious();

    public EAttribute getSlData5_Pgwide();

    public EAttribute getSlData5_Xmlspace();

    public EClass getSlData4();

    public EReference getSlData4_Xfile();

    public SinglelanguagedataFactory getSinglelanguagedataFactory();

    public static interface Literals {
        public static final EClass SL_DATA1 = eINSTANCE.getSlData1();
        public static final EClass SL_DATA10 = eINSTANCE.getSlData10();
        public static final EClass SL_DATA2 = eINSTANCE.getSlData2();
        public static final EClass SL_DATA3 = eINSTANCE.getSlData3();
        public static final EReference SL_DATA3__UNIT = eINSTANCE.getSlData3_Unit();
        public static final EClass SL_DATA3P = eINSTANCE.getSlData3p();
        public static final EAttribute SL_DATA3P__XMLSPACE = eINSTANCE.getSlData3p_Xmlspace();
        public static final EClass SL_DATA5 = eINSTANCE.getSlData5();
        public static final EAttribute SL_DATA5__ALLOW_BREAK = eINSTANCE.getSlData5_AllowBreak();
        public static final EAttribute SL_DATA5__FLOAT = eINSTANCE.getSlData5_Float();
        public static final EAttribute SL_DATA5__HELP_ENTRY = eINSTANCE.getSlData5_HelpEntry();
        public static final EAttribute SL_DATA5__KEEP_WITH_PREVIOUS = eINSTANCE.getSlData5_KeepWithPrevious();
        public static final EAttribute SL_DATA5__PGWIDE = eINSTANCE.getSlData5_Pgwide();
        public static final EAttribute SL_DATA5__XMLSPACE = eINSTANCE.getSlData5_Xmlspace();
        public static final EClass SL_DATA4 = eINSTANCE.getSlData4();
        public static final EReference SL_DATA4__XFILE = eINSTANCE.getSlData4_Xfile();
    }
}

