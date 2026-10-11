/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar21.system.communicationprotocol;

import autosar21.system.communicationprotocol.CommProtocolElement;
import autosar21.system.communicationprotocol.CommProtocolFrameRole;
import autosar21.system.communicationprotocol.CommProtocolInstance;
import autosar21.system.communicationprotocol.CommProtocolSignalGroupRole;
import autosar21.system.communicationprotocol.CommProtocolSignalRole;
import autosar21.system.communicationprotocol.CommProtocolType;
import autosar21.system.communicationprotocol.CommunicationprotocolPackage;
import autosar21.system.communicationprotocol.impl.CommunicationprotocolFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface CommunicationprotocolFactory
extends EFactory {
    public static final CommunicationprotocolFactory eINSTANCE = CommunicationprotocolFactoryImpl.init();

    public CommProtocolElement createCommProtocolElement();

    public CommProtocolFrameRole createCommProtocolFrameRole();

    public CommProtocolSignalGroupRole createCommProtocolSignalGroupRole();

    public CommProtocolSignalRole createCommProtocolSignalRole();

    public CommProtocolType createCommProtocolType();

    public CommProtocolInstance createCommProtocolInstance();

    public CommunicationprotocolPackage getCommunicationprotocolPackage();
}

