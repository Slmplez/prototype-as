/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.emf.ecore.xmi.impl;

import org.eclipse.emf.ecore.xmi.impl.EMOFHandler;
import org.eclipse.emf.ecore.xmi.impl.XMILoadImpl;
import org.xml.sax.helpers.DefaultHandler;

public class EMOFLoadImpl
extends XMILoadImpl {
    public EMOFLoadImpl(EMOFHandler.Helper helper) {
        super(helper);
    }

    protected DefaultHandler makeDefaultHandler() {
        return new EMOFHandler(this.resource, (EMOFHandler.Helper)this.helper, this.options);
    }
}

