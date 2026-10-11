/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 */
package autosar40.system.fibex.fibex4can.cantopology.impl;

import autosar40.system.fibex.fibex4can.cantopology.AbstractCanPhysicalChannel;
import autosar40.system.fibex.fibex4can.cantopology.CantopologyPackage;
import autosar40.system.fibex.fibexcore.coretopology.impl.PhysicalChannelImpl;
import org.eclipse.emf.ecore.EClass;

public abstract class AbstractCanPhysicalChannelImpl
extends PhysicalChannelImpl
implements AbstractCanPhysicalChannel {
    protected AbstractCanPhysicalChannelImpl() {
    }

    protected EClass eStaticClass() {
        return CantopologyPackage.Literals.ABSTRACT_CAN_PHYSICAL_CHANNEL;
    }
}

