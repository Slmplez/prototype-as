/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 */
package autosar21.system.communication.impl;

import autosar21.system.communication.CommunicationPackage;
import autosar21.system.communication.FlexrayFrame;
import autosar21.system.communication.impl.FrameImpl;
import org.eclipse.emf.ecore.EClass;

public class FlexrayFrameImpl
extends FrameImpl
implements FlexrayFrame {
    protected FlexrayFrameImpl() {
    }

    protected EClass eStaticClass() {
        return CommunicationPackage.Literals.FLEXRAY_FRAME;
    }
}

