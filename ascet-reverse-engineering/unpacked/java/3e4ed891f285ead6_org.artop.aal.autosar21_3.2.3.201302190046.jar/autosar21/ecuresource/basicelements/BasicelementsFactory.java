/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar21.ecuresource.basicelements;

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
import autosar21.ecuresource.basicelements.impl.BasicelementsFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface BasicelementsFactory
extends EFactory {
    public static final BasicelementsFactory eINSTANCE = BasicelementsFactoryImpl.init();

    public BootTime createBootTime();

    public ElectricalRange createElectricalRange();

    public ErrorDetectionCorrection createErrorDetectionCorrection();

    public FrequencyRange createFrequencyRange();

    public MemoryAccess createMemoryAccess();

    public TimeRange createTimeRange();

    public SupportsSafety createSupportsSafety();

    public SupportsSecurity createSupportsSecurity();

    public Temperature createTemperature();

    public BasicelementsPackage getBasicelementsPackage();
}

