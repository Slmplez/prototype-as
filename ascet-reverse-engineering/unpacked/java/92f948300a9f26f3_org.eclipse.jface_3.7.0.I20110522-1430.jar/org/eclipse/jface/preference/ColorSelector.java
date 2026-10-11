/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.common.EventManager
 *  org.eclipse.swt.accessibility.AccessibleAdapter
 *  org.eclipse.swt.accessibility.AccessibleEvent
 *  org.eclipse.swt.accessibility.AccessibleListener
 *  org.eclipse.swt.events.DisposeEvent
 *  org.eclipse.swt.events.DisposeListener
 *  org.eclipse.swt.events.SelectionAdapter
 *  org.eclipse.swt.events.SelectionEvent
 *  org.eclipse.swt.events.SelectionListener
 *  org.eclipse.swt.graphics.Color
 *  org.eclipse.swt.graphics.Device
 *  org.eclipse.swt.graphics.Drawable
 *  org.eclipse.swt.graphics.Font
 *  org.eclipse.swt.graphics.GC
 *  org.eclipse.swt.graphics.Image
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.graphics.RGB
 *  org.eclipse.swt.widgets.Button
 *  org.eclipse.swt.widgets.ColorDialog
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Display
 */
package org.eclipse.jface.preference;

import org.eclipse.core.commands.common.EventManager;
import org.eclipse.jface.resource.JFaceResources;
import org.eclipse.jface.util.IPropertyChangeListener;
import org.eclipse.jface.util.PropertyChangeEvent;
import org.eclipse.swt.accessibility.AccessibleAdapter;
import org.eclipse.swt.accessibility.AccessibleEvent;
import org.eclipse.swt.accessibility.AccessibleListener;
import org.eclipse.swt.events.DisposeEvent;
import org.eclipse.swt.events.DisposeListener;
import org.eclipse.swt.events.SelectionAdapter;
import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.events.SelectionListener;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.Device;
import org.eclipse.swt.graphics.Drawable;
import org.eclipse.swt.graphics.Font;
import org.eclipse.swt.graphics.GC;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.RGB;
import org.eclipse.swt.widgets.Button;
import org.eclipse.swt.widgets.ColorDialog;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Display;

public class ColorSelector
extends EventManager {
    public static final String PROP_COLORCHANGE = "colorValue";
    private Button fButton;
    private Color fColor;
    private RGB fColorValue;
    private Point fExtent;
    private Image fImage;

    public ColorSelector(Composite parent) {
        this.fButton = new Button(parent, 8);
        this.fExtent = this.computeImageSize((Control)parent);
        this.fImage = new Image((Device)parent.getDisplay(), this.fExtent.x, this.fExtent.y);
        GC gc = new GC((Drawable)this.fImage);
        gc.setBackground(this.fButton.getBackground());
        gc.fillRectangle(0, 0, this.fExtent.x, this.fExtent.y);
        gc.dispose();
        this.fButton.setImage(this.fImage);
        this.fButton.addSelectionListener((SelectionListener)new SelectionAdapter(){

            public void widgetSelected(SelectionEvent event) {
                ColorSelector.this.open();
            }
        });
        this.fButton.addDisposeListener(new DisposeListener(){

            public void widgetDisposed(DisposeEvent event) {
                if (ColorSelector.this.fImage != null) {
                    ColorSelector.this.fImage.dispose();
                    ColorSelector.this.fImage = null;
                }
                if (ColorSelector.this.fColor != null) {
                    ColorSelector.this.fColor.dispose();
                    ColorSelector.this.fColor = null;
                }
            }
        });
        this.fButton.getAccessible().addAccessibleListener((AccessibleListener)new AccessibleAdapter(){

            public void getName(AccessibleEvent e) {
                e.result = JFaceResources.getString("ColorSelector.Name");
            }
        });
    }

    public void addListener(IPropertyChangeListener listener) {
        this.addListenerObject(listener);
    }

    private Point computeImageSize(Control window) {
        GC gc = new GC((Drawable)window);
        Font f = JFaceResources.getFontRegistry().get("org.eclipse.jface.dialogfont");
        gc.setFont(f);
        int height = gc.getFontMetrics().getHeight();
        gc.dispose();
        Point p = new Point(height * 3 - 6, height);
        return p;
    }

    public Button getButton() {
        return this.fButton;
    }

    public RGB getColorValue() {
        return this.fColorValue;
    }

    public void removeListener(IPropertyChangeListener listener) {
        this.removeListenerObject(listener);
    }

    public void setColorValue(RGB rgb) {
        this.fColorValue = rgb;
        this.updateColorImage();
    }

    public void setEnabled(boolean state) {
        this.getButton().setEnabled(state);
    }

    protected void updateColorImage() {
        Display display = this.fButton.getDisplay();
        GC gc = new GC((Drawable)this.fImage);
        gc.setForeground(display.getSystemColor(2));
        gc.drawRectangle(0, 2, this.fExtent.x - 1, this.fExtent.y - 4);
        if (this.fColor != null) {
            this.fColor.dispose();
        }
        this.fColor = new Color((Device)display, this.fColorValue);
        gc.setBackground(this.fColor);
        gc.fillRectangle(1, 3, this.fExtent.x - 2, this.fExtent.y - 5);
        gc.dispose();
        this.fButton.setImage(this.fImage);
    }

    public void open() {
        ColorDialog colorDialog = new ColorDialog(this.fButton.getShell());
        colorDialog.setRGB(this.fColorValue);
        RGB newColor = colorDialog.open();
        if (newColor != null) {
            RGB oldValue = this.fColorValue;
            this.fColorValue = newColor;
            Object[] finalListeners = this.getListeners();
            if (finalListeners.length > 0) {
                PropertyChangeEvent pEvent = new PropertyChangeEvent((Object)this, PROP_COLORCHANGE, oldValue, newColor);
                int i = 0;
                while (i < finalListeners.length) {
                    IPropertyChangeListener listener = (IPropertyChangeListener)finalListeners[i];
                    listener.propertyChange(pEvent);
                    ++i;
                }
            }
            this.updateColorImage();
        }
    }
}

