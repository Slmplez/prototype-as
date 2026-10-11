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
package autosar3x.system.fibex.fibex4flexray.flexraycommunication.util;

import autosar3x.genericstructure.infrastructure.ARObject;
import autosar3x.genericstructure.infrastructure.identifiable.Identifiable;
import autosar3x.system.fibex.fibex4flexray.flexraycommunication.AbsolutelyScheduledTiming;
import autosar3x.system.fibex.fibex4flexray.flexraycommunication.FlexrayFrameTriggering;
import autosar3x.system.fibex.fibex4flexray.flexraycommunication.FlexraycommunicationPackage;
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
                AbsolutelyScheduledTiming absolutelyScheduledTiming = (AbsolutelyScheduledTiming)theEObject;
                T result = this.caseAbsolutelyScheduledTiming(absolutelyScheduledTiming);
                if (result == null) {
                    result = this.caseARObject(absolutelyScheduledTiming);
                }
                if (result == null) {
                    result = this.caseGARObject(absolutelyScheduledTiming);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                FlexrayFrameTriggering flexrayFrameTriggering = (FlexrayFrameTriggering)theEObject;
                T result = this.caseFlexrayFrameTriggering(flexrayFrameTriggering);
                if (result == null) {
                    result = this.caseFrameTriggering(flexrayFrameTriggering);
                }
                if (result == null) {
                    result = this.caseIdentifiable(flexrayFrameTriggering);
                }
                if (result == null) {
                    result = this.caseARObject(flexrayFrameTriggering);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(flexrayFrameTriggering);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)flexrayFrameTriggering);
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

    public T caseAbsolutelyScheduledTiming(AbsolutelyScheduledTiming object) {
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

