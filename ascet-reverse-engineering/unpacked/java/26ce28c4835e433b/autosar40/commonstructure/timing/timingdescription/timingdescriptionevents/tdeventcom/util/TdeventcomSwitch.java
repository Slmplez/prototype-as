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
package autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventcom.util;

import autosar40.commonstructure.timing.timingdescription.TimingDescription;
import autosar40.commonstructure.timing.timingdescription.TimingDescriptionEvent;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventcom.TDEventCom;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventcom.TDEventCycleStart;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventcom.TDEventFrClusterCycleStart;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventcom.TDEventFrame;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventcom.TDEventIPdu;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventcom.TDEventISignal;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventcom.TDEventTTCanCycleStart;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventcom.TdeventcomPackage;
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
public class TdeventcomSwitch<T> {
    protected static TdeventcomPackage modelPackage;

    public TdeventcomSwitch() {
        if (modelPackage == null) {
            modelPackage = TdeventcomPackage.eINSTANCE;
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
                TDEventCom tdEventCom = (TDEventCom)theEObject;
                T result = this.caseTDEventCom(tdEventCom);
                if (result == null) {
                    result = this.caseTimingDescriptionEvent(tdEventCom);
                }
                if (result == null) {
                    result = this.caseTimingDescription(tdEventCom);
                }
                if (result == null) {
                    result = this.caseIdentifiable(tdEventCom);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(tdEventCom);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(tdEventCom);
                }
                if (result == null) {
                    result = this.caseReferrable(tdEventCom);
                }
                if (result == null) {
                    result = this.caseARObject(tdEventCom);
                }
                if (result == null) {
                    result = this.caseGReferrable(tdEventCom);
                }
                if (result == null) {
                    result = this.caseGARObject(tdEventCom);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                TDEventCycleStart tdEventCycleStart = (TDEventCycleStart)theEObject;
                T result = this.caseTDEventCycleStart(tdEventCycleStart);
                if (result == null) {
                    result = this.caseTDEventCom(tdEventCycleStart);
                }
                if (result == null) {
                    result = this.caseTimingDescriptionEvent(tdEventCycleStart);
                }
                if (result == null) {
                    result = this.caseTimingDescription(tdEventCycleStart);
                }
                if (result == null) {
                    result = this.caseIdentifiable(tdEventCycleStart);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(tdEventCycleStart);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(tdEventCycleStart);
                }
                if (result == null) {
                    result = this.caseReferrable(tdEventCycleStart);
                }
                if (result == null) {
                    result = this.caseARObject(tdEventCycleStart);
                }
                if (result == null) {
                    result = this.caseGReferrable(tdEventCycleStart);
                }
                if (result == null) {
                    result = this.caseGARObject(tdEventCycleStart);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 2: {
                TDEventFrame tdEventFrame = (TDEventFrame)theEObject;
                T result = this.caseTDEventFrame(tdEventFrame);
                if (result == null) {
                    result = this.caseTDEventCom(tdEventFrame);
                }
                if (result == null) {
                    result = this.caseTimingDescriptionEvent(tdEventFrame);
                }
                if (result == null) {
                    result = this.caseTimingDescription(tdEventFrame);
                }
                if (result == null) {
                    result = this.caseIdentifiable(tdEventFrame);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(tdEventFrame);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(tdEventFrame);
                }
                if (result == null) {
                    result = this.caseReferrable(tdEventFrame);
                }
                if (result == null) {
                    result = this.caseARObject(tdEventFrame);
                }
                if (result == null) {
                    result = this.caseGReferrable(tdEventFrame);
                }
                if (result == null) {
                    result = this.caseGARObject(tdEventFrame);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 3: {
                TDEventFrClusterCycleStart tdEventFrClusterCycleStart = (TDEventFrClusterCycleStart)theEObject;
                T result = this.caseTDEventFrClusterCycleStart(tdEventFrClusterCycleStart);
                if (result == null) {
                    result = this.caseTDEventCycleStart(tdEventFrClusterCycleStart);
                }
                if (result == null) {
                    result = this.caseTDEventCom(tdEventFrClusterCycleStart);
                }
                if (result == null) {
                    result = this.caseTimingDescriptionEvent(tdEventFrClusterCycleStart);
                }
                if (result == null) {
                    result = this.caseTimingDescription(tdEventFrClusterCycleStart);
                }
                if (result == null) {
                    result = this.caseIdentifiable(tdEventFrClusterCycleStart);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(tdEventFrClusterCycleStart);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(tdEventFrClusterCycleStart);
                }
                if (result == null) {
                    result = this.caseReferrable(tdEventFrClusterCycleStart);
                }
                if (result == null) {
                    result = this.caseARObject(tdEventFrClusterCycleStart);
                }
                if (result == null) {
                    result = this.caseGReferrable(tdEventFrClusterCycleStart);
                }
                if (result == null) {
                    result = this.caseGARObject(tdEventFrClusterCycleStart);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 4: {
                TDEventIPdu tdEventIPdu = (TDEventIPdu)theEObject;
                T result = this.caseTDEventIPdu(tdEventIPdu);
                if (result == null) {
                    result = this.caseTDEventCom(tdEventIPdu);
                }
                if (result == null) {
                    result = this.caseTimingDescriptionEvent(tdEventIPdu);
                }
                if (result == null) {
                    result = this.caseTimingDescription(tdEventIPdu);
                }
                if (result == null) {
                    result = this.caseIdentifiable(tdEventIPdu);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(tdEventIPdu);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(tdEventIPdu);
                }
                if (result == null) {
                    result = this.caseReferrable(tdEventIPdu);
                }
                if (result == null) {
                    result = this.caseARObject(tdEventIPdu);
                }
                if (result == null) {
                    result = this.caseGReferrable(tdEventIPdu);
                }
                if (result == null) {
                    result = this.caseGARObject(tdEventIPdu);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 5: {
                TDEventISignal tdEventISignal = (TDEventISignal)theEObject;
                T result = this.caseTDEventISignal(tdEventISignal);
                if (result == null) {
                    result = this.caseTDEventCom(tdEventISignal);
                }
                if (result == null) {
                    result = this.caseTimingDescriptionEvent(tdEventISignal);
                }
                if (result == null) {
                    result = this.caseTimingDescription(tdEventISignal);
                }
                if (result == null) {
                    result = this.caseIdentifiable(tdEventISignal);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(tdEventISignal);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(tdEventISignal);
                }
                if (result == null) {
                    result = this.caseReferrable(tdEventISignal);
                }
                if (result == null) {
                    result = this.caseARObject(tdEventISignal);
                }
                if (result == null) {
                    result = this.caseGReferrable(tdEventISignal);
                }
                if (result == null) {
                    result = this.caseGARObject(tdEventISignal);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 6: {
                TDEventTTCanCycleStart tdEventTTCanCycleStart = (TDEventTTCanCycleStart)theEObject;
                T result = this.caseTDEventTTCanCycleStart(tdEventTTCanCycleStart);
                if (result == null) {
                    result = this.caseTDEventCycleStart(tdEventTTCanCycleStart);
                }
                if (result == null) {
                    result = this.caseTDEventCom(tdEventTTCanCycleStart);
                }
                if (result == null) {
                    result = this.caseTimingDescriptionEvent(tdEventTTCanCycleStart);
                }
                if (result == null) {
                    result = this.caseTimingDescription(tdEventTTCanCycleStart);
                }
                if (result == null) {
                    result = this.caseIdentifiable(tdEventTTCanCycleStart);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(tdEventTTCanCycleStart);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(tdEventTTCanCycleStart);
                }
                if (result == null) {
                    result = this.caseReferrable(tdEventTTCanCycleStart);
                }
                if (result == null) {
                    result = this.caseARObject(tdEventTTCanCycleStart);
                }
                if (result == null) {
                    result = this.caseGReferrable(tdEventTTCanCycleStart);
                }
                if (result == null) {
                    result = this.caseGARObject(tdEventTTCanCycleStart);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseTDEventCom(TDEventCom object) {
        return null;
    }

    public T caseTDEventCycleStart(TDEventCycleStart object) {
        return null;
    }

    public T caseTDEventFrame(TDEventFrame object) {
        return null;
    }

    public T caseTDEventFrClusterCycleStart(TDEventFrClusterCycleStart object) {
        return null;
    }

    public T caseTDEventIPdu(TDEventIPdu object) {
        return null;
    }

    public T caseTDEventISignal(TDEventISignal object) {
        return null;
    }

    public T caseTDEventTTCanCycleStart(TDEventTTCanCycleStart object) {
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

