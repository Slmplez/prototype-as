/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar21.swcomponent.resources.executiontime;

import autosar21.swcomponent.resources.executiontime.ECUPrototype;
import autosar21.swcomponent.resources.executiontime.ExecutionTime;
import autosar21.swcomponent.resources.executiontime.ExecutiontimePackage;
import autosar21.swcomponent.resources.executiontime.HardwareConfiguration;
import autosar21.swcomponent.resources.executiontime.MeasuredExecutionTime;
import autosar21.swcomponent.resources.executiontime.MemorySectionLocation;
import autosar21.swcomponent.resources.executiontime.RoughEstimateOfExecutionTime;
import autosar21.swcomponent.resources.executiontime.SimulatedExecutionTime;
import autosar21.swcomponent.resources.executiontime.SoftwareContext;
import autosar21.swcomponent.resources.executiontime.WorstCaseExecutionTime;
import autosar21.swcomponent.resources.executiontime.impl.ExecutiontimeFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface ExecutiontimeFactory
extends EFactory {
    public static final ExecutiontimeFactory eINSTANCE = ExecutiontimeFactoryImpl.init();

    public ECUPrototype createECUPrototype();

    public ExecutionTime createExecutionTime();

    public MemorySectionLocation createMemorySectionLocation();

    public SoftwareContext createSoftwareContext();

    public MeasuredExecutionTime createMeasuredExecutionTime();

    public RoughEstimateOfExecutionTime createRoughEstimateOfExecutionTime();

    public SimulatedExecutionTime createSimulatedExecutionTime();

    public WorstCaseExecutionTime createWorstCaseExecutionTime();

    public HardwareConfiguration createHardwareConfiguration();

    public ExecutiontimePackage getExecutiontimePackage();
}

