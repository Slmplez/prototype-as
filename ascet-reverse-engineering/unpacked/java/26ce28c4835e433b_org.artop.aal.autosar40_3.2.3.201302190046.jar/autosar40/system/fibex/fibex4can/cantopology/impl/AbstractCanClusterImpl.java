/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 */
package autosar40.system.fibex.fibex4can.cantopology.impl;

import autosar40.system.fibex.fibex4can.cantopology.AbstractCanCluster;
import autosar40.system.fibex.fibex4can.cantopology.CantopologyPackage;
import autosar40.system.fibex.fibexcore.coretopology.impl.CommunicationClusterImpl;
import org.eclipse.emf.ecore.EClass;

public abstract class AbstractCanClusterImpl
extends CommunicationClusterImpl
implements AbstractCanCluster {
    protected AbstractCanClusterImpl() {
    }

    protected EClass eStaticClass() {
        return CantopologyPackage.Literals.ABSTRACT_CAN_CLUSTER;
    }
}

