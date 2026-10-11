/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar3x.system.datamapping;

import autosar3x.system.datamapping.ApplicationErrorMapping;
import autosar3x.system.datamapping.ClientIdMapping;
import autosar3x.system.datamapping.ClientServerArrayElementMapping;
import autosar3x.system.datamapping.ClientServerArrayTypeMapping;
import autosar3x.system.datamapping.ClientServerPrimitiveTypeMapping;
import autosar3x.system.datamapping.ClientServerRecordElementMapping;
import autosar3x.system.datamapping.ClientServerRecordTypeMapping;
import autosar3x.system.datamapping.ClientServerToSignalGroupMapping;
import autosar3x.system.datamapping.DatamappingPackage;
import autosar3x.system.datamapping.EmptySignalMapping;
import autosar3x.system.datamapping.IndexedArrayElement;
import autosar3x.system.datamapping.SenderRecArrayElementMapping;
import autosar3x.system.datamapping.SenderRecArrayTypeMapping;
import autosar3x.system.datamapping.SenderRecRecordElementMapping;
import autosar3x.system.datamapping.SenderRecRecordTypeMapping;
import autosar3x.system.datamapping.SenderReceiverToSignalGroupMapping;
import autosar3x.system.datamapping.SenderReceiverToSignalMapping;
import autosar3x.system.datamapping.SequenceCounterMapping;
import autosar3x.system.datamapping.impl.DatamappingFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface DatamappingFactory
extends EFactory {
    public static final DatamappingFactory eINSTANCE = DatamappingFactoryImpl.init();

    public ApplicationErrorMapping createApplicationErrorMapping();

    public ClientIdMapping createClientIdMapping();

    public ClientServerArrayElementMapping createClientServerArrayElementMapping();

    public IndexedArrayElement createIndexedArrayElement();

    public ClientServerArrayTypeMapping createClientServerArrayTypeMapping();

    public ClientServerPrimitiveTypeMapping createClientServerPrimitiveTypeMapping();

    public ClientServerRecordElementMapping createClientServerRecordElementMapping();

    public ClientServerRecordTypeMapping createClientServerRecordTypeMapping();

    public ClientServerToSignalGroupMapping createClientServerToSignalGroupMapping();

    public SequenceCounterMapping createSequenceCounterMapping();

    public EmptySignalMapping createEmptySignalMapping();

    public SenderRecArrayElementMapping createSenderRecArrayElementMapping();

    public SenderRecArrayTypeMapping createSenderRecArrayTypeMapping();

    public SenderReceiverToSignalGroupMapping createSenderReceiverToSignalGroupMapping();

    public SenderReceiverToSignalMapping createSenderReceiverToSignalMapping();

    public SenderRecRecordElementMapping createSenderRecRecordElementMapping();

    public SenderRecRecordTypeMapping createSenderRecRecordTypeMapping();

    public DatamappingPackage getDatamappingPackage();
}

