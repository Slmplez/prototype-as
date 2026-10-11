/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 */
package gautosar.gswcomponents.gcomponents.util;

import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import gautosar.ggenericstructure.ginfrastructure.GPackageableElement;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import gautosar.gswcomponents.gcomponents.GApplicationSwComponentType;
import gautosar.gswcomponents.gcomponents.GAtomicSwComponentType;
import gautosar.gswcomponents.gcomponents.GPPortPrototype;
import gautosar.gswcomponents.gcomponents.GPortPrototype;
import gautosar.gswcomponents.gcomponents.GRPortPrototype;
import gautosar.gswcomponents.gcomponents.GSensorActuatorSwComponentType;
import gautosar.gswcomponents.gcomponents.GServiceSwComponentType;
import gautosar.gswcomponents.gcomponents.GSwComponentType;
import gautosar.gswcomponents.gcomponents.GcomponentsPackage;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class GcomponentsSwitch<T> {
    protected static GcomponentsPackage modelPackage;

    public GcomponentsSwitch() {
        if (modelPackage == null) {
            modelPackage = GcomponentsPackage.eINSTANCE;
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
                GApplicationSwComponentType gApplicationSwComponentType = (GApplicationSwComponentType)theEObject;
                T result = this.caseGApplicationSwComponentType(gApplicationSwComponentType);
                if (result == null) {
                    result = this.caseGAtomicSwComponentType(gApplicationSwComponentType);
                }
                if (result == null) {
                    result = this.caseGSwComponentType(gApplicationSwComponentType);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(gApplicationSwComponentType);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(gApplicationSwComponentType);
                }
                if (result == null) {
                    result = this.caseGReferrable(gApplicationSwComponentType);
                }
                if (result == null) {
                    result = this.caseGARObject(gApplicationSwComponentType);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                GAtomicSwComponentType gAtomicSwComponentType = (GAtomicSwComponentType)theEObject;
                T result = this.caseGAtomicSwComponentType(gAtomicSwComponentType);
                if (result == null) {
                    result = this.caseGSwComponentType(gAtomicSwComponentType);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(gAtomicSwComponentType);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(gAtomicSwComponentType);
                }
                if (result == null) {
                    result = this.caseGReferrable(gAtomicSwComponentType);
                }
                if (result == null) {
                    result = this.caseGARObject(gAtomicSwComponentType);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 2: {
                GSwComponentType gSwComponentType = (GSwComponentType)theEObject;
                T result = this.caseGSwComponentType(gSwComponentType);
                if (result == null) {
                    result = this.caseGPackageableElement(gSwComponentType);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(gSwComponentType);
                }
                if (result == null) {
                    result = this.caseGReferrable(gSwComponentType);
                }
                if (result == null) {
                    result = this.caseGARObject(gSwComponentType);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 3: {
                GServiceSwComponentType gServiceSwComponentType = (GServiceSwComponentType)theEObject;
                T result = this.caseGServiceSwComponentType(gServiceSwComponentType);
                if (result == null) {
                    result = this.caseGAtomicSwComponentType(gServiceSwComponentType);
                }
                if (result == null) {
                    result = this.caseGSwComponentType(gServiceSwComponentType);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(gServiceSwComponentType);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(gServiceSwComponentType);
                }
                if (result == null) {
                    result = this.caseGReferrable(gServiceSwComponentType);
                }
                if (result == null) {
                    result = this.caseGARObject(gServiceSwComponentType);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 4: {
                GSensorActuatorSwComponentType gSensorActuatorSwComponentType = (GSensorActuatorSwComponentType)theEObject;
                T result = this.caseGSensorActuatorSwComponentType(gSensorActuatorSwComponentType);
                if (result == null) {
                    result = this.caseGAtomicSwComponentType(gSensorActuatorSwComponentType);
                }
                if (result == null) {
                    result = this.caseGSwComponentType(gSensorActuatorSwComponentType);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(gSensorActuatorSwComponentType);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(gSensorActuatorSwComponentType);
                }
                if (result == null) {
                    result = this.caseGReferrable(gSensorActuatorSwComponentType);
                }
                if (result == null) {
                    result = this.caseGARObject(gSensorActuatorSwComponentType);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 5: {
                GPortPrototype gPortPrototype = (GPortPrototype)theEObject;
                T result = this.caseGPortPrototype(gPortPrototype);
                if (result == null) {
                    result = this.caseGIdentifiable(gPortPrototype);
                }
                if (result == null) {
                    result = this.caseGReferrable(gPortPrototype);
                }
                if (result == null) {
                    result = this.caseGARObject(gPortPrototype);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 6: {
                GPPortPrototype gpPortPrototype = (GPPortPrototype)theEObject;
                T result = this.caseGPPortPrototype(gpPortPrototype);
                if (result == null) {
                    result = this.caseGPortPrototype(gpPortPrototype);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(gpPortPrototype);
                }
                if (result == null) {
                    result = this.caseGReferrable(gpPortPrototype);
                }
                if (result == null) {
                    result = this.caseGARObject(gpPortPrototype);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 7: {
                GRPortPrototype grPortPrototype = (GRPortPrototype)theEObject;
                T result = this.caseGRPortPrototype(grPortPrototype);
                if (result == null) {
                    result = this.caseGPortPrototype(grPortPrototype);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(grPortPrototype);
                }
                if (result == null) {
                    result = this.caseGReferrable(grPortPrototype);
                }
                if (result == null) {
                    result = this.caseGARObject(grPortPrototype);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseGApplicationSwComponentType(GApplicationSwComponentType object) {
        return null;
    }

    public T caseGAtomicSwComponentType(GAtomicSwComponentType object) {
        return null;
    }

    public T caseGSwComponentType(GSwComponentType object) {
        return null;
    }

    public T caseGServiceSwComponentType(GServiceSwComponentType object) {
        return null;
    }

    public T caseGSensorActuatorSwComponentType(GSensorActuatorSwComponentType object) {
        return null;
    }

    public T caseGPortPrototype(GPortPrototype object) {
        return null;
    }

    public T caseGPPortPrototype(GPPortPrototype object) {
        return null;
    }

    public T caseGRPortPrototype(GRPortPrototype object) {
        return null;
    }

    public T caseGARObject(GARObject object) {
        return null;
    }

    public T caseGReferrable(GReferrable object) {
        return null;
    }

    public T caseGIdentifiable(GIdentifiable object) {
        return null;
    }

    public T caseGPackageableElement(GPackageableElement object) {
        return null;
    }

    public T defaultCase(EObject object) {
        return null;
    }
}

