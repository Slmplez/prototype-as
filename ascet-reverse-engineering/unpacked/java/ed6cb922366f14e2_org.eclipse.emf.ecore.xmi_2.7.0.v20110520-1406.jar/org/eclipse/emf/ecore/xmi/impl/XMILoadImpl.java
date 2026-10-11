/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.emf.ecore.xmi.impl;

import org.eclipse.emf.ecore.xmi.XMLHelper;
import org.eclipse.emf.ecore.xmi.impl.SAXXMIHandler;
import org.eclipse.emf.ecore.xmi.impl.XMLLoadImpl;
import org.xml.sax.helpers.DefaultHandler;

public class XMILoadImpl
extends XMLLoadImpl {
    public XMILoadImpl(XMLHelper helper) {
        super(helper);
    }

    protected DefaultHandler makeDefaultHandler() {
        return new SAXXMIHandler(this.resource, this.helper, this.options);
    }
}

