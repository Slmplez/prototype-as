/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 */
package autosar40.system.fibex.fibex4can.cantopology.impl;

import autosar40.system.fibex.fibex4can.cantopology.CanPhysicalChannel;
import autosar40.system.fibex.fibex4can.cantopology.CantopologyPackage;
import autosar40.system.fibex.fibex4can.cantopology.impl.AbstractCanPhysicalChannelImpl;
import org.eclipse.emf.ecore.EClass;

public class CanPhysicalChannelImpl
extends AbstractCanPhysicalChannelImpl
implements CanPhysicalChannel {
    protected CanPhysicalChannelImpl() {
    }

    protected EClass eStaticClass() {
        return CantopologyPackage.Literals.CAN_PHYSICAL_CHANNEL;
    }
}

