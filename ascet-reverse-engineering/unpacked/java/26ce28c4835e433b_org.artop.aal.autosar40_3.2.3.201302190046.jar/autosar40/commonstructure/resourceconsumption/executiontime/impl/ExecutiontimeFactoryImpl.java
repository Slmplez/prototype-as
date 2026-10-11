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
package autosar40.commonstructure.resourceconsumption.executiontime.impl;

import autosar40.commonstructure.resourceconsumption.executiontime.AnalyzedExecutionTime;
import autosar40.commonstructure.resourceconsumption.executiontime.ExecutiontimeFactory;
import autosar40.commonstructure.resourceconsumption.executiontime.ExecutiontimePackage;
import autosar40.commonstructure.resourceconsumption.executiontime.MeasuredExecutionTime;
import autosar40.commonstructure.resourceconsumption.executiontime.MemorySectionLocation;
import autosar40.commonstructure.resourceconsumption.executiontime.RoughEstimateOfExecutionTime;
import autosar40.commonstructure.resourceconsumption.executiontime.SimulatedExecutionTime;
import autosar40.commonstructure.resourceconsumption.executiontime.impl.AnalyzedExecutionTimeImpl;
import autosar40.commonstructure.resourceconsumption.executiontime.impl.MeasuredExecutionTimeImpl;
import autosar40.commonstructure.resourceconsumption.executiontime.impl.MemorySectionLocationImpl;
import autosar40.commonstructure.resourceconsumption.executiontime.impl.RoughEstimateOfExecutionTimeImpl;
import autosar40.commonstructure.resourceconsumption.executiontime.impl.SimulatedExecutionTimeImpl;
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
            ExecutiontimeFactory theExecutiontimeFactory = (ExecutiontimeFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/schema/r4.0/autosar40/cs/rc/et");
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
                return this.createAnalyzedExecutionTime();
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
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public AnalyzedExecutionTime createAnalyzedExecutionTime() {
        AnalyzedExecutionTimeImpl analyzedExecutionTime = new AnalyzedExecutionTimeImpl();
        return analyzedExecutionTime;
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

    public ExecutiontimePackage getExecutiontimePackage() {
        return (ExecutiontimePackage)this.getEPackage();
    }

    @Deprecated
    public static ExecutiontimePackage getPackage() {
        return ExecutiontimePackage.eINSTANCE;
    }
}

