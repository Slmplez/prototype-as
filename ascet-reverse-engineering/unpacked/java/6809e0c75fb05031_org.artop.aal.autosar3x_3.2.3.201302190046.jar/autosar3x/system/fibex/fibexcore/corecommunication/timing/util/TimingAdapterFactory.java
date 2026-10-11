/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  org.eclipse.emf.common.notify.Adapter
 *  org.eclipse.emf.common.notify.Notifier
 *  org.eclipse.emf.common.notify.impl.AdapterFactoryImpl
 *  org.eclipse.emf.ecore.EObject
 */
package autosar3x.system.fibex.fibexcore.corecommunication.timing.util;

import autosar3x.genericstructure.infrastructure.ARObject;
import autosar3x.system.fibex.fibexcore.corecommunication.timing.AbsoluteTolerance;
import autosar3x.system.fibex.fibexcore.corecommunication.timing.CyclicTiming;
import autosar3x.system.fibex.fibexcore.corecommunication.timing.EventControlledTiming;
import autosar3x.system.fibex.fibexcore.corecommunication.timing.RelativeTolerance;
import autosar3x.system.fibex.fibexcore.corecommunication.timing.RequestControlledTiming;
import autosar3x.system.fibex.fibexcore.corecommunication.timing.TimeRangeType;
import autosar3x.system.fibex.fibexcore.corecommunication.timing.TimeRangeTypeTolerance;
import autosar3x.system.fibex.fibexcore.corecommunication.timing.TimingPackage;
import autosar3x.system.fibex.fibexcore.corecommunication.timing.TransmissionModeCondition;
import autosar3x.system.fibex.fibexcore.corecommunication.timing.TransmissionModeDeclaration;
import autosar3x.system.fibex.fibexcore.corecommunication.timing.TransmissionModeFalseTiming;
import autosar3x.system.fibex.fibexcore.corecommunication.timing.util.TimingSwitch;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;

public class TimingAdapterFactory
extends AdapterFactoryImpl {
    protected static TimingPackage modelPackage;
    protected TimingSwitch<Adapter> modelSwitch = new TimingSwitch<Adapter>(){

        @Override
        public Adapter caseAbsoluteTolerance(AbsoluteTolerance object) {
            return TimingAdapterFactory.this.createAbsoluteToleranceAdapter();
        }

        @Override
        public Adapter caseTimeRangeTypeTolerance(TimeRangeTypeTolerance object) {
            return TimingAdapterFactory.this.createTimeRangeTypeToleranceAdapter();
        }

        @Override
        public Adapter caseCyclicTiming(CyclicTiming object) {
            return TimingAdapterFactory.this.createCyclicTimingAdapter();
        }

        @Override
        public Adapter caseTimeRangeType(TimeRangeType object) {
            return TimingAdapterFactory.this.createTimeRangeTypeAdapter();
        }

        @Override
        public Adapter caseEventControlledTiming(EventControlledTiming object) {
            return TimingAdapterFactory.this.createEventControlledTimingAdapter();
        }

        @Override
        public Adapter caseRelativeTolerance(RelativeTolerance object) {
            return TimingAdapterFactory.this.createRelativeToleranceAdapter();
        }

        @Override
        public Adapter caseTransmissionModeCondition(TransmissionModeCondition object) {
            return TimingAdapterFactory.this.createTransmissionModeConditionAdapter();
        }

        @Override
        public Adapter caseTransmissionModeDeclaration(TransmissionModeDeclaration object) {
            return TimingAdapterFactory.this.createTransmissionModeDeclarationAdapter();
        }

        @Override
        public Adapter caseTransmissionModeFalseTiming(TransmissionModeFalseTiming object) {
            return TimingAdapterFactory.this.createTransmissionModeFalseTimingAdapter();
        }

        @Override
        public Adapter caseRequestControlledTiming(RequestControlledTiming object) {
            return TimingAdapterFactory.this.createRequestControlledTimingAdapter();
        }

        @Override
        public Adapter caseGARObject(GARObject object) {
            return TimingAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter caseARObject(ARObject object) {
            return TimingAdapterFactory.this.createARObjectAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return TimingAdapterFactory.this.createEObjectAdapter();
        }
    };

    public TimingAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = TimingPackage.eINSTANCE;
        }
    }

    public boolean isFactoryForType(Object object) {
        if (object == modelPackage) {
            return true;
        }
        if (object instanceof EObject) {
            return ((EObject)object).eClass().getEPackage() == modelPackage;
        }
        return false;
    }

    public Adapter createAdapter(Notifier target) {
        return this.modelSwitch.doSwitch((EObject)target);
    }

    public Adapter createAbsoluteToleranceAdapter() {
        return null;
    }

    public Adapter createTimeRangeTypeToleranceAdapter() {
        return null;
    }

    public Adapter createCyclicTimingAdapter() {
        return null;
    }

    public Adapter createTimeRangeTypeAdapter() {
        return null;
    }

    public Adapter createEventControlledTimingAdapter() {
        return null;
    }

    public Adapter createRelativeToleranceAdapter() {
        return null;
    }

    public Adapter createTransmissionModeConditionAdapter() {
        return null;
    }

    public Adapter createTransmissionModeDeclarationAdapter() {
        return null;
    }

    public Adapter createTransmissionModeFalseTimingAdapter() {
        return null;
    }

    public Adapter createRequestControlledTimingAdapter() {
        return null;
    }

    public Adapter createGARObjectAdapter() {
        return null;
    }

    public Adapter createARObjectAdapter() {
        return null;
    }

    public Adapter createEObjectAdapter() {
        return null;
    }
}

