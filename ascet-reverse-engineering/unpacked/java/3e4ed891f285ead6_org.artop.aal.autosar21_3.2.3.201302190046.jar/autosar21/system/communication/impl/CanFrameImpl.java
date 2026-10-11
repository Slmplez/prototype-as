/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 */
package autosar21.system.communication.impl;

import autosar21.system.communication.CanFrame;
import autosar21.system.communication.CommunicationPackage;
import autosar21.system.communication.impl.FrameImpl;
import org.eclipse.emf.ecore.EClass;

public class CanFrameImpl
extends FrameImpl
implements CanFrame {
    protected CanFrameImpl() {
    }

    protected EClass eStaticClass() {
        return CommunicationPackage.Literals.CAN_FRAME;
    }
}

