/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.core.runtime.Plugin
 *  org.eclipse.jface.preference.IPreferenceStore
 *  org.eclipse.jface.text.PropagatingFontFieldEditor
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.ui.plugin.AbstractUIPlugin
 */
package org.eclipse.ui.texteditor;

import org.eclipse.core.runtime.Platform;
import org.eclipse.core.runtime.Plugin;
import org.eclipse.jface.preference.IPreferenceStore;
import org.eclipse.jface.text.PropagatingFontFieldEditor;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.ui.plugin.AbstractUIPlugin;
import org.eclipse.ui.texteditor.EditorMessages;

public class WorkbenchChainedTextFontFieldEditor
extends PropagatingFontFieldEditor {
    public WorkbenchChainedTextFontFieldEditor(String name, String labelText, Composite parent) {
        super(name, labelText, parent, EditorMessages.WorkbenchChainedTextFontFieldEditor_defaultWorkbenchTextFont);
    }

    public static void startPropagate(IPreferenceStore target, String targetKey) {
        AbstractUIPlugin uiPlugin;
        IPreferenceStore store;
        Plugin plugin = Platform.getPlugin((String)"org.eclipse.ui.workbench");
        if (plugin instanceof AbstractUIPlugin && (store = (uiPlugin = (AbstractUIPlugin)plugin).getPreferenceStore()) != null) {
            PropagatingFontFieldEditor.startPropagate((IPreferenceStore)store, (String)"org.eclipse.jface.textfont", (IPreferenceStore)target, (String)targetKey);
        }
    }
}

