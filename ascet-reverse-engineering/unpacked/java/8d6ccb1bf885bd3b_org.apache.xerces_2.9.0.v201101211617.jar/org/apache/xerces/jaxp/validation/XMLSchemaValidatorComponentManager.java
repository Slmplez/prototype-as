/*
 * Decompiled with CFR 0.152.
 */
package org.apache.xerces.jaxp.validation;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.apache.xerces.impl.XMLEntityManager;
import org.apache.xerces.impl.XMLErrorReporter;
import org.apache.xerces.impl.validation.ValidationManager;
import org.apache.xerces.impl.xs.XMLSchemaValidator;
import org.apache.xerces.impl.xs.XSMessageFormatter;
import org.apache.xerces.jaxp.validation.DraconianErrorHandler;
import org.apache.xerces.jaxp.validation.XSGrammarPoolContainer;
import org.apache.xerces.util.DOMEntityResolverWrapper;
import org.apache.xerces.util.ErrorHandlerWrapper;
import org.apache.xerces.util.NamespaceSupport;
import org.apache.xerces.util.ParserConfigurationSettings;
import org.apache.xerces.util.SecurityManager;
import org.apache.xerces.util.SymbolTable;
import org.apache.xerces.xni.NamespaceContext;
import org.apache.xerces.xni.XNIException;
import org.apache.xerces.xni.parser.XMLComponent;
import org.apache.xerces.xni.parser.XMLComponentManager;
import org.apache.xerces.xni.parser.XMLConfigurationException;
import org.w3c.dom.ls.LSResourceResolver;
import org.xml.sax.ErrorHandler;

