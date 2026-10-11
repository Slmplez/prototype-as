/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar3x.system.fibex.fibexcore.corecommunication.timing;

import autosar3x.system.fibex.fibexcore.corecommunication.timing.AbsoluteTolerance;
import autosar3x.system.fibex.fibexcore.corecommunication.timing.CyclicTiming;
import autosar3x.system.fibex.fibexcore.corecommunication.timing.EventControlledTiming;
import autosar3x.system.fibex.fibexcore.corecommunication.timing.RelativeTolerance;
import autosar3x.system.fibex.fibexcore.corecommunication.timing.RequestControlledTiming;
import autosar3x.system.fibex.fibexcore.corecommunication.timing.TimeRangeType;
import autosar3x.system.fibex.fibexcore.corecommunication.timing.TimingPackage;
import autosar3x.system.fibex.fibexcore.corecommunication.timing.TransmissionModeCondition;
import autosar3x.system.fibex.fibexcore.corecommunication.timing.TransmissionModeDeclaration;
import autosar3x.system.fibex.fibexcore.corecommunication.timing.TransmissionModeFalseTiming;
import autosar3x.system.fibex.fibexcore.corecommunication.timing.impl.TimingFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface TimingFactory
extends EFactory {
    public static final TimingFactory eINSTANCE = TimingFactoryImpl.init();

    public AbsoluteTolerance createAbsoluteTolerance();

    public CyclicTiming createCyclicTiming();

    public TimeRangeType createTimeRangeType();

    public EventControlledTiming createEventControlledTiming();

    public RelativeTolerance createRelativeTolerance();

    public TransmissionModeCondition createTransmissionModeCondition();

    public TransmissionModeDeclaration createTransmissionModeDeclaration();

    public TransmissionModeFalseTiming createTransmissionModeFalseTiming();

    public RequestControlledTiming createRequestControlledTiming();

    public TimingPackage getTimingPackage();
}

