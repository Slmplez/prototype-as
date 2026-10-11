/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.resource.FontRegistry
 *  org.eclipse.jface.util.IPropertyChangeListener
 *  org.eclipse.jface.util.PropertyChangeEvent
 *  org.eclipse.swt.graphics.Font
 *  org.eclipse.swt.graphics.FontData
 *  org.eclipse.swt.widgets.Display
 */
package org.eclipse.ui.internal.themes;

import java.util.HashSet;
import java.util.Set;
import org.eclipse.jface.resource.FontRegistry;
import org.eclipse.jface.util.IPropertyChangeListener;
import org.eclipse.jface.util.PropertyChangeEvent;
import org.eclipse.swt.graphics.Font;
import org.eclipse.swt.graphics.FontData;
import org.eclipse.swt.widgets.Display;
import org.eclipse.ui.PlatformUI;

public class CascadingFontRegistry
extends FontRegistry {
    private FontRegistry parent;
    private IPropertyChangeListener listener = new IPropertyChangeListener(){

        public void propertyChange(PropertyChangeEvent event) {
            if (!CascadingFontRegistry.this.hasOverrideFor(event.getProperty())) {
                CascadingFontRegistry.this.fireMappingChanged(event.getProperty(), event.getOldValue(), event.getNewValue());
            }
        }
    };

    public CascadingFontRegistry(FontRegistry parent) {
        super(Display.getCurrent(), false);
        this.parent = parent;
        parent.addListener(this.listener);
    }

    public Font get(String symbolicName) {
        if (super.hasValueFor(symbolicName)) {
            return super.get(symbolicName);
        }
        return this.parent.get(symbolicName);
    }

    public Set getKeySet() {
        HashSet keyUnion = new HashSet(super.getKeySet());
        keyUnion.addAll(this.parent.getKeySet());
        return keyUnion;
    }

    public FontData[] getFontData(String symbolicName) {
        if (super.hasValueFor(symbolicName)) {
            return super.getFontData(symbolicName);
        }
        return this.parent.getFontData(symbolicName);
    }

    public boolean hasValueFor(String colorKey) {
        return super.hasValueFor(colorKey) || this.parent.hasValueFor(colorKey);
    }

    public boolean hasOverrideFor(String fontKey) {
        return super.hasValueFor(fontKey);
    }

    public void dispose() {
        this.parent.removeListener(this.listener);
        PlatformUI.getWorkbench().getDisplay().asyncExec(this.displayRunnable);
    }
}

