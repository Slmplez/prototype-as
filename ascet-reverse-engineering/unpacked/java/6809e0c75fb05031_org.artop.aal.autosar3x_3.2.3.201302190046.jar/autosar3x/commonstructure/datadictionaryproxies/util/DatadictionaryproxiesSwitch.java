/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 */
package autosar3x.commonstructure.datadictionaryproxies.util;

import autosar3x.commonstructure.datadictionaryproxies.DatadictionaryproxiesPackage;
import autosar3x.commonstructure.datadictionaryproxies.SwCalprmRefProxy;
import autosar3x.commonstructure.datadictionaryproxies.SwVariableRefProxy;
import autosar3x.genericstructure.infrastructure.ARObject;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class DatadictionaryproxiesSwitch<T> {
    protected static DatadictionaryproxiesPackage modelPackage;

    public DatadictionaryproxiesSwitch() {
        if (modelPackage == null) {
            modelPackage = DatadictionaryproxiesPackage.eINSTANCE;
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
                SwCalprmRefProxy swCalprmRefProxy = (SwCalprmRefProxy)theEObject;
                T result = this.caseSwCalprmRefProxy(swCalprmRefProxy);
                if (result == null) {
                    result = this.caseARObject(swCalprmRefProxy);
                }
                if (result == null) {
                    result = this.caseGARObject(swCalprmRefProxy);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                SwVariableRefProxy swVariableRefProxy = (SwVariableRefProxy)theEObject;
                T result = this.caseSwVariableRefProxy(swVariableRefProxy);
                if (result == null) {
                    result = this.caseARObject(swVariableRefProxy);
                }
                if (result == null) {
                    result = this.caseGARObject(swVariableRefProxy);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseSwCalprmRefProxy(SwCalprmRefProxy object) {
        return null;
    }

    public T caseSwVariableRefProxy(SwVariableRefProxy object) {
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

