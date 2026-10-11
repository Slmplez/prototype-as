/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 */
package gautosar.gswcomponents.gswcinternalbehavior.gdataelements.util;

import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import gautosar.gswcomponents.gswcinternalbehavior.gdataelements.GParameterAccess;
import gautosar.gswcomponents.gswcinternalbehavior.gdataelements.GVariableAccess;
import gautosar.gswcomponents.gswcinternalbehavior.gdataelements.GdataelementsPackage;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class GdataelementsSwitch<T> {
    protected static GdataelementsPackage modelPackage;

    public GdataelementsSwitch() {
        if (modelPackage == null) {
            modelPackage = GdataelementsPackage.eINSTANCE;
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
                GVariableAccess gVariableAccess = (GVariableAccess)theEObject;
                T result = this.caseGVariableAccess(gVariableAccess);
                if (result == null) {
                    result = this.caseGIdentifiable(gVariableAccess);
                }
                if (result == null) {
                    result = this.caseGReferrable(gVariableAccess);
                }
                if (result == null) {
                    result = this.caseGARObject(gVariableAccess);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                GParameterAccess gParameterAccess = (GParameterAccess)theEObject;
                T result = this.caseGParameterAccess(gParameterAccess);
                if (result == null) {
                    result = this.caseGIdentifiable(gParameterAccess);
                }
                if (result == null) {
                    result = this.caseGReferrable(gParameterAccess);
                }
                if (result == null) {
                    result = this.caseGARObject(gParameterAccess);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseGVariableAccess(GVariableAccess object) {
        return null;
    }

    public T caseGParameterAccess(GParameterAccess object) {
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

    public T defaultCase(EObject object) {
        return null;
    }
}

