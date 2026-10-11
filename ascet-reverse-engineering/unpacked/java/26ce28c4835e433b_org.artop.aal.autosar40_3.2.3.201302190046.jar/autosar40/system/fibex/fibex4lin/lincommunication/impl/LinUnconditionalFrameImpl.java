/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 */
package autosar40.system.fibex.fibex4lin.lincommunication.impl;

import autosar40.system.fibex.fibex4lin.lincommunication.LinUnconditionalFrame;
import autosar40.system.fibex.fibex4lin.lincommunication.LincommunicationPackage;
import autosar40.system.fibex.fibex4lin.lincommunication.impl.LinFrameImpl;
import org.eclipse.emf.ecore.EClass;

public class LinUnconditionalFrameImpl
extends LinFrameImpl
implements LinUnconditionalFrame {
    protected LinUnconditionalFrameImpl() {
    }

    protected EClass eStaticClass() {
        return LincommunicationPackage.Literals.LIN_UNCONDITIONAL_FRAME;
    }
}

