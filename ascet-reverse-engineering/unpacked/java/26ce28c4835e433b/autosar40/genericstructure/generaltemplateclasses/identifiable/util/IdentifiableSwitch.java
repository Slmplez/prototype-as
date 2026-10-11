/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  gautosar.ggenericstructure.ginfrastructure.GIdentifiable
 *  gautosar.ggenericstructure.ginfrastructure.GReferrable
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 */
package autosar40.genericstructure.generaltemplateclasses.identifiable.util;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Describable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Identifiable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.IdentifiablePackage;
import autosar40.genericstructure.generaltemplateclasses.identifiable.MultilanguageReferrable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Referrable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.SingleLanguageReferrable;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
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
                Describable describable = (Describable)theEObject;
                T result = this.caseDescribable(describable);
                if (result == null) {
                    result = this.caseARObject(describable);
                }
                if (result == null) {
                    result = this.caseGARObject(describable);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                SingleLanguageReferrable singleLanguageReferrable = (SingleLanguageReferrable)theEObject;
                T result = this.caseSingleLanguageReferrable(singleLanguageReferrable);
                if (result == null) {
                    result = this.caseReferrable(singleLanguageReferrable);
                }
                if (result == null) {
                    result = this.caseARObject(singleLanguageReferrable);
                }
                if (result == null) {
                    result = this.caseGReferrable(singleLanguageReferrable);
                }
                if (result == null) {
                    result = this.caseGARObject(singleLanguageReferrable);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 2: {
                Referrable referrable = (Referrable)theEObject;
                T result = this.caseReferrable(referrable);
                if (result == null) {
                    result = this.caseARObject(referrable);
                }
                if (result == null) {
                    result = this.caseGReferrable(referrable);
                }
                if (result == null) {
                    result = this.caseGARObject(referrable);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 3: {
                MultilanguageReferrable multilanguageReferrable = (MultilanguageReferrable)theEObject;
                T result = this.caseMultilanguageReferrable(multilanguageReferrable);
                if (result == null) {
                    result = this.caseReferrable(multilanguageReferrable);
                }
                if (result == null) {
                    result = this.caseARObject(multilanguageReferrable);
                }
                if (result == null) {
                    result = this.caseGReferrable(multilanguageReferrable);
                }
                if (result == null) {
                    result = this.caseGARObject(multilanguageReferrable);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 4: {
                Identifiable identifiable = (Identifiable)theEObject;
                T result = this.caseIdentifiable(identifiable);
                if (result == null) {
                    result = this.caseMultilanguageReferrable(identifiable);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(identifiable);
                }
                if (result == null) {
                    result = this.caseReferrable(identifiable);
                }
                if (result == null) {
                    result = this.caseARObject(identifiable);
                }
                if (result == null) {
                    result = this.caseGReferrable(identifiable);
                }
                if (result == null) {
                    result = this.caseGARObject(identifiable);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 5: {
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

    public T caseDescribable(Describable object) {
        return null;
    }

    public T caseSingleLanguageReferrable(SingleLanguageReferrable object) {
        return null;
    }

    public T caseReferrable(Referrable object) {
        return null;
    }

    public T caseMultilanguageReferrable(MultilanguageReferrable object) {
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

    public T defaultCase(EObject object) {
        return null;
    }
}

