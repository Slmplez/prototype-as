/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 */
package autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.singlelanguagedata;

import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.singlelanguagedata.SinglelanguagedataFactory;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.singlelanguagedata.impl.SinglelanguagedataPackageImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;

public interface SinglelanguagedataPackage
extends EPackage {
    public static final String eNAME = "singlelanguagedata";
    public static final String eNS_URI = "http://autosar.org/schema/r4.0/autosar40/gs/gtc/d/tm/sld";
    public static final String eNS_PREFIX = "";
    public static final SinglelanguagedataPackage eINSTANCE = SinglelanguagedataPackageImpl.init();
    public static final int SINGLE_LANGUAGE_UNIT_NAMES = 0;
    public static final int SINGLE_LANGUAGE_UNIT_NAMES__GCHECKSUM = 0;
    public static final int SINGLE_LANGUAGE_UNIT_NAMES__GTIMESTAMP = 1;
    public static final int SINGLE_LANGUAGE_UNIT_NAMES__CHECKSUM = 2;
    public static final int SINGLE_LANGUAGE_UNIT_NAMES__TIMESTAMP = 3;
    public static final int SINGLE_LANGUAGE_UNIT_NAMES__MIXED = 4;
    public static final int SINGLE_LANGUAGE_UNIT_NAMES__SUPS = 5;
    public static final int SINGLE_LANGUAGE_UNIT_NAMES__SUBS = 6;
    public static final int SINGLE_LANGUAGE_UNIT_NAMES_FEATURE_COUNT = 7;
    public static final int SINGLE_LANGUAGE_LONG_NAME = 1;
    public static final int SINGLE_LANGUAGE_LONG_NAME__GCHECKSUM = 0;
    public static final int SINGLE_LANGUAGE_LONG_NAME__GTIMESTAMP = 1;
    public static final int SINGLE_LANGUAGE_LONG_NAME__CHECKSUM = 2;
    public static final int SINGLE_LANGUAGE_LONG_NAME__TIMESTAMP = 3;
    public static final int SINGLE_LANGUAGE_LONG_NAME__MIXED = 4;
    public static final int SINGLE_LANGUAGE_LONG_NAME__TTS = 5;
    public static final int SINGLE_LANGUAGE_LONG_NAME__ES = 6;
    public static final int SINGLE_LANGUAGE_LONG_NAME__SUPS = 7;
    public static final int SINGLE_LANGUAGE_LONG_NAME__SUBS = 8;
    public static final int SINGLE_LANGUAGE_LONG_NAME__IES = 9;
    public static final int SINGLE_LANGUAGE_LONG_NAME_FEATURE_COUNT = 10;

    public EClass getSingleLanguageUnitNames();

    public EClass getSingleLanguageLongName();

    public SinglelanguagedataFactory getSinglelanguagedataFactory();

    public static interface Literals {
        public static final EClass SINGLE_LANGUAGE_UNIT_NAMES = eINSTANCE.getSingleLanguageUnitNames();
        public static final EClass SINGLE_LANGUAGE_LONG_NAME = eINSTANCE.getSingleLanguageLongName();
    }
}

