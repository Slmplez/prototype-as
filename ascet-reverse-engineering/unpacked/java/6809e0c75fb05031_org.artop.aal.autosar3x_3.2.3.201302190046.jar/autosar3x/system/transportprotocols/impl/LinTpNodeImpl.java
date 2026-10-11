/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 */
package autosar3x.system.transportprotocols.impl;

import autosar3x.system.transportprotocols.LinTpNode;
import autosar3x.system.transportprotocols.TransportprotocolsPackage;
import autosar3x.system.transportprotocols.impl.TpNodeImpl;
import org.eclipse.emf.ecore.EClass;

public class LinTpNodeImpl
extends TpNodeImpl
implements LinTpNode {
    protected LinTpNodeImpl() {
    }

    protected EClass eStaticClass() {
        return TransportprotocolsPackage.Literals.LIN_TP_NODE;
    }
}

