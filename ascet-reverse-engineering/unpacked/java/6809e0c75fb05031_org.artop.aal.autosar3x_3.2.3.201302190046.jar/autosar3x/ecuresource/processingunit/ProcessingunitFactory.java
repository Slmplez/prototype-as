/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar3x.ecuresource.processingunit;

import autosar3x.ecuresource.processingunit.InterruptConsumeHWPort;
import autosar3x.ecuresource.processingunit.InterruptProduceHWPort;
import autosar3x.ecuresource.processingunit.MPU;
import autosar3x.ecuresource.processingunit.ProcessingUnit;
import autosar3x.ecuresource.processingunit.ProcessingunitPackage;
import autosar3x.ecuresource.processingunit.Register;
import autosar3x.ecuresource.processingunit.SupportedDataType;
import autosar3x.ecuresource.processingunit.impl.ProcessingunitFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface ProcessingunitFactory
extends EFactory {
    public static final ProcessingunitFactory eINSTANCE = ProcessingunitFactoryImpl.init();

    public InterruptConsumeHWPort createInterruptConsumeHWPort();

    public InterruptProduceHWPort createInterruptProduceHWPort();

    public MPU createMPU();

    public ProcessingUnit createProcessingUnit();

    public Register createRegister();

    public SupportedDataType createSupportedDataType();

    public ProcessingunitPackage getProcessingunitPackage();
}

