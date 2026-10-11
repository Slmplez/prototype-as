/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 */
package autosar40.system.fibex.fibex4ethernet.ethernettopology.impl;

import autosar40.system.fibex.fibex4ethernet.ethernettopology.EthernetClusterContent;
import autosar40.system.fibex.fibex4ethernet.ethernettopology.EthernettopologyPackage;
import autosar40.system.fibex.fibexcore.coretopology.impl.CommunicationClusterContentImpl;
import org.eclipse.emf.ecore.EClass;

public abstract class EthernetClusterContentImpl
extends CommunicationClusterContentImpl
implements EthernetClusterContent {
    protected EthernetClusterContentImpl() {
    }

    protected EClass eStaticClass() {
        return EthernettopologyPackage.Literals.ETHERNET_CLUSTER_CONTENT;
    }
}

