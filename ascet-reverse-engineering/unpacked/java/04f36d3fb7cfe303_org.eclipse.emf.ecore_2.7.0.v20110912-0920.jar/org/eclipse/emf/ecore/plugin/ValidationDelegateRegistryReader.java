/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.Platform
 */
package org.eclipse.emf.ecore.plugin;

import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.Platform;
import org.eclipse.emf.ecore.EValidator;
import org.eclipse.emf.ecore.plugin.EcorePlugin;
import org.eclipse.emf.ecore.plugin.RegistryReader;

class ValidationDelegateRegistryReader
extends RegistryReader {
    static final String TAG_DELEGATE = "delegate";
    static final String ATT_URI = "uri";
    static final String ATT_CLASS = "class";

    public ValidationDelegateRegistryReader() {
        super(Platform.getExtensionRegistry(), EcorePlugin.getPlugin().getBundle().getSymbolicName(), "validation_delegate");
    }

    protected boolean readElement(IConfigurationElement element, boolean add) {
        if (element.getName().equals(TAG_DELEGATE)) {
            String uri = element.getAttribute(ATT_URI);
            if (uri == null) {
                this.logMissingAttribute(element, ATT_URI);
            } else if (element.getAttribute(ATT_CLASS) == null) {
                this.logMissingAttribute(element, ATT_CLASS);
            } else {
                if (add) {
                    ValidationDelegateDescriptor previous = EValidator.ValidationDelegate.Registry.INSTANCE.put(uri, new ValidationDelegateDescriptor(element, ATT_CLASS));
                    if (previous instanceof ValidationDelegateDescriptor) {
                        ValidationDelegateDescriptor descriptor = previous;
                        EcorePlugin.INSTANCE.log("Both '" + descriptor.element.getContributor().getName() + "' and '" + element.getContributor().getName() + "' register a validation delegate for '" + uri + "'");
                    }
                    return true;
                }
                EValidator.ValidationDelegate.Registry.INSTANCE.remove(uri);
                return true;
            }
        }
        return false;
    }

    static class ValidationDelegateDescriptor
    extends RegistryReader.PluginClassDescriptor
    implements EValidator.ValidationDelegate.Descriptor {
        protected EValidator.ValidationDelegate validationDelegate;

        public ValidationDelegateDescriptor(IConfigurationElement e, String attrName) {
            super(e, attrName);
        }

        public EValidator.ValidationDelegate getValidationDelegate() {
            if (this.validationDelegate == null) {
                this.validationDelegate = (EValidator.ValidationDelegate)this.createInstance();
            }
            return this.validationDelegate;
        }
    }
}

