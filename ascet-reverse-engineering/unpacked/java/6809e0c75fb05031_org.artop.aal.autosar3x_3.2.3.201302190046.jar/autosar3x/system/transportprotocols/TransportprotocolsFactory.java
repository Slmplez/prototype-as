/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar3x.system.transportprotocols;

import autosar3x.system.transportprotocols.CanTpConnectionChannel;
import autosar3x.system.transportprotocols.CanTpNode;
import autosar3x.system.transportprotocols.FlexRayTpConnection;
import autosar3x.system.transportprotocols.FlexrayIsoTpConnection;
import autosar3x.system.transportprotocols.FlexrayIsoTpConnectionControl;
import autosar3x.system.transportprotocols.FlexrayIsoTpEcu;
import autosar3x.system.transportprotocols.FlexrayIsoTpNode;
import autosar3x.system.transportprotocols.FlexrayIsoTpPduPool;
import autosar3x.system.transportprotocols.FlexrayTpChannel;
import autosar3x.system.transportprotocols.FlexrayTpNode;
import autosar3x.system.transportprotocols.LinTpChannel;
import autosar3x.system.transportprotocols.LinTpNode;
import autosar3x.system.transportprotocols.TpAddress;
import autosar3x.system.transportprotocols.TransportprotocolsPackage;
import autosar3x.system.transportprotocols.impl.TransportprotocolsFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface TransportprotocolsFactory
extends EFactory {
    public static final TransportprotocolsFactory eINSTANCE = TransportprotocolsFactoryImpl.init();

    public CanTpConnectionChannel createCanTpConnectionChannel();

    public CanTpNode createCanTpNode();

    public TpAddress createTpAddress();

    public FlexrayIsoTpConnection createFlexrayIsoTpConnection();

    public FlexrayIsoTpPduPool createFlexrayIsoTpPduPool();

    public FlexrayIsoTpNode createFlexrayIsoTpNode();

    public FlexrayIsoTpConnectionControl createFlexrayIsoTpConnectionControl();

    public FlexrayIsoTpEcu createFlexrayIsoTpEcu();

    public FlexrayTpChannel createFlexrayTpChannel();

    public FlexRayTpConnection createFlexRayTpConnection();

    public FlexrayTpNode createFlexrayTpNode();

    public LinTpChannel createLinTpChannel();

    public LinTpNode createLinTpNode();

    public TransportprotocolsPackage getTransportprotocolsPackage();
}

