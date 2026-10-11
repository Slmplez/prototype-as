/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 */
package autosar40.genericstructure.generaltemplateclasses.primitivetypes.util;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.generaltemplateclasses.primitivetypes.BooleanContainer;
import autosar40.genericstructure.generaltemplateclasses.primitivetypes.FloatContainer;
import autosar40.genericstructure.generaltemplateclasses.primitivetypes.IntegerContainer;
import autosar40.genericstructure.generaltemplateclasses.primitivetypes.PrimitivetypesPackage;
import autosar40.genericstructure.generaltemplateclasses.primitivetypes.StringContainer;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class PrimitivetypesSwitch<T> {
    protected static PrimitivetypesPackage modelPackage;

    public PrimitivetypesSwitch() {
        if (modelPackage == null) {
            modelPackage = PrimitivetypesPackage.eINSTANCE;
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
                StringContainer stringContainer = (StringContainer)theEObject;
                T result = this.caseStringContainer(stringContainer);
                if (result == null) {
                    result = this.caseARObject(stringContainer);
                }
                if (result == null) {
                    result = this.caseGARObject(stringContainer);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                FloatContainer floatContainer = (FloatContainer)theEObject;
                T result = this.caseFloatContainer(floatContainer);
                if (result == null) {
                    result = this.caseARObject(floatContainer);
                }
                if (result == null) {
                    result = this.caseGARObject(floatContainer);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 2: {
                IntegerContainer integerContainer = (IntegerContainer)theEObject;
                T result = this.caseIntegerContainer(integerContainer);
                if (result == null) {
                    result = this.caseARObject(integerContainer);
                }
                if (result == null) {
                    result = this.caseGARObject(integerContainer);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 3: {
                BooleanContainer booleanContainer = (BooleanContainer)theEObject;
                T result = this.caseBooleanContainer(booleanContainer);
                if (result == null) {
                    result = this.caseARObject(booleanContainer);
                }
                if (result == null) {
                    result = this.caseGARObject(booleanContainer);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseStringContainer(StringContainer object) {
        return null;
    }

    public T caseFloatContainer(FloatContainer object) {
        return null;
    }

    public T caseIntegerContainer(IntegerContainer object) {
        return null;
    }

    public T caseBooleanContainer(BooleanContainer object) {
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

