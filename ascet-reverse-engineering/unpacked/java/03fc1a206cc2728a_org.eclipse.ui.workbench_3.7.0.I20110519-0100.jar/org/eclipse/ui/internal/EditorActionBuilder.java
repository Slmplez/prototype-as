/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IConfigurationElement
 */
package org.eclipse.ui.internal;

import java.util.ArrayList;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.ui.IActionBars;
import org.eclipse.ui.IEditorActionBarContributor;
import org.eclipse.ui.IEditorDescriptor;
import org.eclipse.ui.IEditorPart;
import org.eclipse.ui.IWorkbenchPage;
import org.eclipse.ui.internal.ActionDescriptor;
import org.eclipse.ui.internal.EditorPluginAction;
import org.eclipse.ui.internal.PluginActionBuilder;

public class EditorActionBuilder
extends PluginActionBuilder {
    private static final String TAG_CONTRIBUTION_TYPE = "editorContribution";

    protected ActionDescriptor createActionDescriptor(IConfigurationElement element) {
        return new ActionDescriptor(element, 4);
    }

    protected PluginActionBuilder.BasicContribution createContribution() {
        return new EditorContribution();
    }

    public IEditorActionBarContributor readActionExtensions(IEditorDescriptor desc) {
        ExternalContributor ext = null;
        this.readContributions(desc.getId(), TAG_CONTRIBUTION_TYPE, "editorActions");
        if (this.cache != null) {
            ext = new ExternalContributor(this.cache);
            this.cache = null;
        }
        return ext;
    }

    private static class EditorContribution
    extends PluginActionBuilder.BasicContribution {
        private EditorContribution() {
        }

        public void dispose() {
            this.disposeActions();
            super.dispose();
        }

        public void editorChanged(IEditorPart editor) {
            if (this.actions != null) {
                int i = 0;
                while (i < this.actions.size()) {
                    ActionDescriptor ad = (ActionDescriptor)this.actions.get(i);
                    EditorPluginAction action = (EditorPluginAction)ad.getAction();
                    action.editorChanged(editor);
                    ++i;
                }
            }
        }
    }

    public static class ExternalContributor
    implements IEditorActionBarContributor {
        private ArrayList cache;

        public ExternalContributor(ArrayList cache) {
            this.cache = cache;
        }

        public void dispose() {
            int i = 0;
            while (i < this.cache.size()) {
                ((EditorContribution)this.cache.get(i)).dispose();
                ++i;
            }
        }

        public ActionDescriptor[] getExtendedActions() {
            ArrayList results = new ArrayList();
            int i = 0;
            while (i < this.cache.size()) {
                EditorContribution ec = (EditorContribution)this.cache.get(i);
                if (ec.actions != null) {
                    results.addAll(ec.actions);
                }
                ++i;
            }
            return results.toArray(new ActionDescriptor[results.size()]);
        }

        public void init(IActionBars bars, IWorkbenchPage page) {
            int i = 0;
            while (i < this.cache.size()) {
                ((EditorContribution)this.cache.get(i)).contribute(bars.getMenuManager(), false, bars.getToolBarManager(), true);
                ++i;
            }
        }

        public void setActiveEditor(IEditorPart editor) {
            int i = 0;
            while (i < this.cache.size()) {
                ((EditorContribution)this.cache.get(i)).editorChanged(editor);
                ++i;
            }
        }
    }
}

