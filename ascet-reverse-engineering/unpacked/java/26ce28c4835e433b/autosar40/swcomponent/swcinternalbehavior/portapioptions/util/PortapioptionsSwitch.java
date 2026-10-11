/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 */
package autosar40.swcomponent.swcinternalbehavior.portapioptions.util;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.swcomponent.swcinternalbehavior.portapioptions.PortAPIOption;
import autosar40.swcomponent.swcinternalbehavior.portapioptions.PortDefinedArgumentValue;
import autosar40.swcomponent.swcinternalbehavior.portapioptions.PortapioptionsPackage;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class PortapioptionsSwitch<T> {
    protected static PortapioptionsPackage modelPackage;

    public PortapioptionsSwitch() {
        if (modelPackage == null) {
            modelPackage = PortapioptionsPackage.eINSTANCE;
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
                PortDefinedArgumentValue portDefinedArgumentValue = (PortDefinedArgumentValue)theEObject;
                T result = this.casePortDefinedArgumentValue(portDefinedArgumentValue);
                if (result == null) {
                    result = this.caseARObject(portDefinedArgumentValue);
                }
                if (result == null) {
                    result = this.caseGARObject(portDefinedArgumentValue);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                PortAPIOption portAPIOption = (PortAPIOption)theEObject;
                T result = this.casePortAPIOption(portAPIOption);
                if (result == null) {
                    result = this.caseARObject(portAPIOption);
                }
                if (result == null) {
                    result = this.caseGARObject(portAPIOption);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T casePortDefinedArgumentValue(PortDefinedArgumentValue object) {
        return null;
    }

    public T casePortAPIOption(PortAPIOption object) {
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

