/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.xmi.XMIException
 *  org.eclipse.emf.ecore.xmi.XMLHelper
 *  org.eclipse.emf.ecore.xmi.XMLResource
 *  org.eclipse.osgi.util.NLS
 *  org.eclipse.sphinx.emf.resource.XMLIntegrityException
 */
package org.artop.aal.serialization.internal;

import java.util.Iterator;
import java.util.Map;
import org.artop.aal.serialization.internal.ReferenceSAXXMLHandler;
import org.artop.aal.serialization.internal.messages.Messages;
import org.eclipse.emf.ecore.xmi.XMIException;
import org.eclipse.emf.ecore.xmi.XMLHelper;
import org.eclipse.emf.ecore.xmi.XMLResource;
import org.eclipse.osgi.util.NLS;
import org.eclipse.sphinx.emf.resource.XMLIntegrityException;
import org.xml.sax.Attributes;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class UnknownReferenceSAXXMLHandler
extends ReferenceSAXXMLHandler {
    public UnknownReferenceSAXXMLHandler(XMLResource xmiResource, XMLHelper helper, Map<?, ?> options, Attributes attributes) {
        super(xmiResource, helper, options, attributes);
    }

    public void startElement(String uri, String localName, String name) {
        if (this.elements.isEmpty()) {
            this.error((XMIException)new XMLIntegrityException(NLS.bind((String)Messages.error_InvalidReference, (Object)name), this.getLocation(), this.getLineNumber(), this.getColumnNumber()));
        } else {
            this.error((XMIException)new XMLIntegrityException(NLS.bind((String)Messages.error_ElementInInvalidReference, (Object)name, (Object)this.getXMLElementStack()), this.getLocation(), this.getLineNumber(), this.getColumnNumber()));
        }
        this.elements.push((Object)name);
    }

    public void endElement(String uri, String localName, String name) {
        if (((String)this.elements.peek()).equals(name)) {
            this.elements.pop();
        }
        if (this.elements.isEmpty()) {
            this.restoreParentHandler();
        }
    }

    private String getXMLElementStack() {
        StringBuffer buffer = new StringBuffer();
        Iterator iter = this.elements.iterator();
        if (iter.hasNext()) {
            buffer.append((String)iter.next());
        }
        while (iter.hasNext()) {
            buffer.append("/");
            buffer.append((String)iter.next());
        }
        return buffer.toString();
    }
}

