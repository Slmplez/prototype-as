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
package autosar3x.swcomponent.swcinternalbehavior.interrunnablecommunication;

import autosar3x.swcomponent.swcinternalbehavior.interrunnablecommunication.InterrunnablecommunicationFactory;
import autosar3x.swcomponent.swcinternalbehavior.interrunnablecommunication.impl.InterrunnablecommunicationPackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EEnum;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface InterrunnablecommunicationPackage
extends EPackage {
    public static final String eNAME = "interrunnablecommunication";
    public static final String eNS_URI = "http://autosar.org/3.2.1/autosar3x/swc/sib/irc";
    public static final String eNS_PREFIX = "";
    public static final InterrunnablecommunicationPackage eINSTANCE = InterrunnablecommunicationPackageImpl.init();
    public static final int INTER_RUNNABLE_VARIABLE = 0;
    public static final int INTER_RUNNABLE_VARIABLE__GCHECKSUM = 0;
    public static final int INTER_RUNNABLE_VARIABLE__GTIMESTAMP = 1;
    public static final int INTER_RUNNABLE_VARIABLE__CHECKSUM = 2;
    public static final int INTER_RUNNABLE_VARIABLE__TIMESTAMP = 3;
    public static final int INTER_RUNNABLE_VARIABLE__GSHORT_NAME = 4;
    public static final int INTER_RUNNABLE_VARIABLE__GUUID = 5;
    public static final int INTER_RUNNABLE_VARIABLE__GCATEGORY = 6;
    public static final int INTER_RUNNABLE_VARIABLE__GDESC = 7;
    public static final int INTER_RUNNABLE_VARIABLE__SHORT_NAME = 8;
    public static final int INTER_RUNNABLE_VARIABLE__LONG_NAME = 9;
    public static final int INTER_RUNNABLE_VARIABLE__DESC = 10;
    public static final int INTER_RUNNABLE_VARIABLE__CATEGORY = 11;
    public static final int INTER_RUNNABLE_VARIABLE__ADMIN_DATA = 12;
    public static final int INTER_RUNNABLE_VARIABLE__INTRODUCTION = 13;
    public static final int INTER_RUNNABLE_VARIABLE__UUID = 14;
    public static final int INTER_RUNNABLE_VARIABLE__ALL_EXTENSIONS = 15;
    public static final int INTER_RUNNABLE_VARIABLE__CONTAINED_EXTENSIONS = 16;
    public static final int INTER_RUNNABLE_VARIABLE__GTYPE = 17;
    public static final int INTER_RUNNABLE_VARIABLE__GELEMENT_TYPE = 18;
    public static final int INTER_RUNNABLE_VARIABLE__SW_DATA_DEF_PROPS = 19;
    public static final int INTER_RUNNABLE_VARIABLE__TYPE = 20;
    public static final int INTER_RUNNABLE_VARIABLE__INTERNAL_BEHAVIOR = 21;
    public static final int INTER_RUNNABLE_VARIABLE__COMMUNICATION_APPROACH = 22;
    public static final int INTER_RUNNABLE_VARIABLE__INIT_VALUE = 23;
    public static final int INTER_RUNNABLE_VARIABLE_FEATURE_COUNT = 24;
    public static final int COMMUNICATION_APPROACH_TYPE = 1;

    public EClass getInterRunnableVariable();

    public EReference getInterRunnableVariable_InternalBehavior();

    public EAttribute getInterRunnableVariable_CommunicationApproach();

    public EReference getInterRunnableVariable_InitValue();

    public EEnum getCommunicationApproachType();

    public InterrunnablecommunicationFactory getInterrunnablecommunicationFactory();

    public static interface Literals {
        public static final EClass INTER_RUNNABLE_VARIABLE = eINSTANCE.getInterRunnableVariable();
        public static final EReference INTER_RUNNABLE_VARIABLE__INTERNAL_BEHAVIOR = eINSTANCE.getInterRunnableVariable_InternalBehavior();
        public static final EAttribute INTER_RUNNABLE_VARIABLE__COMMUNICATION_APPROACH = eINSTANCE.getInterRunnableVariable_CommunicationApproach();
        public static final EReference INTER_RUNNABLE_VARIABLE__INIT_VALUE = eINSTANCE.getInterRunnableVariable_InitValue();
        public static final EEnum COMMUNICATION_APPROACH_TYPE = eINSTANCE.getCommunicationApproachType();
    }
}

