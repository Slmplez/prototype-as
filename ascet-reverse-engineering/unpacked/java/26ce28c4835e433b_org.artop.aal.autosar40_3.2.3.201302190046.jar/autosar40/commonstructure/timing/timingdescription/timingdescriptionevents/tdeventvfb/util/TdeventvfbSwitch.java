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
package autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventvfb.util;

import autosar40.commonstructure.timing.timingdescription.TimingDescription;
import autosar40.commonstructure.timing.timingdescription.TimingDescriptionEvent;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventvfb.TDEventModeDeclaration;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventvfb.TDEventOperation;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventvfb.TDEventVariableDataPrototype;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventvfb.TDEventVfb;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventvfb.TdeventvfbPackage;
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
public class TdeventvfbSwitch<T> {
    protected static TdeventvfbPackage modelPackage;

    public TdeventvfbSwitch() {
        if (modelPackage == null) {
            modelPackage = TdeventvfbPackage.eINSTANCE;
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
                TDEventModeDeclaration tdEventModeDeclaration = (TDEventModeDeclaration)theEObject;
                T result = this.caseTDEventModeDeclaration(tdEventModeDeclaration);
                if (result == null) {
                    result = this.caseTDEventVfb(tdEventModeDeclaration);
                }
                if (result == null) {
                    result = this.caseTimingDescriptionEvent(tdEventModeDeclaration);
                }
                if (result == null) {
                    result = this.caseTimingDescription(tdEventModeDeclaration);
                }
                if (result == null) {
                    result = this.caseIdentifiable(tdEventModeDeclaration);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(tdEventModeDeclaration);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(tdEventModeDeclaration);
                }
                if (result == null) {
                    result = this.caseReferrable(tdEventModeDeclaration);
                }
                if (result == null) {
                    result = this.caseARObject(tdEventModeDeclaration);
                }
                if (result == null) {
                    result = this.caseGReferrable(tdEventModeDeclaration);
                }
                if (result == null) {
                    result = this.caseGARObject(tdEventModeDeclaration);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                TDEventVfb tdEventVfb = (TDEventVfb)theEObject;
                T result = this.caseTDEventVfb(tdEventVfb);
                if (result == null) {
                    result = this.caseTimingDescriptionEvent(tdEventVfb);
                }
                if (result == null) {
                    result = this.caseTimingDescription(tdEventVfb);
                }
                if (result == null) {
                    result = this.caseIdentifiable(tdEventVfb);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(tdEventVfb);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(tdEventVfb);
                }
                if (result == null) {
                    result = this.caseReferrable(tdEventVfb);
                }
                if (result == null) {
                    result = this.caseARObject(tdEventVfb);
                }
                if (result == null) {
                    result = this.caseGReferrable(tdEventVfb);
                }
                if (result == null) {
                    result = this.caseGARObject(tdEventVfb);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 2: {
                TDEventOperation tdEventOperation = (TDEventOperation)theEObject;
                T result = this.caseTDEventOperation(tdEventOperation);
                if (result == null) {
                    result = this.caseTDEventVfb(tdEventOperation);
                }
                if (result == null) {
                    result = this.caseTimingDescriptionEvent(tdEventOperation);
                }
                if (result == null) {
                    result = this.caseTimingDescription(tdEventOperation);
                }
                if (result == null) {
                    result = this.caseIdentifiable(tdEventOperation);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(tdEventOperation);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(tdEventOperation);
                }
                if (result == null) {
                    result = this.caseReferrable(tdEventOperation);
                }
                if (result == null) {
                    result = this.caseARObject(tdEventOperation);
                }
                if (result == null) {
                    result = this.caseGReferrable(tdEventOperation);
                }
                if (result == null) {
                    result = this.caseGARObject(tdEventOperation);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 3: {
                TDEventVariableDataPrototype tdEventVariableDataPrototype = (TDEventVariableDataPrototype)theEObject;
                T result = this.caseTDEventVariableDataPrototype(tdEventVariableDataPrototype);
                if (result == null) {
                    result = this.caseTDEventVfb(tdEventVariableDataPrototype);
                }
                if (result == null) {
                    result = this.caseTimingDescriptionEvent(tdEventVariableDataPrototype);
                }
                if (result == null) {
                    result = this.caseTimingDescription(tdEventVariableDataPrototype);
                }
                if (result == null) {
                    result = this.caseIdentifiable(tdEventVariableDataPrototype);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(tdEventVariableDataPrototype);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(tdEventVariableDataPrototype);
                }
                if (result == null) {
                    result = this.caseReferrable(tdEventVariableDataPrototype);
                }
                if (result == null) {
                    result = this.caseARObject(tdEventVariableDataPrototype);
                }
                if (result == null) {
                    result = this.caseGReferrable(tdEventVariableDataPrototype);
                }
                if (result == null) {
                    result = this.caseGARObject(tdEventVariableDataPrototype);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseTDEventModeDeclaration(TDEventModeDeclaration object) {
        return null;
    }

    public T caseTDEventVfb(TDEventVfb object) {
        return null;
    }

    public T caseTDEventOperation(TDEventOperation object) {
        return null;
    }

    public T caseTDEventVariableDataPrototype(TDEventVariableDataPrototype object) {
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

    public T caseTimingDescription(TimingDescription object) {
        return null;
    }

    public T caseTimingDescriptionEvent(TimingDescriptionEvent object) {
        return null;
    }

    public T defaultCase(EObject object) {
        return null;
    }
}

