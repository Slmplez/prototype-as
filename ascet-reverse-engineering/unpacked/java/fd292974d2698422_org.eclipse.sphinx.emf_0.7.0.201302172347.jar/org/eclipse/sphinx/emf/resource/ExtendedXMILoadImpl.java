/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.xmi.XMLHelper
 */
package org.eclipse.sphinx.emf.resource;

import org.eclipse.emf.ecore.xmi.XMLHelper;
import org.eclipse.sphinx.emf.resource.ExtendedSAXXMIHandler;
import org.eclipse.sphinx.emf.resource.ExtendedXMLLoadImpl;
import org.xml.sax.helpers.DefaultHandler;

public class ExtendedXMILoadImpl
extends ExtendedXMLLoadImpl {
    public ExtendedXMILoadImpl(XMLHelper helper) {
        super(helper);
    }

    protected DefaultHandler makeDefaultHandler() {
        return new ExtendedSAXXMIHandler(this.resource, this.helper, this.options);
    }
}

