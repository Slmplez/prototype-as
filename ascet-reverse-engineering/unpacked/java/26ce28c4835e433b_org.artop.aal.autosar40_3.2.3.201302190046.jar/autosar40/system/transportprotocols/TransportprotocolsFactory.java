/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar40.system.transportprotocols;

import autosar40.system.transportprotocols.CanTpAddress;
import autosar40.system.transportprotocols.CanTpChannel;
import autosar40.system.transportprotocols.CanTpConfig;
import autosar40.system.transportprotocols.CanTpConnection;
import autosar40.system.transportprotocols.CanTpEcu;
import autosar40.system.transportprotocols.CanTpNode;
import autosar40.system.transportprotocols.FlexrayArTpChannel;
import autosar40.system.transportprotocols.FlexrayArTpConfig;
import autosar40.system.transportprotocols.FlexrayArTpConnection;
import autosar40.system.transportprotocols.FlexrayArTpNode;
import autosar40.system.transportprotocols.FlexrayTpConfig;
import autosar40.system.transportprotocols.FlexrayTpConnection;
import autosar40.system.transportprotocols.FlexrayTpConnectionControl;
import autosar40.system.transportprotocols.FlexrayTpEcu;
import autosar40.system.transportprotocols.FlexrayTpNode;
import autosar40.system.transportprotocols.FlexrayTpPduPool;
import autosar40.system.transportprotocols.J1939TpConfig;
import autosar40.system.transportprotocols.J1939TpConnection;
import autosar40.system.transportprotocols.J1939TpNode;
import autosar40.system.transportprotocols.LinTpConfig;
import autosar40.system.transportprotocols.LinTpConnection;
import autosar40.system.transportprotocols.LinTpNode;
import autosar40.system.transportprotocols.TpAddress;
import autosar40.system.transportprotocols.TransportprotocolsPackage;
import autosar40.system.transportprotocols.impl.TransportprotocolsFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface TransportprotocolsFactory
extends EFactory {
    public static final TransportprotocolsFactory eINSTANCE = TransportprotocolsFactoryImpl.init();

    public CanTpAddress createCanTpAddress();

    public CanTpChannel createCanTpChannel();

    public CanTpConfig createCanTpConfig();

    public CanTpConnection createCanTpConnection();

    public CanTpNode createCanTpNode();

    public CanTpEcu createCanTpEcu();

    public FlexrayArTpChannel createFlexrayArTpChannel();

    public FlexrayArTpConnection createFlexrayArTpConnection();

    public FlexrayArTpNode createFlexrayArTpNode();

    public FlexrayArTpConfig createFlexrayArTpConfig();

    public FlexrayTpConfig createFlexrayTpConfig();

    public FlexrayTpConnectionControl createFlexrayTpConnectionControl();

    public FlexrayTpEcu createFlexrayTpEcu();

    public FlexrayTpConnection createFlexrayTpConnection();

    public FlexrayTpPduPool createFlexrayTpPduPool();

    public FlexrayTpNode createFlexrayTpNode();

    public J1939TpConfig createJ1939TpConfig();

    public J1939TpNode createJ1939TpNode();

    public J1939TpConnection createJ1939TpConnection();

    public LinTpConfig createLinTpConfig();

    public LinTpConnection createLinTpConnection();

    public LinTpNode createLinTpNode();

    public TpAddress createTpAddress();

    public TransportprotocolsPackage getTransportprotocolsPackage();
}

