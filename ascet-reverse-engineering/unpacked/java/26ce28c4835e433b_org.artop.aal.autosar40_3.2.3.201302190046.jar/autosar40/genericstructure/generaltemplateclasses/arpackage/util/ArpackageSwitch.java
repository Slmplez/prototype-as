/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  gautosar.ggenericstructure.ginfrastructure.GARPackage
 *  gautosar.ggenericstructure.ginfrastructure.GIdentifiable
 *  gautosar.ggenericstructure.ginfrastructure.GPackageableElement
 *  gautosar.ggenericstructure.ginfrastructure.GReferrable
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 */
package autosar40.genericstructure.generaltemplateclasses.arpackage.util;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.generaltemplateclasses.arpackage.ARElement;
import autosar40.genericstructure.generaltemplateclasses.arpackage.ARPackage;
import autosar40.genericstructure.generaltemplateclasses.arpackage.ArpackagePackage;
import autosar40.genericstructure.generaltemplateclasses.arpackage.PackageableElement;
import autosar40.genericstructure.generaltemplateclasses.arpackage.ReferenceBase;
import autosar40.genericstructure.generaltemplateclasses.elementcollection.CollectableElement;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Identifiable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.MultilanguageReferrable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Referrable;
import autosar40.standardization.abstractblueprintstructure.AtpBlueprint;
import autosar40.standardization.abstractblueprintstructure.AtpBlueprintable;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GARPackage;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import gautosar.ggenericstructure.ginfrastructure.GPackageableElement;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ArpackageSwitch<T> {
    protected static ArpackagePackage modelPackage;

    public ArpackageSwitch() {
        if (modelPackage == null) {
            modelPackage = ArpackagePackage.eINSTANCE;
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
                ARPackage arPackage = (ARPackage)theEObject;
                T result = this.caseARPackage(arPackage);
                if (result == null) {
                    result = this.caseCollectableElement(arPackage);
                }
                if (result == null) {
                    result = this.caseAtpBlueprint(arPackage);
                }
                if (result == null) {
                    result = this.caseAtpBlueprintable(arPackage);
                }
                if (result == null) {
                    result = this.caseGARPackage(arPackage);
                }
                if (result == null) {
                    result = this.caseIdentifiable(arPackage);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(arPackage);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(arPackage);
                }
                if (result == null) {
                    result = this.caseReferrable(arPackage);
                }
                if (result == null) {
                    result = this.caseARObject(arPackage);
                }
                if (result == null) {
                    result = this.caseGReferrable(arPackage);
                }
                if (result == null) {
                    result = this.caseGARObject(arPackage);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                ReferenceBase referenceBase = (ReferenceBase)theEObject;
                T result = this.caseReferenceBase(referenceBase);
                if (result == null) {
                    result = this.caseARObject(referenceBase);
                }
                if (result == null) {
                    result = this.caseGARObject(referenceBase);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 2: {
                PackageableElement packageableElement = (PackageableElement)theEObject;
                T result = this.casePackageableElement(packageableElement);
                if (result == null) {
                    result = this.caseCollectableElement(packageableElement);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(packageableElement);
                }
                if (result == null) {
                    result = this.caseIdentifiable(packageableElement);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(packageableElement);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(packageableElement);
                }
                if (result == null) {
                    result = this.caseReferrable(packageableElement);
                }
                if (result == null) {
                    result = this.caseARObject(packageableElement);
                }
                if (result == null) {
                    result = this.caseGReferrable(packageableElement);
                }
                if (result == null) {
                    result = this.caseGARObject(packageableElement);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 3: {
                ARElement arElement = (ARElement)theEObject;
                T result = this.caseARElement(arElement);
                if (result == null) {
                    result = this.casePackageableElement(arElement);
                }
                if (result == null) {
                    result = this.caseCollectableElement(arElement);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(arElement);
                }
                if (result == null) {
                    result = this.caseIdentifiable(arElement);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(arElement);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(arElement);
                }
                if (result == null) {
                    result = this.caseReferrable(arElement);
                }
                if (result == null) {
                    result = this.caseARObject(arElement);
                }
                if (result == null) {
                    result = this.caseGReferrable(arElement);
                }
                if (result == null) {
                    result = this.caseGARObject(arElement);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseARPackage(ARPackage object) {
        return null;
    }

    public T caseReferenceBase(ReferenceBase object) {
        return null;
    }

    public T casePackageableElement(PackageableElement object) {
        return null;
    }

    public T caseARElement(ARElement object) {
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

    public T caseReferrable(Referrable object) {
        return null;
    }

    public T caseMultilanguageReferrable(MultilanguageReferrable object) {
        return null;
    }

    public T caseGIdentifiable(GIdentifiable object) {
        return null;
    }

    public T caseIdentifiable(Identifiable object) {
        return null;
    }

    public T caseCollectableElement(CollectableElement object) {
        return null;
    }

    public T caseAtpBlueprint(AtpBlueprint object) {
        return null;
    }

    public T caseAtpBlueprintable(AtpBlueprintable object) {
        return null;
    }

    public T caseGARPackage(GARPackage object) {
        return null;
    }

    public T caseGPackageableElement(GPackageableElement object) {
        return null;
    }

    public T defaultCase(EObject object) {
        return null;
    }
}

