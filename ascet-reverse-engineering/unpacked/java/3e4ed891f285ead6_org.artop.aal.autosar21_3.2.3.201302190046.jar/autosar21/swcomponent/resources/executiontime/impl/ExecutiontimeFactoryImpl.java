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
package autosar21.swcomponent.resources.executiontime.impl;

import autosar21.swcomponent.resources.executiontime.ECUPrototype;
import autosar21.swcomponent.resources.executiontime.ExecutionTime;
import autosar21.swcomponent.resources.executiontime.ExecutiontimeFactory;
import autosar21.swcomponent.resources.executiontime.ExecutiontimePackage;
import autosar21.swcomponent.resources.executiontime.HardwareConfiguration;
import autosar21.swcomponent.resources.executiontime.MeasuredExecutionTime;
import autosar21.swcomponent.resources.executiontime.MemorySectionLocation;
import autosar21.swcomponent.resources.executiontime.RoughEstimateOfExecutionTime;
import autosar21.swcomponent.resources.executiontime.SimulatedExecutionTime;
import autosar21.swcomponent.resources.executiontime.SoftwareContext;
import autosar21.swcomponent.resources.executiontime.WorstCaseExecutionTime;
import autosar21.swcomponent.resources.executiontime.impl.ECUPrototypeImpl;
import autosar21.swcomponent.resources.executiontime.impl.ExecutionTimeImpl;
import autosar21.swcomponent.resources.executiontime.impl.HardwareConfigurationImpl;
import autosar21.swcomponent.resources.executiontime.impl.MeasuredExecutionTimeImpl;
import autosar21.swcomponent.resources.executiontime.impl.MemorySectionLocationImpl;
import autosar21.swcomponent.resources.executiontime.impl.RoughEstimateOfExecutionTimeImpl;
import autosar21.swcomponent.resources.executiontime.impl.SimulatedExecutionTimeImpl;
import autosar21.swcomponent.resources.executiontime.impl.SoftwareContextImpl;
import autosar21.swcomponent.resources.executiontime.impl.WorstCaseExecutionTimeImpl;
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
            ExecutiontimeFactory theExecutiontimeFactory = (ExecutiontimeFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/2.1.5/autosar21/swc/r/et");
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
                return this.createSoftwareContext();
            }
            case 4: {
                return this.createMeasuredExecutionTime();
            }
            case 5: {
                return this.createRoughEstimateOfExecutionTime();
            }
            case 6: {
                return this.createSimulatedExecutionTime();
            }
            case 7: {
                return this.createWorstCaseExecutionTime();
            }
            case 8: {
                return this.createHardwareConfiguration();
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

    public SoftwareContext createSoftwareContext() {
        SoftwareContextImpl softwareContext = new SoftwareContextImpl();
        return softwareContext;
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

    public HardwareConfiguration createHardwareConfiguration() {
        HardwareConfigurationImpl hardwareConfiguration = new HardwareConfigurationImpl();
        return hardwareConfiguration;
    }

    public ExecutiontimePackage getExecutiontimePackage() {
        return (ExecutiontimePackage)this.getEPackage();
    }

    @Deprecated
    public static ExecutiontimePackage getPackage() {
        return ExecutiontimePackage.eINSTANCE;
    }
}

