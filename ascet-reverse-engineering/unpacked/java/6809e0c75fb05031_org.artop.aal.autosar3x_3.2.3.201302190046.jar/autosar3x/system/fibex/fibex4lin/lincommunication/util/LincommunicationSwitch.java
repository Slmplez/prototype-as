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
package autosar3x.system.fibex.fibex4lin.lincommunication.util;

import autosar3x.genericstructure.infrastructure.ARObject;
import autosar3x.genericstructure.infrastructure.identifiable.Identifiable;
import autosar3x.genericstructure.infrastructure.identifiable.PackageableElement;
import autosar3x.system.fibex.fibex4lin.lincommunication.AssignFrameIdTiming;
import autosar3x.system.fibex.fibex4lin.lincommunication.AssignNadTiming;
import autosar3x.system.fibex.fibex4lin.lincommunication.AssignmentTimingType;
import autosar3x.system.fibex.fibex4lin.lincommunication.DataTiming;
import autosar3x.system.fibex.fibex4lin.lincommunication.FreeFormat;
import autosar3x.system.fibex.fibex4lin.lincommunication.LinErrorResponse;
import autosar3x.system.fibex.fibex4lin.lincommunication.LinFrameTriggering;
import autosar3x.system.fibex.fibex4lin.lincommunication.LinScheduleTable;
import autosar3x.system.fibex.fibex4lin.lincommunication.LincommunicationPackage;
import autosar3x.system.fibex.fibex4lin.lincommunication.RelativelyScheduledTiming;
import autosar3x.system.fibex.fibex4lin.lincommunication.SubstitutionFrame;
import autosar3x.system.fibex.fibex4lin.lincommunication.UnassignFrameIdTiming;
import autosar3x.system.fibex.fibexcore.FibexElement;
import autosar3x.system.fibex.fibexcore.corecommunication.Frame;
import autosar3x.system.fibex.fibexcore.corecommunication.FrameTriggering;
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
public class LincommunicationSwitch<T> {
    protected static LincommunicationPackage modelPackage;

