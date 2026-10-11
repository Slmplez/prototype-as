/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar21.system.communicationprotocol.instanceref;

import autosar21.system.communicationprotocol.instanceref.CommProtocolFrameRoleFrameInstance;
import autosar21.system.communicationprotocol.instanceref.CommProtocolFrameRoleProtocolElement;
import autosar21.system.communicationprotocol.instanceref.CommProtocolSignalGroupRoleProtocolElement;
import autosar21.system.communicationprotocol.instanceref.CommProtocolSignalRoleProtocolElement;
import autosar21.system.communicationprotocol.instanceref.InstancerefPackage;
import autosar21.system.communicationprotocol.instanceref.impl.InstancerefFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface InstancerefFactory
extends EFactory {
    public static final InstancerefFactory eINSTANCE = InstancerefFactoryImpl.init();

    public CommProtocolFrameRoleFrameInstance createCommProtocolFrameRoleFrameInstance();

    public CommProtocolFrameRoleProtocolElement createCommProtocolFrameRoleProtocolElement();

    public CommProtocolSignalGroupRoleProtocolElement createCommProtocolSignalGroupRoleProtocolElement();

    public CommProtocolSignalRoleProtocolElement createCommProtocolSignalRoleProtocolElement();

    public InstancerefPackage getInstancerefPackage();
}

