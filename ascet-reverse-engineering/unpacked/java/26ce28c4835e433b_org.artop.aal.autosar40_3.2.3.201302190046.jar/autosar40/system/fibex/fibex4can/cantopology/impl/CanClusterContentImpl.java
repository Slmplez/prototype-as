/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 */
package autosar40.system.fibex.fibex4can.cantopology.impl;

import autosar40.system.fibex.fibex4can.cantopology.CanClusterContent;
import autosar40.system.fibex.fibex4can.cantopology.CantopologyPackage;
import autosar40.system.fibex.fibex4can.cantopology.impl.AbstractCanClusterContentImpl;
import org.eclipse.emf.ecore.EClass;

public abstract class CanClusterContentImpl
extends AbstractCanClusterContentImpl
implements CanClusterContent {
    protected CanClusterContentImpl() {
    }

    protected EClass eStaticClass() {
        return CantopologyPackage.Literals.CAN_CLUSTER_CONTENT;
    }
}

