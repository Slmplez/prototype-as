/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar40.commonstructure.resourceconsumption.executiontime;

import autosar40.commonstructure.resourceconsumption.executiontime.AnalyzedExecutionTime;
import autosar40.commonstructure.resourceconsumption.executiontime.ExecutiontimePackage;
import autosar40.commonstructure.resourceconsumption.executiontime.MeasuredExecutionTime;
import autosar40.commonstructure.resourceconsumption.executiontime.MemorySectionLocation;
import autosar40.commonstructure.resourceconsumption.executiontime.RoughEstimateOfExecutionTime;
import autosar40.commonstructure.resourceconsumption.executiontime.SimulatedExecutionTime;
import autosar40.commonstructure.resourceconsumption.executiontime.impl.ExecutiontimeFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface ExecutiontimeFactory
extends EFactory {
    public static final ExecutiontimeFactory eINSTANCE = ExecutiontimeFactoryImpl.init();

    public AnalyzedExecutionTime createAnalyzedExecutionTime();

    public MemorySectionLocation createMemorySectionLocation();

    public MeasuredExecutionTime createMeasuredExecutionTime();

    public RoughEstimateOfExecutionTime createRoughEstimateOfExecutionTime();

    public SimulatedExecutionTime createSimulatedExecutionTime();

    public ExecutiontimePackage getExecutiontimePackage();
}

