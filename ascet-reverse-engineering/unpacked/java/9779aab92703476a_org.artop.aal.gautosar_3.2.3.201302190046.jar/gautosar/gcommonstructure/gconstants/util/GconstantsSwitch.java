/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 */
package gautosar.gcommonstructure.gconstants.util;

import gautosar.gcommonstructure.gconstants.GValueSpecification;
import gautosar.gcommonstructure.gconstants.GconstantsPackage;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class GconstantsSwitch<T> {
    protected static GconstantsPackage modelPackage;

    public GconstantsSwitch() {
        if (modelPackage == null) {
            modelPackage = GconstantsPackage.eINSTANCE;
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
                GValueSpecification gValueSpecification = (GValueSpecification)theEObject;
                T result = this.caseGValueSpecification(gValueSpecification);
                if (result == null) {
                    result = this.caseGARObject(gValueSpecification);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseGValueSpecification(GValueSpecification object) {
        return null;
    }

    public T caseGARObject(GARObject object) {
        return null;
    }

    public T defaultCase(EObject object) {
        return null;
    }
}

