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
package autosar21.system.communication.util;

import autosar21.genericstructure.infrastructure.ARObject;
import autosar21.genericstructure.infrastructure.NonSplitableElement;
import autosar21.genericstructure.infrastructure.PackageableElement;
import autosar21.genericstructure.infrastructure.identifiable.ARElement;
import autosar21.genericstructure.infrastructure.identifiable.Identifiable;
import autosar21.system.communication.AbsolutelyScheduledTiming;
import autosar21.system.communication.ActiveCondition;
import autosar21.system.communication.CanFrame;
import autosar21.system.communication.CommunicationMatrixType;
import autosar21.system.communication.CommunicationPackage;
import autosar21.system.communication.CyclicTiming;
import autosar21.system.communication.EventControlledTiming;
import autosar21.system.communication.EventTriggeredFrameSlot;
import autosar21.system.communication.FlexrayFrame;
import autosar21.system.communication.Frame;
import autosar21.system.communication.FreeTextCondition;
import autosar21.system.communication.GatewayEntry;
import autosar21.system.communication.GatewayType;
import autosar21.system.communication.LinFrame;
import autosar21.system.communication.LinSchedulingTable;
import autosar21.system.communication.LinSchedulingTableEntry;
import autosar21.system.communication.PDUGatewayEntry;
import autosar21.system.communication.PDUPrototype;
import autosar21.system.communication.RelativelyScheduledTiming;
import autosar21.system.communication.RequestControlledTiming;
import autosar21.system.communication.SendCondition;
import autosar21.system.communication.SignalGatewayEntry;
import autosar21.system.communication.SignalTrigger;
import autosar21.system.communication.SporadicFrameSlot;
import autosar21.system.communication.StartCondition;
import autosar21.system.communication.StopCondition;
import autosar21.system.communication.SystemStateTrigger;
import autosar21.system.communication.Timing;
import autosar21.system.communication.UnconditionalFrameSlot;
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
public class CommunicationSwitch<T> {
    protected static CommunicationPackage modelPackage;

