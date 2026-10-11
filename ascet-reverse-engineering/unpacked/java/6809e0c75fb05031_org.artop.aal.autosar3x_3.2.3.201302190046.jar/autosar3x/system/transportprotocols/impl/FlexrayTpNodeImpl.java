/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 */
package autosar3x.system.transportprotocols.impl;

import autosar3x.system.transportprotocols.FlexrayTpNode;
import autosar3x.system.transportprotocols.TransportprotocolsPackage;
import autosar3x.system.transportprotocols.impl.TpNodeImpl;
import org.eclipse.emf.ecore.EClass;

public class FlexrayTpNodeImpl
extends TpNodeImpl
implements FlexrayTpNode {
    protected FlexrayTpNodeImpl() {
    }

    protected EClass eStaticClass() {
        return TransportprotocolsPackage.Literals.FLEXRAY_TP_NODE;
    }
}

