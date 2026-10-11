/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.pde.internal.core;

import org.eclipse.pde.internal.core.XMLDefaultHandler;
import org.xml.sax.SAXException;
import org.xml.sax.ext.LexicalHandler;

public class XMLCopyrightHandler
implements LexicalHandler {
    private String fCopyright = null;
    private XMLDefaultHandler fHandler = null;

    public XMLCopyrightHandler(XMLDefaultHandler handler) {
        this.fHandler = handler;
    }

    public void comment(char[] ch, int start, int length) throws SAXException {
        if (this.fHandler != null && this.fCopyright == null && this.fHandler.fElementStack.isEmpty()) {
            this.fCopyright = new String(ch, start, length);
        }
    }

    public void endCDATA() throws SAXException {
    }

    public void endDTD() throws SAXException {
    }

    public void endEntity(String name) throws SAXException {
    }

    public void startCDATA() throws SAXException {
    }

    public void startDTD(String name, String publicId, String systemId) throws SAXException {
    }

    public void startEntity(String name) throws SAXException {
    }

    public String getCopyright() {
        return this.fCopyright;
    }
}

