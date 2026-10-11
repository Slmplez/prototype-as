/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.expressions.IEvaluationContext
 *  org.eclipse.jface.viewers.ISelection
 */
package org.eclipse.ui.internal.services;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import org.eclipse.core.expressions.IEvaluationContext;
import org.eclipse.jface.viewers.ISelection;
import org.eclipse.ui.AbstractSourceProvider;

public final class MenuSourceProvider
extends AbstractSourceProvider {
    private static final String[] PROVIDED_SOURCE_NAMES = new String[]{"activeMenu", "activeMenuSelection", "activeMenuEditorInput"};
    private Set menuIds = new HashSet();
    private ISelection selection = null;
    private ISelection input = null;

    public final void addShowingMenus(Set menuIds, ISelection localSelection, ISelection localEditorInput) {
        this.menuIds.addAll(menuIds);
        if (DEBUG) {
            this.logDebuggingInfo("Menu ids changed to " + this.menuIds);
        }
        HashMap<String, Object> m = new HashMap<String, Object>();
        m.put("activeMenu", this.menuIds);
        if (this.selection != localSelection) {
            this.selection = localSelection;
            m.put("activeMenuSelection", this.selection == null ? IEvaluationContext.UNDEFINED_VARIABLE : this.selection);
        }
        if (this.input != localEditorInput) {
            this.input = localEditorInput;
            m.put("activeMenuEditorInput", this.input == null ? IEvaluationContext.UNDEFINED_VARIABLE : this.input);
        }
        this.fireSourceChanged(Integer.MIN_VALUE, m);
    }

    public final void dispose() {
        this.menuIds.clear();
        this.selection = null;
        this.input = null;
    }

    public final Map getCurrentState() {
        HashMap<String, Object> state = new HashMap<String, Object>();
        state.put("activeMenu", this.menuIds);
        state.put("activeMenuSelection", this.selection == null ? IEvaluationContext.UNDEFINED_VARIABLE : this.selection);
        state.put("activeMenuEditorInput", this.input == null ? IEvaluationContext.UNDEFINED_VARIABLE : this.input);
        return state;
    }

    public final String[] getProvidedSourceNames() {
        return PROVIDED_SOURCE_NAMES;
    }

    public final void removeShowingMenus(Set menuIds, ISelection localSelection, ISelection localEditorInput) {
        this.menuIds.removeAll(menuIds);
        if (DEBUG) {
            this.logDebuggingInfo("Menu ids changed to " + this.menuIds);
        }
        HashMap<String, Object> m = new HashMap<String, Object>();
        m.put("activeMenu", this.menuIds);
        if (this.selection != localSelection) {
            this.selection = localSelection;
            m.put("activeMenuSelection", this.selection == null ? IEvaluationContext.UNDEFINED_VARIABLE : this.selection);
        }
        if (this.input != localEditorInput) {
            this.input = localEditorInput;
            m.put("activeMenuEditorInput", this.input == null ? IEvaluationContext.UNDEFINED_VARIABLE : this.input);
        }
        this.fireSourceChanged(Integer.MIN_VALUE, m);
    }
}

