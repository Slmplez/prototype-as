/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.preference.FontFieldEditor
 *  org.eclipse.jface.preference.IPreferenceStore
 *  org.eclipse.jface.preference.PreferenceConverter
 *  org.eclipse.jface.util.IPropertyChangeListener
 *  org.eclipse.jface.util.PropertyChangeEvent
 *  org.eclipse.swt.graphics.FontData
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Label
 */
package org.eclipse.jface.text;

import org.eclipse.jface.preference.FontFieldEditor;
import org.eclipse.jface.preference.IPreferenceStore;
import org.eclipse.jface.preference.PreferenceConverter;
import org.eclipse.jface.util.IPropertyChangeListener;
import org.eclipse.jface.util.PropertyChangeEvent;
import org.eclipse.swt.graphics.FontData;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Label;

public class PropagatingFontFieldEditor
extends FontFieldEditor {
    private Composite fParent;
    private String fDefaultFontLabel;

    public PropagatingFontFieldEditor(String name, String labelText, Composite parent, String defaultFontLabel) {
        super(name, labelText, parent);
        this.fParent = parent;
        this.fDefaultFontLabel = defaultFontLabel == null ? "" : defaultFontLabel;
    }

    protected void doLoad() {
        if (this.getPreferenceStore().isDefault(this.getPreferenceName())) {
            this.loadDefault();
        }
        super.doLoad();
        this.checkForDefault();
    }

    protected void doLoadDefault() {
        super.doLoadDefault();
        this.checkForDefault();
    }

    private void checkForDefault() {
        Label c;
        if (this.presentsDefaultValue() && (c = this.getValueControl(this.fParent)) instanceof Label) {
            c.setText(this.fDefaultFontLabel);
        }
    }

    private static void propagateFont(IPreferenceStore source, String sourceKey, IPreferenceStore target, String targetKey) {
        FontData fd = PreferenceConverter.getFontData((IPreferenceStore)source, (String)sourceKey);
        if (fd != null) {
            boolean isDefault = target.isDefault(targetKey);
            PreferenceConverter.setDefault((IPreferenceStore)target, (String)targetKey, (FontData)fd);
            if (isDefault) {
                target.setToDefault(targetKey);
            }
        }
    }

    public static void startPropagate(final IPreferenceStore source, final String sourceKey, final IPreferenceStore target, final String targetKey) {
        source.addPropertyChangeListener(new IPropertyChangeListener(){

            public void propertyChange(PropertyChangeEvent event) {
                if (sourceKey.equals(event.getProperty())) {
                    PropagatingFontFieldEditor.propagateFont(source, sourceKey, target, targetKey);
                }
            }
        });
        PropagatingFontFieldEditor.propagateFont(source, sourceKey, target, targetKey);
    }
}

