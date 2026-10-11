/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar40.system.datamapping;

import autosar40.system.datamapping.ApplicationErrorMapping;
import autosar40.system.datamapping.ClientIdMapping;
import autosar40.system.datamapping.ClientServerArrayElementMapping;
import autosar40.system.datamapping.ClientServerArrayTypeMapping;
import autosar40.system.datamapping.ClientServerPrimitiveTypeMapping;
import autosar40.system.datamapping.ClientServerRecordElementMapping;
import autosar40.system.datamapping.ClientServerRecordTypeMapping;
import autosar40.system.datamapping.ClientServerToSignalGroupMapping;
import autosar40.system.datamapping.DatamappingPackage;
import autosar40.system.datamapping.EmptySignalMapping;
import autosar40.system.datamapping.IndexedArrayElement;
import autosar40.system.datamapping.SenderRecArrayElementMapping;
import autosar40.system.datamapping.SenderRecArrayTypeMapping;
import autosar40.system.datamapping.SenderRecRecordElementMapping;
import autosar40.system.datamapping.SenderRecRecordTypeMapping;
import autosar40.system.datamapping.SenderReceiverToSignalGroupMapping;
import autosar40.system.datamapping.SenderReceiverToSignalMapping;
import autosar40.system.datamapping.SequenceCounterMapping;
import autosar40.system.datamapping.impl.DatamappingFactoryImpl;
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

    public EmptySignalMapping createEmptySignalMapping();

    public SequenceCounterMapping createSequenceCounterMapping();

    public SenderRecArrayElementMapping createSenderRecArrayElementMapping();

    public SenderRecArrayTypeMapping createSenderRecArrayTypeMapping();

    public SenderReceiverToSignalGroupMapping createSenderReceiverToSignalGroupMapping();

    public SenderReceiverToSignalMapping createSenderReceiverToSignalMapping();

    public SenderRecRecordElementMapping createSenderRecRecordElementMapping();

    public SenderRecRecordTypeMapping createSenderRecRecordTypeMapping();

    public DatamappingPackage getDatamappingPackage();
}

