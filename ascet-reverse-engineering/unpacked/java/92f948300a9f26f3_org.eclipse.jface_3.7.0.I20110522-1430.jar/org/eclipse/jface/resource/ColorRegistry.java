/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.swt.graphics.Color
 *  org.eclipse.swt.graphics.Device
 *  org.eclipse.swt.graphics.RGB
 *  org.eclipse.swt.widgets.Display
 */
package org.eclipse.jface.resource;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.resource.ColorDescriptor;
import org.eclipse.jface.resource.RGBColorDescriptor;
import org.eclipse.jface.resource.ResourceRegistry;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.Device;
import org.eclipse.swt.graphics.RGB;
import org.eclipse.swt.widgets.Display;

public class ColorRegistry
extends ResourceRegistry {
    private static final ColorDescriptor DEFAULT_COLOR = new RGBColorDescriptor(new RGB(0, 255, 255));
    protected Display display;
    private List staleColors = new ArrayList();
    private Map stringToColor = new HashMap(7);
    private Map stringToRGB = new HashMap(7);
    protected Runnable displayRunnable = new Runnable(){

        public void run() {
            ColorRegistry.this.clearCaches();
        }
    };
    private final boolean cleanOnDisplayDisposal;

    public ColorRegistry() {
        this(Display.getCurrent(), true);
    }

    public ColorRegistry(Display display) {
        this(display, true);
    }

    public ColorRegistry(Display display, boolean cleanOnDisplayDisposal) {
        Assert.isNotNull((Object)display);
        this.display = display;
        this.cleanOnDisplayDisposal = cleanOnDisplayDisposal;
        if (cleanOnDisplayDisposal) {
            this.hookDisplayDispose();
        }
    }

    private Color createColor(RGB rgb) {
        if (this.display == null) {
            Display display = Display.getCurrent();
            if (display == null) {
                throw new IllegalStateException();
            }
            this.display = display;
            if (this.cleanOnDisplayDisposal) {
                this.hookDisplayDispose();
            }
        }
        return new Color((Device)this.display, rgb);
    }

    private void disposeColors(Iterator iterator) {
        while (iterator.hasNext()) {
            Object next = iterator.next();
            ((Color)next).dispose();
        }
    }

    public Color get(String symbolicName) {
        Assert.isNotNull((Object)symbolicName);
        Object result = this.stringToColor.get(symbolicName);
        if (result != null) {
            return (Color)result;
        }
        Color color = null;
        result = this.stringToRGB.get(symbolicName);
        if (result == null) {
            return null;
        }
        color = this.createColor((RGB)result);
        this.stringToColor.put(symbolicName, color);
        return color;
    }

    public Set getKeySet() {
        return Collections.unmodifiableSet(this.stringToRGB.keySet());
    }

    public RGB getRGB(String symbolicName) {
        Assert.isNotNull((Object)symbolicName);
        return (RGB)this.stringToRGB.get(symbolicName);
    }

    public ColorDescriptor getColorDescriptor(String symbolicName) {
        return this.getColorDescriptor(symbolicName, DEFAULT_COLOR);
    }

    public ColorDescriptor getColorDescriptor(String symbolicName, ColorDescriptor defaultValue) {
        RGB rgb = this.getRGB(symbolicName);
        if (rgb == null) {
            return defaultValue;
        }
        return ColorDescriptor.createFrom(rgb);
    }

    protected void clearCaches() {
        this.disposeColors(this.stringToColor.values().iterator());
        this.disposeColors(this.staleColors.iterator());
        this.stringToColor.clear();
        this.staleColors.clear();
        this.display = null;
    }

    public boolean hasValueFor(String colorKey) {
        return this.stringToRGB.containsKey(colorKey);
    }

    private void hookDisplayDispose() {
        this.display.disposeExec(this.displayRunnable);
    }

    public void put(String symbolicName, RGB colorData) {
        this.put(symbolicName, colorData, true);
    }

    private void put(String symbolicName, RGB colorData, boolean update) {
        Assert.isNotNull((Object)symbolicName);
        Assert.isNotNull((Object)colorData);
        RGB existing = (RGB)this.stringToRGB.get(symbolicName);
        if (colorData.equals((Object)existing)) {
            return;
        }
        Color oldColor = (Color)this.stringToColor.remove(symbolicName);
        this.stringToRGB.put(symbolicName, colorData);
        if (update) {
            this.fireMappingChanged(symbolicName, existing, colorData);
        }
        if (oldColor != null) {
            this.staleColors.add(oldColor);
        }
    }
}

