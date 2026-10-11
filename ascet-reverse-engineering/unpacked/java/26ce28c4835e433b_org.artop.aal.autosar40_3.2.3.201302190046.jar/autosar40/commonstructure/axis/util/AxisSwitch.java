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
package autosar40.commonstructure.axis.util;

import autosar40.commonstructure.axis.AxisPackage;
import autosar40.commonstructure.axis.SwAxisGeneric;
import autosar40.commonstructure.axis.SwAxisGrouped;
import autosar40.commonstructure.axis.SwAxisIndividual;
import autosar40.commonstructure.axis.SwAxisType;
import autosar40.commonstructure.axis.SwGenericAxisParam;
import autosar40.commonstructure.axis.SwGenericAxisParamType;
import autosar40.commonstructure.calibrationparameter.SwCalprmAxisTypeProps;
import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.generaltemplateclasses.arpackage.ARElement;
import autosar40.genericstructure.generaltemplateclasses.arpackage.PackageableElement;
import autosar40.genericstructure.generaltemplateclasses.elementcollection.CollectableElement;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Identifiable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.MultilanguageReferrable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Referrable;
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
                SwAxisType swAxisType = (SwAxisType)theEObject;
                T result = this.caseSwAxisType(swAxisType);
                if (result == null) {
                    result = this.caseARElement(swAxisType);
                }
                if (result == null) {
                    result = this.casePackageableElement(swAxisType);
                }
                if (result == null) {
                    result = this.caseCollectableElement(swAxisType);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(swAxisType);
                }
                if (result == null) {
                    result = this.caseIdentifiable(swAxisType);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(swAxisType);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(swAxisType);
                }
                if (result == null) {
                    result = this.caseReferrable(swAxisType);
                }
                if (result == null) {
                    result = this.caseARObject(swAxisType);
                }
                if (result == null) {
                    result = this.caseGReferrable(swAxisType);
                }
                if (result == null) {
                    result = this.caseGARObject(swAxisType);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 2: {
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
            case 3: {
                SwAxisGrouped swAxisGrouped = (SwAxisGrouped)theEObject;
                T result = this.caseSwAxisGrouped(swAxisGrouped);
                if (result == null) {
                    result = this.caseSwCalprmAxisTypeProps(swAxisGrouped);
                }
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
            case 4: {
                SwAxisIndividual swAxisIndividual = (SwAxisIndividual)theEObject;
                T result = this.caseSwAxisIndividual(swAxisIndividual);
                if (result == null) {
                    result = this.caseSwCalprmAxisTypeProps(swAxisIndividual);
                }
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
                SwGenericAxisParamType swGenericAxisParamType = (SwGenericAxisParamType)theEObject;
                T result = this.caseSwGenericAxisParamType(swGenericAxisParamType);
                if (result == null) {
                    result = this.caseIdentifiable(swGenericAxisParamType);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(swGenericAxisParamType);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(swGenericAxisParamType);
                }
                if (result == null) {
                    result = this.caseReferrable(swGenericAxisParamType);
                }
                if (result == null) {
                    result = this.caseARObject(swGenericAxisParamType);
                }
                if (result == null) {
                    result = this.caseGReferrable(swGenericAxisParamType);
                }
                if (result == null) {
                    result = this.caseGARObject(swGenericAxisParamType);
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

    public T caseSwAxisType(SwAxisType object) {
        return null;
    }

    public T caseSwGenericAxisParam(SwGenericAxisParam object) {
        return null;
    }

    public T caseSwAxisGrouped(SwAxisGrouped object) {
        return null;
    }

    public T caseSwAxisIndividual(SwAxisIndividual object) {
        return null;
    }

    public T caseSwGenericAxisParamType(SwGenericAxisParamType object) {
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

    public T caseCollectableElement(CollectableElement object) {
        return null;
    }

    public T caseGPackageableElement(GPackageableElement object) {
        return null;
    }

    public T casePackageableElement(PackageableElement object) {
        return null;
    }

    public T caseARElement(ARElement object) {
        return null;
    }

    public T caseSwCalprmAxisTypeProps(SwCalprmAxisTypeProps object) {
        return null;
    }

    public T defaultCase(EObject object) {
        return null;
    }
}

