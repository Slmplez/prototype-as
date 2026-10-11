/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.ibm.icu.lang.UCharacter
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IExtension
 *  org.eclipse.core.runtime.IExtensionPoint
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.core.runtime.dynamichelpers.ExtensionTracker
 *  org.eclipse.core.runtime.dynamichelpers.IExtensionChangeHandler
 *  org.eclipse.core.runtime.dynamichelpers.IExtensionTracker
 *  org.eclipse.emf.common.EMFPlugin
 */
package org.eclipse.emf.validation.internal.util;

import com.ibm.icu.lang.UCharacter;
import java.util.HashMap;
import java.util.Map;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IExtension;
import org.eclipse.core.runtime.IExtensionPoint;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.runtime.dynamichelpers.ExtensionTracker;
import org.eclipse.core.runtime.dynamichelpers.IExtensionChangeHandler;
import org.eclipse.core.runtime.dynamichelpers.IExtensionTracker;
import org.eclipse.emf.common.EMFPlugin;
import org.eclipse.emf.validation.internal.EMFModelValidationDebugOptions;
import org.eclipse.emf.validation.internal.EMFModelValidationPlugin;
import org.eclipse.emf.validation.internal.EMFModelValidationStatusCodes;
import org.eclipse.emf.validation.internal.util.DisabledConstraint;
import org.eclipse.emf.validation.internal.util.Log;
import org.eclipse.emf.validation.internal.util.Trace;
import org.eclipse.emf.validation.model.IModelConstraint;
import org.eclipse.emf.validation.service.ConstraintFactory;
import org.eclipse.emf.validation.service.IConstraintDescriptor;
import org.eclipse.emf.validation.service.IConstraintParser;
import org.eclipse.emf.validation.service.IParameterizedConstraintDescriptor;
import org.eclipse.emf.validation.service.IParameterizedConstraintParser;
import org.eclipse.emf.validation.xml.ConstraintParserException;
import org.eclipse.emf.validation.xml.IXmlConstraintDescriptor;
import org.eclipse.emf.validation.xml.IXmlConstraintParser;

