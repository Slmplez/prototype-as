/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.emf.ecore.resource.impl;

import org.eclipse.emf.ecore.resource.impl.DESCipherImpl;

@Deprecated
public class CryptoCipherImpl
extends DESCipherImpl {
    public CryptoCipherImpl() {
        super(null);
    }

    public CryptoCipherImpl(String key) {
        super(key);
    }
}

