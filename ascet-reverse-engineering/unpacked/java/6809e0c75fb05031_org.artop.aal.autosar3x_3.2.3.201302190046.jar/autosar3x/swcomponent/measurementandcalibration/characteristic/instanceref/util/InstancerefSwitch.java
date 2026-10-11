/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  gautosar.gswcomponents.gcomponents.ginstancerefs.GParameterInAtomicSwcIRef
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 */
package autosar3x.swcomponent.measurementandcalibration.characteristic.instanceref.util;

import autosar3x.genericstructure.infrastructure.ARObject;
import autosar3x.swcomponent.measurementandcalibration.characteristic.instanceref.ArCalprmRefCalprmElementPrototype;
import autosar3x.swcomponent.measurementandcalibration.characteristic.instanceref.CalprmAccessCalprmElementPrototype;
import autosar3x.swcomponent.measurementandcalibration.characteristic.instanceref.InstancerefPackage;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.gswcomponents.gcomponents.ginstancerefs.GParameterInAtomicSwcIRef;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class InstancerefSwitch<T> {
    protected static InstancerefPackage modelPackage;

    public InstancerefSwitch() {
        if (modelPackage == null) {
            modelPackage = InstancerefPackage.eINSTANCE;
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
                ArCalprmRefCalprmElementPrototype arCalprmRefCalprmElementPrototype = (ArCalprmRefCalprmElementPrototype)theEObject;
                T result = this.caseArCalprmRefCalprmElementPrototype(arCalprmRefCalprmElementPrototype);
                if (result == null) {
                    result = this.caseARObject(arCalprmRefCalprmElementPrototype);
                }
                if (result == null) {
                    result = this.caseGARObject(arCalprmRefCalprmElementPrototype);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                CalprmAccessCalprmElementPrototype calprmAccessCalprmElementPrototype = (CalprmAccessCalprmElementPrototype)theEObject;
                T result = this.caseCalprmAccessCalprmElementPrototype(calprmAccessCalprmElementPrototype);
                if (result == null) {
                    result = this.caseARObject(calprmAccessCalprmElementPrototype);
                }
                if (result == null) {
                    result = this.caseGParameterInAtomicSwcIRef(calprmAccessCalprmElementPrototype);
                }
                if (result == null) {
                    result = this.caseGARObject(calprmAccessCalprmElementPrototype);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseArCalprmRefCalprmElementPrototype(ArCalprmRefCalprmElementPrototype object) {
        return null;
    }

    public T caseCalprmAccessCalprmElementPrototype(CalprmAccessCalprmElementPrototype object) {
        return null;
    }

    public T caseGARObject(GARObject object) {
        return null;
    }

    public T caseARObject(ARObject object) {
        return null;
    }

    public T caseGParameterInAtomicSwcIRef(GParameterInAtomicSwcIRef object) {
        return null;
    }

    public T defaultCase(EObject object) {
        return null;
    }
}

