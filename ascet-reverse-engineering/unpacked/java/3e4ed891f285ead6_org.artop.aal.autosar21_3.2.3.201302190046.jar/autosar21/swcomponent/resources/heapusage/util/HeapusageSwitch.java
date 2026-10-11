/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 */
package autosar21.swcomponent.resources.heapusage.util;

import autosar21.genericstructure.infrastructure.ARObject;
import autosar21.swcomponent.resources.heapusage.HeapUsage;
import autosar21.swcomponent.resources.heapusage.HeapusagePackage;
import autosar21.swcomponent.resources.heapusage.MeasuredHeapUsage;
import autosar21.swcomponent.resources.heapusage.RoughEstimateHeapUsage;
import autosar21.swcomponent.resources.heapusage.WorstCaseHeapUsage;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class HeapusageSwitch<T> {
    protected static HeapusagePackage modelPackage;

    public HeapusageSwitch() {
        if (modelPackage == null) {
            modelPackage = HeapusagePackage.eINSTANCE;
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
                MeasuredHeapUsage measuredHeapUsage = (MeasuredHeapUsage)theEObject;
                T result = this.caseMeasuredHeapUsage(measuredHeapUsage);
                if (result == null) {
                    result = this.caseHeapUsage(measuredHeapUsage);
                }
                if (result == null) {
                    result = this.caseARObject(measuredHeapUsage);
                }
                if (result == null) {
                    result = this.caseGARObject(measuredHeapUsage);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                RoughEstimateHeapUsage roughEstimateHeapUsage = (RoughEstimateHeapUsage)theEObject;
                T result = this.caseRoughEstimateHeapUsage(roughEstimateHeapUsage);
                if (result == null) {
                    result = this.caseHeapUsage(roughEstimateHeapUsage);
                }
                if (result == null) {
                    result = this.caseARObject(roughEstimateHeapUsage);
                }
                if (result == null) {
                    result = this.caseGARObject(roughEstimateHeapUsage);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 2: {
                WorstCaseHeapUsage worstCaseHeapUsage = (WorstCaseHeapUsage)theEObject;
                T result = this.caseWorstCaseHeapUsage(worstCaseHeapUsage);
                if (result == null) {
                    result = this.caseHeapUsage(worstCaseHeapUsage);
                }
                if (result == null) {
                    result = this.caseARObject(worstCaseHeapUsage);
                }
                if (result == null) {
                    result = this.caseGARObject(worstCaseHeapUsage);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 3: {
                HeapUsage heapUsage = (HeapUsage)theEObject;
                T result = this.caseHeapUsage(heapUsage);
                if (result == null) {
                    result = this.caseARObject(heapUsage);
                }
                if (result == null) {
                    result = this.caseGARObject(heapUsage);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseMeasuredHeapUsage(MeasuredHeapUsage object) {
        return null;
    }

    public T caseRoughEstimateHeapUsage(RoughEstimateHeapUsage object) {
        return null;
    }

    public T caseWorstCaseHeapUsage(WorstCaseHeapUsage object) {
        return null;
    }

    public T caseHeapUsage(HeapUsage object) {
        return null;
    }

    public T caseGARObject(GARObject object) {
        return null;
    }

    public T caseARObject(ARObject object) {
        return null;
    }

    public T defaultCase(EObject object) {
        return null;
    }
}

