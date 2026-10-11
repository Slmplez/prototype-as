/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.emf.ecore.impl;

import java.util.HashMap;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EValidator;
import org.eclipse.emf.ecore.util.EObjectValidator;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class EValidatorRegistryImpl
extends HashMap<EPackage, Object>
implements EValidator.Registry {
    private static final long serialVersionUID = 1L;
    protected EValidator.Registry delegateRegistry;

    public EValidatorRegistryImpl() {
    }

    public EValidatorRegistryImpl(EValidator.Registry delegateRegistry) {
        this.delegateRegistry = delegateRegistry;
    }

    @Override
    public Object get(Object key) {
        Object eValidator = super.get(key);
        if (eValidator instanceof EValidator.Descriptor) {
            EValidator.Descriptor eValidatorDescriptor = (EValidator.Descriptor)eValidator;
            eValidator = eValidatorDescriptor.getEValidator();
            this.put((EPackage)key, eValidator);
            return eValidator;
        }
        if (eValidator != null) {
            return eValidator;
        }
        return this.delegatedGet(key);
    }

    @Override
    public EValidator getEValidator(EPackage ePackage) {
        return (EValidator)this.get(ePackage);
    }

    protected Object delegatedGet(Object key) {
        if (this.delegateRegistry != null) {
            return this.delegateRegistry.get(key);
        }
        return key == null ? EObjectValidator.INSTANCE : null;
    }

    @Override
    public boolean containsKey(Object key) {
        return super.containsKey(key) || this.delegateRegistry != null && this.delegateRegistry.containsKey(key);
    }
}

