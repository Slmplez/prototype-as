/*
 * Decompiled with CFR 0.152.
 */
package org.apache.xerces.impl;

import java.io.Serializable;
import java.util.Hashtable;
import java.util.Locale;
import org.apache.xerces.util.DefaultErrorHandler;
import org.apache.xerces.util.ErrorHandlerProxy;
import org.apache.xerces.util.MessageFormatter;
import org.apache.xerces.xni.XMLLocator;
import org.apache.xerces.xni.XNIException;
import org.apache.xerces.xni.parser.XMLComponent;
import org.apache.xerces.xni.parser.XMLComponentManager;
import org.apache.xerces.xni.parser.XMLConfigurationException;
import org.apache.xerces.xni.parser.XMLErrorHandler;
import org.apache.xerces.xni.parser.XMLParseException;
import org.xml.sax.ErrorHandler;

public class XMLErrorReporter
implements XMLComponent {
    public static final short SEVERITY_WARNING = 0;
    public static final short SEVERITY_ERROR = 1;
    public static final short SEVERITY_FATAL_ERROR = 2;
    protected static final String CONTINUE_AFTER_FATAL_ERROR = "http://apache.org/xml/features/continue-after-fatal-error";
    protected static final String ERROR_HANDLER = "http://apache.org/xml/properties/internal/error-handler";
    private static final String[] RECOGNIZED_FEATURES = new String[]{"http://apache.org/xml/features/continue-after-fatal-error"};
    private static final Boolean[] FEATURE_DEFAULTS = new Boolean[]{null};
    private static final String[] RECOGNIZED_PROPERTIES = new String[]{"http://apache.org/xml/properties/internal/error-handler"};
    private static final Object[] PROPERTY_DEFAULTS = new Object[]{null};
    protected Locale fLocale;
    protected Hashtable fMessageFormatters = new Hashtable();
    protected XMLErrorHandler fErrorHandler;
    protected XMLLocator fLocator;
    protected boolean fContinueAfterFatalError;
    protected XMLErrorHandler fDefaultErrorHandler;
    private ErrorHandler fSaxProxy = null;

    public void setLocale(Locale locale) {
        this.fLocale = locale;
    }

    public Locale getLocale() {
        return this.fLocale;
    }

    public void setDocumentLocator(XMLLocator xMLLocator) {
        this.fLocator = xMLLocator;
    }

    public void putMessageFormatter(String string, MessageFormatter messageFormatter) {
        this.fMessageFormatters.put(string, messageFormatter);
    }

    public MessageFormatter getMessageFormatter(String string) {
        return (MessageFormatter)this.fMessageFormatters.get(string);
    }

    public MessageFormatter removeMessageFormatter(String string) {
        return (MessageFormatter)this.fMessageFormatters.remove(string);
    }

    public void reportError(String string, String string2, Object[] objectArray, short s) throws XNIException {
        this.reportError(this.fLocator, string, string2, objectArray, s);
    }

    public void reportError(String string, String string2, Object[] objectArray, short s, Exception exception) throws XNIException {
        this.reportError(this.fLocator, string, string2, objectArray, s, exception);
    }

    public void reportError(XMLLocator xMLLocator, String string, String string2, Object[] objectArray, short s) throws XNIException {
        this.reportError(xMLLocator, string, string2, objectArray, s, null);
    }

    public void reportError(XMLLocator xMLLocator, String string, String string2, Object[] objectArray, short s, Exception exception) throws XNIException {
        Serializable serializable;
        String string3;
        MessageFormatter messageFormatter = this.getMessageFormatter(string);
        if (messageFormatter != null) {
            string3 = messageFormatter.formatMessage(this.fLocale, string2, objectArray);
        } else {
            int n;
            serializable = new StringBuffer();
            ((StringBuffer)serializable).append(string);
            ((StringBuffer)serializable).append('#');
            ((StringBuffer)serializable).append(string2);
            int n2 = n = objectArray != null ? objectArray.length : 0;
            if (n > 0) {
                ((StringBuffer)serializable).append('?');
                int n3 = 0;
                while (n3 < n) {
                    ((StringBuffer)serializable).append(objectArray[n3]);
                    if (n3 < n - 1) {
                        ((StringBuffer)serializable).append('&');
                    }
                    ++n3;
                }
            }
            string3 = ((StringBuffer)serializable).toString();
        }
        serializable = exception != null ? new XMLParseException(xMLLocator, string3, exception) : new XMLParseException(xMLLocator, string3);
        XMLErrorHandler xMLErrorHandler = this.fErrorHandler;
        if (xMLErrorHandler == null) {
            if (this.fDefaultErrorHandler == null) {
                this.fDefaultErrorHandler = new DefaultErrorHandler();
            }
            xMLErrorHandler = this.fDefaultErrorHandler;
        }
        switch (s) {
            case 0: {
                xMLErrorHandler.warning(string, string2, (XMLParseException)serializable);
                break;
            }
            case 1: {
                xMLErrorHandler.error(string, string2, (XMLParseException)serializable);
                break;
            }
            case 2: {
                xMLErrorHandler.fatalError(string, string2, (XMLParseException)serializable);
                if (this.fContinueAfterFatalError) break;
                throw serializable;
            }
        }
    }

    public void reset(XMLComponentManager xMLComponentManager) throws XNIException {
        try {
            this.fContinueAfterFatalError = xMLComponentManager.getFeature(CONTINUE_AFTER_FATAL_ERROR);
        }
        catch (XNIException xNIException) {
            this.fContinueAfterFatalError = false;
        }
        this.fErrorHandler = (XMLErrorHandler)xMLComponentManager.getProperty(ERROR_HANDLER);
    }

    public String[] getRecognizedFeatures() {
        return (String[])RECOGNIZED_FEATURES.clone();
    }

    public void setFeature(String string, boolean bl) throws XMLConfigurationException {
        int n;
        if (string.startsWith("http://apache.org/xml/features/") && (n = string.length() - "http://apache.org/xml/features/".length()) == "continue-after-fatal-error".length() && string.endsWith("continue-after-fatal-error")) {
            this.fContinueAfterFatalError = bl;
        }
    }

    public boolean getFeature(String string) throws XMLConfigurationException {
        int n;
        if (string.startsWith("http://apache.org/xml/features/") && (n = string.length() - "http://apache.org/xml/features/".length()) == "continue-after-fatal-error".length() && string.endsWith("continue-after-fatal-error")) {
            return this.fContinueAfterFatalError;
        }
        return false;
    }

    public String[] getRecognizedProperties() {
        return (String[])RECOGNIZED_PROPERTIES.clone();
    }

    public void setProperty(String string, Object object) throws XMLConfigurationException {
        int n;
        if (string.startsWith("http://apache.org/xml/properties/") && (n = string.length() - "http://apache.org/xml/properties/".length()) == "internal/error-handler".length() && string.endsWith("internal/error-handler")) {
            this.fErrorHandler = (XMLErrorHandler)object;
        }
    }

    public Boolean getFeatureDefault(String string) {
        int n = 0;
        while (n < RECOGNIZED_FEATURES.length) {
            if (RECOGNIZED_FEATURES[n].equals(string)) {
                return FEATURE_DEFAULTS[n];
            }
            ++n;
        }
        return null;
    }

    public Object getPropertyDefault(String string) {
        int n = 0;
        while (n < RECOGNIZED_PROPERTIES.length) {
            if (RECOGNIZED_PROPERTIES[n].equals(string)) {
                return PROPERTY_DEFAULTS[n];
            }
            ++n;
        }
        return null;
    }

    public XMLErrorHandler getErrorHandler() {
        return this.fErrorHandler;
    }

    public ErrorHandler getSAXErrorHandler() {
        if (this.fSaxProxy == null) {
            this.fSaxProxy = new ErrorHandlerProxy(){

                protected XMLErrorHandler getErrorHandler() {
                    return XMLErrorReporter.this.fErrorHandler;
                }
            };
        }
        return this.fSaxProxy;
    }
}

