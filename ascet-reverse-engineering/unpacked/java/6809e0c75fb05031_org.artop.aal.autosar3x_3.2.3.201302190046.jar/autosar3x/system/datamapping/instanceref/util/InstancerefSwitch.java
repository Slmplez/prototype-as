/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 */
package autosar3x.system.datamapping.instanceref.util;

import autosar3x.genericstructure.infrastructure.ARObject;
import autosar3x.system.datamapping.instanceref.ClientServerToSignalGroupMappingMappedOperation;
import autosar3x.system.datamapping.instanceref.InstancerefPackage;
import autosar3x.system.datamapping.instanceref.SenderReceiverToSignalGroupMappingDataElement;
import autosar3x.system.datamapping.instanceref.SenderReceiverToSignalMappingDataElement;
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
                SenderReceiverToSignalGroupMappingDataElement senderReceiverToSignalGroupMappingDataElement = (SenderReceiverToSignalGroupMappingDataElement)theEObject;
                T result = this.caseSenderReceiverToSignalGroupMappingDataElement(senderReceiverToSignalGroupMappingDataElement);
                if (result == null) {
                    result = this.caseARObject(senderReceiverToSignalGroupMappingDataElement);
                }
                if (result == null) {
                    result = this.caseGARObject(senderReceiverToSignalGroupMappingDataElement);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                SenderReceiverToSignalMappingDataElement senderReceiverToSignalMappingDataElement = (SenderReceiverToSignalMappingDataElement)theEObject;
                T result = this.caseSenderReceiverToSignalMappingDataElement(senderReceiverToSignalMappingDataElement);
                if (result == null) {
                    result = this.caseARObject(senderReceiverToSignalMappingDataElement);
                }
                if (result == null) {
                    result = this.caseGARObject(senderReceiverToSignalMappingDataElement);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 2: {
                ClientServerToSignalGroupMappingMappedOperation clientServerToSignalGroupMappingMappedOperation = (ClientServerToSignalGroupMappingMappedOperation)theEObject;
                T result = this.caseClientServerToSignalGroupMappingMappedOperation(clientServerToSignalGroupMappingMappedOperation);
                if (result == null) {
                    result = this.caseARObject(clientServerToSignalGroupMappingMappedOperation);
                }
                if (result == null) {
                    result = this.caseGARObject(clientServerToSignalGroupMappingMappedOperation);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseSenderReceiverToSignalGroupMappingDataElement(SenderReceiverToSignalGroupMappingDataElement object) {
        return null;
    }

    public T caseSenderReceiverToSignalMappingDataElement(SenderReceiverToSignalMappingDataElement object) {
        return null;
    }

    public T caseClientServerToSignalGroupMappingMappedOperation(ClientServerToSignalGroupMappingMappedOperation object) {
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

