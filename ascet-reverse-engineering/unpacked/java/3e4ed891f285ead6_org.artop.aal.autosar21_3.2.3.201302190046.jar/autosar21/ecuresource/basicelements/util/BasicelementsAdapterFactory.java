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
package autosar21.ecuresource.basicelements.util;

import autosar21.ecuresource.basicelements.BasicelementsPackage;
import autosar21.ecuresource.basicelements.BootTime;
import autosar21.ecuresource.basicelements.ElectricalRange;
import autosar21.ecuresource.basicelements.ErrorDetectionCorrection;
import autosar21.ecuresource.basicelements.FrequencyRange;
import autosar21.ecuresource.basicelements.MemoryAccess;
import autosar21.ecuresource.basicelements.SupportsSafety;
import autosar21.ecuresource.basicelements.SupportsSecurity;
import autosar21.ecuresource.basicelements.Temperature;
import autosar21.ecuresource.basicelements.TimeRange;
import autosar21.ecuresource.basicelements.util.BasicelementsSwitch;
import autosar21.genericstructure.infrastructure.ARObject;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;

public class BasicelementsAdapterFactory
extends AdapterFactoryImpl {
    protected static BasicelementsPackage modelPackage;
    protected BasicelementsSwitch<Adapter> modelSwitch = new BasicelementsSwitch<Adapter>(){

        @Override
        public Adapter caseBootTime(BootTime object) {
            return BasicelementsAdapterFactory.this.createBootTimeAdapter();
        }

        @Override
        public Adapter caseElectricalRange(ElectricalRange object) {
            return BasicelementsAdapterFactory.this.createElectricalRangeAdapter();
        }

        @Override
        public Adapter caseErrorDetectionCorrection(ErrorDetectionCorrection object) {
            return BasicelementsAdapterFactory.this.createErrorDetectionCorrectionAdapter();
        }

        @Override
        public Adapter caseFrequencyRange(FrequencyRange object) {
            return BasicelementsAdapterFactory.this.createFrequencyRangeAdapter();
        }

        @Override
        public Adapter caseMemoryAccess(MemoryAccess object) {
            return BasicelementsAdapterFactory.this.createMemoryAccessAdapter();
        }

        @Override
        public Adapter caseTimeRange(TimeRange object) {
            return BasicelementsAdapterFactory.this.createTimeRangeAdapter();
        }

        @Override
        public Adapter caseSupportsSafety(SupportsSafety object) {
            return BasicelementsAdapterFactory.this.createSupportsSafetyAdapter();
        }

        @Override
        public Adapter caseSupportsSecurity(SupportsSecurity object) {
            return BasicelementsAdapterFactory.this.createSupportsSecurityAdapter();
        }

        @Override
        public Adapter caseTemperature(Temperature object) {
            return BasicelementsAdapterFactory.this.createTemperatureAdapter();
        }

        @Override
        public Adapter caseGARObject(GARObject object) {
            return BasicelementsAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter caseARObject(ARObject object) {
            return BasicelementsAdapterFactory.this.createARObjectAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return BasicelementsAdapterFactory.this.createEObjectAdapter();
        }
    };

    public BasicelementsAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = BasicelementsPackage.eINSTANCE;
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

    public Adapter createBootTimeAdapter() {
        return null;
    }

    public Adapter createElectricalRangeAdapter() {
        return null;
    }

    public Adapter createErrorDetectionCorrectionAdapter() {
        return null;
    }

    public Adapter createFrequencyRangeAdapter() {
        return null;
    }

    public Adapter createMemoryAccessAdapter() {
        return null;
    }

    public Adapter createTimeRangeAdapter() {
        return null;
    }

    public Adapter createSupportsSafetyAdapter() {
        return null;
    }

    public Adapter createSupportsSecurityAdapter() {
        return null;
    }

    public Adapter createTemperatureAdapter() {
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

