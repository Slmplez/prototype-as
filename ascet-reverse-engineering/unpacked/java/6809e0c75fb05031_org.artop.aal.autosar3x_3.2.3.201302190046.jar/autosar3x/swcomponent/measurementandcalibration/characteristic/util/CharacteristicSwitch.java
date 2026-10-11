/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  gautosar.ggenericstructure.ginfrastructure.GIdentifiable
 *  gautosar.ggenericstructure.ginfrastructure.GPackageableElement
 *  gautosar.ggenericstructure.ginfrastructure.GReferrable
 *  gautosar.gswcomponents.gdatatype.gdataprototypes.GApplicationCompositeElementDataPrototype
 *  gautosar.gswcomponents.gdatatype.gdataprototypes.GAutosarDataPrototype
 *  gautosar.gswcomponents.gdatatype.gdataprototypes.GDataPrototype
 *  gautosar.gswcomponents.gdatatype.gdataprototypes.GParameterDataPrototype
 *  gautosar.gswcomponents.gportinterface.GParameterInterface
 *  gautosar.gswcomponents.gportinterface.GPortInterface
 *  gautosar.gswcomponents.gswcinternalbehavior.gdataelements.GParameterAccess
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 */
package autosar3x.swcomponent.measurementandcalibration.characteristic.util;

import autosar3x.commonstructure.datadictionaryproxies.SwCalprmRefProxy;
import autosar3x.genericstructure.infrastructure.ARObject;
import autosar3x.genericstructure.infrastructure.identifiable.ARElement;
import autosar3x.genericstructure.infrastructure.identifiable.Identifiable;
import autosar3x.genericstructure.infrastructure.identifiable.PackageableElement;
import autosar3x.swcomponent.datatype.datatypes.DataPrototype;
import autosar3x.swcomponent.measurementandcalibration.characteristic.ArCalprmRef;
import autosar3x.swcomponent.measurementandcalibration.characteristic.CalprmAccess;
import autosar3x.swcomponent.measurementandcalibration.characteristic.CalprmElementPrototype;
import autosar3x.swcomponent.measurementandcalibration.characteristic.CalprmInterface;
import autosar3x.swcomponent.measurementandcalibration.characteristic.CharacteristicPackage;
import autosar3x.swcomponent.portinterface.PortInterface;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import gautosar.ggenericstructure.ginfrastructure.GPackageableElement;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import gautosar.gswcomponents.gdatatype.gdataprototypes.GApplicationCompositeElementDataPrototype;
import gautosar.gswcomponents.gdatatype.gdataprototypes.GAutosarDataPrototype;
import gautosar.gswcomponents.gdatatype.gdataprototypes.GDataPrototype;
import gautosar.gswcomponents.gdatatype.gdataprototypes.GParameterDataPrototype;
import gautosar.gswcomponents.gportinterface.GParameterInterface;
import gautosar.gswcomponents.gportinterface.GPortInterface;
import gautosar.gswcomponents.gswcinternalbehavior.gdataelements.GParameterAccess;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class CharacteristicSwitch<T> {
    protected static CharacteristicPackage modelPackage;

    public CharacteristicSwitch() {
        if (modelPackage == null) {
            modelPackage = CharacteristicPackage.eINSTANCE;
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
                CalprmAccess calprmAccess = (CalprmAccess)theEObject;
                T result = this.caseCalprmAccess(calprmAccess);
                if (result == null) {
                    result = this.caseIdentifiable(calprmAccess);
                }
                if (result == null) {
                    result = this.caseGParameterAccess(calprmAccess);
                }
                if (result == null) {
                    result = this.caseARObject(calprmAccess);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(calprmAccess);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)calprmAccess);
                }
                if (result == null) {
                    result = this.caseGARObject(calprmAccess);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                ArCalprmRef arCalprmRef = (ArCalprmRef)theEObject;
                T result = this.caseArCalprmRef(arCalprmRef);
                if (result == null) {
                    result = this.caseSwCalprmRefProxy(arCalprmRef);
                }
                if (result == null) {
                    result = this.caseARObject(arCalprmRef);
                }
                if (result == null) {
                    result = this.caseGARObject(arCalprmRef);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 2: {
                CalprmInterface calprmInterface = (CalprmInterface)theEObject;
                T result = this.caseCalprmInterface(calprmInterface);
                if (result == null) {
                    result = this.casePortInterface(calprmInterface);
                }
                if (result == null) {
                    result = this.caseGParameterInterface(calprmInterface);
                }
                if (result == null) {
                    result = this.caseARElement(calprmInterface);
                }
                if (result == null) {
                    result = this.caseGPortInterface(calprmInterface);
                }
                if (result == null) {
                    result = this.casePackageableElement(calprmInterface);
                }
                if (result == null) {
                    result = this.caseIdentifiable(calprmInterface);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(calprmInterface);
                }
                if (result == null) {
                    result = this.caseARObject(calprmInterface);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(calprmInterface);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)calprmInterface);
                }
                if (result == null) {
                    result = this.caseGARObject(calprmInterface);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 3: {
                CalprmElementPrototype calprmElementPrototype = (CalprmElementPrototype)theEObject;
                T result = this.caseCalprmElementPrototype(calprmElementPrototype);
                if (result == null) {
                    result = this.caseDataPrototype(calprmElementPrototype);
                }
                if (result == null) {
                    result = this.caseGParameterDataPrototype(calprmElementPrototype);
                }
                if (result == null) {
                    result = this.caseIdentifiable(calprmElementPrototype);
                }
                if (result == null) {
                    result = this.caseGAutosarDataPrototype(calprmElementPrototype);
                }
                if (result == null) {
                    result = this.caseGApplicationCompositeElementDataPrototype(calprmElementPrototype);
                }
                if (result == null) {
                    result = this.caseARObject(calprmElementPrototype);
                }
                if (result == null) {
                    result = this.caseGDataPrototype(calprmElementPrototype);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(calprmElementPrototype);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)calprmElementPrototype);
                }
                if (result == null) {
                    result = this.caseGARObject(calprmElementPrototype);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseCalprmAccess(CalprmAccess object) {
        return null;
    }

    public T caseArCalprmRef(ArCalprmRef object) {
        return null;
    }

    public T caseCalprmInterface(CalprmInterface object) {
        return null;
    }

    public T caseCalprmElementPrototype(CalprmElementPrototype object) {
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

    public T caseGParameterAccess(GParameterAccess object) {
        return null;
    }

    public T caseSwCalprmRefProxy(SwCalprmRefProxy object) {
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

    public T caseGPortInterface(GPortInterface object) {
        return null;
    }

    public T casePortInterface(PortInterface object) {
        return null;
    }

    public T caseGParameterInterface(GParameterInterface object) {
        return null;
    }

    public T caseGDataPrototype(GDataPrototype object) {
        return null;
    }

    public T caseGAutosarDataPrototype(GAutosarDataPrototype object) {
        return null;
    }

    public T caseGApplicationCompositeElementDataPrototype(GApplicationCompositeElementDataPrototype object) {
        return null;
    }

    public T caseDataPrototype(DataPrototype object) {
        return null;
    }

    public T caseGParameterDataPrototype(GParameterDataPrototype object) {
        return null;
    }

    public T defaultCase(EObject object) {
        return null;
    }
}

