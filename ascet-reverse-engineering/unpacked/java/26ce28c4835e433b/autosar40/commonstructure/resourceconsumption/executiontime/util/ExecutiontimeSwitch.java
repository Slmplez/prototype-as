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
package autosar40.commonstructure.resourceconsumption.executiontime.util;

import autosar40.commonstructure.resourceconsumption.executiontime.AnalyzedExecutionTime;
import autosar40.commonstructure.resourceconsumption.executiontime.ExecutionTime;
import autosar40.commonstructure.resourceconsumption.executiontime.ExecutiontimePackage;
import autosar40.commonstructure.resourceconsumption.executiontime.MeasuredExecutionTime;
import autosar40.commonstructure.resourceconsumption.executiontime.MemorySectionLocation;
import autosar40.commonstructure.resourceconsumption.executiontime.RoughEstimateOfExecutionTime;
import autosar40.commonstructure.resourceconsumption.executiontime.SimulatedExecutionTime;
import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Identifiable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.MultilanguageReferrable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Referrable;
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
                AnalyzedExecutionTime analyzedExecutionTime = (AnalyzedExecutionTime)theEObject;
                T result = this.caseAnalyzedExecutionTime(analyzedExecutionTime);
                if (result == null) {
                    result = this.caseExecutionTime(analyzedExecutionTime);
                }
                if (result == null) {
                    result = this.caseIdentifiable(analyzedExecutionTime);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(analyzedExecutionTime);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(analyzedExecutionTime);
                }
                if (result == null) {
                    result = this.caseReferrable(analyzedExecutionTime);
                }
                if (result == null) {
                    result = this.caseARObject(analyzedExecutionTime);
                }
                if (result == null) {
                    result = this.caseGReferrable(analyzedExecutionTime);
                }
                if (result == null) {
                    result = this.caseGARObject(analyzedExecutionTime);
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
                    result = this.caseMultilanguageReferrable(executionTime);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(executionTime);
                }
                if (result == null) {
                    result = this.caseReferrable(executionTime);
                }
                if (result == null) {
                    result = this.caseARObject(executionTime);
                }
                if (result == null) {
                    result = this.caseGReferrable(executionTime);
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
                MeasuredExecutionTime measuredExecutionTime = (MeasuredExecutionTime)theEObject;
                T result = this.caseMeasuredExecutionTime(measuredExecutionTime);
                if (result == null) {
                    result = this.caseExecutionTime(measuredExecutionTime);
                }
                if (result == null) {
                    result = this.caseIdentifiable(measuredExecutionTime);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(measuredExecutionTime);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(measuredExecutionTime);
                }
                if (result == null) {
                    result = this.caseReferrable(measuredExecutionTime);
                }
                if (result == null) {
                    result = this.caseARObject(measuredExecutionTime);
                }
                if (result == null) {
                    result = this.caseGReferrable(measuredExecutionTime);
                }
                if (result == null) {
                    result = this.caseGARObject(measuredExecutionTime);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 4: {
                RoughEstimateOfExecutionTime roughEstimateOfExecutionTime = (RoughEstimateOfExecutionTime)theEObject;
                T result = this.caseRoughEstimateOfExecutionTime(roughEstimateOfExecutionTime);
                if (result == null) {
                    result = this.caseExecutionTime(roughEstimateOfExecutionTime);
                }
                if (result == null) {
                    result = this.caseIdentifiable(roughEstimateOfExecutionTime);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(roughEstimateOfExecutionTime);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(roughEstimateOfExecutionTime);
                }
                if (result == null) {
                    result = this.caseReferrable(roughEstimateOfExecutionTime);
                }
                if (result == null) {
                    result = this.caseARObject(roughEstimateOfExecutionTime);
                }
                if (result == null) {
                    result = this.caseGReferrable(roughEstimateOfExecutionTime);
                }
                if (result == null) {
                    result = this.caseGARObject(roughEstimateOfExecutionTime);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 5: {
                SimulatedExecutionTime simulatedExecutionTime = (SimulatedExecutionTime)theEObject;
                T result = this.caseSimulatedExecutionTime(simulatedExecutionTime);
                if (result == null) {
                    result = this.caseExecutionTime(simulatedExecutionTime);
                }
                if (result == null) {
                    result = this.caseIdentifiable(simulatedExecutionTime);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(simulatedExecutionTime);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(simulatedExecutionTime);
                }
                if (result == null) {
                    result = this.caseReferrable(simulatedExecutionTime);
                }
                if (result == null) {
                    result = this.caseARObject(simulatedExecutionTime);
                }
                if (result == null) {
                    result = this.caseGReferrable(simulatedExecutionTime);
                }
                if (result == null) {
                    result = this.caseGARObject(simulatedExecutionTime);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseAnalyzedExecutionTime(AnalyzedExecutionTime object) {
        return null;
    }

    public T caseExecutionTime(ExecutionTime object) {
        return null;
    }

    public T caseMemorySectionLocation(MemorySectionLocation object) {
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

    public T caseGARObject(GARObject object) {
        return null;
    }

    public T caseARObject(ARObject object) {
        return null;
    }

    public T caseGReferrable(GReferrable object) {
        return null;
    }

    public T caseReferrable(Referrable object) {
        return null;
    }

    public T caseMultilanguageReferrable(MultilanguageReferrable object) {
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

