/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.graphics.Color
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 */
package org.eclipse.ui.forms.widgets;

import java.io.InputStream;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.ui.forms.widgets.FormText;
import org.eclipse.ui.forms.widgets.SharedScrolledComposite;

public class ScrolledFormText
extends SharedScrolledComposite {
    private FormText content;
    private String text;

    public ScrolledFormText(Composite parent, boolean createFormText) {
        this(parent, 768, createFormText);
    }

    public ScrolledFormText(Composite parent, int style, boolean createFormText) {
        super(parent, style);
        if (createFormText) {
            this.setFormText(new FormText((Composite)this, 0));
        }
    }

    public void setFormText(FormText formText) {
        this.content = formText;
        super.setContent((Control)this.content);
        this.content.setMenu(this.getMenu());
        if (this.text != null) {
            this.loadText(this.text);
        }
    }

    public void setForeground(Color fg) {
        super.setForeground(fg);
        if (this.content != null) {
            this.content.setForeground(fg);
        }
    }

    public void setBackground(Color bg) {
        super.setBackground(bg);
        if (this.content != null) {
            this.content.setBackground(bg);
        }
    }

    public final void setContent(Control c) {
    }

    public void setText(String text) {
        this.text = text;
        this.loadText(text);
        this.reflow(true);
    }

    public void setContents(InputStream is) {
        this.loadContents(is);
    }

    public FormText getFormText() {
        return this.content;
    }

    private void loadText(String text) {
        if (this.content != null) {
            String markup = text;
            if (!markup.startsWith("<form>")) {
                markup = "<form>" + text + "</form>";
            }
            this.content.setText(markup, true, false);
        }
    }

    private void loadContents(InputStream is) {
        if (this.content != null) {
            this.content.setContents(is, false);
        }
    }
}

