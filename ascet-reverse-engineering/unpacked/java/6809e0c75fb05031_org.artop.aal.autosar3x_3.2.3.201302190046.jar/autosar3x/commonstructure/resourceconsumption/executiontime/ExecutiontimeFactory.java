/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar3x.commonstructure.resourceconsumption.executiontime;

import autosar3x.commonstructure.resourceconsumption.executiontime.ECUPrototype;
import autosar3x.commonstructure.resourceconsumption.executiontime.ExecutionTime;
import autosar3x.commonstructure.resourceconsumption.executiontime.ExecutiontimePackage;
import autosar3x.commonstructure.resourceconsumption.executiontime.MeasuredExecutionTime;
import autosar3x.commonstructure.resourceconsumption.executiontime.MemorySectionLocation;
import autosar3x.commonstructure.resourceconsumption.executiontime.RoughEstimateOfExecutionTime;
import autosar3x.commonstructure.resourceconsumption.executiontime.SimulatedExecutionTime;
import autosar3x.commonstructure.resourceconsumption.executiontime.WorstCaseExecutionTime;
import autosar3x.commonstructure.resourceconsumption.executiontime.impl.ExecutiontimeFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface ExecutiontimeFactory
extends EFactory {
    public static final ExecutiontimeFactory eINSTANCE = ExecutiontimeFactoryImpl.init();

    public ECUPrototype createECUPrototype();

    public ExecutionTime createExecutionTime();

    public MemorySectionLocation createMemorySectionLocation();

    public MeasuredExecutionTime createMeasuredExecutionTime();

    public RoughEstimateOfExecutionTime createRoughEstimateOfExecutionTime();

    public SimulatedExecutionTime createSimulatedExecutionTime();

    public WorstCaseExecutionTime createWorstCaseExecutionTime();

    public ExecutiontimePackage getExecutiontimePackage();
}

