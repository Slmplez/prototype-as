/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 */
package autosar40.system.fibex.fibex4ttcan.ttcantopology.impl;

import autosar40.system.fibex.fibex4can.cantopology.impl.AbstractCanCommunicationConnectorImpl;
import autosar40.system.fibex.fibex4ttcan.ttcantopology.TtcanCommunicationConnector;
import autosar40.system.fibex.fibex4ttcan.ttcantopology.TtcantopologyPackage;
import org.eclipse.emf.ecore.EClass;

public class TtcanCommunicationConnectorImpl
extends AbstractCanCommunicationConnectorImpl
implements TtcanCommunicationConnector {
    protected TtcanCommunicationConnectorImpl() {
    }

    protected EClass eStaticClass() {
        return TtcantopologyPackage.Literals.TTCAN_COMMUNICATION_CONNECTOR;
    }
}

