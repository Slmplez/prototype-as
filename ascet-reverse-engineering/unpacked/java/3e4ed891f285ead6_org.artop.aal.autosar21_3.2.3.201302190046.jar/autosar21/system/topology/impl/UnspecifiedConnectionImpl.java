/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 */
package autosar21.system.topology.impl;

import autosar21.system.topology.TopologyPackage;
import autosar21.system.topology.UnspecifiedConnection;
import autosar21.system.topology.impl.CommunicationClusterImpl;
import org.eclipse.emf.ecore.EClass;

public class UnspecifiedConnectionImpl
extends CommunicationClusterImpl
implements UnspecifiedConnection {
    protected UnspecifiedConnectionImpl() {
    }

    protected EClass eStaticClass() {
        return TopologyPackage.Literals.UNSPECIFIED_CONNECTION;
    }
}

