/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar3x.ecuresource.basicelements;

import autosar3x.ecuresource.basicelements.BasicelementsPackage;
import autosar3x.ecuresource.basicelements.BootTime;
import autosar3x.ecuresource.basicelements.ElectricalRange;
import autosar3x.ecuresource.basicelements.ErrorDetectionCorrection;
import autosar3x.ecuresource.basicelements.FrequencyRange;
import autosar3x.ecuresource.basicelements.SupportsSafety;
import autosar3x.ecuresource.basicelements.SupportsSecurity;
import autosar3x.ecuresource.basicelements.Temperature;
import autosar3x.ecuresource.basicelements.TimeRange;
import autosar3x.ecuresource.basicelements.impl.BasicelementsFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface BasicelementsFactory
extends EFactory {
    public static final BasicelementsFactory eINSTANCE = BasicelementsFactoryImpl.init();

    public BootTime createBootTime();

    public ElectricalRange createElectricalRange();

    public ErrorDetectionCorrection createErrorDetectionCorrection();

    public FrequencyRange createFrequencyRange();

    public SupportsSafety createSupportsSafety();

    public SupportsSecurity createSupportsSecurity();

    public Temperature createTemperature();

    public TimeRange createTimeRange();

    public BasicelementsPackage getBasicelementsPackage();
}

