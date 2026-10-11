/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 */
package gautosar.ggenericstructure.ginfrastructure.util;

import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GARPackage;
import gautosar.ggenericstructure.ginfrastructure.GAUTOSAR;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import gautosar.ggenericstructure.ginfrastructure.GPackageableElement;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import gautosar.ggenericstructure.ginfrastructure.GinfrastructurePackage;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class GinfrastructureSwitch<T> {
    protected static GinfrastructurePackage modelPackage;

    public GinfrastructureSwitch() {
        if (modelPackage == null) {
            modelPackage = GinfrastructurePackage.eINSTANCE;
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
                GARObject garObject = (GARObject)theEObject;
                T result = this.caseGARObject(garObject);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                GIdentifiable gIdentifiable = (GIdentifiable)theEObject;
                T result = this.caseGIdentifiable(gIdentifiable);
                if (result == null) {
                    result = this.caseGReferrable(gIdentifiable);
                }
                if (result == null) {
                    result = this.caseGARObject(gIdentifiable);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 2: {
                GARPackage garPackage = (GARPackage)theEObject;
                T result = this.caseGARPackage(garPackage);
                if (result == null) {
                    result = this.caseGIdentifiable(garPackage);
                }
                if (result == null) {
                    result = this.caseGReferrable(garPackage);
                }
                if (result == null) {
                    result = this.caseGARObject(garPackage);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 3: {
                GAUTOSAR gautosar = (GAUTOSAR)theEObject;
                T result = this.caseGAUTOSAR(gautosar);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 4: {
                GPackageableElement gPackageableElement = (GPackageableElement)theEObject;
                T result = this.caseGPackageableElement(gPackageableElement);
                if (result == null) {
                    result = this.caseGIdentifiable(gPackageableElement);
                }
                if (result == null) {
                    result = this.caseGReferrable(gPackageableElement);
                }
                if (result == null) {
                    result = this.caseGARObject(gPackageableElement);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 5: {
                GReferrable gReferrable = (GReferrable)theEObject;
                T result = this.caseGReferrable(gReferrable);
                if (result == null) {
                    result = this.caseGARObject(gReferrable);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseGARObject(GARObject object) {
        return null;
    }

    public T caseGIdentifiable(GIdentifiable object) {
        return null;
    }

    public T caseGARPackage(GARPackage object) {
        return null;
    }

    public T caseGAUTOSAR(GAUTOSAR object) {
        return null;
    }

    public T caseGPackageableElement(GPackageableElement object) {
        return null;
    }

    public T caseGReferrable(GReferrable object) {
        return null;
    }

    public T defaultCase(EObject object) {
        return null;
    }
}