public class XmlConstraintFactory
extends ConstraintFactory {
    private static final String CONSTRAINT_PARSERS_EXT_P_NAME = "constraintParsers";
    private final Map<String, IConstraintParser> parserMap = new HashMap<String, IConstraintParser>();
    private final Object parsersLock = new Object();
    private final IExtensionChangeHandler extensionHandler = new IExtensionChangeHandler(){

        /*
         * WARNING - Removed try catching itself - possible behaviour change.
         */
        public void addExtension(IExtensionTracker tracker, IExtension extension) {
            Object object = XmlConstraintFactory.this.parsersLock;
            synchronized (object) {
                XmlConstraintFactory.this.registerParsers(extension.getConfigurationElements());
            }
        }

        public void removeExtension(IExtension extension, Object[] objects) {
        }
    };

    public XmlConstraintFactory() {
        this.initializeParsers();
    }

    protected IModelConstraint createConstraint(IXmlConstraintDescriptor desc) {
        IConfigurationElement config = desc.getConfig();
        String lang = config.getAttribute("lang");
        IConstraintParser parser = this.getParser(lang);
        IXmlConstraintParser xmlParser = null;
        if (parser instanceof IXmlConstraintParser) {
            xmlParser = (IXmlConstraintParser)parser;
        } else if (parser instanceof IParameterizedConstraintParser && desc instanceof IParameterizedConstraintDescriptor) {
            return this.createConstraint((IParameterizedConstraintDescriptor)((Object)desc));
        }
        try {
            if (xmlParser != null) {
                return xmlParser.parseConstraint(desc);
            }
            Trace.trace(EMFModelValidationDebugOptions.CONSTRAINTS_DISABLED, "Constraint is disabled: " + desc.getId() + ".  See log for details.");
            ConstraintParserException e = new ConstraintParserException(EMFModelValidationPlugin.getMessage(EMFModelValidationStatusCodes.CONSTRAINT_PARSER_MISSING_MSG, lang));
            Log.warning(73, e.getMessage());
            return new DisabledConstraint(desc, e);
        }
        catch (ConstraintParserException e) {
            return new DisabledConstraint(desc, e);
        }
    }

    protected IModelConstraint createConstraint(IConstraintDescriptor descriptor) {
        if (descriptor instanceof IXmlConstraintDescriptor) {
            return this.createConstraint((IXmlConstraintDescriptor)descriptor);
        }
        if (descriptor instanceof IParameterizedConstraintDescriptor) {
            return this.createConstraint((IParameterizedConstraintDescriptor)descriptor);
        }
        return new DisabledConstraint(descriptor, new IllegalArgumentException("unsupported constraint descriptor"));
    }

    protected IModelConstraint createConstraint(IParameterizedConstraintDescriptor descriptor) {
        String lang = descriptor.getLanguage();
        IConstraintParser parser = this.getParser(lang);
        IParameterizedConstraintParser parmParser = null;
        if (parser instanceof IParameterizedConstraintParser) {
            parmParser = (IParameterizedConstraintParser)parser;
        } else if (parser instanceof IXmlConstraintParser && descriptor instanceof IXmlConstraintDescriptor) {
            return this.createConstraint((IXmlConstraintDescriptor)((Object)descriptor));
        }
        try {
            if (parmParser != null) {
                return parmParser.parseConstraint(descriptor);
            }
            Trace.trace(EMFModelValidationDebugOptions.CONSTRAINTS_DISABLED, "Constraint is disabled: " + descriptor.getId() + ".  See log for details.");
            ConstraintParserException e = new ConstraintParserException(EMFModelValidationPlugin.getMessage(EMFModelValidationStatusCodes.CONSTRAINT_PARSER_MISSING_MSG, lang));
            Log.warning(73, e.getMessage());
            return new DisabledConstraint(descriptor, e);
        }
        catch (ConstraintParserException e) {
            return new DisabledConstraint(descriptor, e);
        }
    }

    void registerParser(IConfigurationElement config) {
        assert (config != null);
        String language = config.getAttribute("lang");
        String className = config.getAttribute("class");
        try {
            Object parser = config.createExecutableExtension("class");
            if (parser instanceof IConstraintParser) {
                this.registerParser(language, (IConstraintParser)parser);
            } else {
                Trace.trace(EMFModelValidationDebugOptions.PARSERS, "Parser could not be initialized for constraint language: " + language);
                Log.warningMessage(72, EMFModelValidationStatusCodes.CONSTRAINT_PARSER_TYPE_MSG, new Object[]{className, language});
            }
        }
        catch (Exception e) {
            Trace.catching(this.getClass(), "registerParser", e);
            Log.warningMessage(71, EMFModelValidationStatusCodes.CONSTRAINT_PARSER_NOT_INITED_MSG, new Object[]{className, language}, e);
        }
    }

    public void registerParser(String language, IConstraintParser parser) {
        assert (language != null);
        assert (parser != null);
        String className = parser.getClass().getName();
        try {
            if (parser instanceof IXmlConstraintParser || parser instanceof IParameterizedConstraintParser) {
                this.parserMap.put(UCharacter.toLowerCase((String)language), parser);
                Trace.trace(EMFModelValidationDebugOptions.PARSERS, "Initialized parser for constraint language: " + language);
            } else {
                Trace.trace(EMFModelValidationDebugOptions.PARSERS, "Parser could not be initialized for constraint language: " + language);
                Log.warningMessage(72, EMFModelValidationStatusCodes.CONSTRAINT_PARSER_TYPE_MSG, new Object[]{className, language});
            }
        }
        catch (Exception e) {
            Trace.catching(this.getClass(), "registerParser", e);
            Log.warningMessage(71, EMFModelValidationStatusCodes.CONSTRAINT_PARSER_NOT_INITED_MSG, new Object[]{className, language}, e);
        }
    }

    private IConstraintParser getParser(String language) {
        return this.parserMap.get(UCharacter.toLowerCase((String)language));
    }

    private void initializeParsers() {
        if (EMFPlugin.IS_ECLIPSE_RUNNING) {
            IExtensionPoint extPoint = Platform.getExtensionRegistry().getExtensionPoint(EMFModelValidationPlugin.getPluginId(), CONSTRAINT_PARSERS_EXT_P_NAME);
            IExtensionTracker extTracker = EMFModelValidationPlugin.getExtensionTracker();
            if (extTracker != null) {
                extTracker.registerHandler(this.extensionHandler, ExtensionTracker.createExtensionPointFilter((IExtensionPoint)extPoint));
                IExtension[] iExtensionArray = extPoint.getExtensions();
                int n = iExtensionArray.length;
                int n2 = 0;
                while (n2 < n) {
                    IExtension extension = iExtensionArray[n2];
                    this.extensionHandler.addExtension(extTracker, extension);
                    ++n2;
                }
            }
        }
    }

    private void registerParsers(IConfigurationElement[] configs) {
        IConfigurationElement[] iConfigurationElementArray = configs;
        int n = configs.length;
        int n2 = 0;
        while (n2 < n) {
            IConfigurationElement config = iConfigurationElementArray[n2];
            this.registerParser(config);
            ++n2;
        }
    }
}

