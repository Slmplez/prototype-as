/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 */
package gautosar.gcommonstructure.gsystemconstant.util;

import gautosar.gcommonstructure.gsystemconstant.GSwSystemconst;
import gautosar.gcommonstructure.gsystemconstant.GsystemconstantPackage;
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
public class GsystemconstantSwitch<T> {
    protected static GsystemconstantPackage modelPackage;

    public GsystemconstantSwitch() {
        if (modelPackage == null) {
            modelPackage = GsystemconstantPackage.eINSTANCE;
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
                GSwSystemconst gSwSystemconst = (GSwSystemconst)theEObject;
                T result = this.caseGSwSystemconst(gSwSystemconst);
                if (result == null) {
                    result = this.caseGPackageableElement(gSwSystemconst);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(gSwSystemconst);
                }
                if (result == null) {
                    result = this.caseGReferrable(gSwSystemconst);
                }
                if (result == null) {
                    result = this.caseGARObject(gSwSystemconst);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseGSwSystemconst(GSwSystemconst object) {
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