final class XMLSchemaValidatorComponentManager
extends ParserConfigurationSettings
implements XMLComponentManager {
    private static final String SCHEMA_VALIDATION = "http://apache.org/xml/features/validation/schema";
    private static final String VALIDATION = "http://xml.org/sax/features/validation";
    private static final String USE_GRAMMAR_POOL_ONLY = "http://apache.org/xml/features/internal/validation/schema/use-grammar-pool-only";
    protected static final String IGNORE_XSI_TYPE = "http://apache.org/xml/features/validation/schema/ignore-xsi-type-until-elemdecl";
    protected static final String ID_IDREF_CHECKING = "http://apache.org/xml/features/validation/id-idref-checking";
    protected static final String UNPARSED_ENTITY_CHECKING = "http://apache.org/xml/features/validation/unparsed-entity-checking";
    protected static final String IDENTITY_CONSTRAINT_CHECKING = "http://apache.org/xml/features/validation/identity-constraint-checking";
    private static final String ENTITY_MANAGER = "http://apache.org/xml/properties/internal/entity-manager";
    private static final String ENTITY_RESOLVER = "http://apache.org/xml/properties/internal/entity-resolver";
    private static final String ERROR_HANDLER = "http://apache.org/xml/properties/internal/error-handler";
    private static final String ERROR_REPORTER = "http://apache.org/xml/properties/internal/error-reporter";
    private static final String NAMESPACE_CONTEXT = "http://apache.org/xml/properties/internal/namespace-context";
    private static final String SCHEMA_VALIDATOR = "http://apache.org/xml/properties/internal/validator/schema";
    private static final String SECURITY_MANAGER = "http://apache.org/xml/properties/security-manager";
    private static final String SYMBOL_TABLE = "http://apache.org/xml/properties/internal/symbol-table";
    private static final String VALIDATION_MANAGER = "http://apache.org/xml/properties/internal/validation-manager";
    private static final String XMLGRAMMAR_POOL = "http://apache.org/xml/properties/internal/grammar-pool";
    private boolean fConfigUpdated = true;
    private boolean fUseGrammarPoolOnly;
    private final HashMap fComponents = new HashMap();
    private XMLEntityManager fEntityManager;
    private XMLErrorReporter fErrorReporter;
    private NamespaceContext fNamespaceContext;
    private XMLSchemaValidator fSchemaValidator;
    private ValidationManager fValidationManager;
    private HashMap fInitFeatures = new HashMap();
    private HashMap fInitProperties = new HashMap();
    private SecurityManager fInitSecurityManager = null;
    private ErrorHandler fErrorHandler = null;
    private LSResourceResolver fResourceResolver = null;

    public XMLSchemaValidatorComponentManager(XSGrammarPoolContainer xSGrammarPoolContainer) {
        this.fEntityManager = new XMLEntityManager();
        this.fComponents.put(ENTITY_MANAGER, this.fEntityManager);
        this.fErrorReporter = new XMLErrorReporter();
        this.fComponents.put(ERROR_REPORTER, this.fErrorReporter);
        this.fNamespaceContext = new NamespaceSupport();
        this.fComponents.put(NAMESPACE_CONTEXT, this.fNamespaceContext);
        this.fSchemaValidator = new XMLSchemaValidator();
        this.fComponents.put(SCHEMA_VALIDATOR, this.fSchemaValidator);
        this.fValidationManager = new ValidationManager();
        this.fComponents.put(VALIDATION_MANAGER, this.fValidationManager);
        this.fComponents.put(ENTITY_RESOLVER, null);
        this.fComponents.put(ERROR_HANDLER, null);
        this.fComponents.put(SECURITY_MANAGER, null);
        this.fComponents.put(SYMBOL_TABLE, new SymbolTable());
        this.fComponents.put(XMLGRAMMAR_POOL, xSGrammarPoolContainer.getGrammarPool());
        this.fUseGrammarPoolOnly = xSGrammarPoolContainer.isFullyComposed();
        this.fErrorReporter.putMessageFormatter("http://www.w3.org/TR/xml-schema-1", new XSMessageFormatter());
        this.addRecognizedParamsAndSetDefaults(this.fEntityManager, xSGrammarPoolContainer);
        this.addRecognizedParamsAndSetDefaults(this.fErrorReporter, xSGrammarPoolContainer);
        this.addRecognizedParamsAndSetDefaults(this.fSchemaValidator, xSGrammarPoolContainer);
        Boolean bl = xSGrammarPoolContainer.getFeature("http://javax.xml.XMLConstants/feature/secure-processing");
        if (Boolean.TRUE.equals(bl)) {
            this.fInitSecurityManager = new SecurityManager();
        }
        this.fComponents.put(SECURITY_MANAGER, this.fInitSecurityManager);
        this.fFeatures.put(IGNORE_XSI_TYPE, Boolean.FALSE);
        this.fFeatures.put(ID_IDREF_CHECKING, Boolean.TRUE);
        this.fFeatures.put(IDENTITY_CONSTRAINT_CHECKING, Boolean.TRUE);
        this.fFeatures.put(UNPARSED_ENTITY_CHECKING, Boolean.TRUE);
    }

    public boolean getFeature(String string) throws XMLConfigurationException {
        if ("http://apache.org/xml/features/internal/parser-settings".equals(string)) {
            return this.fConfigUpdated;
        }
        if (VALIDATION.equals(string) || SCHEMA_VALIDATION.equals(string)) {
            return true;
        }
        if (USE_GRAMMAR_POOL_ONLY.equals(string)) {
            return this.fUseGrammarPoolOnly;
        }
        if ("http://javax.xml.XMLConstants/feature/secure-processing".equals(string)) {
            return this.getProperty(SECURITY_MANAGER) != null;
        }
        return super.getFeature(string);
    }

    public void setFeature(String string, boolean bl) throws XMLConfigurationException {
        if ("http://apache.org/xml/features/internal/parser-settings".equals(string)) {
            throw new XMLConfigurationException(1, string);
        }
        if (!bl && (VALIDATION.equals(string) || SCHEMA_VALIDATION.equals(string))) {
            throw new XMLConfigurationException(1, string);
        }
        if (USE_GRAMMAR_POOL_ONLY.equals(string) && bl != this.fUseGrammarPoolOnly) {
            throw new XMLConfigurationException(1, string);
        }
        if ("http://javax.xml.XMLConstants/feature/secure-processing".equals(string)) {
            this.setProperty(SECURITY_MANAGER, bl ? new SecurityManager() : null);
            return;
        }
        this.fConfigUpdated = true;
        this.fEntityManager.setFeature(string, bl);
        this.fErrorReporter.setFeature(string, bl);
        this.fSchemaValidator.setFeature(string, bl);
        if (!this.fInitFeatures.containsKey(string)) {
            boolean bl2 = super.getFeature(string);
            this.fInitFeatures.put(string, bl2 ? Boolean.TRUE : Boolean.FALSE);
        }
        super.setFeature(string, bl);
    }

    public Object getProperty(String string) throws XMLConfigurationException {
        Object v = this.fComponents.get(string);
        if (v != null) {
            return v;
        }
        if (this.fComponents.containsKey(string)) {
            return null;
        }
        return super.getProperty(string);
    }

    public void setProperty(String string, Object object) throws XMLConfigurationException {
        if (ENTITY_MANAGER.equals(string) || ERROR_REPORTER.equals(string) || NAMESPACE_CONTEXT.equals(string) || SCHEMA_VALIDATOR.equals(string) || SYMBOL_TABLE.equals(string) || VALIDATION_MANAGER.equals(string) || XMLGRAMMAR_POOL.equals(string)) {
            throw new XMLConfigurationException(1, string);
        }
        this.fConfigUpdated = true;
        this.fEntityManager.setProperty(string, object);
        this.fErrorReporter.setProperty(string, object);
        this.fSchemaValidator.setProperty(string, object);
        if (ENTITY_RESOLVER.equals(string) || ERROR_HANDLER.equals(string) || SECURITY_MANAGER.equals(string)) {
            this.fComponents.put(string, object);
            return;
        }
        if (!this.fInitProperties.containsKey(string)) {
            this.fInitProperties.put(string, super.getProperty(string));
        }
        super.setProperty(string, object);
    }

    public void addRecognizedParamsAndSetDefaults(XMLComponent xMLComponent, XSGrammarPoolContainer xSGrammarPoolContainer) {
        String[] stringArray = xMLComponent.getRecognizedFeatures();
        this.addRecognizedFeatures(stringArray);
        String[] stringArray2 = xMLComponent.getRecognizedProperties();
        this.addRecognizedProperties(stringArray2);
        this.setFeatureDefaults(xMLComponent, stringArray, xSGrammarPoolContainer);
        this.setPropertyDefaults(xMLComponent, stringArray2);
    }

    public void reset() throws XNIException {
        this.fNamespaceContext.reset();
        this.fValidationManager.reset();
        this.fEntityManager.reset(this);
        this.fErrorReporter.reset(this);
        this.fSchemaValidator.reset(this);
        this.fConfigUpdated = false;
    }

    void setErrorHandler(ErrorHandler errorHandler) {
        this.fErrorHandler = errorHandler;
        this.setProperty(ERROR_HANDLER, errorHandler != null ? new ErrorHandlerWrapper(errorHandler) : new ErrorHandlerWrapper(DraconianErrorHandler.getInstance()));
    }

    ErrorHandler getErrorHandler() {
        return this.fErrorHandler;
    }

    void setResourceResolver(LSResourceResolver lSResourceResolver) {
        this.fResourceResolver = lSResourceResolver;
        this.setProperty(ENTITY_RESOLVER, new DOMEntityResolverWrapper(lSResourceResolver));
    }

    public LSResourceResolver getResourceResolver() {
        return this.fResourceResolver;
    }

    void restoreInitialState() {
        String string;
        Map.Entry entry;
        Iterator iterator;
        this.fConfigUpdated = true;
        this.fComponents.put(ENTITY_RESOLVER, null);
        this.fComponents.put(ERROR_HANDLER, null);
        this.fComponents.put(SECURITY_MANAGER, this.fInitSecurityManager);
        if (!this.fInitFeatures.isEmpty()) {
            iterator = this.fInitFeatures.entrySet().iterator();
            while (iterator.hasNext()) {
                entry = iterator.next();
                string = (String)entry.getKey();
                boolean bl = (Boolean)entry.getValue();
                super.setFeature(string, bl);
            }
            this.fInitFeatures.clear();
        }
        if (!this.fInitProperties.isEmpty()) {
            iterator = this.fInitProperties.entrySet().iterator();
            while (iterator.hasNext()) {
                entry = iterator.next();
                string = (String)entry.getKey();
                Object v = entry.getValue();
                super.setProperty(string, v);
            }
            this.fInitProperties.clear();
        }
    }

    private void setFeatureDefaults(XMLComponent xMLComponent, String[] stringArray, XSGrammarPoolContainer xSGrammarPoolContainer) {
        if (stringArray != null) {
            int n = 0;
            while (n < stringArray.length) {
                String string = stringArray[n];
                Boolean bl = xSGrammarPoolContainer.getFeature(string);
                if (bl == null) {
                    bl = xMLComponent.getFeatureDefault(string);
                }
                if (bl != null && !this.fFeatures.containsKey(string)) {
                    this.fFeatures.put(string, bl);
                    this.fConfigUpdated = true;
                }
                ++n;
            }
        }
    }

    private void setPropertyDefaults(XMLComponent xMLComponent, String[] stringArray) {
        if (stringArray != null) {
            int n = 0;
            while (n < stringArray.length) {
                String string = stringArray[n];
                Object object = xMLComponent.getPropertyDefault(string);
                if (object != null && !this.fProperties.containsKey(string)) {
                    this.fProperties.put(string, object);
                    this.fConfigUpdated = true;
                }
                ++n;
            }
        }
    }
}

