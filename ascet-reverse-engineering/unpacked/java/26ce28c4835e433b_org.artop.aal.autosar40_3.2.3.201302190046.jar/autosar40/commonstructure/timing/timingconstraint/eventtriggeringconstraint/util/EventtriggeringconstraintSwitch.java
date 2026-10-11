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
package autosar40.commonstructure.timing.timingconstraint.eventtriggeringconstraint.util;

import autosar40.commonstructure.timing.timingconstraint.TimingConstraint;
import autosar40.commonstructure.timing.timingconstraint.eventtriggeringconstraint.ArbitraryEventTriggering;
import autosar40.commonstructure.timing.timingconstraint.eventtriggeringconstraint.BurstPatternEventTriggering;
import autosar40.commonstructure.timing.timingconstraint.eventtriggeringconstraint.ConcretePatternEventTriggering;
import autosar40.commonstructure.timing.timingconstraint.eventtriggeringconstraint.ConfidenceInterval;
import autosar40.commonstructure.timing.timingconstraint.eventtriggeringconstraint.EventTriggeringConstraint;
import autosar40.commonstructure.timing.timingconstraint.eventtriggeringconstraint.EventtriggeringconstraintPackage;
import autosar40.commonstructure.timing.timingconstraint.eventtriggeringconstraint.PeriodicEventTriggering;
import autosar40.commonstructure.timing.timingconstraint.eventtriggeringconstraint.SporadicEventTriggering;
import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.requirementstracing.Traceable;
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
public class EventtriggeringconstraintSwitch<T> {
    protected static EventtriggeringconstraintPackage modelPackage;

