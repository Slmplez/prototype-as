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
package autosar40.commonstructure.resourceconsumption.stackusage.util;

import autosar40.commonstructure.resourceconsumption.stackusage.MeasuredStackUsage;
import autosar40.commonstructure.resourceconsumption.stackusage.RoughEstimateStackUsage;
import autosar40.commonstructure.resourceconsumption.stackusage.StackUsage;
import autosar40.commonstructure.resourceconsumption.stackusage.StackusagePackage;
import autosar40.commonstructure.resourceconsumption.stackusage.WorstCaseStackUsage;
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
                    result = this.caseStackUsage(measuredStackUsage);
                }
                if (result == null) {
                    result = this.caseIdentifiable(measuredStackUsage);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(measuredStackUsage);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(measuredStackUsage);
                }
                if (result == null) {
                    result = this.caseReferrable(measuredStackUsage);
                }
                if (result == null) {
                    result = this.caseARObject(measuredStackUsage);
                }
                if (result == null) {
                    result = this.caseGReferrable(measuredStackUsage);
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
                StackUsage stackUsage = (StackUsage)theEObject;
                T result = this.caseStackUsage(stackUsage);
                if (result == null) {
                    result = this.caseIdentifiable(stackUsage);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(stackUsage);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(stackUsage);
                }
                if (result == null) {
                    result = this.caseReferrable(stackUsage);
                }
                if (result == null) {
                    result = this.caseARObject(stackUsage);
                }
                if (result == null) {
                    result = this.caseGReferrable(stackUsage);
                }
                if (result == null) {
                    result = this.caseGARObject(stackUsage);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 2: {
                RoughEstimateStackUsage roughEstimateStackUsage = (RoughEstimateStackUsage)theEObject;
                T result = this.caseRoughEstimateStackUsage(roughEstimateStackUsage);
                if (result == null) {
                    result = this.caseStackUsage(roughEstimateStackUsage);
                }
                if (result == null) {
                    result = this.caseIdentifiable(roughEstimateStackUsage);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(roughEstimateStackUsage);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(roughEstimateStackUsage);
                }
                if (result == null) {
                    result = this.caseReferrable(roughEstimateStackUsage);
                }
                if (result == null) {
                    result = this.caseARObject(roughEstimateStackUsage);
                }
                if (result == null) {
                    result = this.caseGReferrable(roughEstimateStackUsage);
                }
                if (result == null) {
                    result = this.caseGARObject(roughEstimateStackUsage);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 3: {
                WorstCaseStackUsage worstCaseStackUsage = (WorstCaseStackUsage)theEObject;
                T result = this.caseWorstCaseStackUsage(worstCaseStackUsage);
                if (result == null) {
                    result = this.caseStackUsage(worstCaseStackUsage);
                }
                if (result == null) {
                    result = this.caseIdentifiable(worstCaseStackUsage);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(worstCaseStackUsage);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(worstCaseStackUsage);
                }
                if (result == null) {
                    result = this.caseReferrable(worstCaseStackUsage);
                }
                if (result == null) {
                    result = this.caseARObject(worstCaseStackUsage);
                }
                if (result == null) {
                    result = this.caseGReferrable(worstCaseStackUsage);
                }
                if (result == null) {
                    result = this.caseGARObject(worstCaseStackUsage);
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

    public T caseStackUsage(StackUsage object) {
        return null;
    }

    public T caseRoughEstimateStackUsage(RoughEstimateStackUsage object) {
        return null;
    }

    public T caseWorstCaseStackUsage(WorstCaseStackUsage object) {
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

