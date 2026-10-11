/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar40.system.fibex.fibexcore.corecommunication.timing;

import autosar40.system.fibex.fibexcore.corecommunication.timing.AbsoluteTolerance;
import autosar40.system.fibex.fibexcore.corecommunication.timing.CyclicTiming;
import autosar40.system.fibex.fibexcore.corecommunication.timing.EventControlledTiming;
import autosar40.system.fibex.fibexcore.corecommunication.timing.ModeDrivenTransmissionModeCondition;
import autosar40.system.fibex.fibexcore.corecommunication.timing.RelativeTolerance;
import autosar40.system.fibex.fibexcore.corecommunication.timing.TimeRangeType;
import autosar40.system.fibex.fibexcore.corecommunication.timing.TimingPackage;
import autosar40.system.fibex.fibexcore.corecommunication.timing.TransmissionModeCondition;
import autosar40.system.fibex.fibexcore.corecommunication.timing.TransmissionModeDeclaration;
import autosar40.system.fibex.fibexcore.corecommunication.timing.TransmissionModeTiming;
import autosar40.system.fibex.fibexcore.corecommunication.timing.impl.TimingFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface TimingFactory
extends EFactory {
    public static final TimingFactory eINSTANCE = TimingFactoryImpl.init();

    public AbsoluteTolerance createAbsoluteTolerance();

    public CyclicTiming createCyclicTiming();

    public TimeRangeType createTimeRangeType();

    public EventControlledTiming createEventControlledTiming();

    public ModeDrivenTransmissionModeCondition createModeDrivenTransmissionModeCondition();

    public RelativeTolerance createRelativeTolerance();

    public TransmissionModeCondition createTransmissionModeCondition();

    public TransmissionModeTiming createTransmissionModeTiming();

    public TransmissionModeDeclaration createTransmissionModeDeclaration();

    public TimingPackage getTimingPackage();
}

