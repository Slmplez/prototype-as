/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  gautosar.ggenericstructure.ginfrastructure.GIdentifiable
 *  gautosar.ggenericstructure.ginfrastructure.GReferrable
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 */
package autosar21.swcomponent.resources.executiontime.util;

import autosar21.genericstructure.infrastructure.ARObject;
import autosar21.genericstructure.infrastructure.identifiable.Identifiable;
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
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ExecutiontimeSwitch<T> {
    protected static ExecutiontimePackage modelPackage;

    public ExecutiontimeSwitch() {
        if (modelPackage == null) {
            modelPackage = ExecutiontimePackage.eINSTANCE;
        }
    }

    public T doSwitch(EObject theEObject) {
        return this.doSwitch(theEObject.eClass(), theEObject);
    }

    protected T doSwitch(EClass theEClass, EObject theEObject) {
        if (theEClass.eContainer() == modelPackage) {
            return this.doSwitch(theEClass.getClassifierID(), theEObject);
        }
        EList eSuperTypes = theEClass.getESuperTypes();
        return eSuperTypes.isEmpty() ? this.defaultCase(theEObject) : this.doSwitch((EClass)eSuperTypes.get(0), theEObject);
    }

    protected T doSwitch(int classifierID, EObject theEObject) {
        switch (classifierID) {
            case 0: {
                ECUPrototype ecuPrototype = (ECUPrototype)theEObject;
                T result = this.caseECUPrototype(ecuPrototype);
                if (result == null) {
                    result = this.caseARObject(ecuPrototype);
                }
                if (result == null) {
                    result = this.caseGARObject(ecuPrototype);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                ExecutionTime executionTime = (ExecutionTime)theEObject;
                T result = this.caseExecutionTime(executionTime);
                if (result == null) {
                    result = this.caseIdentifiable(executionTime);
                }
                if (result == null) {
                    result = this.caseARObject(executionTime);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(executionTime);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)executionTime);
                }
                if (result == null) {
                    result = this.caseGARObject(executionTime);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 2: {
                MemorySectionLocation memorySectionLocation = (MemorySectionLocation)theEObject;
                T result = this.caseMemorySectionLocation(memorySectionLocation);
                if (result == null) {
                    result = this.caseARObject(memorySectionLocation);
                }
                if (result == null) {
                    result = this.caseGARObject(memorySectionLocation);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 3: {
                SoftwareContext softwareContext = (SoftwareContext)theEObject;
                T result = this.caseSoftwareContext(softwareContext);
                if (result == null) {
                    result = this.caseARObject(softwareContext);
                }
                if (result == null) {
                    result = this.caseGARObject(softwareContext);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 4: {
                MeasuredExecutionTime measuredExecutionTime = (MeasuredExecutionTime)theEObject;
                T result = this.caseMeasuredExecutionTime(measuredExecutionTime);
                if (result == null) {
                    result = this.caseExecutionTime(measuredExecutionTime);
                }
                if (result == null) {
                    result = this.caseIdentifiable(measuredExecutionTime);
                }
                if (result == null) {
                    result = this.caseARObject(measuredExecutionTime);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(measuredExecutionTime);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)measuredExecutionTime);
                }
                if (result == null) {
                    result = this.caseGARObject(measuredExecutionTime);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 5: {
                RoughEstimateOfExecutionTime roughEstimateOfExecutionTime = (RoughEstimateOfExecutionTime)theEObject;
                T result = this.caseRoughEstimateOfExecutionTime(roughEstimateOfExecutionTime);
                if (result == null) {
                    result = this.caseExecutionTime(roughEstimateOfExecutionTime);
                }
                if (result == null) {
                    result = this.caseIdentifiable(roughEstimateOfExecutionTime);
                }
                if (result == null) {
                    result = this.caseARObject(roughEstimateOfExecutionTime);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(roughEstimateOfExecutionTime);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)roughEstimateOfExecutionTime);
                }
                if (result == null) {
                    result = this.caseGARObject(roughEstimateOfExecutionTime);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 6: {
                SimulatedExecutionTime simulatedExecutionTime = (SimulatedExecutionTime)theEObject;
                T result = this.caseSimulatedExecutionTime(simulatedExecutionTime);
                if (result == null) {
                    result = this.caseExecutionTime(simulatedExecutionTime);
                }
                if (result == null) {
                    result = this.caseIdentifiable(simulatedExecutionTime);
                }
                if (result == null) {
                    result = this.caseARObject(simulatedExecutionTime);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(simulatedExecutionTime);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)simulatedExecutionTime);
                }
                if (result == null) {
                    result = this.caseGARObject(simulatedExecutionTime);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 7: {
                WorstCaseExecutionTime worstCaseExecutionTime = (WorstCaseExecutionTime)theEObject;
                T result = this.caseWorstCaseExecutionTime(worstCaseExecutionTime);
                if (result == null) {
                    result = this.caseExecutionTime(worstCaseExecutionTime);
                }
                if (result == null) {
                    result = this.caseIdentifiable(worstCaseExecutionTime);
                }
                if (result == null) {
                    result = this.caseARObject(worstCaseExecutionTime);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(worstCaseExecutionTime);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)worstCaseExecutionTime);
                }
                if (result == null) {
                    result = this.caseGARObject(worstCaseExecutionTime);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 8: {
                HardwareConfiguration hardwareConfiguration = (HardwareConfiguration)theEObject;
                T result = this.caseHardwareConfiguration(hardwareConfiguration);
                if (result == null) {
                    result = this.caseARObject(hardwareConfiguration);
                }
                if (result == null) {
                    result = this.caseGARObject(hardwareConfiguration);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseECUPrototype(ECUPrototype object) {
        return null;
    }

    public T caseExecutionTime(ExecutionTime object) {
        return null;
    }

    public T caseMemorySectionLocation(MemorySectionLocation object) {
        return null;
    }

    public T caseSoftwareContext(SoftwareContext object) {
        return null;
    }

    public T caseMeasuredExecutionTime(MeasuredExecutionTime object) {
        return null;
    }

    public T caseRoughEstimateOfExecutionTime(RoughEstimateOfExecutionTime object) {
        return null;
    }

    public T caseSimulatedExecutionTime(SimulatedExecutionTime object) {
        return null;
    }

    public T caseWorstCaseExecutionTime(WorstCaseExecutionTime object) {
        return null;
    }

    public T caseHardwareConfiguration(HardwareConfiguration object) {
        return null;
    }

    public T caseGARObject(GARObject object) {
        return null;
    }

    public T caseARObject(ARObject object) {
        return null;
    }

    public T caseGReferrable(GReferrable object) {
        return null;
    }

    public T caseGIdentifiable(GIdentifiable object) {
        return null;
    }

    public T caseIdentifiable(Identifiable object) {
        return null;
    }

    public T defaultCase(EObject object) {
        return null;
    }
}

