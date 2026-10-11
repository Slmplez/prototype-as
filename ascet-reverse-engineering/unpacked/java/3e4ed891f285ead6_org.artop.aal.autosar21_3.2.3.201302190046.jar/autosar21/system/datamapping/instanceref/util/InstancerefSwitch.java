/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 */
package autosar21.system.datamapping.instanceref.util;

import autosar21.genericstructure.infrastructure.ARObject;
import autosar21.system.datamapping.instanceref.ClientServerArrayElementMappingArrayElement;
import autosar21.system.datamapping.instanceref.ClientServerPrimitiveTypeMappingArgument;
import autosar21.system.datamapping.instanceref.ClientServerRecordElementMappingRecordElement;
import autosar21.system.datamapping.instanceref.ClientServerToSignalGroupMappingMappedOperation;
import autosar21.system.datamapping.instanceref.IndexedArrayElement;
import autosar21.system.datamapping.instanceref.IndexedDataPrototype;
import autosar21.system.datamapping.instanceref.InstancerefPackage;
import autosar21.system.datamapping.instanceref.SenderRecArrayElementMappingArrayElement;
import autosar21.system.datamapping.instanceref.SenderRecRecordElementMappingRecordElement;
import autosar21.system.datamapping.instanceref.SenderReceiverToSignalGroupMappingDataElement;
import autosar21.system.datamapping.instanceref.SenderReceiverToSignalMappingDataElement;
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
                ClientServerArrayElementMappingArrayElement clientServerArrayElementMappingArrayElement = (ClientServerArrayElementMappingArrayElement)theEObject;
                T result = this.caseClientServerArrayElementMappingArrayElement(clientServerArrayElementMappingArrayElement);
                if (result == null) {
                    result = this.caseARObject(clientServerArrayElementMappingArrayElement);
                }
                if (result == null) {
                    result = this.caseGARObject(clientServerArrayElementMappingArrayElement);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                IndexedDataPrototype indexedDataPrototype = (IndexedDataPrototype)theEObject;
                T result = this.caseIndexedDataPrototype(indexedDataPrototype);
                if (result == null) {
                    result = this.caseARObject(indexedDataPrototype);
                }
                if (result == null) {
                    result = this.caseGARObject(indexedDataPrototype);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 2: {
                IndexedArrayElement indexedArrayElement = (IndexedArrayElement)theEObject;
                T result = this.caseIndexedArrayElement(indexedArrayElement);
                if (result == null) {
                    result = this.caseARObject(indexedArrayElement);
                }
                if (result == null) {
                    result = this.caseGARObject(indexedArrayElement);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 3: {
                ClientServerPrimitiveTypeMappingArgument clientServerPrimitiveTypeMappingArgument = (ClientServerPrimitiveTypeMappingArgument)theEObject;
                T result = this.caseClientServerPrimitiveTypeMappingArgument(clientServerPrimitiveTypeMappingArgument);
                if (result == null) {
                    result = this.caseARObject(clientServerPrimitiveTypeMappingArgument);
                }
                if (result == null) {
                    result = this.caseGARObject(clientServerPrimitiveTypeMappingArgument);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 4: {
                ClientServerRecordElementMappingRecordElement clientServerRecordElementMappingRecordElement = (ClientServerRecordElementMappingRecordElement)theEObject;
                T result = this.caseClientServerRecordElementMappingRecordElement(clientServerRecordElementMappingRecordElement);
                if (result == null) {
                    result = this.caseARObject(clientServerRecordElementMappingRecordElement);
                }
                if (result == null) {
                    result = this.caseGARObject(clientServerRecordElementMappingRecordElement);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 5: {
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
            case 6: {
                SenderRecArrayElementMappingArrayElement senderRecArrayElementMappingArrayElement = (SenderRecArrayElementMappingArrayElement)theEObject;
                T result = this.caseSenderRecArrayElementMappingArrayElement(senderRecArrayElementMappingArrayElement);
                if (result == null) {
                    result = this.caseARObject(senderRecArrayElementMappingArrayElement);
                }
                if (result == null) {
                    result = this.caseGARObject(senderRecArrayElementMappingArrayElement);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 7: {
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
            case 8: {
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
            case 9: {
                SenderRecRecordElementMappingRecordElement senderRecRecordElementMappingRecordElement = (SenderRecRecordElementMappingRecordElement)theEObject;
                T result = this.caseSenderRecRecordElementMappingRecordElement(senderRecRecordElementMappingRecordElement);
                if (result == null) {
                    result = this.caseARObject(senderRecRecordElementMappingRecordElement);
                }
                if (result == null) {
                    result = this.caseGARObject(senderRecRecordElementMappingRecordElement);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseClientServerArrayElementMappingArrayElement(ClientServerArrayElementMappingArrayElement object) {
        return null;
    }

    public T caseIndexedDataPrototype(IndexedDataPrototype object) {
        return null;
    }

    public T caseIndexedArrayElement(IndexedArrayElement object) {
        return null;
    }

    public T caseClientServerPrimitiveTypeMappingArgument(ClientServerPrimitiveTypeMappingArgument object) {
        return null;
    }

    public T caseClientServerRecordElementMappingRecordElement(ClientServerRecordElementMappingRecordElement object) {
        return null;
    }

    public T caseClientServerToSignalGroupMappingMappedOperation(ClientServerToSignalGroupMappingMappedOperation object) {
        return null;
    }

    public T caseSenderRecArrayElementMappingArrayElement(SenderRecArrayElementMappingArrayElement object) {
        return null;
    }

    public T caseSenderReceiverToSignalGroupMappingDataElement(SenderReceiverToSignalGroupMappingDataElement object) {
        return null;
    }

    public T caseSenderReceiverToSignalMappingDataElement(SenderReceiverToSignalMappingDataElement object) {
        return null;
    }

    public T caseSenderRecRecordElementMappingRecordElement(SenderRecRecordElementMappingRecordElement object) {
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

