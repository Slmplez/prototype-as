/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.action.IToolBarManager
 *  org.eclipse.swt.events.DisposeEvent
 *  org.eclipse.swt.events.DisposeListener
 *  org.eclipse.swt.graphics.Color
 *  org.eclipse.swt.graphics.Image
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Menu
 */
package org.eclipse.ui.forms.widgets;

import org.eclipse.jface.action.IToolBarManager;
import org.eclipse.swt.events.DisposeEvent;
import org.eclipse.swt.events.DisposeListener;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Menu;
import org.eclipse.ui.forms.IMessage;
import org.eclipse.ui.forms.IMessageManager;
import org.eclipse.ui.forms.widgets.Form;
import org.eclipse.ui.forms.widgets.SharedScrolledComposite;

public class ScrolledForm
extends SharedScrolledComposite {
    private Form content;
    private boolean customMenu;

    public ScrolledForm(Composite parent) {
        this(parent, 768);
    }

    public ScrolledForm(Composite parent, int style) {
        super(parent, style);
        super.setMenu(parent.getMenu());
        this.content = new Form((Composite)this, 0);
        super.setContent((Control)this.content);
        this.content.setMenu(this.getMenu());
        this.addDisposeListener(new DisposeListener(){

            public void widgetDisposed(DisposeEvent e) {
                if (!ScrolledForm.this.customMenu) {
                    ScrolledForm.this.setMenu(null);
                }
            }
        });
    }

    public void setMenu(Menu menu) {
        this.customMenu = true;
        super.setMenu(menu);
        if (this.content != null) {
            this.content.setMenu(menu);
        }
    }

    public String getText() {
        return this.content.getText();
    }

    public Image getImage() {
        return this.content.getImage();
    }

    public void setForeground(Color fg) {
        super.setForeground(fg);
        this.content.setForeground(fg);
    }

    public void setBackground(Color bg) {
        super.setBackground(bg);
        this.content.setBackground(bg);
    }

    public final void setContent(Control c) {
    }

    public void setText(String text) {
        this.content.setText(text);
        this.reflow(true);
    }

    public void setImage(Image image) {
        this.content.setImage(image);
        this.reflow(true);
    }

    public Image getBackgroundImage() {
        return this.content.getBackgroundImage();
    }

    public void setBackgroundImage(Image backgroundImage) {
        this.content.setBackgroundImage(backgroundImage);
    }

    public IToolBarManager getToolBarManager() {
        return this.content.getToolBarManager();
    }

    public void updateToolBar() {
        this.content.updateToolBar();
    }

    public Composite getBody() {
        return this.content.getBody();
    }

    public Form getForm() {
        return this.content;
    }

    public void setBusy(boolean busy) {
        this.content.setBusy(busy);
        this.reflow(true);
    }

    public void setHeadClient(Control headClient) {
        this.content.setHeadClient(headClient);
        this.reflow(true);
    }

    public void setMessage(String newMessage, int newType, IMessage[] messages) {
        this.content.setMessage(newMessage, newType, messages);
        this.reflow(true);
    }

    public void setMessage(String newMessage, int newType) {
        this.setMessage(newMessage, newType, null);
    }

    public String getMessage() {
        return this.content.getMessage();
    }

    public int getMessageType() {
        return this.content.getMessageType();
    }

    public IMessageManager getMessageManager() {
        return this.content.getMessageManager();
    }
}

