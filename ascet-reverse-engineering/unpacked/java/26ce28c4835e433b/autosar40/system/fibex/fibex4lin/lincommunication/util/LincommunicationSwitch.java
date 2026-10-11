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
package autosar40.system.fibex.fibex4lin.lincommunication.util;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.generaltemplateclasses.arpackage.PackageableElement;
import autosar40.genericstructure.generaltemplateclasses.elementcollection.CollectableElement;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Identifiable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.MultilanguageReferrable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Referrable;
import autosar40.system.fibex.fibex4lin.lincommunication.ApplicationEntry;
import autosar40.system.fibex.fibex4lin.lincommunication.AssignFrameId;
import autosar40.system.fibex.fibex4lin.lincommunication.AssignFrameIdRange;
import autosar40.system.fibex.fibex4lin.lincommunication.AssignNad;
import autosar40.system.fibex.fibex4lin.lincommunication.ConditionalChangeNad;
import autosar40.system.fibex.fibex4lin.lincommunication.DataDumpEntry;
import autosar40.system.fibex.fibex4lin.lincommunication.FramePid;
import autosar40.system.fibex.fibex4lin.lincommunication.FreeFormat;
import autosar40.system.fibex.fibex4lin.lincommunication.FreeFormatEntry;
import autosar40.system.fibex.fibex4lin.lincommunication.LinConfigurationEntry;
import autosar40.system.fibex.fibex4lin.lincommunication.LinErrorResponse;
import autosar40.system.fibex.fibex4lin.lincommunication.LinEventTriggeredFrame;
import autosar40.system.fibex.fibex4lin.lincommunication.LinFrame;
import autosar40.system.fibex.fibex4lin.lincommunication.LinFrameTriggering;
import autosar40.system.fibex.fibex4lin.lincommunication.LinScheduleTable;
import autosar40.system.fibex.fibex4lin.lincommunication.LinSporadicFrame;
import autosar40.system.fibex.fibex4lin.lincommunication.LinUnconditionalFrame;
import autosar40.system.fibex.fibex4lin.lincommunication.LincommunicationPackage;
import autosar40.system.fibex.fibex4lin.lincommunication.SaveConfigurationEntry;
import autosar40.system.fibex.fibex4lin.lincommunication.ScheduleTableEntry;
import autosar40.system.fibex.fibex4lin.lincommunication.UnassignFrameId;
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
                ApplicationEntry applicationEntry = (ApplicationEntry)theEObject;
                T result = this.caseApplicationEntry(applicationEntry);
                if (result == null) {
                    result = this.caseScheduleTableEntry(applicationEntry);
                }
                if (result == null) {
                    result = this.caseARObject(applicationEntry);
                }
                if (result == null) {
                    result = this.caseGARObject(applicationEntry);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                ScheduleTableEntry scheduleTableEntry = (ScheduleTableEntry)theEObject;
                T result = this.caseScheduleTableEntry(scheduleTableEntry);
                if (result == null) {
                    result = this.caseARObject(scheduleTableEntry);
                }
                if (result == null) {
                    result = this.caseGARObject(scheduleTableEntry);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 2: {
                LinFrameTriggering linFrameTriggering = (LinFrameTriggering)theEObject;
                T result = this.caseLinFrameTriggering(linFrameTriggering);
                if (result == null) {
                    result = this.caseFrameTriggering(linFrameTriggering);
                }
                if (result == null) {
                    result = this.caseIdentifiable(linFrameTriggering);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(linFrameTriggering);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(linFrameTriggering);
                }
                if (result == null) {
                    result = this.caseReferrable(linFrameTriggering);
                }
                if (result == null) {
                    result = this.caseARObject(linFrameTriggering);
                }
                if (result == null) {
                    result = this.caseGReferrable(linFrameTriggering);
                }
                if (result == null) {
                    result = this.caseGARObject(linFrameTriggering);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 3: {
                AssignFrameId assignFrameId = (AssignFrameId)theEObject;
                T result = this.caseAssignFrameId(assignFrameId);
                if (result == null) {
                    result = this.caseLinConfigurationEntry(assignFrameId);
                }
                if (result == null) {
                    result = this.caseScheduleTableEntry(assignFrameId);
                }
                if (result == null) {
                    result = this.caseARObject(assignFrameId);
                }
                if (result == null) {
                    result = this.caseGARObject(assignFrameId);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 4: {
                LinConfigurationEntry linConfigurationEntry = (LinConfigurationEntry)theEObject;
                T result = this.caseLinConfigurationEntry(linConfigurationEntry);
                if (result == null) {
                    result = this.caseScheduleTableEntry(linConfigurationEntry);
                }
                if (result == null) {
                    result = this.caseARObject(linConfigurationEntry);
                }
                if (result == null) {
                    result = this.caseGARObject(linConfigurationEntry);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 5: {
                LinFrame linFrame = (LinFrame)theEObject;
                T result = this.caseLinFrame(linFrame);
                if (result == null) {
                    result = this.caseFrame(linFrame);
                }
                if (result == null) {
                    result = this.caseFibexElement(linFrame);
                }
                if (result == null) {
                    result = this.casePackageableElement(linFrame);
                }
                if (result == null) {
                    result = this.caseCollectableElement(linFrame);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(linFrame);
                }
                if (result == null) {
                    result = this.caseIdentifiable(linFrame);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(linFrame);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(linFrame);
                }
                if (result == null) {
                    result = this.caseReferrable(linFrame);
                }
                if (result == null) {
                    result = this.caseARObject(linFrame);
                }
                if (result == null) {
                    result = this.caseGReferrable(linFrame);
                }
                if (result == null) {
                    result = this.caseGARObject(linFrame);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 6: {
                LinScheduleTable linScheduleTable = (LinScheduleTable)theEObject;
                T result = this.caseLinScheduleTable(linScheduleTable);
                if (result == null) {
                    result = this.caseIdentifiable(linScheduleTable);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(linScheduleTable);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(linScheduleTable);
                }
                if (result == null) {
                    result = this.caseReferrable(linScheduleTable);
                }
                if (result == null) {
                    result = this.caseARObject(linScheduleTable);
                }
                if (result == null) {
                    result = this.caseGReferrable(linScheduleTable);
                }
                if (result == null) {
                    result = this.caseGARObject(linScheduleTable);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 7: {
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
            case 8: {
                AssignFrameIdRange assignFrameIdRange = (AssignFrameIdRange)theEObject;
                T result = this.caseAssignFrameIdRange(assignFrameIdRange);
                if (result == null) {
                    result = this.caseLinConfigurationEntry(assignFrameIdRange);
                }
                if (result == null) {
                    result = this.caseScheduleTableEntry(assignFrameIdRange);
                }
                if (result == null) {
                    result = this.caseARObject(assignFrameIdRange);
                }
                if (result == null) {
                    result = this.caseGARObject(assignFrameIdRange);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 9: {
                FramePid framePid = (FramePid)theEObject;
                T result = this.caseFramePid(framePid);
                if (result == null) {
                    result = this.caseARObject(framePid);
                }
                if (result == null) {
                    result = this.caseGARObject(framePid);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 10: {
                AssignNad assignNad = (AssignNad)theEObject;
                T result = this.caseAssignNad(assignNad);
                if (result == null) {
                    result = this.caseLinConfigurationEntry(assignNad);
                }
                if (result == null) {
                    result = this.caseScheduleTableEntry(assignNad);
                }
                if (result == null) {
                    result = this.caseARObject(assignNad);
                }
                if (result == null) {
                    result = this.caseGARObject(assignNad);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 11: {
                ConditionalChangeNad conditionalChangeNad = (ConditionalChangeNad)theEObject;
                T result = this.caseConditionalChangeNad(conditionalChangeNad);
                if (result == null) {
                    result = this.caseLinConfigurationEntry(conditionalChangeNad);
                }
                if (result == null) {
                    result = this.caseScheduleTableEntry(conditionalChangeNad);
                }
                if (result == null) {
                    result = this.caseARObject(conditionalChangeNad);
                }
                if (result == null) {
                    result = this.caseGARObject(conditionalChangeNad);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 12: {
                DataDumpEntry dataDumpEntry = (DataDumpEntry)theEObject;
                T result = this.caseDataDumpEntry(dataDumpEntry);
                if (result == null) {
                    result = this.caseLinConfigurationEntry(dataDumpEntry);
                }
                if (result == null) {
                    result = this.caseScheduleTableEntry(dataDumpEntry);
                }
                if (result == null) {
                    result = this.caseARObject(dataDumpEntry);
                }
                if (result == null) {
                    result = this.caseGARObject(dataDumpEntry);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 13: {
                FreeFormat freeFormat = (FreeFormat)theEObject;
                T result = this.caseFreeFormat(freeFormat);
                if (result == null) {
                    result = this.caseFreeFormatEntry(freeFormat);
                }
                if (result == null) {
                    result = this.caseScheduleTableEntry(freeFormat);
                }
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
            case 14: {
                FreeFormatEntry freeFormatEntry = (FreeFormatEntry)theEObject;
                T result = this.caseFreeFormatEntry(freeFormatEntry);
                if (result == null) {
                    result = this.caseScheduleTableEntry(freeFormatEntry);
                }
                if (result == null) {
                    result = this.caseARObject(freeFormatEntry);
                }
                if (result == null) {
                    result = this.caseGARObject(freeFormatEntry);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 15: {
                LinEventTriggeredFrame linEventTriggeredFrame = (LinEventTriggeredFrame)theEObject;
                T result = this.caseLinEventTriggeredFrame(linEventTriggeredFrame);
                if (result == null) {
                    result = this.caseLinFrame(linEventTriggeredFrame);
                }
                if (result == null) {
                    result = this.caseFrame(linEventTriggeredFrame);
                }
                if (result == null) {
                    result = this.caseFibexElement(linEventTriggeredFrame);
                }
                if (result == null) {
                    result = this.casePackageableElement(linEventTriggeredFrame);
                }
                if (result == null) {
                    result = this.caseCollectableElement(linEventTriggeredFrame);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(linEventTriggeredFrame);
                }
                if (result == null) {
                    result = this.caseIdentifiable(linEventTriggeredFrame);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(linEventTriggeredFrame);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(linEventTriggeredFrame);
                }
                if (result == null) {
                    result = this.caseReferrable(linEventTriggeredFrame);
                }
                if (result == null) {
                    result = this.caseARObject(linEventTriggeredFrame);
                }
                if (result == null) {
                    result = this.caseGReferrable(linEventTriggeredFrame);
                }
                if (result == null) {
                    result = this.caseGARObject(linEventTriggeredFrame);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 16: {
                LinUnconditionalFrame linUnconditionalFrame = (LinUnconditionalFrame)theEObject;
                T result = this.caseLinUnconditionalFrame(linUnconditionalFrame);
                if (result == null) {
                    result = this.caseLinFrame(linUnconditionalFrame);
                }
                if (result == null) {
                    result = this.caseFrame(linUnconditionalFrame);
                }
                if (result == null) {
                    result = this.caseFibexElement(linUnconditionalFrame);
                }
                if (result == null) {
                    result = this.casePackageableElement(linUnconditionalFrame);
                }
                if (result == null) {
                    result = this.caseCollectableElement(linUnconditionalFrame);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(linUnconditionalFrame);
                }
                if (result == null) {
                    result = this.caseIdentifiable(linUnconditionalFrame);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(linUnconditionalFrame);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(linUnconditionalFrame);
                }
                if (result == null) {
                    result = this.caseReferrable(linUnconditionalFrame);
                }
                if (result == null) {
                    result = this.caseARObject(linUnconditionalFrame);
                }
                if (result == null) {
                    result = this.caseGReferrable(linUnconditionalFrame);
                }
                if (result == null) {
                    result = this.caseGARObject(linUnconditionalFrame);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 17: {
                LinSporadicFrame linSporadicFrame = (LinSporadicFrame)theEObject;
                T result = this.caseLinSporadicFrame(linSporadicFrame);
                if (result == null) {
                    result = this.caseLinFrame(linSporadicFrame);
                }
                if (result == null) {
                    result = this.caseFrame(linSporadicFrame);
                }
                if (result == null) {
                    result = this.caseFibexElement(linSporadicFrame);
                }
                if (result == null) {
                    result = this.casePackageableElement(linSporadicFrame);
                }
                if (result == null) {
                    result = this.caseCollectableElement(linSporadicFrame);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(linSporadicFrame);
                }
                if (result == null) {
                    result = this.caseIdentifiable(linSporadicFrame);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(linSporadicFrame);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(linSporadicFrame);
                }
                if (result == null) {
                    result = this.caseReferrable(linSporadicFrame);
                }
                if (result == null) {
                    result = this.caseARObject(linSporadicFrame);
                }
                if (result == null) {
                    result = this.caseGReferrable(linSporadicFrame);
                }
                if (result == null) {
                    result = this.caseGARObject(linSporadicFrame);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 18: {
                SaveConfigurationEntry saveConfigurationEntry = (SaveConfigurationEntry)theEObject;
                T result = this.caseSaveConfigurationEntry(saveConfigurationEntry);
                if (result == null) {
                    result = this.caseLinConfigurationEntry(saveConfigurationEntry);
                }
                if (result == null) {
                    result = this.caseScheduleTableEntry(saveConfigurationEntry);
                }
                if (result == null) {
                    result = this.caseARObject(saveConfigurationEntry);
                }
                if (result == null) {
                    result = this.caseGARObject(saveConfigurationEntry);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 19: {
                UnassignFrameId unassignFrameId = (UnassignFrameId)theEObject;
                T result = this.caseUnassignFrameId(unassignFrameId);
                if (result == null) {
                    result = this.caseLinConfigurationEntry(unassignFrameId);
                }
                if (result == null) {
                    result = this.caseScheduleTableEntry(unassignFrameId);
                }
                if (result == null) {
                    result = this.caseARObject(unassignFrameId);
                }
                if (result == null) {
                    result = this.caseGARObject(unassignFrameId);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseApplicationEntry(ApplicationEntry object) {
        return null;
    }

    public T caseScheduleTableEntry(ScheduleTableEntry object) {
        return null;
    }

    public T caseLinFrameTriggering(LinFrameTriggering object) {
        return null;
    }

    public T caseAssignFrameId(AssignFrameId object) {
        return null;
    }

    public T caseLinConfigurationEntry(LinConfigurationEntry object) {
        return null;
    }

    public T caseLinFrame(LinFrame object) {
        return null;
    }

    public T caseLinScheduleTable(LinScheduleTable object) {
        return null;
    }

    public T caseLinErrorResponse(LinErrorResponse object) {
        return null;
    }

    public T caseAssignFrameIdRange(AssignFrameIdRange object) {
        return null;
    }

    public T caseFramePid(FramePid object) {
        return null;
    }

    public T caseAssignNad(AssignNad object) {
        return null;
    }

    public T caseConditionalChangeNad(ConditionalChangeNad object) {
        return null;
    }

    public T caseDataDumpEntry(DataDumpEntry object) {
        return null;
    }

    public T caseFreeFormat(FreeFormat object) {
        return null;
    }

    public T caseFreeFormatEntry(FreeFormatEntry object) {
        return null;
    }

    public T caseLinEventTriggeredFrame(LinEventTriggeredFrame object) {
        return null;
    }

    public T caseLinUnconditionalFrame(LinUnconditionalFrame object) {
        return null;
    }

    public T caseLinSporadicFrame(LinSporadicFrame object) {
        return null;
    }

    public T caseSaveConfigurationEntry(SaveConfigurationEntry object) {
        return null;
    }

    public T caseUnassignFrameId(UnassignFrameId object) {
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

    public T caseFrameTriggering(FrameTriggering object) {
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

    public T defaultCase(EObject object) {
        return null;
    }
}

