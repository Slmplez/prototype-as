/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar40.commonstructure.timing.timingdescription;

import autosar40.commonstructure.timing.timingdescription.TimingdescriptionFactory;
import autosar40.commonstructure.timing.timingdescription.impl.TimingdescriptionPackageImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface TimingdescriptionPackage
extends EPackage {
    public static final String eNAME = "timingdescription";
    public static final String eNS_URI = "http://autosar.org/schema/r4.0/autosar40/cs/t/td";
    public static final String eNS_PREFIX = "";
    public static final TimingdescriptionPackage eINSTANCE = TimingdescriptionPackageImpl.init();
    public static final int TIMING_DESCRIPTION = 0;
    public static final int TIMING_DESCRIPTION__GCHECKSUM = 0;
    public static final int TIMING_DESCRIPTION__GTIMESTAMP = 1;
    public static final int TIMING_DESCRIPTION__CHECKSUM = 2;
    public static final int TIMING_DESCRIPTION__TIMESTAMP = 3;
    public static final int TIMING_DESCRIPTION__GSHORT_NAME = 4;
    public static final int TIMING_DESCRIPTION__SHORT_NAME = 5;
    public static final int TIMING_DESCRIPTION__LONG_NAME = 6;
    public static final int TIMING_DESCRIPTION__GUUID = 7;
    public static final int TIMING_DESCRIPTION__GCATEGORY = 8;
    public static final int TIMING_DESCRIPTION__GDESC = 9;
    public static final int TIMING_DESCRIPTION__DESC = 10;
    public static final int TIMING_DESCRIPTION__CATEGORY = 11;
    public static final int TIMING_DESCRIPTION__ADMIN_DATA = 12;
    public static final int TIMING_DESCRIPTION__INTRODUCTION = 13;
    public static final int TIMING_DESCRIPTION__ANNOTATIONS = 14;
    public static final int TIMING_DESCRIPTION__UUID = 15;
    public static final int TIMING_DESCRIPTION__ALL_EXTENSIONS = 16;
    public static final int TIMING_DESCRIPTION__CONTAINED_EXTENSIONS = 17;
    public static final int TIMING_DESCRIPTION__TIMING_EXTENSION = 18;
    public static final int TIMING_DESCRIPTION__VARIATION_POINT = 19;
    public static final int TIMING_DESCRIPTION_FEATURE_COUNT = 20;
    public static final int TIMING_DESCRIPTION_EVENT = 1;
    public static final int TIMING_DESCRIPTION_EVENT__GCHECKSUM = 0;
    public static final int TIMING_DESCRIPTION_EVENT__GTIMESTAMP = 1;
    public static final int TIMING_DESCRIPTION_EVENT__CHECKSUM = 2;
    public static final int TIMING_DESCRIPTION_EVENT__TIMESTAMP = 3;
    public static final int TIMING_DESCRIPTION_EVENT__GSHORT_NAME = 4;
    public static final int TIMING_DESCRIPTION_EVENT__SHORT_NAME = 5;
    public static final int TIMING_DESCRIPTION_EVENT__LONG_NAME = 6;
    public static final int TIMING_DESCRIPTION_EVENT__GUUID = 7;
    public static final int TIMING_DESCRIPTION_EVENT__GCATEGORY = 8;
    public static final int TIMING_DESCRIPTION_EVENT__GDESC = 9;
    public static final int TIMING_DESCRIPTION_EVENT__DESC = 10;
    public static final int TIMING_DESCRIPTION_EVENT__CATEGORY = 11;
    public static final int TIMING_DESCRIPTION_EVENT__ADMIN_DATA = 12;
    public static final int TIMING_DESCRIPTION_EVENT__INTRODUCTION = 13;
    public static final int TIMING_DESCRIPTION_EVENT__ANNOTATIONS = 14;
    public static final int TIMING_DESCRIPTION_EVENT__UUID = 15;
    public static final int TIMING_DESCRIPTION_EVENT__ALL_EXTENSIONS = 16;
    public static final int TIMING_DESCRIPTION_EVENT__CONTAINED_EXTENSIONS = 17;
    public static final int TIMING_DESCRIPTION_EVENT__TIMING_EXTENSION = 18;
    public static final int TIMING_DESCRIPTION_EVENT__VARIATION_POINT = 19;
    public static final int TIMING_DESCRIPTION_EVENT__OCCURRENCE_EXPRESSION = 20;
    public static final int TIMING_DESCRIPTION_EVENT_FEATURE_COUNT = 21;
    public static final int TIMING_DESCRIPTION_EVENT_CHAIN = 2;
    public static final int TIMING_DESCRIPTION_EVENT_CHAIN__GCHECKSUM = 0;
    public static final int TIMING_DESCRIPTION_EVENT_CHAIN__GTIMESTAMP = 1;
    public static final int TIMING_DESCRIPTION_EVENT_CHAIN__CHECKSUM = 2;
    public static final int TIMING_DESCRIPTION_EVENT_CHAIN__TIMESTAMP = 3;
    public static final int TIMING_DESCRIPTION_EVENT_CHAIN__GSHORT_NAME = 4;
    public static final int TIMING_DESCRIPTION_EVENT_CHAIN__SHORT_NAME = 5;
    public static final int TIMING_DESCRIPTION_EVENT_CHAIN__LONG_NAME = 6;
    public static final int TIMING_DESCRIPTION_EVENT_CHAIN__GUUID = 7;
    public static final int TIMING_DESCRIPTION_EVENT_CHAIN__GCATEGORY = 8;
    public static final int TIMING_DESCRIPTION_EVENT_CHAIN__GDESC = 9;
    public static final int TIMING_DESCRIPTION_EVENT_CHAIN__DESC = 10;
    public static final int TIMING_DESCRIPTION_EVENT_CHAIN__CATEGORY = 11;
    public static final int TIMING_DESCRIPTION_EVENT_CHAIN__ADMIN_DATA = 12;
    public static final int TIMING_DESCRIPTION_EVENT_CHAIN__INTRODUCTION = 13;
    public static final int TIMING_DESCRIPTION_EVENT_CHAIN__ANNOTATIONS = 14;
    public static final int TIMING_DESCRIPTION_EVENT_CHAIN__UUID = 15;
    public static final int TIMING_DESCRIPTION_EVENT_CHAIN__ALL_EXTENSIONS = 16;
    public static final int TIMING_DESCRIPTION_EVENT_CHAIN__CONTAINED_EXTENSIONS = 17;
    public static final int TIMING_DESCRIPTION_EVENT_CHAIN__TIMING_EXTENSION = 18;
    public static final int TIMING_DESCRIPTION_EVENT_CHAIN__VARIATION_POINT = 19;
    public static final int TIMING_DESCRIPTION_EVENT_CHAIN__STIMULUS = 20;
    public static final int TIMING_DESCRIPTION_EVENT_CHAIN__RESPONSE = 21;
    public static final int TIMING_DESCRIPTION_EVENT_CHAIN__SEGMENTS = 22;
    public static final int TIMING_DESCRIPTION_EVENT_CHAIN_FEATURE_COUNT = 23;

    public EClass getTimingDescription();

    public EReference getTimingDescription_TimingExtension();

    public EReference getTimingDescription_VariationPoint();

    public EClass getTimingDescriptionEvent();

    public EReference getTimingDescriptionEvent_OccurrenceExpression();

    public EClass getTimingDescriptionEventChain();

    public EReference getTimingDescriptionEventChain_Stimulus();

    public EReference getTimingDescriptionEventChain_Response();

    public EReference getTimingDescriptionEventChain_Segments();

    public TimingdescriptionFactory getTimingdescriptionFactory();

    public static interface Literals {
        public static final EClass TIMING_DESCRIPTION = eINSTANCE.getTimingDescription();
        public static final EReference TIMING_DESCRIPTION__TIMING_EXTENSION = eINSTANCE.getTimingDescription_TimingExtension();
        public static final EReference TIMING_DESCRIPTION__VARIATION_POINT = eINSTANCE.getTimingDescription_VariationPoint();
        public static final EClass TIMING_DESCRIPTION_EVENT = eINSTANCE.getTimingDescriptionEvent();
        public static final EReference TIMING_DESCRIPTION_EVENT__OCCURRENCE_EXPRESSION = eINSTANCE.getTimingDescriptionEvent_OccurrenceExpression();
        public static final EClass TIMING_DESCRIPTION_EVENT_CHAIN = eINSTANCE.getTimingDescriptionEventChain();
        public static final EReference TIMING_DESCRIPTION_EVENT_CHAIN__STIMULUS = eINSTANCE.getTimingDescriptionEventChain_Stimulus();
        public static final EReference TIMING_DESCRIPTION_EVENT_CHAIN__RESPONSE = eINSTANCE.getTimingDescriptionEventChain_Response();
        public static final EReference TIMING_DESCRIPTION_EVENT_CHAIN__SEGMENTS = eINSTANCE.getTimingDescriptionEventChain_Segments();
    }
}

