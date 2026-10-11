/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 */
package autosar21.swcomponent.communication.instanceref.util;

import autosar21.genericstructure.infrastructure.ARObject;
import autosar21.swcomponent.communication.instanceref.ClientComSpecOperation;
import autosar21.swcomponent.communication.instanceref.ClientServerConnectorComSpecOperation;
import autosar21.swcomponent.communication.instanceref.InstancerefPackage;
import autosar21.swcomponent.communication.instanceref.ModeSwitchComSpecModeDeclarationGroupPrototype;
import autosar21.swcomponent.communication.instanceref.ReceiverComSpecDataElement;
import autosar21.swcomponent.communication.instanceref.SenderComSpecDataElement;
import autosar21.swcomponent.communication.instanceref.SenderReceiverConnectorComSpecDataElement;
import autosar21.swcomponent.communication.instanceref.ServerComSpecOperation;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class InstancerefSwitch<T> {
    protected static InstancerefPackage modelPackage;

    public InstancerefSwitch() {
        if (modelPackage == null) {
            modelPackage = InstancerefPackage.eINSTANCE;
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
                ClientComSpecOperation clientComSpecOperation = (ClientComSpecOperation)theEObject;
                T result = this.caseClientComSpecOperation(clientComSpecOperation);
                if (result == null) {
                    result = this.caseARObject(clientComSpecOperation);
                }
                if (result == null) {
                    result = this.caseGARObject(clientComSpecOperation);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                ClientServerConnectorComSpecOperation clientServerConnectorComSpecOperation = (ClientServerConnectorComSpecOperation)theEObject;
                T result = this.caseClientServerConnectorComSpecOperation(clientServerConnectorComSpecOperation);
                if (result == null) {
                    result = this.caseARObject(clientServerConnectorComSpecOperation);
                }
                if (result == null) {
                    result = this.caseGARObject(clientServerConnectorComSpecOperation);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 2: {
                ModeSwitchComSpecModeDeclarationGroupPrototype modeSwitchComSpecModeDeclarationGroupPrototype = (ModeSwitchComSpecModeDeclarationGroupPrototype)theEObject;
                T result = this.caseModeSwitchComSpecModeDeclarationGroupPrototype(modeSwitchComSpecModeDeclarationGroupPrototype);
                if (result == null) {
                    result = this.caseARObject(modeSwitchComSpecModeDeclarationGroupPrototype);
                }
                if (result == null) {
                    result = this.caseGARObject(modeSwitchComSpecModeDeclarationGroupPrototype);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 3: {
                ReceiverComSpecDataElement receiverComSpecDataElement = (ReceiverComSpecDataElement)theEObject;
                T result = this.caseReceiverComSpecDataElement(receiverComSpecDataElement);
                if (result == null) {
                    result = this.caseARObject(receiverComSpecDataElement);
                }
                if (result == null) {
                    result = this.caseGARObject(receiverComSpecDataElement);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 4: {
                SenderComSpecDataElement senderComSpecDataElement = (SenderComSpecDataElement)theEObject;
                T result = this.caseSenderComSpecDataElement(senderComSpecDataElement);
                if (result == null) {
                    result = this.caseARObject(senderComSpecDataElement);
                }
                if (result == null) {
                    result = this.caseGARObject(senderComSpecDataElement);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 5: {
                SenderReceiverConnectorComSpecDataElement senderReceiverConnectorComSpecDataElement = (SenderReceiverConnectorComSpecDataElement)theEObject;
                T result = this.caseSenderReceiverConnectorComSpecDataElement(senderReceiverConnectorComSpecDataElement);
                if (result == null) {
                    result = this.caseARObject(senderReceiverConnectorComSpecDataElement);
                }
                if (result == null) {
                    result = this.caseGARObject(senderReceiverConnectorComSpecDataElement);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 6: {
                ServerComSpecOperation serverComSpecOperation = (ServerComSpecOperation)theEObject;
                T result = this.caseServerComSpecOperation(serverComSpecOperation);
                if (result == null) {
                    result = this.caseARObject(serverComSpecOperation);
                }
                if (result == null) {
                    result = this.caseGARObject(serverComSpecOperation);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseClientComSpecOperation(ClientComSpecOperation object) {
        return null;
    }

    public T caseClientServerConnectorComSpecOperation(ClientServerConnectorComSpecOperation object) {
        return null;
    }

    public T caseModeSwitchComSpecModeDeclarationGroupPrototype(ModeSwitchComSpecModeDeclarationGroupPrototype object) {
        return null;
    }

    public T caseReceiverComSpecDataElement(ReceiverComSpecDataElement object) {
        return null;
    }

    public T caseSenderComSpecDataElement(SenderComSpecDataElement object) {
        return null;
    }

    public T caseSenderReceiverConnectorComSpecDataElement(SenderReceiverConnectorComSpecDataElement object) {
        return null;
    }

    public T caseServerComSpecOperation(ServerComSpecOperation object) {
        return null;
    }

    public T caseGARObject(GARObject object) {
        return null;
    }

    public T caseARObject(ARObject object) {
        return null;
    }

    public T defaultCase(EObject object) {
        return null;
    }
}

