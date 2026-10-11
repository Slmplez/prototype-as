/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar21.ecuresource.processingunit;

import autosar21.ecuresource.processingunit.InterruptConsumeHWPort;
import autosar21.ecuresource.processingunit.InterruptProduceHWPort;
import autosar21.ecuresource.processingunit.MPU;
import autosar21.ecuresource.processingunit.ProcessingUnit;
import autosar21.ecuresource.processingunit.ProcessingunitPackage;
import autosar21.ecuresource.processingunit.Register;
import autosar21.ecuresource.processingunit.SupportedDataType;
import autosar21.ecuresource.processingunit.impl.ProcessingunitFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface ProcessingunitFactory
extends EFactory {
    public static final ProcessingunitFactory eINSTANCE = ProcessingunitFactoryImpl.init();

    public InterruptConsumeHWPort createInterruptConsumeHWPort();

    public MPU createMPU();

    public ProcessingUnit createProcessingUnit();

    public Register createRegister();

    public SupportedDataType createSupportedDataType();

    public InterruptProduceHWPort createInterruptProduceHWPort();

    public ProcessingunitPackage getProcessingunitPackage();
}

