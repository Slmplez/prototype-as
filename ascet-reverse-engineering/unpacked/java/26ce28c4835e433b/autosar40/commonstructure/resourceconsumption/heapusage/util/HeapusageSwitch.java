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
package autosar40.commonstructure.resourceconsumption.heapusage.util;

import autosar40.commonstructure.resourceconsumption.heapusage.HeapUsage;
import autosar40.commonstructure.resourceconsumption.heapusage.HeapusagePackage;
import autosar40.commonstructure.resourceconsumption.heapusage.MeasuredHeapUsage;
import autosar40.commonstructure.resourceconsumption.heapusage.RoughEstimateHeapUsage;
import autosar40.commonstructure.resourceconsumption.heapusage.WorstCaseHeapUsage;
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
                HeapUsage heapUsage = (HeapUsage)theEObject;
                T result = this.caseHeapUsage(heapUsage);
                if (result == null) {
                    result = this.caseIdentifiable(heapUsage);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(heapUsage);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(heapUsage);
                }
                if (result == null) {
                    result = this.caseReferrable(heapUsage);
                }
                if (result == null) {
                    result = this.caseARObject(heapUsage);
                }
                if (result == null) {
                    result = this.caseGReferrable(heapUsage);
                }
                if (result == null) {
                    result = this.caseGARObject(heapUsage);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                MeasuredHeapUsage measuredHeapUsage = (MeasuredHeapUsage)theEObject;
                T result = this.caseMeasuredHeapUsage(measuredHeapUsage);
                if (result == null) {
                    result = this.caseHeapUsage(measuredHeapUsage);
                }
                if (result == null) {
                    result = this.caseIdentifiable(measuredHeapUsage);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(measuredHeapUsage);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(measuredHeapUsage);
                }
                if (result == null) {
                    result = this.caseReferrable(measuredHeapUsage);
                }
                if (result == null) {
                    result = this.caseARObject(measuredHeapUsage);
                }
                if (result == null) {
                    result = this.caseGReferrable(measuredHeapUsage);
                }
                if (result == null) {
                    result = this.caseGARObject(measuredHeapUsage);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 2: {
                RoughEstimateHeapUsage roughEstimateHeapUsage = (RoughEstimateHeapUsage)theEObject;
                T result = this.caseRoughEstimateHeapUsage(roughEstimateHeapUsage);
                if (result == null) {
                    result = this.caseHeapUsage(roughEstimateHeapUsage);
                }
                if (result == null) {
                    result = this.caseIdentifiable(roughEstimateHeapUsage);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(roughEstimateHeapUsage);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(roughEstimateHeapUsage);
                }
                if (result == null) {
                    result = this.caseReferrable(roughEstimateHeapUsage);
                }
                if (result == null) {
                    result = this.caseARObject(roughEstimateHeapUsage);
                }
                if (result == null) {
                    result = this.caseGReferrable(roughEstimateHeapUsage);
                }
                if (result == null) {
                    result = this.caseGARObject(roughEstimateHeapUsage);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 3: {
                WorstCaseHeapUsage worstCaseHeapUsage = (WorstCaseHeapUsage)theEObject;
                T result = this.caseWorstCaseHeapUsage(worstCaseHeapUsage);
                if (result == null) {
                    result = this.caseHeapUsage(worstCaseHeapUsage);
                }
                if (result == null) {
                    result = this.caseIdentifiable(worstCaseHeapUsage);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(worstCaseHeapUsage);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(worstCaseHeapUsage);
                }
                if (result == null) {
                    result = this.caseReferrable(worstCaseHeapUsage);
                }
                if (result == null) {
                    result = this.caseARObject(worstCaseHeapUsage);
                }
                if (result == null) {
                    result = this.caseGReferrable(worstCaseHeapUsage);
                }
                if (result == null) {
                    result = this.caseGARObject(worstCaseHeapUsage);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseHeapUsage(HeapUsage object) {
        return null;
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

