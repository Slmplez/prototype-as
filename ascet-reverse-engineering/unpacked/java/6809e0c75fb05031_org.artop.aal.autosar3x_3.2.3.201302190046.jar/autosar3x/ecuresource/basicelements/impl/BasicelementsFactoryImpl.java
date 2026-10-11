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
package autosar3x.ecuresource.basicelements.impl;

import autosar3x.ecuresource.basicelements.BasicelementsFactory;
import autosar3x.ecuresource.basicelements.BasicelementsPackage;
import autosar3x.ecuresource.basicelements.BootTime;
import autosar3x.ecuresource.basicelements.ElectricalRange;
import autosar3x.ecuresource.basicelements.ErrorDetectionCorrection;
import autosar3x.ecuresource.basicelements.FrequencyRange;
import autosar3x.ecuresource.basicelements.SupportsSafety;
import autosar3x.ecuresource.basicelements.SupportsSecurity;
import autosar3x.ecuresource.basicelements.Temperature;
import autosar3x.ecuresource.basicelements.TimeRange;
import autosar3x.ecuresource.basicelements.impl.BootTimeImpl;
import autosar3x.ecuresource.basicelements.impl.ElectricalRangeImpl;
import autosar3x.ecuresource.basicelements.impl.ErrorDetectionCorrectionImpl;
import autosar3x.ecuresource.basicelements.impl.FrequencyRangeImpl;
import autosar3x.ecuresource.basicelements.impl.SupportsSafetyImpl;
import autosar3x.ecuresource.basicelements.impl.SupportsSecurityImpl;
import autosar3x.ecuresource.basicelements.impl.TemperatureImpl;
import autosar3x.ecuresource.basicelements.impl.TimeRangeImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class BasicelementsFactoryImpl
extends EFactoryImpl
implements BasicelementsFactory {
    public static BasicelementsFactory init() {
        try {
            BasicelementsFactory theBasicelementsFactory = (BasicelementsFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/3.2.1/autosar3x/ecur/be");
            if (theBasicelementsFactory != null) {
                return theBasicelementsFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new BasicelementsFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 0: {
                return this.createBootTime();
            }
            case 1: {
                return this.createElectricalRange();
            }
            case 2: {
                return this.createErrorDetectionCorrection();
            }
            case 3: {
                return this.createFrequencyRange();
            }
            case 4: {
                return this.createSupportsSafety();
            }
            case 5: {
                return this.createSupportsSecurity();
            }
            case 6: {
                return this.createTemperature();
            }
            case 7: {
                return this.createTimeRange();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public BootTime createBootTime() {
        BootTimeImpl bootTime = new BootTimeImpl();
        return bootTime;
    }

    public ElectricalRange createElectricalRange() {
        ElectricalRangeImpl electricalRange = new ElectricalRangeImpl();
        return electricalRange;
    }

    public ErrorDetectionCorrection createErrorDetectionCorrection() {
        ErrorDetectionCorrectionImpl errorDetectionCorrection = new ErrorDetectionCorrectionImpl();
        return errorDetectionCorrection;
    }

    public FrequencyRange createFrequencyRange() {
        FrequencyRangeImpl frequencyRange = new FrequencyRangeImpl();
        return frequencyRange;
    }

    public SupportsSafety createSupportsSafety() {
        SupportsSafetyImpl supportsSafety = new SupportsSafetyImpl();
        return supportsSafety;
    }

    public SupportsSecurity createSupportsSecurity() {
        SupportsSecurityImpl supportsSecurity = new SupportsSecurityImpl();
        return supportsSecurity;
    }

    public Temperature createTemperature() {
        TemperatureImpl temperature = new TemperatureImpl();
        return temperature;
    }

    public TimeRange createTimeRange() {
        TimeRangeImpl timeRange = new TimeRangeImpl();
        return timeRange;
    }

    public BasicelementsPackage getBasicelementsPackage() {
        return (BasicelementsPackage)this.getEPackage();
    }

    @Deprecated
    public static BasicelementsPackage getPackage() {
        return BasicelementsPackage.eINSTANCE;
    }
}

