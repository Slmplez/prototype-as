/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EAttribute
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar21.genericstructure.commonpatterns.singlelanguagedata;

import autosar21.genericstructure.commonpatterns.singlelanguagedata.SinglelanguagedataFactory;
import autosar21.genericstructure.commonpatterns.singlelanguagedata.impl.SinglelanguagedataPackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface SinglelanguagedataPackage
extends EPackage {
    public static final String eNAME = "singlelanguagedata";
    public static final String eNS_URI = "http://autosar.org/2.1.5/autosar21/gs/cp/sld";
    public static final String eNS_PREFIX = "";
    public static final SinglelanguagedataPackage eINSTANCE = SinglelanguagedataPackageImpl.init();
    public static final int SL_DATA1 = 0;
    public static final int SL_DATA1__GCHECKSUM = 0;
    public static final int SL_DATA1__GTIMESTAMP = 1;
    public static final int SL_DATA1__CHECKSUM = 2;
    public static final int SL_DATA1__TIMESTAMP = 3;
    public static final int SL_DATA1__MIXED = 4;
    public static final int SL_DATA1_FEATURE_COUNT = 5;
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
    public static final int SL_DATA3P__XMLSPACES = 5;
    public static final int SL_DATA3P_FEATURE_COUNT = 6;
    public static final int SL_DATA4 = 5;
    public static final int SL_DATA4__GCHECKSUM = 0;
    public static final int SL_DATA4__GTIMESTAMP = 1;
    public static final int SL_DATA4__CHECKSUM = 2;
    public static final int SL_DATA4__TIMESTAMP = 3;
    public static final int SL_DATA4__MIXED = 4;
    public static final int SL_DATA4_FEATURE_COUNT = 5;
    public static final int SL_DATA5 = 6;
    public static final int SL_DATA5__GCHECKSUM = 0;
    public static final int SL_DATA5__GTIMESTAMP = 1;
    public static final int SL_DATA5__CHECKSUM = 2;
    public static final int SL_DATA5__TIMESTAMP = 3;
    public static final int SL_DATA5__MIXED = 4;
    public static final int SL_DATA5__ALLOW_BREAKS = 5;
    public static final int SL_DATA5__FLOATS = 6;
    public static final int SL_DATA5__HELP_ENTRIES = 7;
    public static final int SL_DATA5__KEEP_WITH_PREVIOUS = 8;
    public static final int SL_DATA5__PGWIDES = 9;
    public static final int SL_DATA5__XMLSPACES = 10;
    public static final int SL_DATA5_FEATURE_COUNT = 11;

    public EClass getSlData1();

    public EClass getSlData10();

    public EClass getSlData2();

    public EClass getSlData3();

    public EReference getSlData3_Unit();

    public EClass getSlData3p();

    public EAttribute getSlData3p_Xmlspaces();

    public EClass getSlData4();

    public EClass getSlData5();

    public EAttribute getSlData5_AllowBreaks();

    public EAttribute getSlData5_Floats();

    public EAttribute getSlData5_HelpEntries();

    public EAttribute getSlData5_KeepWithPrevious();

    public EAttribute getSlData5_Pgwides();

    public EAttribute getSlData5_Xmlspaces();

    public SinglelanguagedataFactory getSinglelanguagedataFactory();

    public static interface Literals {
        public static final EClass SL_DATA1 = eINSTANCE.getSlData1();
        public static final EClass SL_DATA10 = eINSTANCE.getSlData10();
        public static final EClass SL_DATA2 = eINSTANCE.getSlData2();
        public static final EClass SL_DATA3 = eINSTANCE.getSlData3();
        public static final EReference SL_DATA3__UNIT = eINSTANCE.getSlData3_Unit();
        public static final EClass SL_DATA3P = eINSTANCE.getSlData3p();
        public static final EAttribute SL_DATA3P__XMLSPACES = eINSTANCE.getSlData3p_Xmlspaces();
        public static final EClass SL_DATA4 = eINSTANCE.getSlData4();
        public static final EClass SL_DATA5 = eINSTANCE.getSlData5();
        public static final EAttribute SL_DATA5__ALLOW_BREAKS = eINSTANCE.getSlData5_AllowBreaks();
        public static final EAttribute SL_DATA5__FLOATS = eINSTANCE.getSlData5_Floats();
        public static final EAttribute SL_DATA5__HELP_ENTRIES = eINSTANCE.getSlData5_HelpEntries();
        public static final EAttribute SL_DATA5__KEEP_WITH_PREVIOUS = eINSTANCE.getSlData5_KeepWithPrevious();
        public static final EAttribute SL_DATA5__PGWIDES = eINSTANCE.getSlData5_Pgwides();
        public static final EAttribute SL_DATA5__XMLSPACES = eINSTANCE.getSlData5_Xmlspaces();
    }
}

