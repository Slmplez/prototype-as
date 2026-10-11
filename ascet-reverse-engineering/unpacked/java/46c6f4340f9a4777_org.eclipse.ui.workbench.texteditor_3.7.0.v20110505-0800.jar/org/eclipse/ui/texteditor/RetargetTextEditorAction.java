/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.action.IAction
 *  org.eclipse.jface.util.IPropertyChangeListener
 *  org.eclipse.jface.util.PropertyChangeEvent
 *  org.eclipse.swt.events.HelpEvent
 *  org.eclipse.swt.events.HelpListener
 */
package org.eclipse.ui.texteditor;

import java.util.ResourceBundle;
import org.eclipse.jface.action.IAction;
import org.eclipse.jface.util.IPropertyChangeListener;
import org.eclipse.jface.util.PropertyChangeEvent;
import org.eclipse.swt.events.HelpEvent;
import org.eclipse.swt.events.HelpListener;
import org.eclipse.ui.texteditor.ResourceAction;

public final class RetargetTextEditorAction
extends ResourceAction {
    private IAction fAction;
    private String fDefaultText;
    private HelpListener fLocalHelpListener;
    private IPropertyChangeListener fListener = new IPropertyChangeListener(){

        public void propertyChange(PropertyChangeEvent event) {
            RetargetTextEditorAction.this.update(event);
        }
    };

    public RetargetTextEditorAction(ResourceBundle bundle, String prefix, int style) {
        super(bundle, prefix, style);
        this.fDefaultText = this.getText();
        this.installHelpListener();
    }

    public RetargetTextEditorAction(ResourceBundle bundle, String prefix) {
        super(bundle, prefix);
        this.fDefaultText = this.getText();
        this.installHelpListener();
    }

    public RetargetTextEditorAction(ResourceBundle bundle, String prefix, String actionId, int style) {
        super(bundle, prefix, style);
        this.fDefaultText = this.getText();
        this.setId(actionId);
        this.installHelpListener();
    }

    public RetargetTextEditorAction(ResourceBundle bundle, String prefix, String actionId) {
        super(bundle, prefix);
        this.fDefaultText = this.getText();
        this.setId(actionId);
        this.installHelpListener();
    }

    private void update(PropertyChangeEvent event) {
        if ("enabled".equals(event.getProperty())) {
            Boolean bool = (Boolean)event.getNewValue();
            this.setEnabled(bool);
        } else if ("text".equals(event.getProperty())) {
            this.setText((String)event.getNewValue());
        } else if ("toolTipText".equals(event.getProperty())) {
            this.setToolTipText((String)event.getNewValue());
        } else if ("checked".equals(event.getProperty())) {
            Boolean bool = (Boolean)event.getNewValue();
            this.setChecked(bool);
        }
    }

    public void setAction(IAction action) {
        if (this.fAction != null) {
            this.fAction.removePropertyChangeListener(this.fListener);
            this.fAction = null;
        }
        this.fAction = action;
        if (this.fAction == null) {
            this.setEnabled(false);
            if (this.getStyle() == 2 || this.getStyle() == 8) {
                this.setChecked(false);
            }
            this.setText(this.fDefaultText);
            this.setToolTipText("");
        } else {
            this.setEnabled(this.fAction.isEnabled());
            if (this.fAction.getStyle() == 2 || this.fAction.getStyle() == 8) {
                super.setChecked(this.fAction.isChecked());
            }
            this.setText(this.fAction.getText());
            this.setToolTipText(this.fAction.getToolTipText());
            this.fAction.addPropertyChangeListener(this.fListener);
        }
    }

    private void installHelpListener() {
        super.setHelpListener(new HelpListener(){

            public void helpRequested(HelpEvent e) {
                HelpListener listener = null;
                if (RetargetTextEditorAction.this.fAction != null && (listener = RetargetTextEditorAction.this.fAction.getHelpListener()) == null) {
                    listener = RetargetTextEditorAction.this.fLocalHelpListener;
                }
                if (listener != null) {
                    listener.helpRequested(e);
                }
            }
        });
    }

    public void setHelpListener(HelpListener listener) {
        this.fLocalHelpListener = listener;
    }

    public void run() {
        if (this.fAction != null) {
            this.fAction.run();
        }
    }
}

