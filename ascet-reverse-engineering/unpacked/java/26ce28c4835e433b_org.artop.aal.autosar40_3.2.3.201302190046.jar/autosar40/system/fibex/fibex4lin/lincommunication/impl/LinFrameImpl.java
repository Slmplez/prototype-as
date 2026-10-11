/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 */
package autosar40.system.fibex.fibex4lin.lincommunication.impl;

import autosar40.system.fibex.fibex4lin.lincommunication.LinFrame;
import autosar40.system.fibex.fibex4lin.lincommunication.LincommunicationPackage;
import autosar40.system.fibex.fibexcore.corecommunication.impl.FrameImpl;
import org.eclipse.emf.ecore.EClass;

public class LinFrameImpl
extends FrameImpl
implements LinFrame {
    protected LinFrameImpl() {
    }

    protected EClass eStaticClass() {
        return LincommunicationPackage.Literals.LIN_FRAME;
    }
}

