/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.xmi.XMLHelper
 *  org.eclipse.sphinx.emf.resource.ExtendedXMLLoadImpl
 */
package org.artop.aal.serialization.internal;

import org.artop.aal.serialization.internal.AutosarSAXXMLHandler;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.xmi.XMLHelper;
import org.eclipse.sphinx.emf.resource.ExtendedXMLLoadImpl;
import org.xml.sax.helpers.DefaultHandler;

public class AutosarXMLLoadImpl
extends ExtendedXMLLoadImpl {
    protected EPackage basePackage = null;

    public AutosarXMLLoadImpl(XMLHelper helper, EPackage ePackage) {
        super(helper);
        this.basePackage = ePackage;
    }

    protected DefaultHandler makeDefaultHandler() {
        AutosarSAXXMLHandler handler = new AutosarSAXXMLHandler(this.resource, this.helper, this.options);
        handler.defineFactoryFromPackage(this.basePackage);
        this.basePackage = null;
        handler.setParser(this.parser);
        return handler;
    }
}

