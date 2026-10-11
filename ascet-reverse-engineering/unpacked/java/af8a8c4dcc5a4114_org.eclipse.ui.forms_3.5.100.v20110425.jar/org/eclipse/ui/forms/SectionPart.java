/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 */
package org.eclipse.ui.forms;

import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.ui.forms.AbstractFormPart;
import org.eclipse.ui.forms.events.ExpansionAdapter;
import org.eclipse.ui.forms.events.ExpansionEvent;
import org.eclipse.ui.forms.widgets.FormToolkit;
import org.eclipse.ui.forms.widgets.Section;

public class SectionPart
extends AbstractFormPart {
    private Section section;

    public SectionPart(Section section) {
        this.section = section;
        this.hookListeners();
    }

    public SectionPart(Composite parent, FormToolkit toolkit, int style) {
        this(toolkit.createSection(parent, style));
    }

    protected void hookListeners() {
        if ((this.section.getExpansionStyle() & 2) != 0 || (this.section.getExpansionStyle() & 4) != 0) {
            this.section.addExpansionListener(new ExpansionAdapter(){

                public void expansionStateChanging(ExpansionEvent e) {
                    SectionPart.this.expansionStateChanging(e.getState());
                }

                public void expansionStateChanged(ExpansionEvent e) {
                    SectionPart.this.expansionStateChanged(e.getState());
                }
            });
        }
    }

    public Section getSection() {
        return this.section;
    }

    protected void expansionStateChanging(boolean expanding) {
    }

    protected void expansionStateChanged(boolean expanded) {
        this.getManagedForm().getForm().reflow(false);
    }

    public void setFocus() {
        Control client = this.section.getClient();
        if (client != null) {
            client.setFocus();
        }
    }
}