    public CommunicationSwitch() {
        if (modelPackage == null) {
            modelPackage = CommunicationPackage.eINSTANCE;
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
                PDUPrototype pduPrototype = (PDUPrototype)theEObject;
                T result = this.casePDUPrototype(pduPrototype);
                if (result == null) {
                    result = this.caseIdentifiable(pduPrototype);
                }
                if (result == null) {
                    result = this.caseARObject(pduPrototype);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(pduPrototype);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)pduPrototype);
                }
                if (result == null) {
                    result = this.caseGARObject(pduPrototype);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                Timing timing = (Timing)theEObject;
                T result = this.caseTiming(timing);
                if (result == null) {
                    result = this.caseARObject(timing);
                }
                if (result == null) {
                    result = this.caseGARObject(timing);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 2: {
                FreeTextCondition freeTextCondition = (FreeTextCondition)theEObject;
                T result = this.caseFreeTextCondition(freeTextCondition);
                if (result == null) {
                    result = this.caseARObject(freeTextCondition);
                }
                if (result == null) {
                    result = this.caseGARObject(freeTextCondition);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 3: {
                CommunicationMatrixType communicationMatrixType = (CommunicationMatrixType)theEObject;
                T result = this.caseCommunicationMatrixType(communicationMatrixType);
                if (result == null) {
                    result = this.caseARElement(communicationMatrixType);
                }
                if (result == null) {
                    result = this.caseNonSplitableElement(communicationMatrixType);
                }
                if (result == null) {
                    result = this.casePackageableElement(communicationMatrixType);
                }
                if (result == null) {
                    result = this.caseIdentifiable(communicationMatrixType);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(communicationMatrixType);
                }
                if (result == null) {
                    result = this.caseARObject(communicationMatrixType);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(communicationMatrixType);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)communicationMatrixType);
                }
                if (result == null) {
                    result = this.caseGARObject(communicationMatrixType);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 4: {
                LinSchedulingTable linSchedulingTable = (LinSchedulingTable)theEObject;
                T result = this.caseLinSchedulingTable(linSchedulingTable);
                if (result == null) {
                    result = this.caseIdentifiable(linSchedulingTable);
                }
                if (result == null) {
                    result = this.caseARObject(linSchedulingTable);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(linSchedulingTable);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)linSchedulingTable);
                }
                if (result == null) {
                    result = this.caseGARObject(linSchedulingTable);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 5: {
                LinSchedulingTableEntry linSchedulingTableEntry = (LinSchedulingTableEntry)theEObject;
                T result = this.caseLinSchedulingTableEntry(linSchedulingTableEntry);
                if (result == null) {
                    result = this.caseARObject(linSchedulingTableEntry);
                }
                if (result == null) {
                    result = this.caseGARObject(linSchedulingTableEntry);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 6: {
                Frame frame = (Frame)theEObject;
                T result = this.caseFrame(frame);
                if (result == null) {
                    result = this.caseIdentifiable(frame);
                }
                if (result == null) {
                    result = this.caseARObject(frame);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(frame);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)frame);
                }
                if (result == null) {
                    result = this.caseGARObject(frame);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 7: {
                AbsolutelyScheduledTiming absolutelyScheduledTiming = (AbsolutelyScheduledTiming)theEObject;
                T result = this.caseAbsolutelyScheduledTiming(absolutelyScheduledTiming);
                if (result == null) {
                    result = this.caseTiming(absolutelyScheduledTiming);
                }
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
            case 8: {
                ActiveCondition activeCondition = (ActiveCondition)theEObject;
                T result = this.caseActiveCondition(activeCondition);
                if (result == null) {
                    result = this.caseARObject(activeCondition);
                }
                if (result == null) {
                    result = this.caseGARObject(activeCondition);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 9: {
                SystemStateTrigger systemStateTrigger = (SystemStateTrigger)theEObject;
                T result = this.caseSystemStateTrigger(systemStateTrigger);
                if (result == null) {
                    result = this.caseARObject(systemStateTrigger);
                }
                if (result == null) {
                    result = this.caseGARObject(systemStateTrigger);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 10: {
                CanFrame canFrame = (CanFrame)theEObject;
                T result = this.caseCanFrame(canFrame);
                if (result == null) {
                    result = this.caseFrame(canFrame);
                }
                if (result == null) {
                    result = this.caseIdentifiable(canFrame);
                }
                if (result == null) {
                    result = this.caseARObject(canFrame);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(canFrame);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)canFrame);
                }
                if (result == null) {
                    result = this.caseGARObject(canFrame);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 11: {
                CyclicTiming cyclicTiming = (CyclicTiming)theEObject;
                T result = this.caseCyclicTiming(cyclicTiming);
                if (result == null) {
                    result = this.caseTiming(cyclicTiming);
                }
                if (result == null) {
                    result = this.caseARObject(cyclicTiming);
                }
                if (result == null) {
                    result = this.caseGARObject(cyclicTiming);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 12: {
                StopCondition stopCondition = (StopCondition)theEObject;
                T result = this.caseStopCondition(stopCondition);
                if (result == null) {
                    result = this.caseARObject(stopCondition);
                }
                if (result == null) {
                    result = this.caseGARObject(stopCondition);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 13: {
                SignalTrigger signalTrigger = (SignalTrigger)theEObject;
                T result = this.caseSignalTrigger(signalTrigger);
                if (result == null) {
                    result = this.caseARObject(signalTrigger);
                }
                if (result == null) {
                    result = this.caseGARObject(signalTrigger);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 14: {
                StartCondition startCondition = (StartCondition)theEObject;
                T result = this.caseStartCondition(startCondition);
                if (result == null) {
                    result = this.caseARObject(startCondition);
                }
                if (result == null) {
                    result = this.caseGARObject(startCondition);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 15: {
                EventControlledTiming eventControlledTiming = (EventControlledTiming)theEObject;
                T result = this.caseEventControlledTiming(eventControlledTiming);
                if (result == null) {
                    result = this.caseTiming(eventControlledTiming);
                }
                if (result == null) {
                    result = this.caseARObject(eventControlledTiming);
                }
                if (result == null) {
                    result = this.caseGARObject(eventControlledTiming);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 16: {
                SendCondition sendCondition = (SendCondition)theEObject;
                T result = this.caseSendCondition(sendCondition);
                if (result == null) {
                    result = this.caseARObject(sendCondition);
                }
                if (result == null) {
                    result = this.caseGARObject(sendCondition);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 17: {
                EventTriggeredFrameSlot eventTriggeredFrameSlot = (EventTriggeredFrameSlot)theEObject;
                T result = this.caseEventTriggeredFrameSlot(eventTriggeredFrameSlot);
                if (result == null) {
                    result = this.caseLinSchedulingTableEntry(eventTriggeredFrameSlot);
                }
                if (result == null) {
                    result = this.caseARObject(eventTriggeredFrameSlot);
                }
                if (result == null) {
                    result = this.caseGARObject(eventTriggeredFrameSlot);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 18: {
                LinFrame linFrame = (LinFrame)theEObject;
                T result = this.caseLinFrame(linFrame);
                if (result == null) {
                    result = this.caseFrame(linFrame);
                }
                if (result == null) {
                    result = this.caseIdentifiable(linFrame);
                }
                if (result == null) {
                    result = this.caseARObject(linFrame);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(linFrame);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)linFrame);
                }
                if (result == null) {
                    result = this.caseGARObject(linFrame);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 19: {
                FlexrayFrame flexrayFrame = (FlexrayFrame)theEObject;
                T result = this.caseFlexrayFrame(flexrayFrame);
                if (result == null) {
                    result = this.caseFrame(flexrayFrame);
                }
                if (result == null) {
                    result = this.caseIdentifiable(flexrayFrame);
                }
                if (result == null) {
                    result = this.caseARObject(flexrayFrame);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(flexrayFrame);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)flexrayFrame);
                }
                if (result == null) {
                    result = this.caseGARObject(flexrayFrame);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 20: {
                GatewayEntry gatewayEntry = (GatewayEntry)theEObject;
                T result = this.caseGatewayEntry(gatewayEntry);
                if (result == null) {
                    result = this.caseARObject(gatewayEntry);
                }
                if (result == null) {
                    result = this.caseGARObject(gatewayEntry);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 21: {
                GatewayType gatewayType = (GatewayType)theEObject;
                T result = this.caseGatewayType(gatewayType);
                if (result == null) {
                    result = this.caseARElement(gatewayType);
                }
                if (result == null) {
                    result = this.caseNonSplitableElement(gatewayType);
                }
                if (result == null) {
                    result = this.casePackageableElement(gatewayType);
                }
                if (result == null) {
                    result = this.caseIdentifiable(gatewayType);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(gatewayType);
                }
                if (result == null) {
                    result = this.caseARObject(gatewayType);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(gatewayType);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)gatewayType);
                }
                if (result == null) {
                    result = this.caseGARObject(gatewayType);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 22: {
                PDUGatewayEntry pduGatewayEntry = (PDUGatewayEntry)theEObject;
                T result = this.casePDUGatewayEntry(pduGatewayEntry);
                if (result == null) {
                    result = this.caseGatewayEntry(pduGatewayEntry);
                }
                if (result == null) {
                    result = this.caseARObject(pduGatewayEntry);
                }
                if (result == null) {
                    result = this.caseGARObject(pduGatewayEntry);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 23: {
                RelativelyScheduledTiming relativelyScheduledTiming = (RelativelyScheduledTiming)theEObject;
                T result = this.caseRelativelyScheduledTiming(relativelyScheduledTiming);
                if (result == null) {
                    result = this.caseTiming(relativelyScheduledTiming);
                }
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
            case 24: {
                RequestControlledTiming requestControlledTiming = (RequestControlledTiming)theEObject;
                T result = this.caseRequestControlledTiming(requestControlledTiming);
                if (result == null) {
                    result = this.caseTiming(requestControlledTiming);
                }
                if (result == null) {
                    result = this.caseARObject(requestControlledTiming);
                }
                if (result == null) {
                    result = this.caseGARObject(requestControlledTiming);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 25: {
                SignalGatewayEntry signalGatewayEntry = (SignalGatewayEntry)theEObject;
                T result = this.caseSignalGatewayEntry(signalGatewayEntry);
                if (result == null) {
                    result = this.caseGatewayEntry(signalGatewayEntry);
                }
                if (result == null) {
                    result = this.caseARObject(signalGatewayEntry);
                }
                if (result == null) {
                    result = this.caseGARObject(signalGatewayEntry);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 26: {
                SporadicFrameSlot sporadicFrameSlot = (SporadicFrameSlot)theEObject;
                T result = this.caseSporadicFrameSlot(sporadicFrameSlot);
                if (result == null) {
                    result = this.caseLinSchedulingTableEntry(sporadicFrameSlot);
                }
                if (result == null) {
                    result = this.caseARObject(sporadicFrameSlot);
                }
                if (result == null) {
                    result = this.caseGARObject(sporadicFrameSlot);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 27: {
                UnconditionalFrameSlot unconditionalFrameSlot = (UnconditionalFrameSlot)theEObject;
                T result = this.caseUnconditionalFrameSlot(unconditionalFrameSlot);
                if (result == null) {
                    result = this.caseLinSchedulingTableEntry(unconditionalFrameSlot);
                }
                if (result == null) {
                    result = this.caseARObject(unconditionalFrameSlot);
                }
                if (result == null) {
                    result = this.caseGARObject(unconditionalFrameSlot);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T casePDUPrototype(PDUPrototype object) {
        return null;
    }

    public T caseTiming(Timing object) {
        return null;
    }

    public T caseFreeTextCondition(FreeTextCondition object) {
        return null;
    }

    public T caseCommunicationMatrixType(CommunicationMatrixType object) {
        return null;
    }

    public T caseLinSchedulingTable(LinSchedulingTable object) {
        return null;
    }

    public T caseLinSchedulingTableEntry(LinSchedulingTableEntry object) {
        return null;
    }

    public T caseFrame(Frame object) {
        return null;
    }

    public T caseAbsolutelyScheduledTiming(AbsolutelyScheduledTiming object) {
        return null;
    }

    public T caseActiveCondition(ActiveCondition object) {
        return null;
    }

    public T caseSystemStateTrigger(SystemStateTrigger object) {
        return null;
    }

    public T caseCanFrame(CanFrame object) {
        return null;
    }

    public T caseCyclicTiming(CyclicTiming object) {
        return null;
    }

    public T caseStopCondition(StopCondition object) {
        return null;
    }

    public T caseSignalTrigger(SignalTrigger object) {
        return null;
    }

    public T caseStartCondition(StartCondition object) {
        return null;
    }

    public T caseEventControlledTiming(EventControlledTiming object) {
        return null;
    }

    public T caseSendCondition(SendCondition object) {
        return null;
    }

    public T caseEventTriggeredFrameSlot(EventTriggeredFrameSlot object) {
        return null;
    }

    public T caseLinFrame(LinFrame object) {
        return null;
    }

    public T caseFlexrayFrame(FlexrayFrame object) {
        return null;
    }

    public T caseGatewayEntry(GatewayEntry object) {
        return null;
    }

    public T caseGatewayType(GatewayType object) {
        return null;
    }

    public T casePDUGatewayEntry(PDUGatewayEntry object) {
        return null;
    }

    public T caseRelativelyScheduledTiming(RelativelyScheduledTiming object) {
        return null;
    }

    public T caseRequestControlledTiming(RequestControlledTiming object) {
        return null;
    }

    public T caseSignalGatewayEntry(SignalGatewayEntry object) {
        return null;
    }

    public T caseSporadicFrameSlot(SporadicFrameSlot object) {
        return null;
    }

    public T caseUnconditionalFrameSlot(UnconditionalFrameSlot object) {
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

    public T caseGPackageableElement(GPackageableElement object) {
        return null;
    }

    public T casePackageableElement(PackageableElement object) {
        return null;
    }

    public T caseNonSplitableElement(NonSplitableElement object) {
        return null;
    }

    public T caseARElement(ARElement object) {
        return null;
    }

    public T defaultCase(EObject object) {
        return null;
    }
}

