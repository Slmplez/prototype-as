/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.resource.ColorRegistry
 *  org.eclipse.jface.util.IPropertyChangeListener
 *  org.eclipse.jface.util.PropertyChangeEvent
 *  org.eclipse.swt.graphics.Color
 *  org.eclipse.swt.graphics.RGB
 *  org.eclipse.swt.widgets.Display
 */
package org.eclipse.ui.internal.themes;

import java.util.HashSet;
import java.util.Set;
import org.eclipse.jface.resource.ColorRegistry;
import org.eclipse.jface.util.IPropertyChangeListener;
import org.eclipse.jface.util.PropertyChangeEvent;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.RGB;
import org.eclipse.swt.widgets.Display;
import org.eclipse.ui.PlatformUI;

public class CascadingColorRegistry
extends ColorRegistry {
    private ColorRegistry parent;
    private IPropertyChangeListener listener = new IPropertyChangeListener(){

        public void propertyChange(PropertyChangeEvent event) {
            if (!CascadingColorRegistry.this.hasOverrideFor(event.getProperty())) {
                CascadingColorRegistry.this.fireMappingChanged(event.getProperty(), event.getOldValue(), event.getNewValue());
            }
        }
    };

    public CascadingColorRegistry(ColorRegistry parent) {
        super(Display.getCurrent(), false);
        this.parent = parent;
        parent.addListener(this.listener);
    }

    public Color get(String symbolicName) {
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

    public RGB getRGB(String symbolicName) {
        if (super.hasValueFor(symbolicName)) {
            return super.getRGB(symbolicName);
        }
        return this.parent.getRGB(symbolicName);
    }

    public boolean hasValueFor(String colorKey) {
        return super.hasValueFor(colorKey) || this.parent.hasValueFor(colorKey);
    }

    public boolean hasOverrideFor(String colorKey) {
        return super.hasValueFor(colorKey);
    }

    public void dispose() {
        this.parent.removeListener(this.listener);
        PlatformUI.getWorkbench().getDisplay().asyncExec(this.displayRunnable);
    }
}

