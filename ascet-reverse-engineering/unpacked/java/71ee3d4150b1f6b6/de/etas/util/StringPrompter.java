/*
 * Decompiled with CFR 0.152.
 */
package de.etas.util;

import java.awt.BorderLayout;
import java.awt.Button;
import java.awt.Color;
import java.awt.Component;
import java.awt.Dialog;
import java.awt.Frame;
import java.awt.Panel;
import java.awt.TextComponent;
import java.awt.TextField;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.WindowEvent;
import java.awt.event.WindowListener;

public class StringPrompter
implements ActionListener,
WindowListener {
    private Button cancelButton = null;
    private Button okButton = null;
    private Panel pane = null;
    private Dialog stringPromptDlg = null;
    private TextField textField = null;
    private String title;
    private String value;
    private Frame parent;

    private StringPrompter(String title, String def, Frame parent) {
        this.parent = parent;
        this.title = title;
        ((TextComponent)this.getTextField()).setText(def);
        this.initialize();
    }

    public void actionPerformed(ActionEvent e) {
        if (e.getSource() == this.getOkButton()) {
            this.value = this.getTextField().getText();
            this.close();
        }
        if (e.getSource() == this.getCancelButton()) {
            this.close();
        }
    }

    private void close() {
        this.getStringPromptDlg().removeWindowListener(this);
        this.getOkButton().removeActionListener(this);
        this.getCancelButton().removeActionListener(this);
        this.getStringPromptDlg().dispose();
    }

    private Button getCancelButton() {
        if (this.cancelButton == null) {
            try {
                this.cancelButton = new Button();
                this.cancelButton.setName("CancelStringPrompt");
                this.cancelButton.setBounds(15, 60, 60, 23);
                this.cancelButton.setLabel("Cancel");
            }
            catch (Throwable ex) {
                this.handleException(ex);
            }
        }
        return this.cancelButton;
    }

    private Button getOkButton() {
        if (this.okButton == null) {
            try {
                this.okButton = new Button();
                this.okButton.setName("OkStringPrompt");
                this.okButton.setBounds(205, 60, 60, 23);
                this.okButton.setLabel("Ok");
            }
            catch (Throwable ex) {
                this.handleException(ex);
            }
        }
        return this.okButton;
    }

    private Panel getPane() {
        if (this.pane == null) {
            try {
                this.pane = new Panel();
                this.pane.setName("Pane");
                this.pane.setLayout(null);
                this.getPane().add((Component)this.getTextField(), this.getTextField().getName());
                this.getPane().add((Component)this.getCancelButton(), this.getCancelButton().getName());
                this.getPane().add((Component)this.getOkButton(), this.getOkButton().getName());
            }
            catch (Throwable ex) {
                this.handleException(ex);
            }
        }
        return this.pane;
    }

    private Dialog getStringPromptDlg() {
        if (this.stringPromptDlg == null) {
            try {
                this.stringPromptDlg = new Dialog(new Frame());
                this.stringPromptDlg.setName("StringPromptDlg");
                this.stringPromptDlg.setLayout(new BorderLayout());
                ((Component)this.stringPromptDlg).setBounds(134, 102, 280, 130);
                this.stringPromptDlg.setTitle(this.title);
                this.stringPromptDlg.setModal(true);
                this.stringPromptDlg.setResizable(false);
                this.getStringPromptDlg().add((Component)this.getPane(), "Center");
            }
            catch (Throwable ivjExc) {
                this.handleException(ivjExc);
            }
        }
        return this.stringPromptDlg;
    }

    private TextField getTextField() {
        if (this.textField == null) {
            try {
                this.textField = new TextField();
                this.textField.setName("StringValue");
                ((Component)this.textField).setBackground(Color.white);
                this.textField.setBounds(15, 20, 250, 23);
            }
            catch (Throwable ivjExc) {
                this.handleException(ivjExc);
            }
        }
        return this.textField;
    }

    private String getValue() {
        return this.value;
    }

    private void handleException(Throwable exception) {
    }

    private void initialize() {
        this.getOkButton().addActionListener(this);
        this.getCancelButton().addActionListener(this);
        this.getStringPromptDlg().addWindowListener(this);
    }

    private void open() {
        this.getTextField().selectAll();
        this.getTextField().requestFocus();
        this.getStringPromptDlg().show();
    }

    public static final String prompt() {
        return StringPrompter.prompt("", "", new Frame());
    }

    public static final String prompt(String title) {
        return StringPrompter.prompt(title, "", new Frame());
    }

    public static final String prompt(String title, String def) {
        return StringPrompter.prompt(title, def, new Frame());
    }

    public static final String prompt(String title, String def, Frame parent) {
        StringPrompter p = new StringPrompter(title, def, parent);
        p.open();
        return p.value;
    }

    public void windowActivated(WindowEvent e) {
    }

    public void windowClosed(WindowEvent e) {
    }

    public void windowClosing(WindowEvent e) {
        this.close();
    }

    public void windowDeactivated(WindowEvent e) {
    }

    public void windowDeiconified(WindowEvent e) {
    }

    public void windowIconified(WindowEvent e) {
    }

    public void windowOpened(WindowEvent e) {
    }
}

