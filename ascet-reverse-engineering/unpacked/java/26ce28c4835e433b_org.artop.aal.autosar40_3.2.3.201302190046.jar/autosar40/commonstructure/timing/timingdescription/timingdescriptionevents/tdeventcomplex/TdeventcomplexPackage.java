/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 */
package autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventcomplex;

import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventcomplex.TdeventcomplexFactory;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventcomplex.impl.TdeventcomplexPackageImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;

public interface TdeventcomplexPackage
extends EPackage {
    public static final String eNAME = "tdeventcomplex";
    public static final String eNS_URI = "http://autosar.org/schema/r4.0/autosar40/cs/t/td/tde/tdecomplex";
    public static final String eNS_PREFIX = "";
    public static final TdeventcomplexPackage eINSTANCE = TdeventcomplexPackageImpl.init();
    public static final int TD_EVENT_COMPLEX = 0;
    public static final int TD_EVENT_COMPLEX__GCHECKSUM = 0;
    public static final int TD_EVENT_COMPLEX__GTIMESTAMP = 1;
    public static final int TD_EVENT_COMPLEX__CHECKSUM = 2;
    public static final int TD_EVENT_COMPLEX__TIMESTAMP = 3;
    public static final int TD_EVENT_COMPLEX__GSHORT_NAME = 4;
    public static final int TD_EVENT_COMPLEX__SHORT_NAME = 5;
    public static final int TD_EVENT_COMPLEX__LONG_NAME = 6;
    public static final int TD_EVENT_COMPLEX__GUUID = 7;
    public static final int TD_EVENT_COMPLEX__GCATEGORY = 8;
    public static final int TD_EVENT_COMPLEX__GDESC = 9;
    public static final int TD_EVENT_COMPLEX__DESC = 10;
    public static final int TD_EVENT_COMPLEX__CATEGORY = 11;
    public static final int TD_EVENT_COMPLEX__ADMIN_DATA = 12;
    public static final int TD_EVENT_COMPLEX__INTRODUCTION = 13;
    public static final int TD_EVENT_COMPLEX__ANNOTATIONS = 14;
    public static final int TD_EVENT_COMPLEX__UUID = 15;
    public static final int TD_EVENT_COMPLEX__ALL_EXTENSIONS = 16;
    public static final int TD_EVENT_COMPLEX__CONTAINED_EXTENSIONS = 17;
    public static final int TD_EVENT_COMPLEX__TIMING_EXTENSION = 18;
    public static final int TD_EVENT_COMPLEX__VARIATION_POINT = 19;
    public static final int TD_EVENT_COMPLEX__OCCURRENCE_EXPRESSION = 20;
    public static final int TD_EVENT_COMPLEX_FEATURE_COUNT = 21;

    public EClass getTDEventComplex();

    public TdeventcomplexFactory getTdeventcomplexFactory();

    public static interface Literals {
        public static final EClass TD_EVENT_COMPLEX = eINSTANCE.getTDEventComplex();
    }
}

