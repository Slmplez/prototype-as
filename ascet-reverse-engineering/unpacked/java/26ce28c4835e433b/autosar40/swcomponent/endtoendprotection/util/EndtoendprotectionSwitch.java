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
package autosar40.swcomponent.endtoendprotection.util;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.generaltemplateclasses.arpackage.ARElement;
import autosar40.genericstructure.generaltemplateclasses.arpackage.PackageableElement;
import autosar40.genericstructure.generaltemplateclasses.elementcollection.CollectableElement;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Identifiable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.MultilanguageReferrable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Referrable;
import autosar40.swcomponent.endtoendprotection.EndToEndDescription;
import autosar40.swcomponent.endtoendprotection.EndToEndProtection;
import autosar40.swcomponent.endtoendprotection.EndToEndProtectionSet;
import autosar40.swcomponent.endtoendprotection.EndToEndProtectionVariablePrototype;
import autosar40.swcomponent.endtoendprotection.EndtoendprotectionPackage;
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
public class EndtoendprotectionSwitch<T> {
    protected static EndtoendprotectionPackage modelPackage;

    public EndtoendprotectionSwitch() {
        if (modelPackage == null) {
            modelPackage = EndtoendprotectionPackage.eINSTANCE;
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
                EndToEndDescription endToEndDescription = (EndToEndDescription)theEObject;
                T result = this.caseEndToEndDescription(endToEndDescription);
                if (result == null) {
                    result = this.caseARObject(endToEndDescription);
                }
                if (result == null) {
                    result = this.caseGARObject(endToEndDescription);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                EndToEndProtection endToEndProtection = (EndToEndProtection)theEObject;
                T result = this.caseEndToEndProtection(endToEndProtection);
                if (result == null) {
                    result = this.caseIdentifiable(endToEndProtection);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(endToEndProtection);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(endToEndProtection);
                }
                if (result == null) {
                    result = this.caseReferrable(endToEndProtection);
                }
                if (result == null) {
                    result = this.caseARObject(endToEndProtection);
                }
                if (result == null) {
                    result = this.caseGReferrable(endToEndProtection);
                }
                if (result == null) {
                    result = this.caseGARObject(endToEndProtection);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 2: {
                EndToEndProtectionVariablePrototype endToEndProtectionVariablePrototype = (EndToEndProtectionVariablePrototype)theEObject;
                T result = this.caseEndToEndProtectionVariablePrototype(endToEndProtectionVariablePrototype);
                if (result == null) {
                    result = this.caseARObject(endToEndProtectionVariablePrototype);
                }
                if (result == null) {
                    result = this.caseGARObject(endToEndProtectionVariablePrototype);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 3: {
                EndToEndProtectionSet endToEndProtectionSet = (EndToEndProtectionSet)theEObject;
                T result = this.caseEndToEndProtectionSet(endToEndProtectionSet);
                if (result == null) {
                    result = this.caseARElement(endToEndProtectionSet);
                }
                if (result == null) {
                    result = this.casePackageableElement(endToEndProtectionSet);
                }
                if (result == null) {
                    result = this.caseCollectableElement(endToEndProtectionSet);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(endToEndProtectionSet);
                }
                if (result == null) {
                    result = this.caseIdentifiable(endToEndProtectionSet);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(endToEndProtectionSet);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(endToEndProtectionSet);
                }
                if (result == null) {
                    result = this.caseReferrable(endToEndProtectionSet);
                }
                if (result == null) {
                    result = this.caseARObject(endToEndProtectionSet);
                }
                if (result == null) {
                    result = this.caseGReferrable(endToEndProtectionSet);
                }
                if (result == null) {
                    result = this.caseGARObject(endToEndProtectionSet);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseEndToEndDescription(EndToEndDescription object) {
        return null;
    }

    public T caseEndToEndProtection(EndToEndProtection object) {
        return null;
    }

    public T caseEndToEndProtectionVariablePrototype(EndToEndProtectionVariablePrototype object) {
        return null;
    }

    public T caseEndToEndProtectionSet(EndToEndProtectionSet object) {
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

    public T caseGPackageableElement(GPackageableElement object) {
        return null;
    }

    public T casePackageableElement(PackageableElement object) {
        return null;
    }

    public T caseARElement(ARElement object) {
        return null;
    }

    public T defaultCase(EObject object) {
        return null;
    }
}

