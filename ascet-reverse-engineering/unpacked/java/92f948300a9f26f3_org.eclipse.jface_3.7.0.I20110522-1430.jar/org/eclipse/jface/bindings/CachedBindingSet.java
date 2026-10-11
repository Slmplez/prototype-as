/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.util.Tracing
 */
package org.eclipse.jface.bindings;

import java.util.Collections;
import java.util.Map;
import org.eclipse.core.commands.util.Tracing;
import org.eclipse.jface.bindings.BindingManager;
import org.eclipse.jface.util.Util;

final class CachedBindingSet {
    private static final int HASH_FACTOR = 89;
    private static final int HASH_INITIAL;
    private final Map activeContextTree;
    private Map bindingsByTrigger = null;
    private Map conflictsByTrigger = null;
    private transient int hashCode;
    private transient boolean hashCodeComputed = false;
    private final String[] locales;
    private final String[] platforms;
    private Map prefixTable = null;
    private final String[] schemeIds;
    private Map triggersByCommandId = null;
    static /* synthetic */ Class class$0;

    static {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.jface.bindings.CachedBindingSet");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        HASH_INITIAL = clazz.getName().hashCode();
    }

    CachedBindingSet(Map activeContextTree, String[] locales, String[] platforms, String[] schemeIds) {
        if (locales == null) {
            throw new NullPointerException("The locales cannot be null.");
        }
        if (locales.length == 0) {
            throw new NullPointerException("The locales cannot be empty.");
        }
        if (platforms == null) {
            throw new NullPointerException("The platforms cannot be null.");
        }
        if (platforms.length == 0) {
            throw new NullPointerException("The platforms cannot be empty.");
        }
        this.activeContextTree = activeContextTree;
        this.locales = locales;
        this.platforms = platforms;
        this.schemeIds = schemeIds;
    }

    public final boolean equals(Object object) {
        if (!(object instanceof CachedBindingSet)) {
            return false;
        }
        CachedBindingSet other = (CachedBindingSet)object;
        if (!Util.equals(this.activeContextTree, other.activeContextTree)) {
            return false;
        }
        if (!Util.equals(this.locales, other.locales)) {
            return false;
        }
        if (!Util.equals(this.platforms, other.platforms)) {
            return false;
        }
        return Util.equals(this.schemeIds, other.schemeIds);
    }

    final Map getBindingsByTrigger() {
        return this.bindingsByTrigger;
    }

    final Map getConflictsByTrigger() {
        return this.conflictsByTrigger;
    }

    final Map getPrefixTable() {
        return this.prefixTable;
    }

    final Map getTriggersByCommandId() {
        return this.triggersByCommandId;
    }

    public final int hashCode() {
        if (!this.hashCodeComputed) {
            this.hashCode = HASH_INITIAL;
            this.hashCode = this.hashCode * 89 + Util.hashCode(this.activeContextTree);
            this.hashCode = this.hashCode * 89 + Util.hashCode(this.locales);
            this.hashCode = this.hashCode * 89 + Util.hashCode(this.platforms);
            this.hashCode = this.hashCode * 89 + Util.hashCode(this.schemeIds);
            this.hashCodeComputed = true;
        }
        return this.hashCode;
    }

    final void setBindingsByTrigger(Map commandIdsByTrigger) {
        if (commandIdsByTrigger == null) {
            throw new NullPointerException("Cannot set a null binding resolution");
        }
        this.bindingsByTrigger = commandIdsByTrigger;
    }

    final void setConflictsByTrigger(Map conflicts) {
        if (conflicts == null) {
            throw new NullPointerException("Cannot set a null binding conflicts");
        }
        this.conflictsByTrigger = conflicts;
    }

    final void setPrefixTable(Map prefixTable) {
        if (prefixTable == null) {
            this.prefixTable = Collections.EMPTY_MAP;
            if (BindingManager.DEBUG) {
                Tracing.printTrace((String)"BINDINGS", (String)"Cannot set a null prefix table, set to EMPTY_MAP");
            }
            return;
        }
        this.prefixTable = prefixTable;
    }

    final void setTriggersByCommandId(Map triggersByCommandId) {
        if (triggersByCommandId == null) {
            throw new NullPointerException("Cannot set a null binding resolution");
        }
        this.triggersByCommandId = triggersByCommandId;
    }
}

