/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 */
package autosar40.system.fibex.fibexcore.corecommunication.impl;

import autosar40.system.fibex.fibexcore.corecommunication.CorecommunicationPackage;
import autosar40.system.fibex.fibexcore.corecommunication.FramePort;
import autosar40.system.fibex.fibexcore.coretopology.impl.CommConnectorPortImpl;
import org.eclipse.emf.ecore.EClass;

public class FramePortImpl
extends CommConnectorPortImpl
implements FramePort {
    protected FramePortImpl() {
    }

    protected EClass eStaticClass() {
        return CorecommunicationPackage.Literals.FRAME_PORT;
    }
}

