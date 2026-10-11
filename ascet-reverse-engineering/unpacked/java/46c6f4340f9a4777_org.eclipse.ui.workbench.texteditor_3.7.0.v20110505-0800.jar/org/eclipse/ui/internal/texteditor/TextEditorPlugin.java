/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.IRegistryChangeEvent
 *  org.eclipse.core.runtime.IRegistryChangeListener
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.jface.action.IAction
 *  org.eclipse.ui.plugin.AbstractUIPlugin
 *  org.osgi.framework.BundleContext
 */
package org.eclipse.ui.internal.texteditor;

import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.IRegistryChangeEvent;
import org.eclipse.core.runtime.IRegistryChangeListener;
import org.eclipse.core.runtime.Platform;
import org.eclipse.jface.action.IAction;
import org.eclipse.ui.internal.texteditor.EditPosition;
import org.eclipse.ui.internal.texteditor.quickdiff.QuickDiffExtensionsRegistry;
import org.eclipse.ui.internal.texteditor.spelling.SpellingEngineRegistry;
import org.eclipse.ui.plugin.AbstractUIPlugin;
import org.osgi.framework.BundleContext;

public final class TextEditorPlugin
extends AbstractUIPlugin
implements IRegistryChangeListener {
    private static TextEditorPlugin fgPlugin;
    private EditPosition fLastEditPosition;
    private Set fLastEditPositionDependentActions;
    private QuickDiffExtensionsRegistry fQuickDiffExtensionRegistry;
    private SpellingEngineRegistry fSpellingEngineRegistry;
    public static final String PLUGIN_ID = "org.eclipse.ui.workbench.texteditor";
    public static final String REFERENCE_PROVIDER_EXTENSION_POINT = "quickDiffReferenceProvider";

    public TextEditorPlugin() {
        Assert.isTrue((fgPlugin == null ? 1 : 0) != 0);
        fgPlugin = this;
    }

    public static TextEditorPlugin getDefault() {
        return fgPlugin;
    }

    public EditPosition getLastEditPosition() {
        return this.fLastEditPosition;
    }

    public void setLastEditPosition(EditPosition lastEditPosition) {
        this.fLastEditPosition = lastEditPosition;
        if (this.fLastEditPosition != null && this.fLastEditPositionDependentActions != null) {
            Iterator iter = this.fLastEditPositionDependentActions.iterator();
            while (iter.hasNext()) {
                ((IAction)iter.next()).setEnabled(true);
            }
            this.fLastEditPositionDependentActions = null;
        }
    }

    public void addLastEditPositionDependentAction(IAction action) {
        if (this.fLastEditPosition != null) {
            return;
        }
        if (this.fLastEditPositionDependentActions == null) {
            this.fLastEditPositionDependentActions = new HashSet();
        }
        this.fLastEditPositionDependentActions.add(action);
    }

    public void removeLastEditPositionDependentAction(IAction action) {
        if (this.fLastEditPosition != null) {
            return;
        }
        if (this.fLastEditPositionDependentActions != null) {
            this.fLastEditPositionDependentActions.remove(action);
        }
    }

    public void start(BundleContext context) throws Exception {
        super.start(context);
        this.fQuickDiffExtensionRegistry = new QuickDiffExtensionsRegistry();
        this.fSpellingEngineRegistry = new SpellingEngineRegistry();
        Platform.getExtensionRegistry().addRegistryChangeListener((IRegistryChangeListener)this, PLUGIN_ID);
    }

    public void stop(BundleContext context) throws Exception {
        Platform.getExtensionRegistry().removeRegistryChangeListener((IRegistryChangeListener)this);
        this.fQuickDiffExtensionRegistry = null;
        this.fSpellingEngineRegistry = null;
        super.stop(context);
    }

    public void registryChanged(IRegistryChangeEvent event) {
        if (this.fQuickDiffExtensionRegistry != null && event.getExtensionDeltas(PLUGIN_ID, REFERENCE_PROVIDER_EXTENSION_POINT).length > 0) {
            this.fQuickDiffExtensionRegistry.reloadExtensions();
        }
        if (this.fSpellingEngineRegistry != null && event.getExtensionDeltas(PLUGIN_ID, "spellingEngine").length > 0) {
            this.fSpellingEngineRegistry.reloadExtensions();
        }
    }

    public QuickDiffExtensionsRegistry getQuickDiffExtensionRegistry() {
        return this.fQuickDiffExtensionRegistry;
    }

    public SpellingEngineRegistry getSpellingEngineRegistry() {
        return this.fSpellingEngineRegistry;
    }
}

