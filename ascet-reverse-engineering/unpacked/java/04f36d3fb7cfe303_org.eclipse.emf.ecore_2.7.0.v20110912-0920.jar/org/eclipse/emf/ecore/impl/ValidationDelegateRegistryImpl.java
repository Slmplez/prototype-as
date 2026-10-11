/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.emf.ecore.impl;

import java.util.HashMap;
import org.eclipse.emf.ecore.EValidator;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ValidationDelegateRegistryImpl
extends HashMap<String, Object>
implements EValidator.ValidationDelegate.Registry {
    private static final long serialVersionUID = 1L;
    protected EValidator.ValidationDelegate.Registry delegateRegistry;

    public ValidationDelegateRegistryImpl() {
    }

    public ValidationDelegateRegistryImpl(EValidator.ValidationDelegate.Registry delegateRegistry) {
        this.delegateRegistry = delegateRegistry;
    }

    @Override
    public Object get(Object key) {
        Object validationDelegate = super.get(key);
        if (validationDelegate instanceof EValidator.ValidationDelegate.Descriptor) {
            EValidator.ValidationDelegate.Descriptor validationDelegateDescriptor = (EValidator.ValidationDelegate.Descriptor)validationDelegate;
            validationDelegate = validationDelegateDescriptor.getValidationDelegate();
            this.put((String)key, validationDelegate);
            return validationDelegate;
        }
        if (validationDelegate != null) {
            return validationDelegate;
        }
        return this.delegatedGet(key);
    }

    @Override
    public EValidator.ValidationDelegate getValidationDelegate(String uri) {
        return (EValidator.ValidationDelegate)this.get(uri);
    }

    protected Object delegatedGet(Object key) {
        if (this.delegateRegistry != null) {
            return this.delegateRegistry.get(key);
        }
        return null;
    }

    @Override
    public boolean containsKey(Object key) {
        return super.containsKey(key) || this.delegateRegistry != null && this.delegateRegistry.containsKey(key);
    }
}

