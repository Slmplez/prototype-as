/*
 * Decompiled with CFR 0.152.
 */
package org.apache.xerces.util;

import org.apache.xerces.xni.XMLLocator;
import org.apache.xerces.xni.XNIException;
import org.apache.xerces.xni.parser.XMLErrorHandler;
import org.apache.xerces.xni.parser.XMLParseException;
import org.xml.sax.ErrorHandler;
import org.xml.sax.SAXException;
import org.xml.sax.SAXParseException;

public class ErrorHandlerWrapper
implements XMLErrorHandler {
    protected ErrorHandler fErrorHandler;

    public ErrorHandlerWrapper() {
    }

    public ErrorHandlerWrapper(ErrorHandler errorHandler) {
        this.setErrorHandler(errorHandler);
    }

    public void setErrorHandler(ErrorHandler errorHandler) {
        this.fErrorHandler = errorHandler;
    }

    public ErrorHandler getErrorHandler() {
        return this.fErrorHandler;
    }

    public void warning(String string, String string2, XMLParseException xMLParseException) throws XNIException {
        if (this.fErrorHandler != null) {
            SAXParseException sAXParseException = ErrorHandlerWrapper.createSAXParseException(xMLParseException);
            try {
                this.fErrorHandler.warning(sAXParseException);
            }
            catch (SAXParseException sAXParseException2) {
                throw ErrorHandlerWrapper.createXMLParseException(sAXParseException2);
            }
            catch (SAXException sAXException) {
                throw ErrorHandlerWrapper.createXNIException(sAXException);
            }
        }
    }

    public void error(String string, String string2, XMLParseException xMLParseException) throws XNIException {
        if (this.fErrorHandler != null) {
            SAXParseException sAXParseException = ErrorHandlerWrapper.createSAXParseException(xMLParseException);
            try {
                this.fErrorHandler.error(sAXParseException);
            }
            catch (SAXParseException sAXParseException2) {
                throw ErrorHandlerWrapper.createXMLParseException(sAXParseException2);
            }
            catch (SAXException sAXException) {
                throw ErrorHandlerWrapper.createXNIException(sAXException);
            }
        }
    }

    public void fatalError(String string, String string2, XMLParseException xMLParseException) throws XNIException {
        if (this.fErrorHandler != null) {
            SAXParseException sAXParseException = ErrorHandlerWrapper.createSAXParseException(xMLParseException);
            try {
                this.fErrorHandler.fatalError(sAXParseException);
            }
            catch (SAXParseException sAXParseException2) {
                throw ErrorHandlerWrapper.createXMLParseException(sAXParseException2);
            }
            catch (SAXException sAXException) {
                throw ErrorHandlerWrapper.createXNIException(sAXException);
            }
        }
    }

    protected static SAXParseException createSAXParseException(XMLParseException xMLParseException) {
        return new SAXParseException(xMLParseException.getMessage(), xMLParseException.getPublicId(), xMLParseException.getExpandedSystemId(), xMLParseException.getLineNumber(), xMLParseException.getColumnNumber(), xMLParseException.getException());
    }

    protected static XMLParseException createXMLParseException(SAXParseException sAXParseException) {
        final String string = sAXParseException.getPublicId();
        final String string2 = sAXParseException.getSystemId();
        final int n = sAXParseException.getLineNumber();
        final int n2 = sAXParseException.getColumnNumber();
        XMLLocator xMLLocator = new XMLLocator(){

            public String getPublicId() {
                return string;
            }

            public String getExpandedSystemId() {
                return string2;
            }

            public String getBaseSystemId() {
                return null;
            }

            public String getLiteralSystemId() {
                return null;
            }

            public int getColumnNumber() {
                return n2;
            }

            public int getLineNumber() {
                return n;
            }

            public int getCharacterOffset() {
                return -1;
            }

            public String getEncoding() {
                return null;
            }

            public String getXMLVersion() {
                return null;
            }
        };
        return new XMLParseException(xMLLocator, sAXParseException.getMessage(), sAXParseException);
    }

    protected static XNIException createXNIException(SAXException sAXException) {
        return new XNIException(sAXException.getMessage(), sAXException);
    }
}

