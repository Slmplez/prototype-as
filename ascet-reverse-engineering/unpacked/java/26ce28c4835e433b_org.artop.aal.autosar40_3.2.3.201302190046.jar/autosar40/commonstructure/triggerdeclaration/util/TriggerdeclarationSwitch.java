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
package autosar40.commonstructure.triggerdeclaration.util;

import autosar40.commonstructure.triggerdeclaration.Trigger;
import autosar40.commonstructure.triggerdeclaration.TriggerMapping;
import autosar40.commonstructure.triggerdeclaration.TriggerRefConditional;
import autosar40.commonstructure.triggerdeclaration.TriggerdeclarationPackage;
import autosar40.genericstructure.abstractstructure.AtpClassifier;
import autosar40.genericstructure.abstractstructure.AtpFeature;
import autosar40.genericstructure.abstractstructure.AtpStructureElement;
import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Identifiable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.MultilanguageReferrable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Referrable;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class TriggerdeclarationSwitch<T> {
    protected static TriggerdeclarationPackage modelPackage;

    public TriggerdeclarationSwitch() {
        if (modelPackage == null) {
            modelPackage = TriggerdeclarationPackage.eINSTANCE;
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
                Trigger trigger = (Trigger)theEObject;
                T result = this.caseTrigger(trigger);
                if (result == null) {
                    result = this.caseAtpStructureElement(trigger);
                }
                if (result == null) {
                    result = this.caseAtpClassifier(trigger);
                }
                if (result == null) {
                    result = this.caseAtpFeature(trigger);
                }
                if (result == null) {
                    result = this.caseIdentifiable(trigger);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(trigger);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(trigger);
                }
                if (result == null) {
                    result = this.caseReferrable(trigger);
                }
                if (result == null) {
                    result = this.caseARObject(trigger);
                }
                if (result == null) {
                    result = this.caseGReferrable(trigger);
                }
                if (result == null) {
                    result = this.caseGARObject(trigger);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                TriggerMapping triggerMapping = (TriggerMapping)theEObject;
                T result = this.caseTriggerMapping(triggerMapping);
                if (result == null) {
                    result = this.caseARObject(triggerMapping);
                }
                if (result == null) {
                    result = this.caseGARObject(triggerMapping);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 2: {
                TriggerRefConditional triggerRefConditional = (TriggerRefConditional)theEObject;
                T result = this.caseTriggerRefConditional(triggerRefConditional);
                if (result == null) {
                    result = this.caseARObject(triggerRefConditional);
                }
                if (result == null) {
                    result = this.caseGARObject(triggerRefConditional);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseTrigger(Trigger object) {
        return null;
    }

    public T caseTriggerMapping(TriggerMapping object) {
        return null;
    }

    public T caseTriggerRefConditional(TriggerRefConditional object) {
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

    public T caseAtpClassifier(AtpClassifier object) {
        return null;
    }

    public T caseAtpFeature(AtpFeature object) {
        return null;
    }

    public T caseAtpStructureElement(AtpStructureElement object) {
        return null;
    }

    public T defaultCase(EObject object) {
        return null;
    }
}

