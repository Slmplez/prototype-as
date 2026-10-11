/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 */
package autosar40.system.fibex.fibex4ttcan.ttcantopology.impl;

import autosar40.system.fibex.fibex4can.cantopology.impl.AbstractCanPhysicalChannelImpl;
import autosar40.system.fibex.fibex4ttcan.ttcantopology.TtcanPhysicalChannel;
import autosar40.system.fibex.fibex4ttcan.ttcantopology.TtcantopologyPackage;
import org.eclipse.emf.ecore.EClass;

public class TtcanPhysicalChannelImpl
extends AbstractCanPhysicalChannelImpl
implements TtcanPhysicalChannel {
    protected TtcanPhysicalChannelImpl() {
    }

    protected EClass eStaticClass() {
        return TtcantopologyPackage.Literals.TTCAN_PHYSICAL_CHANNEL;
    }
}

