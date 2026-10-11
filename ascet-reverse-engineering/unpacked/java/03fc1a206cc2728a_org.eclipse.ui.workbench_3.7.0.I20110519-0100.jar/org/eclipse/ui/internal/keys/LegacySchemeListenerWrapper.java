/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.bindings.BindingManager
 *  org.eclipse.jface.bindings.ISchemeListener
 *  org.eclipse.jface.bindings.SchemeEvent
 */
package org.eclipse.ui.internal.keys;

import org.eclipse.jface.bindings.BindingManager;
import org.eclipse.jface.bindings.ISchemeListener;
import org.eclipse.jface.bindings.SchemeEvent;
import org.eclipse.ui.commands.IKeyConfigurationListener;
import org.eclipse.ui.commands.KeyConfigurationEvent;
import org.eclipse.ui.internal.keys.SchemeLegacyWrapper;

final class LegacySchemeListenerWrapper
implements ISchemeListener {
    private final BindingManager bindingManager;
    private final IKeyConfigurationListener listener;

    LegacySchemeListenerWrapper(IKeyConfigurationListener listener, BindingManager bindingManager) {
        if (listener == null) {
            throw new NullPointerException("Cannot wrap a null listener");
        }
        if (bindingManager == null) {
            throw new NullPointerException("Cannot wrap a listener without a binding manager");
        }
        this.listener = listener;
        this.bindingManager = bindingManager;
    }

    public final boolean equals(Object object) {
        if (object instanceof LegacySchemeListenerWrapper) {
            LegacySchemeListenerWrapper wrapper = (LegacySchemeListenerWrapper)object;
            return this.listener.equals(wrapper.listener);
        }
        if (object instanceof IKeyConfigurationListener) {
            IKeyConfigurationListener other = (IKeyConfigurationListener)object;
            return this.listener.equals(other);
        }
        return false;
    }

    public final int hashCode() {
        return this.listener.hashCode();
    }

    public final void schemeChanged(SchemeEvent schemeEvent) {
        SchemeLegacyWrapper keyConfiguration = new SchemeLegacyWrapper(schemeEvent.getScheme(), this.bindingManager);
        boolean definedChanged = schemeEvent.isDefinedChanged();
        boolean nameChanged = schemeEvent.isNameChanged();
        boolean parentIdChanged = schemeEvent.isParentIdChanged();
        this.listener.keyConfigurationChanged(new KeyConfigurationEvent(keyConfiguration, false, definedChanged, nameChanged, parentIdChanged));
    }
}

