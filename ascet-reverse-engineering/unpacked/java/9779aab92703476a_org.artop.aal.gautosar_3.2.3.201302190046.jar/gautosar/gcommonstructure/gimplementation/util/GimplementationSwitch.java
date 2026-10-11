/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 */
package gautosar.gcommonstructure.gimplementation.util;

import gautosar.gcommonstructure.gimplementation.GAutosarEngineeringObject;
import gautosar.gcommonstructure.gimplementation.GCode;
import gautosar.gcommonstructure.gimplementation.GEngineeringObject;
import gautosar.gcommonstructure.gimplementation.GImplementation;
import gautosar.gcommonstructure.gimplementation.GimplementationPackage;
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
public class GimplementationSwitch<T> {
    protected static GimplementationPackage modelPackage;

    public GimplementationSwitch() {
        if (modelPackage == null) {
            modelPackage = GimplementationPackage.eINSTANCE;
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
                GImplementation gImplementation = (GImplementation)theEObject;
                T result = this.caseGImplementation(gImplementation);
                if (result == null) {
                    result = this.caseGPackageableElement(gImplementation);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(gImplementation);
                }
                if (result == null) {
                    result = this.caseGReferrable(gImplementation);
                }
                if (result == null) {
                    result = this.caseGARObject(gImplementation);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                GCode gCode = (GCode)theEObject;
                T result = this.caseGCode(gCode);
                if (result == null) {
                    result = this.caseGIdentifiable(gCode);
                }
                if (result == null) {
                    result = this.caseGReferrable(gCode);
                }
                if (result == null) {
                    result = this.caseGARObject(gCode);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 2: {
                GEngineeringObject gEngineeringObject = (GEngineeringObject)theEObject;
                T result = this.caseGEngineeringObject(gEngineeringObject);
                if (result == null) {
                    result = this.caseGARObject(gEngineeringObject);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 3: {
                GAutosarEngineeringObject gAutosarEngineeringObject = (GAutosarEngineeringObject)theEObject;
                T result = this.caseGAutosarEngineeringObject(gAutosarEngineeringObject);
                if (result == null) {
                    result = this.caseGEngineeringObject(gAutosarEngineeringObject);
                }
                if (result == null) {
                    result = this.caseGARObject(gAutosarEngineeringObject);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseGImplementation(GImplementation object) {
        return null;
    }

    public T caseGCode(GCode object) {
        return null;
    }

    public T caseGEngineeringObject(GEngineeringObject object) {
        return null;
    }

    public T caseGAutosarEngineeringObject(GAutosarEngineeringObject object) {
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

