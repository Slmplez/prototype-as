/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 */
package autosar40.system.datamapping.util;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.system.datamapping.ApplicationErrorMapping;
import autosar40.system.datamapping.ClientIdMapping;
import autosar40.system.datamapping.ClientServerArrayElementMapping;
import autosar40.system.datamapping.ClientServerArrayTypeMapping;
import autosar40.system.datamapping.ClientServerCompositeTypeMapping;
import autosar40.system.datamapping.ClientServerPrimitiveTypeMapping;
import autosar40.system.datamapping.ClientServerRecordElementMapping;
import autosar40.system.datamapping.ClientServerRecordTypeMapping;
import autosar40.system.datamapping.ClientServerToSignalGroupMapping;
import autosar40.system.datamapping.DataMapping;
import autosar40.system.datamapping.DatamappingPackage;
import autosar40.system.datamapping.EmptySignalMapping;
import autosar40.system.datamapping.IndexedArrayElement;
import autosar40.system.datamapping.SenderRecArrayElementMapping;
import autosar40.system.datamapping.SenderRecArrayTypeMapping;
import autosar40.system.datamapping.SenderRecCompositeTypeMapping;
import autosar40.system.datamapping.SenderRecRecordElementMapping;
import autosar40.system.datamapping.SenderRecRecordTypeMapping;
import autosar40.system.datamapping.SenderReceiverToSignalGroupMapping;
import autosar40.system.datamapping.SenderReceiverToSignalMapping;
import autosar40.system.datamapping.SequenceCounterMapping;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class DatamappingSwitch<T> {
    protected static DatamappingPackage modelPackage;

    public DatamappingSwitch() {
        if (modelPackage == null) {
            modelPackage = DatamappingPackage.eINSTANCE;
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
                ApplicationErrorMapping applicationErrorMapping = (ApplicationErrorMapping)theEObject;
                T result = this.caseApplicationErrorMapping(applicationErrorMapping);
                if (result == null) {
                    result = this.caseARObject(applicationErrorMapping);
                }
                if (result == null) {
                    result = this.caseGARObject(applicationErrorMapping);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                ClientIdMapping clientIdMapping = (ClientIdMapping)theEObject;
                T result = this.caseClientIdMapping(clientIdMapping);
                if (result == null) {
                    result = this.caseARObject(clientIdMapping);
                }
                if (result == null) {
                    result = this.caseGARObject(clientIdMapping);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 2: {
                ClientServerArrayElementMapping clientServerArrayElementMapping = (ClientServerArrayElementMapping)theEObject;
                T result = this.caseClientServerArrayElementMapping(clientServerArrayElementMapping);
                if (result == null) {
                    result = this.caseARObject(clientServerArrayElementMapping);
                }
                if (result == null) {
                    result = this.caseGARObject(clientServerArrayElementMapping);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 3: {
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
            case 4: {
                ClientServerCompositeTypeMapping clientServerCompositeTypeMapping = (ClientServerCompositeTypeMapping)theEObject;
                T result = this.caseClientServerCompositeTypeMapping(clientServerCompositeTypeMapping);
                if (result == null) {
                    result = this.caseARObject(clientServerCompositeTypeMapping);
                }
                if (result == null) {
                    result = this.caseGARObject(clientServerCompositeTypeMapping);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 5: {
                ClientServerArrayTypeMapping clientServerArrayTypeMapping = (ClientServerArrayTypeMapping)theEObject;
                T result = this.caseClientServerArrayTypeMapping(clientServerArrayTypeMapping);
                if (result == null) {
                    result = this.caseClientServerCompositeTypeMapping(clientServerArrayTypeMapping);
                }
                if (result == null) {
                    result = this.caseARObject(clientServerArrayTypeMapping);
                }
                if (result == null) {
                    result = this.caseGARObject(clientServerArrayTypeMapping);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 6: {
                ClientServerPrimitiveTypeMapping clientServerPrimitiveTypeMapping = (ClientServerPrimitiveTypeMapping)theEObject;
                T result = this.caseClientServerPrimitiveTypeMapping(clientServerPrimitiveTypeMapping);
                if (result == null) {
                    result = this.caseARObject(clientServerPrimitiveTypeMapping);
                }
                if (result == null) {
                    result = this.caseGARObject(clientServerPrimitiveTypeMapping);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 7: {
                ClientServerRecordElementMapping clientServerRecordElementMapping = (ClientServerRecordElementMapping)theEObject;
                T result = this.caseClientServerRecordElementMapping(clientServerRecordElementMapping);
                if (result == null) {
                    result = this.caseARObject(clientServerRecordElementMapping);
                }
                if (result == null) {
                    result = this.caseGARObject(clientServerRecordElementMapping);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 8: {
                ClientServerRecordTypeMapping clientServerRecordTypeMapping = (ClientServerRecordTypeMapping)theEObject;
                T result = this.caseClientServerRecordTypeMapping(clientServerRecordTypeMapping);
                if (result == null) {
                    result = this.caseClientServerCompositeTypeMapping(clientServerRecordTypeMapping);
                }
                if (result == null) {
                    result = this.caseARObject(clientServerRecordTypeMapping);
                }
                if (result == null) {
                    result = this.caseGARObject(clientServerRecordTypeMapping);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 9: {
                ClientServerToSignalGroupMapping clientServerToSignalGroupMapping = (ClientServerToSignalGroupMapping)theEObject;
                T result = this.caseClientServerToSignalGroupMapping(clientServerToSignalGroupMapping);
                if (result == null) {
                    result = this.caseDataMapping(clientServerToSignalGroupMapping);
                }
                if (result == null) {
                    result = this.caseARObject(clientServerToSignalGroupMapping);
                }
                if (result == null) {
                    result = this.caseGARObject(clientServerToSignalGroupMapping);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 10: {
                DataMapping dataMapping = (DataMapping)theEObject;
                T result = this.caseDataMapping(dataMapping);
                if (result == null) {
                    result = this.caseARObject(dataMapping);
                }
                if (result == null) {
                    result = this.caseGARObject(dataMapping);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 11: {
                EmptySignalMapping emptySignalMapping = (EmptySignalMapping)theEObject;
                T result = this.caseEmptySignalMapping(emptySignalMapping);
                if (result == null) {
                    result = this.caseARObject(emptySignalMapping);
                }
                if (result == null) {
                    result = this.caseGARObject(emptySignalMapping);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 12: {
                SequenceCounterMapping sequenceCounterMapping = (SequenceCounterMapping)theEObject;
                T result = this.caseSequenceCounterMapping(sequenceCounterMapping);
                if (result == null) {
                    result = this.caseARObject(sequenceCounterMapping);
                }
                if (result == null) {
                    result = this.caseGARObject(sequenceCounterMapping);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 13: {
                SenderRecArrayElementMapping senderRecArrayElementMapping = (SenderRecArrayElementMapping)theEObject;
                T result = this.caseSenderRecArrayElementMapping(senderRecArrayElementMapping);
                if (result == null) {
                    result = this.caseARObject(senderRecArrayElementMapping);
                }
                if (result == null) {
                    result = this.caseGARObject(senderRecArrayElementMapping);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 14: {
                SenderRecCompositeTypeMapping senderRecCompositeTypeMapping = (SenderRecCompositeTypeMapping)theEObject;
                T result = this.caseSenderRecCompositeTypeMapping(senderRecCompositeTypeMapping);
                if (result == null) {
                    result = this.caseARObject(senderRecCompositeTypeMapping);
                }
                if (result == null) {
                    result = this.caseGARObject(senderRecCompositeTypeMapping);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 15: {
                SenderRecArrayTypeMapping senderRecArrayTypeMapping = (SenderRecArrayTypeMapping)theEObject;
                T result = this.caseSenderRecArrayTypeMapping(senderRecArrayTypeMapping);
                if (result == null) {
                    result = this.caseSenderRecCompositeTypeMapping(senderRecArrayTypeMapping);
                }
                if (result == null) {
                    result = this.caseARObject(senderRecArrayTypeMapping);
                }
                if (result == null) {
                    result = this.caseGARObject(senderRecArrayTypeMapping);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 16: {
                SenderReceiverToSignalGroupMapping senderReceiverToSignalGroupMapping = (SenderReceiverToSignalGroupMapping)theEObject;
                T result = this.caseSenderReceiverToSignalGroupMapping(senderReceiverToSignalGroupMapping);
                if (result == null) {
                    result = this.caseDataMapping(senderReceiverToSignalGroupMapping);
                }
                if (result == null) {
                    result = this.caseARObject(senderReceiverToSignalGroupMapping);
                }
                if (result == null) {
                    result = this.caseGARObject(senderReceiverToSignalGroupMapping);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 17: {
                SenderReceiverToSignalMapping senderReceiverToSignalMapping = (SenderReceiverToSignalMapping)theEObject;
                T result = this.caseSenderReceiverToSignalMapping(senderReceiverToSignalMapping);
                if (result == null) {
                    result = this.caseDataMapping(senderReceiverToSignalMapping);
                }
                if (result == null) {
                    result = this.caseARObject(senderReceiverToSignalMapping);
                }
                if (result == null) {
                    result = this.caseGARObject(senderReceiverToSignalMapping);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 18: {
                SenderRecRecordElementMapping senderRecRecordElementMapping = (SenderRecRecordElementMapping)theEObject;
                T result = this.caseSenderRecRecordElementMapping(senderRecRecordElementMapping);
                if (result == null) {
                    result = this.caseARObject(senderRecRecordElementMapping);
                }
                if (result == null) {
                    result = this.caseGARObject(senderRecRecordElementMapping);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 19: {
                SenderRecRecordTypeMapping senderRecRecordTypeMapping = (SenderRecRecordTypeMapping)theEObject;
                T result = this.caseSenderRecRecordTypeMapping(senderRecRecordTypeMapping);
                if (result == null) {
                    result = this.caseSenderRecCompositeTypeMapping(senderRecRecordTypeMapping);
                }
                if (result == null) {
                    result = this.caseARObject(senderRecRecordTypeMapping);
                }
                if (result == null) {
                    result = this.caseGARObject(senderRecRecordTypeMapping);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseApplicationErrorMapping(ApplicationErrorMapping object) {
        return null;
    }

    public T caseClientIdMapping(ClientIdMapping object) {
        return null;
    }

    public T caseClientServerArrayElementMapping(ClientServerArrayElementMapping object) {
        return null;
    }

    public T caseIndexedArrayElement(IndexedArrayElement object) {
        return null;
    }

    public T caseClientServerCompositeTypeMapping(ClientServerCompositeTypeMapping object) {
        return null;
    }

    public T caseClientServerArrayTypeMapping(ClientServerArrayTypeMapping object) {
        return null;
    }

    public T caseClientServerPrimitiveTypeMapping(ClientServerPrimitiveTypeMapping object) {
        return null;
    }

    public T caseClientServerRecordElementMapping(ClientServerRecordElementMapping object) {
        return null;
    }

    public T caseClientServerRecordTypeMapping(ClientServerRecordTypeMapping object) {
        return null;
    }

    public T caseClientServerToSignalGroupMapping(ClientServerToSignalGroupMapping object) {
        return null;
    }

    public T caseDataMapping(DataMapping object) {
        return null;
    }

    public T caseEmptySignalMapping(EmptySignalMapping object) {
        return null;
    }

    public T caseSequenceCounterMapping(SequenceCounterMapping object) {
        return null;
    }

    public T caseSenderRecArrayElementMapping(SenderRecArrayElementMapping object) {
        return null;
    }

    public T caseSenderRecCompositeTypeMapping(SenderRecCompositeTypeMapping object) {
        return null;
    }

    public T caseSenderRecArrayTypeMapping(SenderRecArrayTypeMapping object) {
        return null;
    }

    public T caseSenderReceiverToSignalGroupMapping(SenderReceiverToSignalGroupMapping object) {
        return null;
    }

    public T caseSenderReceiverToSignalMapping(SenderReceiverToSignalMapping object) {
        return null;
    }

    public T caseSenderRecRecordElementMapping(SenderRecRecordElementMapping object) {
        return null;
    }

    public T caseSenderRecRecordTypeMapping(SenderRecRecordTypeMapping object) {
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

