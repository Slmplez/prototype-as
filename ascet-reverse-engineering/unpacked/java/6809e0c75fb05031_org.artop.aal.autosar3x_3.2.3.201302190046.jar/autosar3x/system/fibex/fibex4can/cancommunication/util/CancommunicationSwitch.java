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
package autosar3x.system.fibex.fibex4can.cancommunication.util;

import autosar3x.genericstructure.infrastructure.ARObject;
import autosar3x.genericstructure.infrastructure.identifiable.Identifiable;
import autosar3x.system.fibex.fibex4can.cancommunication.CanFrameTriggering;
import autosar3x.system.fibex.fibex4can.cancommunication.CancommunicationPackage;
import autosar3x.system.fibex.fibex4can.cancommunication.RxIdentifierRange;
import autosar3x.system.fibex.fibexcore.corecommunication.FrameTriggering;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class CancommunicationSwitch<T> {
    protected static CancommunicationPackage modelPackage;

    public CancommunicationSwitch() {
        if (modelPackage == null) {
            modelPackage = CancommunicationPackage.eINSTANCE;
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
                CanFrameTriggering canFrameTriggering = (CanFrameTriggering)theEObject;
                T result = this.caseCanFrameTriggering(canFrameTriggering);
                if (result == null) {
                    result = this.caseFrameTriggering(canFrameTriggering);
                }
                if (result == null) {
                    result = this.caseIdentifiable(canFrameTriggering);
                }
                if (result == null) {
                    result = this.caseARObject(canFrameTriggering);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(canFrameTriggering);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)canFrameTriggering);
                }
                if (result == null) {
                    result = this.caseGARObject(canFrameTriggering);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                RxIdentifierRange rxIdentifierRange = (RxIdentifierRange)theEObject;
                T result = this.caseRxIdentifierRange(rxIdentifierRange);
                if (result == null) {
                    result = this.caseARObject(rxIdentifierRange);
                }
                if (result == null) {
                    result = this.caseGARObject(rxIdentifierRange);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseCanFrameTriggering(CanFrameTriggering object) {
        return null;
    }

    public T caseRxIdentifierRange(RxIdentifierRange object) {
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

    public T caseIdentifiable(Identifiable object) {
        return null;
    }

    public T caseFrameTriggering(FrameTriggering object) {
        return null;
    }

    public T defaultCase(EObject object) {
        return null;
    }
}

