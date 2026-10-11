/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  gautosar.ggenericstructure.ginfrastructure.GIdentifiable
 *  gautosar.ggenericstructure.ginfrastructure.GPackageableElement
 *  gautosar.ggenericstructure.ginfrastructure.GReferrable
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 */
package autosar21.swcomponent.measurementandcalibration.axis.util;

import autosar21.genericstructure.infrastructure.ARObject;
import autosar21.genericstructure.infrastructure.NonSplitableElement;
import autosar21.genericstructure.infrastructure.PackageableElement;
import autosar21.genericstructure.infrastructure.identifiable.ARElement;
import autosar21.genericstructure.infrastructure.identifiable.Identifiable;
import autosar21.swcomponent.measurementandcalibration.axis.AxisPackage;
import autosar21.swcomponent.measurementandcalibration.axis.SwAxisGeneric;
import autosar21.swcomponent.measurementandcalibration.axis.SwAxisGrouped;
import autosar21.swcomponent.measurementandcalibration.axis.SwAxisIndividual;
import autosar21.swcomponent.measurementandcalibration.axis.SwAxisType;
import autosar21.swcomponent.measurementandcalibration.axis.SwGenericAxisParam;
import autosar21.swcomponent.measurementandcalibration.axis.SwGenericAxisParamType;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import gautosar.ggenericstructure.ginfrastructure.GPackageableElement;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class AxisSwitch<T> {
    protected static AxisPackage modelPackage;

    public AxisSwitch() {
        if (modelPackage == null) {
            modelPackage = AxisPackage.eINSTANCE;
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
                SwAxisGeneric swAxisGeneric = (SwAxisGeneric)theEObject;
                T result = this.caseSwAxisGeneric(swAxisGeneric);
                if (result == null) {
                    result = this.caseARObject(swAxisGeneric);
                }
                if (result == null) {
                    result = this.caseGARObject(swAxisGeneric);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                SwGenericAxisParam swGenericAxisParam = (SwGenericAxisParam)theEObject;
                T result = this.caseSwGenericAxisParam(swGenericAxisParam);
                if (result == null) {
                    result = this.caseARObject(swGenericAxisParam);
                }
                if (result == null) {
                    result = this.caseGARObject(swGenericAxisParam);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 2: {
                SwGenericAxisParamType swGenericAxisParamType = (SwGenericAxisParamType)theEObject;
                T result = this.caseSwGenericAxisParamType(swGenericAxisParamType);
                if (result == null) {
                    result = this.caseIdentifiable(swGenericAxisParamType);
                }
                if (result == null) {
                    result = this.caseARObject(swGenericAxisParamType);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(swGenericAxisParamType);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)swGenericAxisParamType);
                }
                if (result == null) {
                    result = this.caseGARObject(swGenericAxisParamType);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 3: {
                SwAxisType swAxisType = (SwAxisType)theEObject;
                T result = this.caseSwAxisType(swAxisType);
                if (result == null) {
                    result = this.caseARElement(swAxisType);
                }
                if (result == null) {
                    result = this.caseNonSplitableElement(swAxisType);
                }
                if (result == null) {
                    result = this.casePackageableElement(swAxisType);
                }
                if (result == null) {
                    result = this.caseIdentifiable(swAxisType);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(swAxisType);
                }
                if (result == null) {
                    result = this.caseARObject(swAxisType);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(swAxisType);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)swAxisType);
                }
                if (result == null) {
                    result = this.caseGARObject(swAxisType);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 4: {
                SwAxisIndividual swAxisIndividual = (SwAxisIndividual)theEObject;
                T result = this.caseSwAxisIndividual(swAxisIndividual);
                if (result == null) {
                    result = this.caseARObject(swAxisIndividual);
                }
                if (result == null) {
                    result = this.caseGARObject(swAxisIndividual);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 5: {
                SwAxisGrouped swAxisGrouped = (SwAxisGrouped)theEObject;
                T result = this.caseSwAxisGrouped(swAxisGrouped);
                if (result == null) {
                    result = this.caseARObject(swAxisGrouped);
                }
                if (result == null) {
                    result = this.caseGARObject(swAxisGrouped);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseSwAxisGeneric(SwAxisGeneric object) {
        return null;
    }

    public T caseSwGenericAxisParam(SwGenericAxisParam object) {
        return null;
    }

    public T caseSwGenericAxisParamType(SwGenericAxisParamType object) {
        return null;
    }

    public T caseSwAxisType(SwAxisType object) {
        return null;
    }

    public T caseSwAxisIndividual(SwAxisIndividual object) {
        return null;
    }

    public T caseSwAxisGrouped(SwAxisGrouped object) {
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

    public T caseGPackageableElement(GPackageableElement object) {
        return null;
    }

    public T casePackageableElement(PackageableElement object) {
        return null;
    }

    public T caseNonSplitableElement(NonSplitableElement object) {
        return null;
    }

    public T caseARElement(ARElement object) {
        return null;
    }

    public T defaultCase(EObject object) {
        return null;
    }
}

