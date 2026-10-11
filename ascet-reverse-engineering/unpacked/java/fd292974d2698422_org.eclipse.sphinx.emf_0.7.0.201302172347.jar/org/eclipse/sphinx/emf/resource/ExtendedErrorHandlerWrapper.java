/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.apache.xerces.util.ErrorHandlerWrapper
 *  org.apache.xerces.xni.XNIException
 *  org.apache.xerces.xni.parser.XMLParseException
 */
package org.eclipse.sphinx.emf.resource;

import org.apache.xerces.util.ErrorHandlerWrapper;
import org.apache.xerces.xni.XNIException;
import org.apache.xerces.xni.parser.XMLParseException;
import org.eclipse.sphinx.emf.resource.XMLValidityException;
import org.eclipse.sphinx.emf.resource.XMLWellformednessException;
import org.xml.sax.ErrorHandler;
import org.xml.sax.SAXException;
import org.xml.sax.SAXParseException;

public class ExtendedErrorHandlerWrapper
extends ErrorHandlerWrapper {
    public ExtendedErrorHandlerWrapper() {
    }

    public ExtendedErrorHandlerWrapper(ErrorHandler errorHandler) {
        super(errorHandler);
    }

    public void warning(String domain, String key, XMLParseException exception) throws XNIException {
        if (this.fErrorHandler != null) {
            SAXParseException saxException = this.createSAXParseException(domain, exception);
            try {
                this.fErrorHandler.warning(saxException);
            }
            catch (SAXParseException e) {
                throw ExtendedErrorHandlerWrapper.createXMLParseException((SAXParseException)e);
            }
            catch (SAXException e) {
                throw ExtendedErrorHandlerWrapper.createXNIException((SAXException)e);
            }
        }
    }

    public void error(String domain, String key, XMLParseException exception) throws XNIException {
        if (this.fErrorHandler != null) {
            SAXParseException saxException = this.createSAXParseException(domain, exception);
            try {
                this.fErrorHandler.error(saxException);
            }
            catch (SAXParseException e) {
                throw ExtendedErrorHandlerWrapper.createXMLParseException((SAXParseException)e);
            }
            catch (SAXException e) {
                throw ExtendedErrorHandlerWrapper.createXNIException((SAXException)e);
            }
        }
    }

    public void fatalError(String domain, String key, XMLParseException exception) throws XNIException {
        if (this.fErrorHandler != null) {
            SAXParseException saxException = this.createSAXParseException(domain, exception);
            try {
                this.fErrorHandler.fatalError(saxException);
            }
            catch (SAXParseException e) {
                throw ExtendedErrorHandlerWrapper.createXMLParseException((SAXParseException)e);
            }
            catch (SAXException e) {
                throw ExtendedErrorHandlerWrapper.createXNIException((SAXException)e);
            }
        }
    }

    protected SAXParseException createSAXParseException(String domain, XMLParseException exception) {
        if ("http://www.w3.org/TR/xml-schema-1".equals(domain)) {
            return this.createXMLValidityException(exception);
        }
        if ("http://www.w3.org/TR/1998/REC-xml-19980210".equals(domain) || "http://www.w3.org/TR/1999/REC-xml-names-19990114".equals(domain)) {
            return this.createXMLWellformednessException(exception);
        }
        return ExtendedErrorHandlerWrapper.createSAXParseException((XMLParseException)exception);
    }

    protected SAXParseException createXMLWellformednessException(XMLParseException exception) {
        return new XMLWellformednessException(exception.getMessage(), exception.getPublicId(), exception.getExpandedSystemId(), exception.getLineNumber(), exception.getColumnNumber(), exception.getException());
    }

    protected SAXParseException createXMLValidityException(XMLParseException exception) {
        return new XMLValidityException(exception.getMessage(), exception.getPublicId(), exception.getExpandedSystemId(), exception.getLineNumber(), exception.getColumnNumber(), exception.getException());
    }
}

