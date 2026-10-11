/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 */
package autosar21.swcomponent.measurementandcalibration.datadictionaryproxies.util;

import autosar21.genericstructure.infrastructure.ARObject;
import autosar21.swcomponent.measurementandcalibration.datadictionaryproxies.DatadictionaryproxiesPackage;
import autosar21.swcomponent.measurementandcalibration.datadictionaryproxies.SwCalprmRefProxy;
import autosar21.swcomponent.measurementandcalibration.datadictionaryproxies.SwVariableRefMsr;
import autosar21.swcomponent.measurementandcalibration.datadictionaryproxies.SwVariableRefProxy;
import autosar21.swcomponent.measurementandcalibration.datadictionaryproxies.swCalprmRef;
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
                swCalprmRef swCalprmRef2 = (swCalprmRef)theEObject;
                T result = this.caseswCalprmRef(swCalprmRef2);
                if (result == null) {
                    result = this.caseSwCalprmRefProxy(swCalprmRef2);
                }
                if (result == null) {
                    result = this.caseARObject(swCalprmRef2);
                }
                if (result == null) {
                    result = this.caseGARObject(swCalprmRef2);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
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
            case 2: {
                SwVariableRefMsr swVariableRefMsr = (SwVariableRefMsr)theEObject;
                T result = this.caseSwVariableRefMsr(swVariableRefMsr);
                if (result == null) {
                    result = this.caseSwVariableRefProxy(swVariableRefMsr);
                }
                if (result == null) {
                    result = this.caseARObject(swVariableRefMsr);
                }
                if (result == null) {
                    result = this.caseGARObject(swVariableRefMsr);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 3: {
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

    public T caseswCalprmRef(swCalprmRef object) {
        return null;
    }

    public T caseSwCalprmRefProxy(SwCalprmRefProxy object) {
        return null;
    }

    public T caseSwVariableRefMsr(SwVariableRefMsr object) {
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

