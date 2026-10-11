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
package autosar3x.system.fibex.fibex4flexray;

import autosar3x.system.fibex.fibex4flexray.Fibex4flexrayFactory;
import autosar3x.system.fibex.fibex4flexray.impl.Fibex4flexrayPackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EEnum;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface Fibex4flexrayPackage
extends EPackage {
    public static final String eNAME = "fibex4flexray";
    public static final String eNS_URI = "http://autosar.org/3.2.1/autosar3x/s/f/ff";
    public static final String eNS_PREFIX = "";
    public static final Fibex4flexrayPackage eINSTANCE = Fibex4flexrayPackageImpl.init();
    public static final int COMMUNICATION_CYCLE = 0;
    public static final int COMMUNICATION_CYCLE__GCHECKSUM = 0;
    public static final int COMMUNICATION_CYCLE__GTIMESTAMP = 1;
    public static final int COMMUNICATION_CYCLE__CHECKSUM = 2;
    public static final int COMMUNICATION_CYCLE__TIMESTAMP = 3;
    public static final int COMMUNICATION_CYCLE__ABSOLUTELY_SCHEDULED_TIMING = 4;
    public static final int COMMUNICATION_CYCLE_FEATURE_COUNT = 5;
    public static final int CYCLE_COUNTER = 1;
    public static final int CYCLE_COUNTER__GCHECKSUM = 0;
    public static final int CYCLE_COUNTER__GTIMESTAMP = 1;
    public static final int CYCLE_COUNTER__CHECKSUM = 2;
    public static final int CYCLE_COUNTER__TIMESTAMP = 3;
    public static final int CYCLE_COUNTER__ABSOLUTELY_SCHEDULED_TIMING = 4;
    public static final int CYCLE_COUNTER__CYCLE_COUNTER = 5;
    public static final int CYCLE_COUNTER_FEATURE_COUNT = 6;
    public static final int CYCLE_REPETITION = 2;
    public static final int CYCLE_REPETITION__GCHECKSUM = 0;
    public static final int CYCLE_REPETITION__GTIMESTAMP = 1;
    public static final int CYCLE_REPETITION__CHECKSUM = 2;
    public static final int CYCLE_REPETITION__TIMESTAMP = 3;
    public static final int CYCLE_REPETITION__ABSOLUTELY_SCHEDULED_TIMING = 4;
    public static final int CYCLE_REPETITION__BASE_CYCLE = 5;
    public static final int CYCLE_REPETITION__CYCLE_REPETITION = 6;
    public static final int CYCLE_REPETITION_FEATURE_COUNT = 7;
    public static final int CYCLE_REPETITION_TYPE = 3;

    public EClass getCommunicationCycle();

    public EReference getCommunicationCycle_AbsolutelyScheduledTiming();

    public EClass getCycleCounter();

    public EAttribute getCycleCounter_CycleCounter();

    public EClass getCycleRepetition();

    public EAttribute getCycleRepetition_BaseCycle();

    public EAttribute getCycleRepetition_CycleRepetition();

    public EEnum getCycleRepetitionType();

    public Fibex4flexrayFactory getFibex4flexrayFactory();

    public static interface Literals {
        public static final EClass COMMUNICATION_CYCLE = eINSTANCE.getCommunicationCycle();
        public static final EReference COMMUNICATION_CYCLE__ABSOLUTELY_SCHEDULED_TIMING = eINSTANCE.getCommunicationCycle_AbsolutelyScheduledTiming();
        public static final EClass CYCLE_COUNTER = eINSTANCE.getCycleCounter();
        public static final EAttribute CYCLE_COUNTER__CYCLE_COUNTER = eINSTANCE.getCycleCounter_CycleCounter();
        public static final EClass CYCLE_REPETITION = eINSTANCE.getCycleRepetition();
        public static final EAttribute CYCLE_REPETITION__BASE_CYCLE = eINSTANCE.getCycleRepetition_BaseCycle();
        public static final EAttribute CYCLE_REPETITION__CYCLE_REPETITION = eINSTANCE.getCycleRepetition_CycleRepetition();
        public static final EEnum CYCLE_REPETITION_TYPE = eINSTANCE.getCycleRepetitionType();
    }
}

