/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  gautosar.ggenericstructure.ginfrastructure.GIdentifiable
 *  gautosar.ggenericstructure.ginfrastructure.GPackageableElement
 *  gautosar.ggenericstructure.ginfrastructure.GReferrable
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 */
package autosar3x.genericstructure.infrastructure.identifiable.util;

import autosar3x.genericstructure.infrastructure.ARObject;
import autosar3x.genericstructure.infrastructure.identifiable.ARElement;
import autosar3x.genericstructure.infrastructure.identifiable.Identifiable;
import autosar3x.genericstructure.infrastructure.identifiable.IdentifiablePackage;
import autosar3x.genericstructure.infrastructure.identifiable.PackageableElement;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import gautosar.ggenericstructure.ginfrastructure.GPackageableElement;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import java.util.Map;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class IdentifiableSwitch<T> {
    protected static IdentifiablePackage modelPackage;

    public IdentifiableSwitch() {
        if (modelPackage == null) {
            modelPackage = IdentifiablePackage.eINSTANCE;
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
                PackageableElement packageableElement = (PackageableElement)theEObject;
                T result = this.casePackageableElement(packageableElement);
                if (result == null) {
                    result = this.caseIdentifiable(packageableElement);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(packageableElement);
                }
                if (result == null) {
                    result = this.caseARObject(packageableElement);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(packageableElement);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)packageableElement);
                }
                if (result == null) {
                    result = this.caseGARObject(packageableElement);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                ARElement arElement = (ARElement)theEObject;
                T result = this.caseARElement(arElement);
                if (result == null) {
                    result = this.casePackageableElement(arElement);
                }
                if (result == null) {
                    result = this.caseIdentifiable(arElement);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(arElement);
                }
                if (result == null) {
                    result = this.caseARObject(arElement);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(arElement);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)arElement);
                }
                if (result == null) {
                    result = this.caseGARObject(arElement);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 2: {
                Identifiable identifiable = (Identifiable)theEObject;
                T result = this.caseIdentifiable(identifiable);
                if (result == null) {
                    result = this.caseARObject(identifiable);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(identifiable);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)identifiable);
                }
                if (result == null) {
                    result = this.caseGARObject(identifiable);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 3: {
                Map.Entry identifiableAllExtensionsMapEntry = (Map.Entry)theEObject;
                T result = this.caseIdentifiableAllExtensionsMapEntry(identifiableAllExtensionsMapEntry);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T casePackageableElement(PackageableElement object) {
        return null;
    }

    public T caseARElement(ARElement object) {
        return null;
    }

    public T caseIdentifiable(Identifiable object) {
        return null;
    }

    public T caseIdentifiableAllExtensionsMapEntry(Map.Entry<String, EObject> object) {
        return null;
    }

    public T caseGARObject(GARObject object) {
        return null;
    }

    public T caseARObject(ARObject object) {
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

