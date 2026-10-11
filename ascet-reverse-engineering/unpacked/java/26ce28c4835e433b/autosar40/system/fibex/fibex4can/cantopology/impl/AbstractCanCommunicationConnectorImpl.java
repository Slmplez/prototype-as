/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 */
package autosar40.system.fibex.fibex4can.cantopology.impl;

import autosar40.system.fibex.fibex4can.cantopology.AbstractCanCommunicationConnector;
import autosar40.system.fibex.fibex4can.cantopology.CantopologyPackage;
import autosar40.system.fibex.fibexcore.coretopology.impl.CommunicationConnectorImpl;
import org.eclipse.emf.ecore.EClass;

public abstract class AbstractCanCommunicationConnectorImpl
extends CommunicationConnectorImpl
implements AbstractCanCommunicationConnector {
    protected AbstractCanCommunicationConnectorImpl() {
    }

    protected EClass eStaticClass() {
        return CantopologyPackage.Literals.ABSTRACT_CAN_COMMUNICATION_CONNECTOR;
    }
}

