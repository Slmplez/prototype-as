/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.common.NotDefinedException
 *  org.eclipse.jface.bindings.BindingManager
 *  org.eclipse.jface.bindings.ISchemeListener
 *  org.eclipse.jface.bindings.Scheme
 */
package org.eclipse.ui.internal.keys;

import org.eclipse.jface.bindings.BindingManager;
import org.eclipse.jface.bindings.ISchemeListener;
import org.eclipse.jface.bindings.Scheme;
import org.eclipse.ui.commands.IKeyConfiguration;
import org.eclipse.ui.commands.IKeyConfigurationListener;
import org.eclipse.ui.commands.NotDefinedException;
import org.eclipse.ui.internal.keys.LegacySchemeListenerWrapper;

public final class SchemeLegacyWrapper
implements IKeyConfiguration {
    private final BindingManager bindingManager;
    private final Scheme scheme;

    public SchemeLegacyWrapper(Scheme scheme, BindingManager bindingManager) {
        if (scheme == null) {
            throw new NullPointerException("Cannot wrap a null scheme");
        }
        if (bindingManager == null) {
            throw new NullPointerException("Cannot wrap a scheme without a binding manager");
        }
        this.scheme = scheme;
        this.bindingManager = bindingManager;
    }

    public void addKeyConfigurationListener(IKeyConfigurationListener keyConfigurationListener) {
        this.scheme.addSchemeListener((ISchemeListener)new LegacySchemeListenerWrapper(keyConfigurationListener, this.bindingManager));
    }

    public int compareTo(Object o) {
        return this.scheme.compareTo(o);
    }

    public String getDescription() throws NotDefinedException {
        try {
            return this.scheme.getDescription();
        }
        catch (org.eclipse.core.commands.common.NotDefinedException e) {
            throw new NotDefinedException(e);
        }
    }

    public String getId() {
        return this.scheme.getId();
    }

    public String getName() throws NotDefinedException {
        try {
            return this.scheme.getName();
        }
        catch (org.eclipse.core.commands.common.NotDefinedException e) {
            throw new NotDefinedException(e);
        }
    }

    public String getParentId() throws NotDefinedException {
        try {
            return this.scheme.getParentId();
        }
        catch (org.eclipse.core.commands.common.NotDefinedException e) {
            throw new NotDefinedException(e);
        }
    }

    public boolean isActive() {
        return this.scheme.getId().equals(this.bindingManager.getActiveScheme().getId());
    }

    public boolean isDefined() {
        return this.scheme.isDefined();
    }

    public void removeKeyConfigurationListener(IKeyConfigurationListener keyConfigurationListener) {
        this.scheme.removeSchemeListener((ISchemeListener)new LegacySchemeListenerWrapper(keyConfigurationListener, this.bindingManager));
    }
}

