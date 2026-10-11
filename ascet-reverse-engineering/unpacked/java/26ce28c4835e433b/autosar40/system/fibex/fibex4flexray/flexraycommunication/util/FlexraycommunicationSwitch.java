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
package autosar40.system.fibex.fibex4flexray.flexraycommunication.util;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.generaltemplateclasses.arpackage.PackageableElement;
import autosar40.genericstructure.generaltemplateclasses.elementcollection.CollectableElement;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Identifiable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.MultilanguageReferrable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Referrable;
import autosar40.system.fibex.fibex4flexray.flexraycommunication.FlexrayAbsolutelyScheduledTiming;
import autosar40.system.fibex.fibex4flexray.flexraycommunication.FlexrayFrame;
import autosar40.system.fibex.fibex4flexray.flexraycommunication.FlexrayFrameTriggering;
import autosar40.system.fibex.fibex4flexray.flexraycommunication.FlexraycommunicationPackage;
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
public class FlexraycommunicationSwitch<T> {
    protected static FlexraycommunicationPackage modelPackage;

    public FlexraycommunicationSwitch() {
        if (modelPackage == null) {
            modelPackage = FlexraycommunicationPackage.eINSTANCE;
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
                FlexrayAbsolutelyScheduledTiming flexrayAbsolutelyScheduledTiming = (FlexrayAbsolutelyScheduledTiming)theEObject;
                T result = this.caseFlexrayAbsolutelyScheduledTiming(flexrayAbsolutelyScheduledTiming);
                if (result == null) {
                    result = this.caseARObject(flexrayAbsolutelyScheduledTiming);
                }
                if (result == null) {
                    result = this.caseGARObject(flexrayAbsolutelyScheduledTiming);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                FlexrayFrame flexrayFrame = (FlexrayFrame)theEObject;
                T result = this.caseFlexrayFrame(flexrayFrame);
                if (result == null) {
                    result = this.caseFrame(flexrayFrame);
                }
                if (result == null) {
                    result = this.caseFibexElement(flexrayFrame);
                }
                if (result == null) {
                    result = this.casePackageableElement(flexrayFrame);
                }
                if (result == null) {
                    result = this.caseCollectableElement(flexrayFrame);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(flexrayFrame);
                }
                if (result == null) {
                    result = this.caseIdentifiable(flexrayFrame);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(flexrayFrame);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(flexrayFrame);
                }
                if (result == null) {
                    result = this.caseReferrable(flexrayFrame);
                }
                if (result == null) {
                    result = this.caseARObject(flexrayFrame);
                }
                if (result == null) {
                    result = this.caseGReferrable(flexrayFrame);
                }
                if (result == null) {
                    result = this.caseGARObject(flexrayFrame);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 2: {
                FlexrayFrameTriggering flexrayFrameTriggering = (FlexrayFrameTriggering)theEObject;
                T result = this.caseFlexrayFrameTriggering(flexrayFrameTriggering);
                if (result == null) {
                    result = this.caseFrameTriggering(flexrayFrameTriggering);
                }
                if (result == null) {
                    result = this.caseIdentifiable(flexrayFrameTriggering);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(flexrayFrameTriggering);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(flexrayFrameTriggering);
                }
                if (result == null) {
                    result = this.caseReferrable(flexrayFrameTriggering);
                }
                if (result == null) {
                    result = this.caseARObject(flexrayFrameTriggering);
                }
                if (result == null) {
                    result = this.caseGReferrable(flexrayFrameTriggering);
                }
                if (result == null) {
                    result = this.caseGARObject(flexrayFrameTriggering);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseFlexrayAbsolutelyScheduledTiming(FlexrayAbsolutelyScheduledTiming object) {
        return null;
    }

    public T caseFlexrayFrame(FlexrayFrame object) {
        return null;
    }

    public T caseFlexrayFrameTriggering(FlexrayFrameTriggering object) {
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

