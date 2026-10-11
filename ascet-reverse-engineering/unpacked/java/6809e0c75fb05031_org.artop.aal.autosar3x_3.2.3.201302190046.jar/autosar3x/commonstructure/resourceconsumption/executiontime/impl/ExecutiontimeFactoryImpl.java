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
package autosar3x.commonstructure.resourceconsumption.executiontime.impl;

import autosar3x.commonstructure.resourceconsumption.executiontime.ECUPrototype;
import autosar3x.commonstructure.resourceconsumption.executiontime.ExecutionTime;
import autosar3x.commonstructure.resourceconsumption.executiontime.ExecutiontimeFactory;
import autosar3x.commonstructure.resourceconsumption.executiontime.ExecutiontimePackage;
import autosar3x.commonstructure.resourceconsumption.executiontime.MeasuredExecutionTime;
import autosar3x.commonstructure.resourceconsumption.executiontime.MemorySectionLocation;
import autosar3x.commonstructure.resourceconsumption.executiontime.RoughEstimateOfExecutionTime;
import autosar3x.commonstructure.resourceconsumption.executiontime.SimulatedExecutionTime;
import autosar3x.commonstructure.resourceconsumption.executiontime.WorstCaseExecutionTime;
import autosar3x.commonstructure.resourceconsumption.executiontime.impl.ECUPrototypeImpl;
import autosar3x.commonstructure.resourceconsumption.executiontime.impl.ExecutionTimeImpl;
import autosar3x.commonstructure.resourceconsumption.executiontime.impl.MeasuredExecutionTimeImpl;
import autosar3x.commonstructure.resourceconsumption.executiontime.impl.MemorySectionLocationImpl;
import autosar3x.commonstructure.resourceconsumption.executiontime.impl.RoughEstimateOfExecutionTimeImpl;
import autosar3x.commonstructure.resourceconsumption.executiontime.impl.SimulatedExecutionTimeImpl;
import autosar3x.commonstructure.resourceconsumption.executiontime.impl.WorstCaseExecutionTimeImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class ExecutiontimeFactoryImpl
extends EFactoryImpl
implements ExecutiontimeFactory {
    public static ExecutiontimeFactory init() {
        try {
            ExecutiontimeFactory theExecutiontimeFactory = (ExecutiontimeFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/3.2.1/autosar3x/cs/rc/et");
            if (theExecutiontimeFactory != null) {
                return theExecutiontimeFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new ExecutiontimeFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 0: {
                return this.createECUPrototype();
            }
            case 1: {
                return this.createExecutionTime();
            }
            case 2: {
                return this.createMemorySectionLocation();
            }
            case 3: {
                return this.createMeasuredExecutionTime();
            }
            case 4: {
                return this.createRoughEstimateOfExecutionTime();
            }
            case 5: {
                return this.createSimulatedExecutionTime();
            }
            case 6: {
                return this.createWorstCaseExecutionTime();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public ECUPrototype createECUPrototype() {
        ECUPrototypeImpl ecuPrototype = new ECUPrototypeImpl();
        return ecuPrototype;
    }

    public ExecutionTime createExecutionTime() {
        ExecutionTimeImpl executionTime = new ExecutionTimeImpl();
        return executionTime;
    }

    public MemorySectionLocation createMemorySectionLocation() {
        MemorySectionLocationImpl memorySectionLocation = new MemorySectionLocationImpl();
        return memorySectionLocation;
    }

    public MeasuredExecutionTime createMeasuredExecutionTime() {
        MeasuredExecutionTimeImpl measuredExecutionTime = new MeasuredExecutionTimeImpl();
        return measuredExecutionTime;
    }

    public RoughEstimateOfExecutionTime createRoughEstimateOfExecutionTime() {
        RoughEstimateOfExecutionTimeImpl roughEstimateOfExecutionTime = new RoughEstimateOfExecutionTimeImpl();
        return roughEstimateOfExecutionTime;
    }

    public SimulatedExecutionTime createSimulatedExecutionTime() {
        SimulatedExecutionTimeImpl simulatedExecutionTime = new SimulatedExecutionTimeImpl();
        return simulatedExecutionTime;
    }

    public WorstCaseExecutionTime createWorstCaseExecutionTime() {
        WorstCaseExecutionTimeImpl worstCaseExecutionTime = new WorstCaseExecutionTimeImpl();
        return worstCaseExecutionTime;
    }

    public ExecutiontimePackage getExecutiontimePackage() {
        return (ExecutiontimePackage)this.getEPackage();
    }

    @Deprecated
    public static ExecutiontimePackage getPackage() {
        return ExecutiontimePackage.eINSTANCE;
    }
}

