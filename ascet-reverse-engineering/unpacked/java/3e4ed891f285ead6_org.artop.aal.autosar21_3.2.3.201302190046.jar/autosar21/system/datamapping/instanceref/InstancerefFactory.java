/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar21.system.datamapping.instanceref;

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
import autosar21.system.datamapping.instanceref.impl.InstancerefFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface InstancerefFactory
extends EFactory {
    public static final InstancerefFactory eINSTANCE = InstancerefFactoryImpl.init();

    public ClientServerArrayElementMappingArrayElement createClientServerArrayElementMappingArrayElement();

    public IndexedDataPrototype createIndexedDataPrototype();

    public IndexedArrayElement createIndexedArrayElement();

    public ClientServerPrimitiveTypeMappingArgument createClientServerPrimitiveTypeMappingArgument();

    public ClientServerRecordElementMappingRecordElement createClientServerRecordElementMappingRecordElement();

    public ClientServerToSignalGroupMappingMappedOperation createClientServerToSignalGroupMappingMappedOperation();

    public SenderRecArrayElementMappingArrayElement createSenderRecArrayElementMappingArrayElement();

    public SenderReceiverToSignalGroupMappingDataElement createSenderReceiverToSignalGroupMappingDataElement();

    public SenderReceiverToSignalMappingDataElement createSenderReceiverToSignalMappingDataElement();

    public SenderRecRecordElementMappingRecordElement createSenderRecRecordElementMappingRecordElement();

    public InstancerefPackage getInstancerefPackage();
}

