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
package autosar40.standardization.abstractblueprintstructure.util;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Identifiable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.MultilanguageReferrable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Referrable;
import autosar40.standardization.abstractblueprintstructure.AbstractblueprintstructurePackage;
import autosar40.standardization.abstractblueprintstructure.AtpBlueprint;
import autosar40.standardization.abstractblueprintstructure.AtpBlueprintMapping;
import autosar40.standardization.abstractblueprintstructure.AtpBlueprintable;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class AbstractblueprintstructureSwitch<T> {
    protected static AbstractblueprintstructurePackage modelPackage;

    public AbstractblueprintstructureSwitch() {
        if (modelPackage == null) {
            modelPackage = AbstractblueprintstructurePackage.eINSTANCE;
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
                AtpBlueprintMapping atpBlueprintMapping = (AtpBlueprintMapping)theEObject;
                T result = this.caseAtpBlueprintMapping(atpBlueprintMapping);
                if (result == null) {
                    result = this.caseARObject(atpBlueprintMapping);
                }
                if (result == null) {
                    result = this.caseGARObject(atpBlueprintMapping);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                AtpBlueprintable atpBlueprintable = (AtpBlueprintable)theEObject;
                T result = this.caseAtpBlueprintable(atpBlueprintable);
                if (result == null) {
                    result = this.caseIdentifiable(atpBlueprintable);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(atpBlueprintable);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(atpBlueprintable);
                }
                if (result == null) {
                    result = this.caseReferrable(atpBlueprintable);
                }
                if (result == null) {
                    result = this.caseARObject(atpBlueprintable);
                }
                if (result == null) {
                    result = this.caseGReferrable(atpBlueprintable);
                }
                if (result == null) {
                    result = this.caseGARObject(atpBlueprintable);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 2: {
                AtpBlueprint atpBlueprint = (AtpBlueprint)theEObject;
                T result = this.caseAtpBlueprint(atpBlueprint);
                if (result == null) {
                    result = this.caseIdentifiable(atpBlueprint);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(atpBlueprint);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(atpBlueprint);
                }
                if (result == null) {
                    result = this.caseReferrable(atpBlueprint);
                }
                if (result == null) {
                    result = this.caseARObject(atpBlueprint);
                }
                if (result == null) {
                    result = this.caseGReferrable(atpBlueprint);
                }
                if (result == null) {
                    result = this.caseGARObject(atpBlueprint);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseAtpBlueprintMapping(AtpBlueprintMapping object) {
        return null;
    }

    public T caseAtpBlueprintable(AtpBlueprintable object) {
        return null;
    }

    public T caseAtpBlueprint(AtpBlueprint object) {
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

    public T defaultCase(EObject object) {
        return null;
    }
}

