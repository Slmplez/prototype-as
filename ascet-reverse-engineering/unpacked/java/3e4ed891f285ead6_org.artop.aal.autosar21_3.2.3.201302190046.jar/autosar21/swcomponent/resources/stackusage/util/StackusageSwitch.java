/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 */
package autosar21.swcomponent.resources.stackusage.util;

import autosar21.genericstructure.infrastructure.ARObject;
import autosar21.swcomponent.resources.stackusage.MeasuredStackUsage;
import autosar21.swcomponent.resources.stackusage.RoughEstimateStackUsage;
import autosar21.swcomponent.resources.stackusage.StackUsage;
import autosar21.swcomponent.resources.stackusage.StackusagePackage;
import autosar21.swcomponent.resources.stackusage.WorstCaseStackUsage;
import autosar21.system.swmapping.AggregatedStackUsage;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class StackusageSwitch<T> {
    protected static StackusagePackage modelPackage;

    public StackusageSwitch() {
        if (modelPackage == null) {
            modelPackage = StackusagePackage.eINSTANCE;
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
                MeasuredStackUsage measuredStackUsage = (MeasuredStackUsage)theEObject;
                T result = this.caseMeasuredStackUsage(measuredStackUsage);
                if (result == null) {
                    result = this.caseAggregatedStackUsage(measuredStackUsage);
                }
                if (result == null) {
                    result = this.caseStackUsage(measuredStackUsage);
                }
                if (result == null) {
                    result = this.caseARObject(measuredStackUsage);
                }
                if (result == null) {
                    result = this.caseGARObject(measuredStackUsage);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                RoughEstimateStackUsage roughEstimateStackUsage = (RoughEstimateStackUsage)theEObject;
                T result = this.caseRoughEstimateStackUsage(roughEstimateStackUsage);
                if (result == null) {
                    result = this.caseAggregatedStackUsage(roughEstimateStackUsage);
                }
                if (result == null) {
                    result = this.caseStackUsage(roughEstimateStackUsage);
                }
                if (result == null) {
                    result = this.caseARObject(roughEstimateStackUsage);
                }
                if (result == null) {
                    result = this.caseGARObject(roughEstimateStackUsage);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 2: {
                WorstCaseStackUsage worstCaseStackUsage = (WorstCaseStackUsage)theEObject;
                T result = this.caseWorstCaseStackUsage(worstCaseStackUsage);
                if (result == null) {
                    result = this.caseAggregatedStackUsage(worstCaseStackUsage);
                }
                if (result == null) {
                    result = this.caseStackUsage(worstCaseStackUsage);
                }
                if (result == null) {
                    result = this.caseARObject(worstCaseStackUsage);
                }
                if (result == null) {
                    result = this.caseGARObject(worstCaseStackUsage);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 3: {
                StackUsage stackUsage = (StackUsage)theEObject;
                T result = this.caseStackUsage(stackUsage);
                if (result == null) {
                    result = this.caseARObject(stackUsage);
                }
                if (result == null) {
                    result = this.caseGARObject(stackUsage);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseMeasuredStackUsage(MeasuredStackUsage object) {
        return null;
    }

    public T caseRoughEstimateStackUsage(RoughEstimateStackUsage object) {
        return null;
    }

    public T caseWorstCaseStackUsage(WorstCaseStackUsage object) {
        return null;
    }

    public T caseStackUsage(StackUsage object) {
        return null;
    }

    public T caseGARObject(GARObject object) {
        return null;
    }

    public T caseARObject(ARObject object) {
        return null;
    }

    public T caseAggregatedStackUsage(AggregatedStackUsage object) {
        return null;
    }

    public T defaultCase(EObject object) {
        return null;
    }
}