    public EventtriggeringconstraintSwitch() {
        if (modelPackage == null) {
            modelPackage = EventtriggeringconstraintPackage.eINSTANCE;
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
                ArbitraryEventTriggering arbitraryEventTriggering = (ArbitraryEventTriggering)theEObject;
                T result = this.caseArbitraryEventTriggering(arbitraryEventTriggering);
                if (result == null) {
                    result = this.caseEventTriggeringConstraint(arbitraryEventTriggering);
                }
                if (result == null) {
                    result = this.caseTimingConstraint(arbitraryEventTriggering);
                }
                if (result == null) {
                    result = this.caseIdentifiable(arbitraryEventTriggering);
                }
                if (result == null) {
                    result = this.caseTraceable(arbitraryEventTriggering);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(arbitraryEventTriggering);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(arbitraryEventTriggering);
                }
                if (result == null) {
                    result = this.caseReferrable(arbitraryEventTriggering);
                }
                if (result == null) {
                    result = this.caseARObject(arbitraryEventTriggering);
                }
                if (result == null) {
                    result = this.caseGReferrable(arbitraryEventTriggering);
                }
                if (result == null) {
                    result = this.caseGARObject(arbitraryEventTriggering);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                EventTriggeringConstraint eventTriggeringConstraint = (EventTriggeringConstraint)theEObject;
                T result = this.caseEventTriggeringConstraint(eventTriggeringConstraint);
                if (result == null) {
                    result = this.caseTimingConstraint(eventTriggeringConstraint);
                }
                if (result == null) {
                    result = this.caseIdentifiable(eventTriggeringConstraint);
                }
                if (result == null) {
                    result = this.caseTraceable(eventTriggeringConstraint);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(eventTriggeringConstraint);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(eventTriggeringConstraint);
                }
                if (result == null) {
                    result = this.caseReferrable(eventTriggeringConstraint);
                }
                if (result == null) {
                    result = this.caseARObject(eventTriggeringConstraint);
                }
                if (result == null) {
                    result = this.caseGReferrable(eventTriggeringConstraint);
                }
                if (result == null) {
                    result = this.caseGARObject(eventTriggeringConstraint);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 2: {
                ConfidenceInterval confidenceInterval = (ConfidenceInterval)theEObject;
                T result = this.caseConfidenceInterval(confidenceInterval);
                if (result == null) {
                    result = this.caseARObject(confidenceInterval);
                }
                if (result == null) {
                    result = this.caseGARObject(confidenceInterval);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 3: {
                BurstPatternEventTriggering burstPatternEventTriggering = (BurstPatternEventTriggering)theEObject;
                T result = this.caseBurstPatternEventTriggering(burstPatternEventTriggering);
                if (result == null) {
                    result = this.caseEventTriggeringConstraint(burstPatternEventTriggering);
                }
                if (result == null) {
                    result = this.caseTimingConstraint(burstPatternEventTriggering);
                }
                if (result == null) {
                    result = this.caseIdentifiable(burstPatternEventTriggering);
                }
                if (result == null) {
                    result = this.caseTraceable(burstPatternEventTriggering);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(burstPatternEventTriggering);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(burstPatternEventTriggering);
                }
                if (result == null) {
                    result = this.caseReferrable(burstPatternEventTriggering);
                }
                if (result == null) {
                    result = this.caseARObject(burstPatternEventTriggering);
                }
                if (result == null) {
                    result = this.caseGReferrable(burstPatternEventTriggering);
                }
                if (result == null) {
                    result = this.caseGARObject(burstPatternEventTriggering);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 4: {
                ConcretePatternEventTriggering concretePatternEventTriggering = (ConcretePatternEventTriggering)theEObject;
                T result = this.caseConcretePatternEventTriggering(concretePatternEventTriggering);
                if (result == null) {
                    result = this.caseEventTriggeringConstraint(concretePatternEventTriggering);
                }
                if (result == null) {
                    result = this.caseTimingConstraint(concretePatternEventTriggering);
                }
                if (result == null) {
                    result = this.caseIdentifiable(concretePatternEventTriggering);
                }
                if (result == null) {
                    result = this.caseTraceable(concretePatternEventTriggering);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(concretePatternEventTriggering);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(concretePatternEventTriggering);
                }
                if (result == null) {
                    result = this.caseReferrable(concretePatternEventTriggering);
                }
                if (result == null) {
                    result = this.caseARObject(concretePatternEventTriggering);
                }
                if (result == null) {
                    result = this.caseGReferrable(concretePatternEventTriggering);
                }
                if (result == null) {
                    result = this.caseGARObject(concretePatternEventTriggering);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 5: {
                PeriodicEventTriggering periodicEventTriggering = (PeriodicEventTriggering)theEObject;
                T result = this.casePeriodicEventTriggering(periodicEventTriggering);
                if (result == null) {
                    result = this.caseEventTriggeringConstraint(periodicEventTriggering);
                }
                if (result == null) {
                    result = this.caseTimingConstraint(periodicEventTriggering);
                }
                if (result == null) {
                    result = this.caseIdentifiable(periodicEventTriggering);
                }
                if (result == null) {
                    result = this.caseTraceable(periodicEventTriggering);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(periodicEventTriggering);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(periodicEventTriggering);
                }
                if (result == null) {
                    result = this.caseReferrable(periodicEventTriggering);
                }
                if (result == null) {
                    result = this.caseARObject(periodicEventTriggering);
                }
                if (result == null) {
                    result = this.caseGReferrable(periodicEventTriggering);
                }
                if (result == null) {
                    result = this.caseGARObject(periodicEventTriggering);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 6: {
                SporadicEventTriggering sporadicEventTriggering = (SporadicEventTriggering)theEObject;
                T result = this.caseSporadicEventTriggering(sporadicEventTriggering);
                if (result == null) {
                    result = this.caseEventTriggeringConstraint(sporadicEventTriggering);
                }
                if (result == null) {
                    result = this.caseTimingConstraint(sporadicEventTriggering);
                }
                if (result == null) {
                    result = this.caseIdentifiable(sporadicEventTriggering);
                }
                if (result == null) {
                    result = this.caseTraceable(sporadicEventTriggering);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(sporadicEventTriggering);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(sporadicEventTriggering);
                }
                if (result == null) {
                    result = this.caseReferrable(sporadicEventTriggering);
                }
                if (result == null) {
                    result = this.caseARObject(sporadicEventTriggering);
                }
                if (result == null) {
                    result = this.caseGReferrable(sporadicEventTriggering);
                }
                if (result == null) {
                    result = this.caseGARObject(sporadicEventTriggering);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseArbitraryEventTriggering(ArbitraryEventTriggering object) {
        return null;
    }

    public T caseEventTriggeringConstraint(EventTriggeringConstraint object) {
        return null;
    }

    public T caseConfidenceInterval(ConfidenceInterval object) {
        return null;
    }

    public T caseBurstPatternEventTriggering(BurstPatternEventTriggering object) {
        return null;
    }

    public T caseConcretePatternEventTriggering(ConcretePatternEventTriggering object) {
        return null;
    }

    public T casePeriodicEventTriggering(PeriodicEventTriggering object) {
        return null;
    }

    public T caseSporadicEventTriggering(SporadicEventTriggering object) {
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

    public T caseTraceable(Traceable object) {
        return null;
    }

    public T caseTimingConstraint(TimingConstraint object) {
        return null;
    }

    public T defaultCase(EObject object) {
        return null;
    }
}

