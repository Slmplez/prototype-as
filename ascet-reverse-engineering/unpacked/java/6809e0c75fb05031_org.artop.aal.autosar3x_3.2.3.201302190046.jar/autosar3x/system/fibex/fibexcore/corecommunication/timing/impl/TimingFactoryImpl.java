/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.EPackage$Registry
 *  org.eclipse.emf.ecore.impl.EFactoryImpl
 *  org.eclipse.emf.ecore.plugin.EcorePlugin
 */
package autosar3x.system.fibex.fibexcore.corecommunication.timing.impl;

import autosar3x.system.fibex.fibexcore.corecommunication.timing.AbsoluteTolerance;
import autosar3x.system.fibex.fibexcore.corecommunication.timing.CyclicTiming;
import autosar3x.system.fibex.fibexcore.corecommunication.timing.EventControlledTiming;
import autosar3x.system.fibex.fibexcore.corecommunication.timing.RelativeTolerance;
import autosar3x.system.fibex.fibexcore.corecommunication.timing.RequestControlledTiming;
import autosar3x.system.fibex.fibexcore.corecommunication.timing.TimeRangeType;
import autosar3x.system.fibex.fibexcore.corecommunication.timing.TimingFactory;
import autosar3x.system.fibex.fibexcore.corecommunication.timing.TimingPackage;
import autosar3x.system.fibex.fibexcore.corecommunication.timing.TransmissionModeCondition;
import autosar3x.system.fibex.fibexcore.corecommunication.timing.TransmissionModeDeclaration;
import autosar3x.system.fibex.fibexcore.corecommunication.timing.TransmissionModeFalseTiming;
import autosar3x.system.fibex.fibexcore.corecommunication.timing.impl.AbsoluteToleranceImpl;
import autosar3x.system.fibex.fibexcore.corecommunication.timing.impl.CyclicTimingImpl;
import autosar3x.system.fibex.fibexcore.corecommunication.timing.impl.EventControlledTimingImpl;
import autosar3x.system.fibex.fibexcore.corecommunication.timing.impl.RelativeToleranceImpl;
import autosar3x.system.fibex.fibexcore.corecommunication.timing.impl.RequestControlledTimingImpl;
import autosar3x.system.fibex.fibexcore.corecommunication.timing.impl.TimeRangeTypeImpl;
import autosar3x.system.fibex.fibexcore.corecommunication.timing.impl.TransmissionModeConditionImpl;
import autosar3x.system.fibex.fibexcore.corecommunication.timing.impl.TransmissionModeDeclarationImpl;
import autosar3x.system.fibex.fibexcore.corecommunication.timing.impl.TransmissionModeFalseTimingImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class TimingFactoryImpl
extends EFactoryImpl
implements TimingFactory {
    public static TimingFactory init() {
        try {
            TimingFactory theTimingFactory = (TimingFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/3.2.1/autosar3x/s/f/fcore/cc/t");
            if (theTimingFactory != null) {
                return theTimingFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new TimingFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 0: {
                return this.createAbsoluteTolerance();
            }
            case 2: {
                return this.createCyclicTiming();
            }
            case 3: {
                return this.createTimeRangeType();
            }
            case 4: {
                return this.createEventControlledTiming();
            }
            case 5: {
                return this.createRelativeTolerance();
            }
            case 6: {
                return this.createTransmissionModeCondition();
            }
            case 7: {
                return this.createTransmissionModeDeclaration();
            }
            case 8: {
                return this.createTransmissionModeFalseTiming();
            }
            case 9: {
                return this.createRequestControlledTiming();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public AbsoluteTolerance createAbsoluteTolerance() {
        AbsoluteToleranceImpl absoluteTolerance = new AbsoluteToleranceImpl();
        return absoluteTolerance;
    }

    public CyclicTiming createCyclicTiming() {
        CyclicTimingImpl cyclicTiming = new CyclicTimingImpl();
        return cyclicTiming;
    }

    public TimeRangeType createTimeRangeType() {
        TimeRangeTypeImpl timeRangeType = new TimeRangeTypeImpl();
        return timeRangeType;
    }

    public EventControlledTiming createEventControlledTiming() {
        EventControlledTimingImpl eventControlledTiming = new EventControlledTimingImpl();
        return eventControlledTiming;
    }

    public RelativeTolerance createRelativeTolerance() {
        RelativeToleranceImpl relativeTolerance = new RelativeToleranceImpl();
        return relativeTolerance;
    }

    public TransmissionModeCondition createTransmissionModeCondition() {
        TransmissionModeConditionImpl transmissionModeCondition = new TransmissionModeConditionImpl();
        return transmissionModeCondition;
    }

    public TransmissionModeDeclaration createTransmissionModeDeclaration() {
        TransmissionModeDeclarationImpl transmissionModeDeclaration = new TransmissionModeDeclarationImpl();
        return transmissionModeDeclaration;
    }

    public TransmissionModeFalseTiming createTransmissionModeFalseTiming() {
        TransmissionModeFalseTimingImpl transmissionModeFalseTiming = new TransmissionModeFalseTimingImpl();
        return transmissionModeFalseTiming;
    }

    public RequestControlledTiming createRequestControlledTiming() {
        RequestControlledTimingImpl requestControlledTiming = new RequestControlledTimingImpl();
        return requestControlledTiming;
    }

    public TimingPackage getTimingPackage() {
        return (TimingPackage)this.getEPackage();
    }

    @Deprecated
    public static TimingPackage getPackage() {
        return TimingPackage.eINSTANCE;
    }
}

