/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 */
package autosar40.system.fibex.fibex4can.cantopology.impl;

import autosar40.system.fibex.fibex4can.cantopology.AbstractCanClusterContent;
import autosar40.system.fibex.fibex4can.cantopology.CantopologyPackage;
import autosar40.system.fibex.fibexcore.coretopology.impl.CommunicationClusterContentImpl;
import org.eclipse.emf.ecore.EClass;

public abstract class AbstractCanClusterContentImpl
extends CommunicationClusterContentImpl
implements AbstractCanClusterContent {
    protected AbstractCanClusterContentImpl() {
    }

    protected EClass eStaticClass() {
        return CantopologyPackage.Literals.ABSTRACT_CAN_CLUSTER_CONTENT;
    }
}

