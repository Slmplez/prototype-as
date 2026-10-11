/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar21.system.datamapping;

import autosar21.system.datamapping.ApplicationErrorMapping;
import autosar21.system.datamapping.ClientIdMapping;
import autosar21.system.datamapping.ClientServerArrayElementMapping;
import autosar21.system.datamapping.ClientServerArrayTypeMapping;
import autosar21.system.datamapping.ClientServerPrimitiveTypeMapping;
import autosar21.system.datamapping.ClientServerRecordElementMapping;
import autosar21.system.datamapping.ClientServerRecordTypeMapping;
import autosar21.system.datamapping.ClientServerToSignalGroupMapping;
import autosar21.system.datamapping.DatamappingPackage;
import autosar21.system.datamapping.EmptySignalMapping;
import autosar21.system.datamapping.SenderRecArrayElementMapping;
import autosar21.system.datamapping.SenderRecArrayTypeMapping;
import autosar21.system.datamapping.SenderRecRecordElementMapping;
import autosar21.system.datamapping.SenderRecRecordTypeMapping;
import autosar21.system.datamapping.SenderReceiverToSignalGroupMapping;
import autosar21.system.datamapping.SenderReceiverToSignalMapping;
import autosar21.system.datamapping.SequenceCounterMapping;
import autosar21.system.datamapping.impl.DatamappingFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface DatamappingFactory
extends EFactory {
    public static final DatamappingFactory eINSTANCE = DatamappingFactoryImpl.init();

    public ApplicationErrorMapping createApplicationErrorMapping();

    public ClientIdMapping createClientIdMapping();

    public ClientServerArrayElementMapping createClientServerArrayElementMapping();

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

