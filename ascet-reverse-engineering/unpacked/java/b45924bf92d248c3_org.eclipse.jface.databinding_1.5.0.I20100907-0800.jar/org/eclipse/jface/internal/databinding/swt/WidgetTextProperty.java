/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.databinding.property.value.IValueProperty
 *  org.eclipse.swt.custom.CCombo
 *  org.eclipse.swt.custom.CLabel
 *  org.eclipse.swt.custom.StyledText
 *  org.eclipse.swt.widgets.Button
 *  org.eclipse.swt.widgets.Combo
 *  org.eclipse.swt.widgets.Item
 *  org.eclipse.swt.widgets.Label
 *  org.eclipse.swt.widgets.Link
 *  org.eclipse.swt.widgets.Shell
 *  org.eclipse.swt.widgets.Text
 */
package org.eclipse.jface.internal.databinding.swt;

import org.eclipse.core.databinding.property.value.IValueProperty;
import org.eclipse.jface.internal.databinding.swt.ButtonTextProperty;
import org.eclipse.jface.internal.databinding.swt.CComboTextProperty;
import org.eclipse.jface.internal.databinding.swt.CLabelTextProperty;
import org.eclipse.jface.internal.databinding.swt.ComboTextProperty;
import org.eclipse.jface.internal.databinding.swt.ItemTextProperty;
import org.eclipse.jface.internal.databinding.swt.LabelTextProperty;
import org.eclipse.jface.internal.databinding.swt.LinkTextProperty;
import org.eclipse.jface.internal.databinding.swt.ShellTextProperty;
import org.eclipse.jface.internal.databinding.swt.StyledTextTextProperty;
import org.eclipse.jface.internal.databinding.swt.TextTextProperty;
import org.eclipse.jface.internal.databinding.swt.WidgetDelegatingValueProperty;
import org.eclipse.swt.custom.CCombo;
import org.eclipse.swt.custom.CLabel;
import org.eclipse.swt.custom.StyledText;
import org.eclipse.swt.widgets.Button;
import org.eclipse.swt.widgets.Combo;
import org.eclipse.swt.widgets.Item;
import org.eclipse.swt.widgets.Label;
import org.eclipse.swt.widgets.Link;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.swt.widgets.Text;

public class WidgetTextProperty
extends WidgetDelegatingValueProperty {
    private IValueProperty button;
    private IValueProperty cCombo;
    private IValueProperty cLabel;
    private IValueProperty combo;
    private IValueProperty item;
    private IValueProperty label;
    private IValueProperty link;
    private IValueProperty shell;
    private IValueProperty styledText;
    private IValueProperty text;
    static /* synthetic */ Class class$0;

    public WidgetTextProperty() {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("java.lang.String");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        super(clazz);
    }

    protected IValueProperty doGetDelegate(Object source) {
        if (source instanceof Button) {
            if (this.button == null) {
                this.button = new ButtonTextProperty();
            }
            return this.button;
        }
        if (source instanceof CCombo) {
            if (this.cCombo == null) {
                this.cCombo = new CComboTextProperty();
            }
            return this.cCombo;
        }
        if (source instanceof CLabel) {
            if (this.cLabel == null) {
                this.cLabel = new CLabelTextProperty();
            }
            return this.cLabel;
        }
        if (source instanceof Combo) {
            if (this.combo == null) {
                this.combo = new ComboTextProperty();
            }
            return this.combo;
        }
        if (source instanceof Item) {
            if (this.item == null) {
                this.item = new ItemTextProperty();
            }
            return this.item;
        }
        if (source instanceof Label) {
            if (this.label == null) {
                this.label = new LabelTextProperty();
            }
            return this.label;
        }
        if (source instanceof Link) {
            if (this.link == null) {
                this.link = new LinkTextProperty();
            }
            return this.link;
        }
        if (source instanceof Shell) {
            if (this.shell == null) {
                this.shell = new ShellTextProperty();
            }
            return this.shell;
        }
        if (source instanceof StyledText) {
            if (this.styledText == null) {
                this.styledText = new StyledTextTextProperty();
            }
            return this.styledText;
        }
        if (source instanceof Text) {
            if (this.text == null) {
                this.text = new TextTextProperty();
            }
            return this.text;
        }
        throw this.notSupported(source);
    }
}

