/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 */
package autosar40.system.fibex.fibex4ethernet.ethernettopology.impl;

import autosar40.system.fibex.fibex4ethernet.ethernettopology.EthernetCommunicationConnector;
import autosar40.system.fibex.fibex4ethernet.ethernettopology.EthernettopologyPackage;
import autosar40.system.fibex.fibexcore.coretopology.impl.CommunicationConnectorImpl;
import org.eclipse.emf.ecore.EClass;

public class EthernetCommunicationConnectorImpl
extends CommunicationConnectorImpl
implements EthernetCommunicationConnector {
    protected EthernetCommunicationConnectorImpl() {
    }

    protected EClass eStaticClass() {
        return EthernettopologyPackage.Literals.ETHERNET_COMMUNICATION_CONNECTOR;
    }
}

