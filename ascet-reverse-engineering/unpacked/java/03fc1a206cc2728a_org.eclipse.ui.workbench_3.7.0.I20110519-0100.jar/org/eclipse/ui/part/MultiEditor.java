/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.resource.ColorRegistry
 *  org.eclipse.swt.graphics.Color
 *  org.eclipse.swt.layout.FillLayout
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Event
 *  org.eclipse.swt.widgets.Layout
 *  org.eclipse.swt.widgets.Listener
 */
package org.eclipse.ui.part;

import org.eclipse.jface.resource.ColorRegistry;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.layout.FillLayout;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Layout;
import org.eclipse.swt.widgets.Listener;
import org.eclipse.ui.IEditorPart;
import org.eclipse.ui.IEditorReference;
import org.eclipse.ui.internal.WorkbenchWindow;
import org.eclipse.ui.part.AbstractMultiEditor;
import org.eclipse.ui.themes.ITheme;

public abstract class MultiEditor
extends AbstractMultiEditor {
    public void updateGradient(IEditorPart editor) {
        boolean activeEditor = editor == this.getSite().getPage().getActiveEditor();
        boolean activePart = editor == this.getSite().getPage().getActivePart();
        ITheme theme = editor.getEditorSite().getWorkbenchWindow().getWorkbench().getThemeManager().getCurrentTheme();
        Gradient g = new Gradient();
        ColorRegistry colorRegistry = theme.getColorRegistry();
        if (activePart) {
            g.fgColor = colorRegistry.get("org.eclipse.ui.workbench.ACTIVE_TAB_TEXT_COLOR");
            g.bgColors = new Color[2];
            g.bgColors[0] = colorRegistry.get("org.eclipse.ui.workbench.ACTIVE_TAB_BG_START");
            g.bgColors[1] = colorRegistry.get("org.eclipse.ui.workbench.ACTIVE_TAB_BG_END");
        } else if (activeEditor) {
            g.fgColor = colorRegistry.get("org.eclipse.ui.workbench.ACTIVE_TAB_TEXT_COLOR");
            g.bgColors = new Color[2];
            g.bgColors[0] = colorRegistry.get("org.eclipse.ui.workbench.ACTIVE_TAB_BG_START");
            g.bgColors[1] = colorRegistry.get("org.eclipse.ui.workbench.ACTIVE_TAB_BG_END");
        } else {
            g.fgColor = colorRegistry.get("org.eclipse.ui.workbench.INACTIVE_TAB_TEXT_COLOR");
            g.bgColors = new Color[2];
            g.bgColors[0] = colorRegistry.get("org.eclipse.ui.workbench.INACTIVE_TAB_BG_START");
            g.bgColors[1] = colorRegistry.get("org.eclipse.ui.workbench.INACTIVE_TAB_BG_END");
        }
        g.bgPercents = new int[]{theme.getInt("org.eclipse.ui.workbench.ACTIVE_TAB_PERCENT")};
        this.drawGradient(editor, g);
    }

    protected abstract void drawGradient(IEditorPart var1, Gradient var2);

    public Composite createInnerPartControl(Composite parent, final IEditorPart e) {
        Composite content = new Composite(parent, 0);
        content.setLayout((Layout)new FillLayout());
        e.createPartControl(content);
        parent.addListener(26, new Listener(){

            public void handleEvent(Event event) {
                if (event.type == 26) {
                    MultiEditor.this.activateEditor(e);
                }
            }
        });
        return content;
    }

    public void setFocus() {
        super.setFocus();
        this.updateGradient(this.getActiveEditor());
    }

    public void activateEditor(IEditorPart part) {
        IEditorPart oldEditor = this.getActiveEditor();
        super.activateEditor(part);
        this.updateGradient(oldEditor);
    }

    protected boolean getShellActivated() {
        WorkbenchWindow window = (WorkbenchWindow)this.getSite().getPage().getWorkbenchWindow();
        return window.getShellActivated();
    }

    public Composite getInnerEditorContainer(IEditorReference innerEditorReference) {
        return null;
    }

    protected void innerEditorsCreated() {
    }

    public static class Gradient {
        public Color fgColor;
        public Color[] bgColors;
        public int[] bgPercents;
    }
}