    public LincommunicationSwitch() {
        if (modelPackage == null) {
            modelPackage = LincommunicationPackage.eINSTANCE;
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
                AssignFrameIdTiming assignFrameIdTiming = (AssignFrameIdTiming)theEObject;
                T result = this.caseAssignFrameIdTiming(assignFrameIdTiming);
                if (result == null) {
                    result = this.caseAssignmentTimingType(assignFrameIdTiming);
                }
                if (result == null) {
                    result = this.caseRelativelyScheduledTiming(assignFrameIdTiming);
                }
                if (result == null) {
                    result = this.caseARObject(assignFrameIdTiming);
                }
                if (result == null) {
                    result = this.caseGARObject(assignFrameIdTiming);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                AssignmentTimingType assignmentTimingType = (AssignmentTimingType)theEObject;
                T result = this.caseAssignmentTimingType(assignmentTimingType);
                if (result == null) {
                    result = this.caseRelativelyScheduledTiming(assignmentTimingType);
                }
                if (result == null) {
                    result = this.caseARObject(assignmentTimingType);
                }
                if (result == null) {
                    result = this.caseGARObject(assignmentTimingType);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 2: {
                RelativelyScheduledTiming relativelyScheduledTiming = (RelativelyScheduledTiming)theEObject;
                T result = this.caseRelativelyScheduledTiming(relativelyScheduledTiming);
                if (result == null) {
                    result = this.caseARObject(relativelyScheduledTiming);
                }
                if (result == null) {
                    result = this.caseGARObject(relativelyScheduledTiming);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 3: {
                LinScheduleTable linScheduleTable = (LinScheduleTable)theEObject;
                T result = this.caseLinScheduleTable(linScheduleTable);
                if (result == null) {
                    result = this.caseIdentifiable(linScheduleTable);
                }
                if (result == null) {
                    result = this.caseARObject(linScheduleTable);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(linScheduleTable);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)linScheduleTable);
                }
                if (result == null) {
                    result = this.caseGARObject(linScheduleTable);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 4: {
                LinErrorResponse linErrorResponse = (LinErrorResponse)theEObject;
                T result = this.caseLinErrorResponse(linErrorResponse);
                if (result == null) {
                    result = this.caseARObject(linErrorResponse);
                }
                if (result == null) {
                    result = this.caseGARObject(linErrorResponse);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 5: {
                LinFrameTriggering linFrameTriggering = (LinFrameTriggering)theEObject;
                T result = this.caseLinFrameTriggering(linFrameTriggering);
                if (result == null) {
                    result = this.caseFrameTriggering(linFrameTriggering);
                }
                if (result == null) {
                    result = this.caseIdentifiable(linFrameTriggering);
                }
                if (result == null) {
                    result = this.caseARObject(linFrameTriggering);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(linFrameTriggering);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)linFrameTriggering);
                }
                if (result == null) {
                    result = this.caseGARObject(linFrameTriggering);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 6: {
                AssignNadTiming assignNadTiming = (AssignNadTiming)theEObject;
                T result = this.caseAssignNadTiming(assignNadTiming);
                if (result == null) {
                    result = this.caseAssignmentTimingType(assignNadTiming);
                }
                if (result == null) {
                    result = this.caseRelativelyScheduledTiming(assignNadTiming);
                }
                if (result == null) {
                    result = this.caseARObject(assignNadTiming);
                }
                if (result == null) {
                    result = this.caseGARObject(assignNadTiming);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 7: {
                DataTiming dataTiming = (DataTiming)theEObject;
                T result = this.caseDataTiming(dataTiming);
                if (result == null) {
                    result = this.caseRelativelyScheduledTiming(dataTiming);
                }
                if (result == null) {
                    result = this.caseARObject(dataTiming);
                }
                if (result == null) {
                    result = this.caseGARObject(dataTiming);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 8: {
                FreeFormat freeFormat = (FreeFormat)theEObject;
                T result = this.caseFreeFormat(freeFormat);
                if (result == null) {
                    result = this.caseARObject(freeFormat);
                }
                if (result == null) {
                    result = this.caseGARObject(freeFormat);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 9: {
                SubstitutionFrame substitutionFrame = (SubstitutionFrame)theEObject;
                T result = this.caseSubstitutionFrame(substitutionFrame);
                if (result == null) {
                    result = this.caseFrame(substitutionFrame);
                }
                if (result == null) {
                    result = this.caseFibexElement(substitutionFrame);
                }
                if (result == null) {
                    result = this.casePackageableElement(substitutionFrame);
                }
                if (result == null) {
                    result = this.caseIdentifiable(substitutionFrame);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(substitutionFrame);
                }
                if (result == null) {
                    result = this.caseARObject(substitutionFrame);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(substitutionFrame);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)substitutionFrame);
                }
                if (result == null) {
                    result = this.caseGARObject(substitutionFrame);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 10: {
                UnassignFrameIdTiming unassignFrameIdTiming = (UnassignFrameIdTiming)theEObject;
                T result = this.caseUnassignFrameIdTiming(unassignFrameIdTiming);
                if (result == null) {
                    result = this.caseAssignmentTimingType(unassignFrameIdTiming);
                }
                if (result == null) {
                    result = this.caseRelativelyScheduledTiming(unassignFrameIdTiming);
                }
                if (result == null) {
                    result = this.caseARObject(unassignFrameIdTiming);
                }
                if (result == null) {
                    result = this.caseGARObject(unassignFrameIdTiming);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseAssignFrameIdTiming(AssignFrameIdTiming object) {
        return null;
    }

    public T caseAssignmentTimingType(AssignmentTimingType object) {
        return null;
    }

    public T caseRelativelyScheduledTiming(RelativelyScheduledTiming object) {
        return null;
    }

    public T caseLinScheduleTable(LinScheduleTable object) {
        return null;
    }

    public T caseLinErrorResponse(LinErrorResponse object) {
        return null;
    }

    public T caseLinFrameTriggering(LinFrameTriggering object) {
        return null;
    }

    public T caseAssignNadTiming(AssignNadTiming object) {
        return null;
    }

    public T caseDataTiming(DataTiming object) {
        return null;
    }

    public T caseFreeFormat(FreeFormat object) {
        return null;
    }

    public T caseSubstitutionFrame(SubstitutionFrame object) {
        return null;
    }

    public T caseUnassignFrameIdTiming(UnassignFrameIdTiming object) {
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

    public T defaultCase(EObject object) {
        return null;
    }
}

