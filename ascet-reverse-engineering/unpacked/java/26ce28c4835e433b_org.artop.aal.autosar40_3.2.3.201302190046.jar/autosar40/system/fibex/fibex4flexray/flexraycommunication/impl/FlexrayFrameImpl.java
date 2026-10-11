/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 */
package autosar40.system.fibex.fibex4flexray.flexraycommunication.impl;

import autosar40.system.fibex.fibex4flexray.flexraycommunication.FlexrayFrame;
import autosar40.system.fibex.fibex4flexray.flexraycommunication.FlexraycommunicationPackage;
import autosar40.system.fibex.fibexcore.corecommunication.impl.FrameImpl;
import org.eclipse.emf.ecore.EClass;

public class FlexrayFrameImpl
extends FrameImpl
implements FlexrayFrame {
    protected FlexrayFrameImpl() {
    }

    protected EClass eStaticClass() {
        return FlexraycommunicationPackage.Literals.FLEXRAY_FRAME;
    }
}

