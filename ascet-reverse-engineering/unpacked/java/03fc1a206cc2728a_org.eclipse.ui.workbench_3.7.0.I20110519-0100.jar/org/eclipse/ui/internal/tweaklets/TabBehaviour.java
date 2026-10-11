/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.preference.IPreferenceStore
 *  org.eclipse.swt.graphics.Color
 *  org.eclipse.swt.graphics.Device
 *  org.eclipse.swt.graphics.Font
 *  org.eclipse.swt.graphics.FontData
 *  org.eclipse.swt.graphics.RGB
 *  org.eclipse.swt.widgets.Button
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Display
 */
package org.eclipse.ui.internal.tweaklets;

import org.eclipse.jface.preference.IPreferenceStore;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.Device;
import org.eclipse.swt.graphics.Font;
import org.eclipse.swt.graphics.FontData;
import org.eclipse.swt.graphics.RGB;
import org.eclipse.swt.widgets.Button;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Display;
import org.eclipse.ui.IEditorInput;
import org.eclipse.ui.IEditorReference;
import org.eclipse.ui.internal.EditorAreaHelper;
import org.eclipse.ui.internal.EditorManager;
import org.eclipse.ui.internal.WorkbenchPage;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.internal.registry.EditorDescriptor;
import org.eclipse.ui.internal.tweaklets.TabBehaviourMRU;
import org.eclipse.ui.internal.tweaklets.Tweaklets;

public abstract class TabBehaviour {
    public static Tweaklets.TweakKey KEY;
    static /* synthetic */ Class class$0;

    static {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.ui.internal.tweaklets.TabBehaviour");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        KEY = new Tweaklets.TweakKey(clazz);
        Tweaklets.setDefault(KEY, new TabBehaviourMRU());
    }

    public abstract boolean alwaysShowPinAction();

    public abstract IEditorReference findReusableEditor(WorkbenchPage var1);

    public abstract IEditorReference reuseInternalEditor(WorkbenchPage var1, EditorManager var2, EditorAreaHelper var3, EditorDescriptor var4, IEditorInput var5, IEditorReference var6);

    public void setPreferenceVisibility(Composite editorReuseGroup, Button showMultipleEditorTabs) {
    }

    public boolean autoPinOnDirty() {
        return false;
    }

    public boolean isPerTabHistoryEnabled() {
        return false;
    }

    public int getReuseEditorMatchFlags(int originalMatchFlags) {
        return originalMatchFlags;
    }

    public int getEditorReuseThreshold() {
        IPreferenceStore store = WorkbenchPlugin.getDefault().getPreferenceStore();
        return store.getInt("REUSE_OPEN_EDITORS");
    }

    public boolean enableMRUTabVisibility() {
        return true;
    }

    public boolean sortEditorListAlphabetically() {
        return true;
    }

    public Color createVisibleEditorsColor(Display display, RGB originalForegroundColor, RGB originalBackgroundColor) {
        return new Color((Device)display, originalForegroundColor);
    }

    public Font createVisibleEditorsFont(Display display, Font originalFont) {
        FontData[] fontData = originalFont.getFontData();
        return new Font((Device)display, fontData);
    }

    public Font createInvisibleEditorsFont(Display display, Font originalFont) {
        FontData[] fontData = originalFont.getFontData();
        int i = 0;
        while (i < fontData.length) {
            fontData[i].setStyle(fontData[i].getStyle() | 1);
            ++i;
        }
        return new Font((Device)display, fontData);
    }
}

