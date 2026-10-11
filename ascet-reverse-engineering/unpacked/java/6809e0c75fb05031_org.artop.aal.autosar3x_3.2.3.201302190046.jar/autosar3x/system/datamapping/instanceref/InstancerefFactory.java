/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar3x.system.datamapping.instanceref;

import autosar3x.system.datamapping.instanceref.ClientServerToSignalGroupMappingMappedOperation;
import autosar3x.system.datamapping.instanceref.InstancerefPackage;
import autosar3x.system.datamapping.instanceref.SenderReceiverToSignalGroupMappingDataElement;
import autosar3x.system.datamapping.instanceref.SenderReceiverToSignalMappingDataElement;
import autosar3x.system.datamapping.instanceref.impl.InstancerefFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface InstancerefFactory
extends EFactory {
    public static final InstancerefFactory eINSTANCE = InstancerefFactoryImpl.init();

    public SenderReceiverToSignalGroupMappingDataElement createSenderReceiverToSignalGroupMappingDataElement();

    public SenderReceiverToSignalMappingDataElement createSenderReceiverToSignalMappingDataElement();

    public ClientServerToSignalGroupMappingMappedOperation createClientServerToSignalGroupMappingMappedOperation();

    public InstancerefPackage getInstancerefPackage();
}

