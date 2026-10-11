/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 */
package autosar3x.system.transportprotocols.impl;

import autosar3x.system.transportprotocols.FlexrayIsoTpNode;
import autosar3x.system.transportprotocols.TransportprotocolsPackage;
import autosar3x.system.transportprotocols.impl.TpNodeImpl;
import org.eclipse.emf.ecore.EClass;

public class FlexrayIsoTpNodeImpl
extends TpNodeImpl
implements FlexrayIsoTpNode {
    protected FlexrayIsoTpNodeImpl() {
    }

    protected EClass eStaticClass() {
        return TransportprotocolsPackage.Literals.FLEXRAY_ISO_TP_NODE;
    }
}

