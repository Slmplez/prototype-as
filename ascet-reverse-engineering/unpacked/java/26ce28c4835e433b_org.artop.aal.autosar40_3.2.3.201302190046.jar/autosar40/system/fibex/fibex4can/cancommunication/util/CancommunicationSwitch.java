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
package autosar40.system.fibex.fibex4can.cancommunication.util;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.generaltemplateclasses.arpackage.PackageableElement;
import autosar40.genericstructure.generaltemplateclasses.elementcollection.CollectableElement;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Identifiable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.MultilanguageReferrable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Referrable;
import autosar40.system.fibex.fibex4can.cancommunication.CanFrame;
import autosar40.system.fibex.fibex4can.cancommunication.CanFrameTriggering;
import autosar40.system.fibex.fibex4can.cancommunication.CancommunicationPackage;
import autosar40.system.fibex.fibex4can.cancommunication.RxIdentifierRange;
import autosar40.system.fibex.fibexcore.FibexElement;
import autosar40.system.fibex.fibexcore.corecommunication.Frame;
import autosar40.system.fibex.fibexcore.corecommunication.FrameTriggering;
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
                CanFrame canFrame = (CanFrame)theEObject;
                T result = this.caseCanFrame(canFrame);
                if (result == null) {
                    result = this.caseFrame(canFrame);
                }
                if (result == null) {
                    result = this.caseFibexElement(canFrame);
                }
                if (result == null) {
                    result = this.casePackageableElement(canFrame);
                }
                if (result == null) {
                    result = this.caseCollectableElement(canFrame);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(canFrame);
                }
                if (result == null) {
                    result = this.caseIdentifiable(canFrame);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(canFrame);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(canFrame);
                }
                if (result == null) {
                    result = this.caseReferrable(canFrame);
                }
                if (result == null) {
                    result = this.caseARObject(canFrame);
                }
                if (result == null) {
                    result = this.caseGReferrable(canFrame);
                }
                if (result == null) {
                    result = this.caseGARObject(canFrame);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                CanFrameTriggering canFrameTriggering = (CanFrameTriggering)theEObject;
                T result = this.caseCanFrameTriggering(canFrameTriggering);
                if (result == null) {
                    result = this.caseFrameTriggering(canFrameTriggering);
                }
                if (result == null) {
                    result = this.caseIdentifiable(canFrameTriggering);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(canFrameTriggering);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(canFrameTriggering);
                }
                if (result == null) {
                    result = this.caseReferrable(canFrameTriggering);
                }
                if (result == null) {
                    result = this.caseARObject(canFrameTriggering);
                }
                if (result == null) {
                    result = this.caseGReferrable(canFrameTriggering);
                }
                if (result == null) {
                    result = this.caseGARObject(canFrameTriggering);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 2: {
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

    public T caseCanFrame(CanFrame object) {
        return null;
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

    public T caseFibexElement(FibexElement object) {
        return null;
    }

    public T caseFrame(Frame object) {
        return null;
    }

    public T caseFrameTriggering(FrameTriggering object) {
        return null;
    }

    public T defaultCase(EObject object) {
        return null;
    }
}

