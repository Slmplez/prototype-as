/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 */
package autosar40.system.fibex.fibex4can.cancommunication.impl;

import autosar40.system.fibex.fibex4can.cancommunication.CanFrame;
import autosar40.system.fibex.fibex4can.cancommunication.CancommunicationPackage;
import autosar40.system.fibex.fibexcore.corecommunication.impl.FrameImpl;
import org.eclipse.emf.ecore.EClass;

public class CanFrameImpl
extends FrameImpl
implements CanFrame {
    protected CanFrameImpl() {
    }

    protected EClass eStaticClass() {
        return CancommunicationPackage.Literals.CAN_FRAME;
    }
}

