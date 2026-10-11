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
package autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventbswinternalbehavior.util;

import autosar40.commonstructure.timing.timingdescription.TimingDescription;
import autosar40.commonstructure.timing.timingdescription.TimingDescriptionEvent;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventbswinternalbehavior.TDEventBswInternalBehavior;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventbswinternalbehavior.TdeventbswinternalbehaviorPackage;
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
public class TdeventbswinternalbehaviorSwitch<T> {
    protected static TdeventbswinternalbehaviorPackage modelPackage;

    public TdeventbswinternalbehaviorSwitch() {
        if (modelPackage == null) {
            modelPackage = TdeventbswinternalbehaviorPackage.eINSTANCE;
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
                TDEventBswInternalBehavior tdEventBswInternalBehavior = (TDEventBswInternalBehavior)theEObject;
                T result = this.caseTDEventBswInternalBehavior(tdEventBswInternalBehavior);
                if (result == null) {
                    result = this.caseTimingDescriptionEvent(tdEventBswInternalBehavior);
                }
                if (result == null) {
                    result = this.caseTimingDescription(tdEventBswInternalBehavior);
                }
                if (result == null) {
                    result = this.caseIdentifiable(tdEventBswInternalBehavior);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(tdEventBswInternalBehavior);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(tdEventBswInternalBehavior);
                }
                if (result == null) {
                    result = this.caseReferrable(tdEventBswInternalBehavior);
                }
                if (result == null) {
                    result = this.caseARObject(tdEventBswInternalBehavior);
                }
                if (result == null) {
                    result = this.caseGReferrable(tdEventBswInternalBehavior);
                }
                if (result == null) {
                    result = this.caseGARObject(tdEventBswInternalBehavior);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseTDEventBswInternalBehavior(TDEventBswInternalBehavior object) {
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

