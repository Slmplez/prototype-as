/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.graphics.Drawable
 *  org.eclipse.swt.graphics.Font
 *  org.eclipse.swt.graphics.GC
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.layout.GridData
 *  org.eclipse.swt.widgets.Button
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Label
 */
package org.eclipse.jface.preference;

import org.eclipse.jface.preference.ColorSelector;
import org.eclipse.jface.preference.FieldEditor;
import org.eclipse.jface.preference.PreferenceConverter;
import org.eclipse.jface.resource.JFaceResources;
import org.eclipse.jface.util.IPropertyChangeListener;
import org.eclipse.jface.util.PropertyChangeEvent;
import org.eclipse.swt.graphics.Drawable;
import org.eclipse.swt.graphics.Font;
import org.eclipse.swt.graphics.GC;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.widgets.Button;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Label;

public class ColorFieldEditor
extends FieldEditor {
    private ColorSelector colorSelector;

    protected ColorFieldEditor() {
    }

    public ColorFieldEditor(String name, String labelText, Composite parent) {
        super(name, labelText, parent);
    }

    protected void adjustForNumColumns(int numColumns) {
        ((GridData)this.colorSelector.getButton().getLayoutData()).horizontalSpan = numColumns - 1;
    }

    protected Point computeImageSize(Control window) {
        GC gc = new GC((Drawable)window);
        Font f = JFaceResources.getFontRegistry().get("org.eclipse.jface.defaultfont");
        gc.setFont(f);
        int height = gc.getFontMetrics().getHeight();
        gc.dispose();
        Point p = new Point(height * 3 - 6, height);
        return p;
    }

    protected void doFillIntoGrid(Composite parent, int numColumns) {
        Label control = this.getLabelControl(parent);
        GridData gd = new GridData();
        gd.horizontalSpan = numColumns - 1;
        control.setLayoutData((Object)gd);
        Button colorButton = this.getChangeControl(parent);
        colorButton.setLayoutData((Object)new GridData());
    }

    protected void doLoad() {
        if (this.colorSelector == null) {
            return;
        }
        this.colorSelector.setColorValue(PreferenceConverter.getColor(this.getPreferenceStore(), this.getPreferenceName()));
    }

    protected void doLoadDefault() {
        if (this.colorSelector == null) {
            return;
        }
        this.colorSelector.setColorValue(PreferenceConverter.getDefaultColor(this.getPreferenceStore(), this.getPreferenceName()));
    }

    protected void doStore() {
        PreferenceConverter.setValue(this.getPreferenceStore(), this.getPreferenceName(), this.colorSelector.getColorValue());
    }

    public ColorSelector getColorSelector() {
        return this.colorSelector;
    }

    protected Button getChangeControl(Composite parent) {
        if (this.colorSelector == null) {
            this.colorSelector = new ColorSelector(parent);
            this.colorSelector.addListener(new IPropertyChangeListener(){

                public void propertyChange(PropertyChangeEvent event) {
                    ColorFieldEditor.this.fireValueChanged(event.getProperty(), event.getOldValue(), event.getNewValue());
                    ColorFieldEditor.this.setPresentsDefaultValue(false);
                }
            });
        } else {
            this.checkParent((Control)this.colorSelector.getButton(), parent);
        }
        return this.colorSelector.getButton();
    }

    public int getNumberOfControls() {
        return 2;
    }

    public void setEnabled(boolean enabled, Composite parent) {
        super.setEnabled(enabled, parent);
        this.getChangeControl(parent).setEnabled(enabled);
    }
}

