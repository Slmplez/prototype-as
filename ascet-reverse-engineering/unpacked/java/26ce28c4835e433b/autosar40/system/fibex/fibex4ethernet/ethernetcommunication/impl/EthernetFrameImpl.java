/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 */
package autosar40.system.fibex.fibex4ethernet.ethernetcommunication.impl;

import autosar40.system.fibex.fibex4ethernet.ethernetcommunication.EthernetFrame;
import autosar40.system.fibex.fibex4ethernet.ethernetcommunication.EthernetcommunicationPackage;
import autosar40.system.fibex.fibexcore.corecommunication.impl.FrameImpl;
import org.eclipse.emf.ecore.EClass;

public class EthernetFrameImpl
extends FrameImpl
implements EthernetFrame {
    protected EthernetFrameImpl() {
    }

    protected EClass eStaticClass() {
        return EthernetcommunicationPackage.Literals.ETHERNET_FRAME;
    }
}

