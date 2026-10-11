/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EAttribute
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar40.commonstructure.timing.timingconstraint.eventtriggeringconstraint;

import autosar40.commonstructure.timing.timingconstraint.eventtriggeringconstraint.EventtriggeringconstraintFactory;
import autosar40.commonstructure.timing.timingconstraint.eventtriggeringconstraint.impl.EventtriggeringconstraintPackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface EventtriggeringconstraintPackage
extends EPackage {
    public static final String eNAME = "eventtriggeringconstraint";
    public static final String eNS_URI = "http://autosar.org/schema/r4.0/autosar40/cs/t/tc/etriggeringconstraint";
    public static final String eNS_PREFIX = "";
    public static final EventtriggeringconstraintPackage eINSTANCE = EventtriggeringconstraintPackageImpl.init();
    public static final int EVENT_TRIGGERING_CONSTRAINT = 1;
    public static final int EVENT_TRIGGERING_CONSTRAINT__GCHECKSUM = 0;
    public static final int EVENT_TRIGGERING_CONSTRAINT__GTIMESTAMP = 1;
    public static final int EVENT_TRIGGERING_CONSTRAINT__CHECKSUM = 2;
    public static final int EVENT_TRIGGERING_CONSTRAINT__TIMESTAMP = 3;
    public static final int EVENT_TRIGGERING_CONSTRAINT__GSHORT_NAME = 4;
    public static final int EVENT_TRIGGERING_CONSTRAINT__SHORT_NAME = 5;
    public static final int EVENT_TRIGGERING_CONSTRAINT__LONG_NAME = 6;
    public static final int EVENT_TRIGGERING_CONSTRAINT__GUUID = 7;
    public static final int EVENT_TRIGGERING_CONSTRAINT__GCATEGORY = 8;
    public static final int EVENT_TRIGGERING_CONSTRAINT__GDESC = 9;
    public static final int EVENT_TRIGGERING_CONSTRAINT__DESC = 10;
    public static final int EVENT_TRIGGERING_CONSTRAINT__CATEGORY = 11;
    public static final int EVENT_TRIGGERING_CONSTRAINT__ADMIN_DATA = 12;
    public static final int EVENT_TRIGGERING_CONSTRAINT__INTRODUCTION = 13;
    public static final int EVENT_TRIGGERING_CONSTRAINT__ANNOTATIONS = 14;
    public static final int EVENT_TRIGGERING_CONSTRAINT__UUID = 15;
    public static final int EVENT_TRIGGERING_CONSTRAINT__ALL_EXTENSIONS = 16;
    public static final int EVENT_TRIGGERING_CONSTRAINT__CONTAINED_EXTENSIONS = 17;
    public static final int EVENT_TRIGGERING_CONSTRAINT__TRACES = 18;
    public static final int EVENT_TRIGGERING_CONSTRAINT__VARIATION_POINT = 19;
    public static final int EVENT_TRIGGERING_CONSTRAINT__EVENT = 20;
    public static final int EVENT_TRIGGERING_CONSTRAINT_FEATURE_COUNT = 21;
    public static final int ARBITRARY_EVENT_TRIGGERING = 0;
    public static final int ARBITRARY_EVENT_TRIGGERING__GCHECKSUM = 0;
    public static final int ARBITRARY_EVENT_TRIGGERING__GTIMESTAMP = 1;
    public static final int ARBITRARY_EVENT_TRIGGERING__CHECKSUM = 2;
    public static final int ARBITRARY_EVENT_TRIGGERING__TIMESTAMP = 3;
    public static final int ARBITRARY_EVENT_TRIGGERING__GSHORT_NAME = 4;
    public static final int ARBITRARY_EVENT_TRIGGERING__SHORT_NAME = 5;
    public static final int ARBITRARY_EVENT_TRIGGERING__LONG_NAME = 6;
    public static final int ARBITRARY_EVENT_TRIGGERING__GUUID = 7;
    public static final int ARBITRARY_EVENT_TRIGGERING__GCATEGORY = 8;
    public static final int ARBITRARY_EVENT_TRIGGERING__GDESC = 9;
    public static final int ARBITRARY_EVENT_TRIGGERING__DESC = 10;
    public static final int ARBITRARY_EVENT_TRIGGERING__CATEGORY = 11;
    public static final int ARBITRARY_EVENT_TRIGGERING__ADMIN_DATA = 12;
    public static final int ARBITRARY_EVENT_TRIGGERING__INTRODUCTION = 13;
    public static final int ARBITRARY_EVENT_TRIGGERING__ANNOTATIONS = 14;
    public static final int ARBITRARY_EVENT_TRIGGERING__UUID = 15;
    public static final int ARBITRARY_EVENT_TRIGGERING__ALL_EXTENSIONS = 16;
    public static final int ARBITRARY_EVENT_TRIGGERING__CONTAINED_EXTENSIONS = 17;
    public static final int ARBITRARY_EVENT_TRIGGERING__TRACES = 18;
    public static final int ARBITRARY_EVENT_TRIGGERING__VARIATION_POINT = 19;
    public static final int ARBITRARY_EVENT_TRIGGERING__EVENT = 20;
    public static final int ARBITRARY_EVENT_TRIGGERING__MINIMUM_DISTANCES = 21;
    public static final int ARBITRARY_EVENT_TRIGGERING__MAXIMUM_DISTANCES = 22;
    public static final int ARBITRARY_EVENT_TRIGGERING__CONFIDENCE_INTERVALS = 23;
    public static final int ARBITRARY_EVENT_TRIGGERING_FEATURE_COUNT = 24;
    public static final int CONFIDENCE_INTERVAL = 2;
    public static final int CONFIDENCE_INTERVAL__GCHECKSUM = 0;
    public static final int CONFIDENCE_INTERVAL__GTIMESTAMP = 1;
    public static final int CONFIDENCE_INTERVAL__CHECKSUM = 2;
    public static final int CONFIDENCE_INTERVAL__TIMESTAMP = 3;
    public static final int CONFIDENCE_INTERVAL__ARBITRARY_EVENT_TRIGGERING = 4;
    public static final int CONFIDENCE_INTERVAL__LOWER_BOUND = 5;
    public static final int CONFIDENCE_INTERVAL__PROPABILITY = 6;
    public static final int CONFIDENCE_INTERVAL__UPPER_BOUND = 7;
    public static final int CONFIDENCE_INTERVAL_FEATURE_COUNT = 8;
    public static final int BURST_PATTERN_EVENT_TRIGGERING = 3;
    public static final int BURST_PATTERN_EVENT_TRIGGERING__GCHECKSUM = 0;
    public static final int BURST_PATTERN_EVENT_TRIGGERING__GTIMESTAMP = 1;
    public static final int BURST_PATTERN_EVENT_TRIGGERING__CHECKSUM = 2;
    public static final int BURST_PATTERN_EVENT_TRIGGERING__TIMESTAMP = 3;
    public static final int BURST_PATTERN_EVENT_TRIGGERING__GSHORT_NAME = 4;
    public static final int BURST_PATTERN_EVENT_TRIGGERING__SHORT_NAME = 5;
    public static final int BURST_PATTERN_EVENT_TRIGGERING__LONG_NAME = 6;
    public static final int BURST_PATTERN_EVENT_TRIGGERING__GUUID = 7;
    public static final int BURST_PATTERN_EVENT_TRIGGERING__GCATEGORY = 8;
    public static final int BURST_PATTERN_EVENT_TRIGGERING__GDESC = 9;
    public static final int BURST_PATTERN_EVENT_TRIGGERING__DESC = 10;
    public static final int BURST_PATTERN_EVENT_TRIGGERING__CATEGORY = 11;
    public static final int BURST_PATTERN_EVENT_TRIGGERING__ADMIN_DATA = 12;
    public static final int BURST_PATTERN_EVENT_TRIGGERING__INTRODUCTION = 13;
    public static final int BURST_PATTERN_EVENT_TRIGGERING__ANNOTATIONS = 14;
    public static final int BURST_PATTERN_EVENT_TRIGGERING__UUID = 15;
    public static final int BURST_PATTERN_EVENT_TRIGGERING__ALL_EXTENSIONS = 16;
    public static final int BURST_PATTERN_EVENT_TRIGGERING__CONTAINED_EXTENSIONS = 17;
    public static final int BURST_PATTERN_EVENT_TRIGGERING__TRACES = 18;
    public static final int BURST_PATTERN_EVENT_TRIGGERING__VARIATION_POINT = 19;
    public static final int BURST_PATTERN_EVENT_TRIGGERING__EVENT = 20;
    public static final int BURST_PATTERN_EVENT_TRIGGERING__MAX_NUMBER_OF_OCCURRENCES = 21;
    public static final int BURST_PATTERN_EVENT_TRIGGERING__MINIMUM_INTER_ARRIVAL_TIME = 22;
    public static final int BURST_PATTERN_EVENT_TRIGGERING__PATTERN_JITTER = 23;
    public static final int BURST_PATTERN_EVENT_TRIGGERING__PATTERN_LENGTH = 24;
    public static final int BURST_PATTERN_EVENT_TRIGGERING__PATTERN_PERIOD = 25;
    public static final int BURST_PATTERN_EVENT_TRIGGERING__MIN_NUMBER_OF_OCCURRENCES = 26;
    public static final int BURST_PATTERN_EVENT_TRIGGERING_FEATURE_COUNT = 27;
    public static final int CONCRETE_PATTERN_EVENT_TRIGGERING = 4;
    public static final int CONCRETE_PATTERN_EVENT_TRIGGERING__GCHECKSUM = 0;
    public static final int CONCRETE_PATTERN_EVENT_TRIGGERING__GTIMESTAMP = 1;
    public static final int CONCRETE_PATTERN_EVENT_TRIGGERING__CHECKSUM = 2;
    public static final int CONCRETE_PATTERN_EVENT_TRIGGERING__TIMESTAMP = 3;
    public static final int CONCRETE_PATTERN_EVENT_TRIGGERING__GSHORT_NAME = 4;
    public static final int CONCRETE_PATTERN_EVENT_TRIGGERING__SHORT_NAME = 5;
    public static final int CONCRETE_PATTERN_EVENT_TRIGGERING__LONG_NAME = 6;
    public static final int CONCRETE_PATTERN_EVENT_TRIGGERING__GUUID = 7;
    public static final int CONCRETE_PATTERN_EVENT_TRIGGERING__GCATEGORY = 8;
    public static final int CONCRETE_PATTERN_EVENT_TRIGGERING__GDESC = 9;
    public static final int CONCRETE_PATTERN_EVENT_TRIGGERING__DESC = 10;
    public static final int CONCRETE_PATTERN_EVENT_TRIGGERING__CATEGORY = 11;
    public static final int CONCRETE_PATTERN_EVENT_TRIGGERING__ADMIN_DATA = 12;
    public static final int CONCRETE_PATTERN_EVENT_TRIGGERING__INTRODUCTION = 13;
    public static final int CONCRETE_PATTERN_EVENT_TRIGGERING__ANNOTATIONS = 14;
    public static final int CONCRETE_PATTERN_EVENT_TRIGGERING__UUID = 15;
    public static final int CONCRETE_PATTERN_EVENT_TRIGGERING__ALL_EXTENSIONS = 16;
    public static final int CONCRETE_PATTERN_EVENT_TRIGGERING__CONTAINED_EXTENSIONS = 17;
    public static final int CONCRETE_PATTERN_EVENT_TRIGGERING__TRACES = 18;
    public static final int CONCRETE_PATTERN_EVENT_TRIGGERING__VARIATION_POINT = 19;
    public static final int CONCRETE_PATTERN_EVENT_TRIGGERING__EVENT = 20;
    public static final int CONCRETE_PATTERN_EVENT_TRIGGERING__OFFSETS = 21;
    public static final int CONCRETE_PATTERN_EVENT_TRIGGERING__PATTERN_LENGTH = 22;
    public static final int CONCRETE_PATTERN_EVENT_TRIGGERING_FEATURE_COUNT = 23;
    public static final int PERIODIC_EVENT_TRIGGERING = 5;
    public static final int PERIODIC_EVENT_TRIGGERING__GCHECKSUM = 0;
    public static final int PERIODIC_EVENT_TRIGGERING__GTIMESTAMP = 1;
    public static final int PERIODIC_EVENT_TRIGGERING__CHECKSUM = 2;
    public static final int PERIODIC_EVENT_TRIGGERING__TIMESTAMP = 3;
    public static final int PERIODIC_EVENT_TRIGGERING__GSHORT_NAME = 4;
    public static final int PERIODIC_EVENT_TRIGGERING__SHORT_NAME = 5;
    public static final int PERIODIC_EVENT_TRIGGERING__LONG_NAME = 6;
    public static final int PERIODIC_EVENT_TRIGGERING__GUUID = 7;
    public static final int PERIODIC_EVENT_TRIGGERING__GCATEGORY = 8;
    public static final int PERIODIC_EVENT_TRIGGERING__GDESC = 9;
    public static final int PERIODIC_EVENT_TRIGGERING__DESC = 10;
    public static final int PERIODIC_EVENT_TRIGGERING__CATEGORY = 11;
    public static final int PERIODIC_EVENT_TRIGGERING__ADMIN_DATA = 12;
    public static final int PERIODIC_EVENT_TRIGGERING__INTRODUCTION = 13;
    public static final int PERIODIC_EVENT_TRIGGERING__ANNOTATIONS = 14;
    public static final int PERIODIC_EVENT_TRIGGERING__UUID = 15;
    public static final int PERIODIC_EVENT_TRIGGERING__ALL_EXTENSIONS = 16;
    public static final int PERIODIC_EVENT_TRIGGERING__CONTAINED_EXTENSIONS = 17;
    public static final int PERIODIC_EVENT_TRIGGERING__TRACES = 18;
    public static final int PERIODIC_EVENT_TRIGGERING__VARIATION_POINT = 19;
    public static final int PERIODIC_EVENT_TRIGGERING__EVENT = 20;
    public static final int PERIODIC_EVENT_TRIGGERING__MINIMUM_INTER_ARRIVAL_TIME = 21;
    public static final int PERIODIC_EVENT_TRIGGERING__JITTER = 22;
    public static final int PERIODIC_EVENT_TRIGGERING__PERIOD = 23;
    public static final int PERIODIC_EVENT_TRIGGERING_FEATURE_COUNT = 24;
    public static final int SPORADIC_EVENT_TRIGGERING = 6;
    public static final int SPORADIC_EVENT_TRIGGERING__GCHECKSUM = 0;
    public static final int SPORADIC_EVENT_TRIGGERING__GTIMESTAMP = 1;
    public static final int SPORADIC_EVENT_TRIGGERING__CHECKSUM = 2;
    public static final int SPORADIC_EVENT_TRIGGERING__TIMESTAMP = 3;
    public static final int SPORADIC_EVENT_TRIGGERING__GSHORT_NAME = 4;
    public static final int SPORADIC_EVENT_TRIGGERING__SHORT_NAME = 5;
    public static final int SPORADIC_EVENT_TRIGGERING__LONG_NAME = 6;
    public static final int SPORADIC_EVENT_TRIGGERING__GUUID = 7;
    public static final int SPORADIC_EVENT_TRIGGERING__GCATEGORY = 8;
    public static final int SPORADIC_EVENT_TRIGGERING__GDESC = 9;
    public static final int SPORADIC_EVENT_TRIGGERING__DESC = 10;
    public static final int SPORADIC_EVENT_TRIGGERING__CATEGORY = 11;
    public static final int SPORADIC_EVENT_TRIGGERING__ADMIN_DATA = 12;
    public static final int SPORADIC_EVENT_TRIGGERING__INTRODUCTION = 13;
    public static final int SPORADIC_EVENT_TRIGGERING__ANNOTATIONS = 14;
    public static final int SPORADIC_EVENT_TRIGGERING__UUID = 15;
    public static final int SPORADIC_EVENT_TRIGGERING__ALL_EXTENSIONS = 16;
    public static final int SPORADIC_EVENT_TRIGGERING__CONTAINED_EXTENSIONS = 17;
    public static final int SPORADIC_EVENT_TRIGGERING__TRACES = 18;
    public static final int SPORADIC_EVENT_TRIGGERING__VARIATION_POINT = 19;
    public static final int SPORADIC_EVENT_TRIGGERING__EVENT = 20;
    public static final int SPORADIC_EVENT_TRIGGERING__MINIMUM_INTER_ARRIVAL_TIME = 21;
    public static final int SPORADIC_EVENT_TRIGGERING__MAXIMUM_INTER_ARRIVAL_TIME = 22;
    public static final int SPORADIC_EVENT_TRIGGERING__JITTER = 23;
    public static final int SPORADIC_EVENT_TRIGGERING__PERIOD = 24;
    public static final int SPORADIC_EVENT_TRIGGERING_FEATURE_COUNT = 25;

    public EClass getArbitraryEventTriggering();

    public EReference getArbitraryEventTriggering_MinimumDistances();

    public EReference getArbitraryEventTriggering_MaximumDistances();

    public EReference getArbitraryEventTriggering_ConfidenceIntervals();

    public EClass getEventTriggeringConstraint();

    public EReference getEventTriggeringConstraint_Event();

    public EClass getConfidenceInterval();

    public EReference getConfidenceInterval_ArbitraryEventTriggering();

    public EReference getConfidenceInterval_LowerBound();

    public EAttribute getConfidenceInterval_Propability();

    public EReference getConfidenceInterval_UpperBound();

    public EClass getBurstPatternEventTriggering();

    public EAttribute getBurstPatternEventTriggering_MaxNumberOfOccurrences();

    public EReference getBurstPatternEventTriggering_MinimumInterArrivalTime();

    public EReference getBurstPatternEventTriggering_PatternJitter();

    public EReference getBurstPatternEventTriggering_PatternLength();

    public EReference getBurstPatternEventTriggering_PatternPeriod();

    public EAttribute getBurstPatternEventTriggering_MinNumberOfOccurrences();

    public EClass getConcretePatternEventTriggering();

    public EReference getConcretePatternEventTriggering_Offsets();

    public EReference getConcretePatternEventTriggering_PatternLength();

    public EClass getPeriodicEventTriggering();

    public EReference getPeriodicEventTriggering_MinimumInterArrivalTime();

    public EReference getPeriodicEventTriggering_Jitter();

    public EReference getPeriodicEventTriggering_Period();

    public EClass getSporadicEventTriggering();

    public EReference getSporadicEventTriggering_MinimumInterArrivalTime();

    public EReference getSporadicEventTriggering_MaximumInterArrivalTime();

    public EReference getSporadicEventTriggering_Jitter();

    public EReference getSporadicEventTriggering_Period();

    public EventtriggeringconstraintFactory getEventtriggeringconstraintFactory();

    public static interface Literals {
        public static final EClass ARBITRARY_EVENT_TRIGGERING = eINSTANCE.getArbitraryEventTriggering();
        public static final EReference ARBITRARY_EVENT_TRIGGERING__MINIMUM_DISTANCES = eINSTANCE.getArbitraryEventTriggering_MinimumDistances();
        public static final EReference ARBITRARY_EVENT_TRIGGERING__MAXIMUM_DISTANCES = eINSTANCE.getArbitraryEventTriggering_MaximumDistances();
        public static final EReference ARBITRARY_EVENT_TRIGGERING__CONFIDENCE_INTERVALS = eINSTANCE.getArbitraryEventTriggering_ConfidenceIntervals();
        public static final EClass EVENT_TRIGGERING_CONSTRAINT = eINSTANCE.getEventTriggeringConstraint();
        public static final EReference EVENT_TRIGGERING_CONSTRAINT__EVENT = eINSTANCE.getEventTriggeringConstraint_Event();
        public static final EClass CONFIDENCE_INTERVAL = eINSTANCE.getConfidenceInterval();
        public static final EReference CONFIDENCE_INTERVAL__ARBITRARY_EVENT_TRIGGERING = eINSTANCE.getConfidenceInterval_ArbitraryEventTriggering();
        public static final EReference CONFIDENCE_INTERVAL__LOWER_BOUND = eINSTANCE.getConfidenceInterval_LowerBound();
        public static final EAttribute CONFIDENCE_INTERVAL__PROPABILITY = eINSTANCE.getConfidenceInterval_Propability();
        public static final EReference CONFIDENCE_INTERVAL__UPPER_BOUND = eINSTANCE.getConfidenceInterval_UpperBound();
        public static final EClass BURST_PATTERN_EVENT_TRIGGERING = eINSTANCE.getBurstPatternEventTriggering();
        public static final EAttribute BURST_PATTERN_EVENT_TRIGGERING__MAX_NUMBER_OF_OCCURRENCES = eINSTANCE.getBurstPatternEventTriggering_MaxNumberOfOccurrences();
        public static final EReference BURST_PATTERN_EVENT_TRIGGERING__MINIMUM_INTER_ARRIVAL_TIME = eINSTANCE.getBurstPatternEventTriggering_MinimumInterArrivalTime();
        public static final EReference BURST_PATTERN_EVENT_TRIGGERING__PATTERN_JITTER = eINSTANCE.getBurstPatternEventTriggering_PatternJitter();
        public static final EReference BURST_PATTERN_EVENT_TRIGGERING__PATTERN_LENGTH = eINSTANCE.getBurstPatternEventTriggering_PatternLength();
        public static final EReference BURST_PATTERN_EVENT_TRIGGERING__PATTERN_PERIOD = eINSTANCE.getBurstPatternEventTriggering_PatternPeriod();
        public static final EAttribute BURST_PATTERN_EVENT_TRIGGERING__MIN_NUMBER_OF_OCCURRENCES = eINSTANCE.getBurstPatternEventTriggering_MinNumberOfOccurrences();
        public static final EClass CONCRETE_PATTERN_EVENT_TRIGGERING = eINSTANCE.getConcretePatternEventTriggering();
        public static final EReference CONCRETE_PATTERN_EVENT_TRIGGERING__OFFSETS = eINSTANCE.getConcretePatternEventTriggering_Offsets();
        public static final EReference CONCRETE_PATTERN_EVENT_TRIGGERING__PATTERN_LENGTH = eINSTANCE.getConcretePatternEventTriggering_PatternLength();
        public static final EClass PERIODIC_EVENT_TRIGGERING = eINSTANCE.getPeriodicEventTriggering();
        public static final EReference PERIODIC_EVENT_TRIGGERING__MINIMUM_INTER_ARRIVAL_TIME = eINSTANCE.getPeriodicEventTriggering_MinimumInterArrivalTime();
        public static final EReference PERIODIC_EVENT_TRIGGERING__JITTER = eINSTANCE.getPeriodicEventTriggering_Jitter();
        public static final EReference PERIODIC_EVENT_TRIGGERING__PERIOD = eINSTANCE.getPeriodicEventTriggering_Period();
        public static final EClass SPORADIC_EVENT_TRIGGERING = eINSTANCE.getSporadicEventTriggering();
        public static final EReference SPORADIC_EVENT_TRIGGERING__MINIMUM_INTER_ARRIVAL_TIME = eINSTANCE.getSporadicEventTriggering_MinimumInterArrivalTime();
        public static final EReference SPORADIC_EVENT_TRIGGERING__MAXIMUM_INTER_ARRIVAL_TIME = eINSTANCE.getSporadicEventTriggering_MaximumInterArrivalTime();
        public static final EReference SPORADIC_EVENT_TRIGGERING__JITTER = eINSTANCE.getSporadicEventTriggering_Jitter();
        public static final EReference SPORADIC_EVENT_TRIGGERING__PERIOD = eINSTANCE.getSporadicEventTriggering_Period();
    }
}

