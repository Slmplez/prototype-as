/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gcommonstructure.gimplementation.GAutosarEngineeringObject
 *  gautosar.gcommonstructure.gimplementation.GEngineeringObject
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 */
package autosar40.genericstructure.generaltemplateclasses.engineeringobject.util;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.generaltemplateclasses.engineeringobject.AutosarEngineeringObject;
import autosar40.genericstructure.generaltemplateclasses.engineeringobject.EngineeringObject;
import autosar40.genericstructure.generaltemplateclasses.engineeringobject.EngineeringobjectPackage;
import gautosar.gcommonstructure.gimplementation.GAutosarEngineeringObject;
import gautosar.gcommonstructure.gimplementation.GEngineeringObject;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class EngineeringobjectSwitch<T> {
    protected static EngineeringobjectPackage modelPackage;

    public EngineeringobjectSwitch() {
        if (modelPackage == null) {
            modelPackage = EngineeringobjectPackage.eINSTANCE;
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
                EngineeringObject engineeringObject = (EngineeringObject)theEObject;
                T result = this.caseEngineeringObject(engineeringObject);
                if (result == null) {
                    result = this.caseARObject(engineeringObject);
                }
                if (result == null) {
                    result = this.caseGEngineeringObject(engineeringObject);
                }
                if (result == null) {
                    result = this.caseGARObject(engineeringObject);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                AutosarEngineeringObject autosarEngineeringObject = (AutosarEngineeringObject)theEObject;
                T result = this.caseAutosarEngineeringObject(autosarEngineeringObject);
                if (result == null) {
                    result = this.caseEngineeringObject(autosarEngineeringObject);
                }
                if (result == null) {
                    result = this.caseGAutosarEngineeringObject(autosarEngineeringObject);
                }
                if (result == null) {
                    result = this.caseARObject(autosarEngineeringObject);
                }
                if (result == null) {
                    result = this.caseGEngineeringObject(autosarEngineeringObject);
                }
                if (result == null) {
                    result = this.caseGARObject(autosarEngineeringObject);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseEngineeringObject(EngineeringObject object) {
        return null;
    }

    public T caseAutosarEngineeringObject(AutosarEngineeringObject object) {
        return null;
    }

    public T caseGARObject(GARObject object) {
        return null;
    }

    public T caseARObject(ARObject object) {
        return null;
    }

    public T caseGEngineeringObject(GEngineeringObject object) {
        return null;
    }

    public T caseGAutosarEngineeringObject(GAutosarEngineeringObject object) {
        return null;
    }

    public T defaultCase(EObject object) {
        return null;
    }
}

