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
package autosar40.commonstructure.timing.timingdescription.util;

import autosar40.commonstructure.timing.timingdescription.TimingDescription;
import autosar40.commonstructure.timing.timingdescription.TimingDescriptionEvent;
import autosar40.commonstructure.timing.timingdescription.TimingDescriptionEventChain;
import autosar40.commonstructure.timing.timingdescription.TimingdescriptionPackage;
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
public class TimingdescriptionSwitch<T> {
    protected static TimingdescriptionPackage modelPackage;

    public TimingdescriptionSwitch() {
        if (modelPackage == null) {
            modelPackage = TimingdescriptionPackage.eINSTANCE;
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
                TimingDescription timingDescription = (TimingDescription)theEObject;
                T result = this.caseTimingDescription(timingDescription);
                if (result == null) {
                    result = this.caseIdentifiable(timingDescription);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(timingDescription);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(timingDescription);
                }
                if (result == null) {
                    result = this.caseReferrable(timingDescription);
                }
                if (result == null) {
                    result = this.caseARObject(timingDescription);
                }
                if (result == null) {
                    result = this.caseGReferrable(timingDescription);
                }
                if (result == null) {
                    result = this.caseGARObject(timingDescription);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                TimingDescriptionEvent timingDescriptionEvent = (TimingDescriptionEvent)theEObject;
                T result = this.caseTimingDescriptionEvent(timingDescriptionEvent);
                if (result == null) {
                    result = this.caseTimingDescription(timingDescriptionEvent);
                }
                if (result == null) {
                    result = this.caseIdentifiable(timingDescriptionEvent);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(timingDescriptionEvent);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(timingDescriptionEvent);
                }
                if (result == null) {
                    result = this.caseReferrable(timingDescriptionEvent);
                }
                if (result == null) {
                    result = this.caseARObject(timingDescriptionEvent);
                }
                if (result == null) {
                    result = this.caseGReferrable(timingDescriptionEvent);
                }
                if (result == null) {
                    result = this.caseGARObject(timingDescriptionEvent);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 2: {
                TimingDescriptionEventChain timingDescriptionEventChain = (TimingDescriptionEventChain)theEObject;
                T result = this.caseTimingDescriptionEventChain(timingDescriptionEventChain);
                if (result == null) {
                    result = this.caseTimingDescription(timingDescriptionEventChain);
                }
                if (result == null) {
                    result = this.caseIdentifiable(timingDescriptionEventChain);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(timingDescriptionEventChain);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(timingDescriptionEventChain);
                }
                if (result == null) {
                    result = this.caseReferrable(timingDescriptionEventChain);
                }
                if (result == null) {
                    result = this.caseARObject(timingDescriptionEventChain);
                }
                if (result == null) {
                    result = this.caseGReferrable(timingDescriptionEventChain);
                }
                if (result == null) {
                    result = this.caseGARObject(timingDescriptionEventChain);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseTimingDescription(TimingDescription object) {
        return null;
    }

    public T caseTimingDescriptionEvent(TimingDescriptionEvent object) {
        return null;
    }

    public T caseTimingDescriptionEventChain(TimingDescriptionEventChain object) {
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

