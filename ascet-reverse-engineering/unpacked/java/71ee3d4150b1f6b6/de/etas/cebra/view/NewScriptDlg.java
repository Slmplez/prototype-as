/*
 * Decompiled with CFR 0.152.
 */
package de.etas.cebra.view;

import de.etas.cebra.scripts.Script;
import de.etas.cebra.scripts.ScriptScheduler;
import de.etas.cebra.view.CebraWarningDlg;
import de.etas.util.Utilities;
import java.awt.BorderLayout;
import java.awt.Button;
import java.awt.Checkbox;
import java.awt.Color;
import java.awt.Component;
import java.awt.Cursor;
import java.awt.Dialog;
import java.awt.Frame;
import java.awt.Label;
import java.awt.Panel;
import java.awt.TextComponent;
import java.awt.TextField;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.ItemEvent;
import java.awt.event.ItemListener;
import java.awt.event.WindowEvent;
import java.awt.event.WindowListener;

public class NewScriptDlg
implements ActionListener,
ItemListener,
WindowListener {
    protected String scriptClass = null;
    protected Frame parent = null;
    protected Dialog dialog = null;
    protected Panel contents = null;
    protected Label scriptClassLabel = null;
    protected Label scriptNameLabel = null;
    protected TextField scriptNameText = null;
    protected Checkbox startupCheck = null;
    protected Checkbox autoCheck = null;
    protected Checkbox periodicCheck = null;
    protected TextField sampleTimeText = null;
    protected Button okButton = null;
    protected Button cancelButton = null;
    protected Label sampleTimeLabel = null;

    public NewScriptDlg(String s, Frame p) {
        this.parent = p;
        this.scriptClass = s;
        this.initialize();
        this.getOkButton().requestFocus();
        this.getDialog().show();
    }

    public void actionPerformed(ActionEvent e) {
        if (e.getSource() == this.getCancelButton()) {
            this.onCancelButton();
            return;
        }
        if (e.getSource() == this.getOkButton()) {
            this.onOkButton();
            return;
        }
    }

    protected void addListeners() {
        this.getDialog().addWindowListener(this);
        this.getPeriodicCheck().addItemListener(this);
        this.getAutoCheck().addItemListener(this);
        this.getCancelButton().addActionListener(this);
        this.getOkButton().addActionListener(this);
    }

    protected void autoCheckChanged() {
        if (this.getAutoCheck().getState()) {
            this.getStartupCheck().setEnabled(true);
        } else {
            this.getStartupCheck().setEnabled(false);
            this.getStartupCheck().setState(false);
        }
    }

    protected Checkbox getAutoCheck() {
        if (this.autoCheck == null) {
            try {
                this.autoCheck = new Checkbox();
                this.autoCheck.setName("AutoCheck");
                this.autoCheck.setBounds(this.getMarginWidth(), 140, this.getTextWidth(), this.getTextHeight());
                this.autoCheck.setBackground(Color.lightGray);
                this.autoCheck.setLabel("Save in configuration (*)");
                this.autoCheck.setState(true);
            }
            catch (Exception ex) {
                this.handleException(ex);
            }
        }
        return this.autoCheck;
    }

    protected int getButtonWidth() {
        return 60;
    }

    protected Button getCancelButton() {
        if (this.cancelButton == null) {
            try {
                this.cancelButton = new Button();
                this.cancelButton.setName("CancelButton");
                this.cancelButton.setBounds(this.getMarginWidth(), this.getPaneHeight() - this.getTextHeight() - this.getMarginHeight(), this.getButtonWidth(), this.getTextHeight());
                this.cancelButton.setLabel("Cancel");
            }
            catch (Exception ex) {
                this.handleException(ex);
            }
        }
        return this.cancelButton;
    }

    protected Panel getContents() {
        if (this.contents == null) {
            try {
                this.contents = new Panel();
                this.contents.setName("ContentsPanel");
                this.contents.setLayout(null);
                this.contents.add((Component)this.getScriptClassLabel(), this.getScriptClassLabel().getName());
                this.contents.add((Component)this.getScriptNameLabel(), this.getScriptNameLabel().getName());
                this.contents.add((Component)this.getScriptNameText(), this.getScriptNameText().getName());
                this.contents.add((Component)this.getStartupCheck(), this.getStartupCheck().getName());
                this.contents.add((Component)this.getPeriodicCheck(), this.getPeriodicCheck().getName());
                this.contents.add((Component)this.getAutoCheck(), this.getAutoCheck().getName());
                this.contents.add((Component)this.getSampleTimeLabel(), this.getSampleTimeLabel().getName());
                this.contents.add((Component)this.getSampleTimeText(), this.getSampleTimeText().getName());
                this.contents.add((Component)this.getCancelButton(), this.getCancelButton().getName());
                this.contents.add((Component)this.getOkButton(), this.getOkButton().getName());
            }
            catch (Exception ex) {
                this.handleException(ex);
            }
        }
        return this.contents;
    }

    protected Dialog getDialog() {
        if (this.dialog == null) {
            try {
                this.dialog = new Dialog(this.parent);
                this.dialog.setName("ScriptOptionsDlg");
                this.dialog.setLayout(new BorderLayout());
                ((Component)this.dialog).setVisible(true);
                this.dialog.setModal(true);
                ((Component)this.dialog).setBounds(89, 83, this.getPaneWidth() + 8, this.getPaneHeight() + 27);
                this.dialog.setResizable(false);
                this.dialog.add((Component)this.getContents(), "Center");
            }
            catch (Exception ex) {
                this.handleException(ex);
            }
        }
        return this.dialog;
    }

    protected int getMarginHeight() {
        return 30;
    }

    protected int getMarginWidth() {
        return 30;
    }

    protected Button getOkButton() {
        if (this.okButton == null) {
            try {
                this.okButton = new Button();
                this.okButton.setName("OkButton");
                this.okButton.setBounds(this.getPaneWidth() - this.getMarginWidth() - this.getButtonWidth(), this.getPaneHeight() - this.getTextHeight() - this.getMarginHeight(), this.getButtonWidth(), this.getTextHeight());
                this.okButton.setLabel("Ok");
            }
            catch (Exception ex) {
                this.handleException(ex);
            }
        }
        return this.okButton;
    }

    protected int getPaneHeight() {
        return 350;
    }

    protected int getPaneWidth() {
        return 250;
    }

    protected Checkbox getPeriodicCheck() {
        if (this.periodicCheck == null) {
            try {
                this.periodicCheck = new Checkbox();
                this.periodicCheck.setName("PeriodicCheck");
                this.periodicCheck.setBounds(this.getMarginWidth(), 200, this.getTextWidth(), this.getTextHeight());
                this.periodicCheck.setBackground(Color.lightGray);
                this.periodicCheck.setLabel("Execute periodic");
                this.periodicCheck.setState(false);
            }
            catch (Exception ex) {
                this.handleException(ex);
            }
        }
        return this.periodicCheck;
    }

    protected Label getSampleTimeLabel() {
        if (this.sampleTimeLabel == null) {
            try {
                this.sampleTimeLabel = new Label();
                this.sampleTimeLabel.setName("SampleTimeLabel");
                this.sampleTimeLabel.setText("Sample time [ms]");
                this.sampleTimeLabel.setBackground(Color.lightGray);
                this.sampleTimeLabel.setBounds(this.getMarginWidth(), 230, 110, this.getTextHeight());
                this.sampleTimeLabel.setEnabled(false);
            }
            catch (Exception ex) {
                this.handleException(ex);
            }
        }
        return this.sampleTimeLabel;
    }

    protected TextField getSampleTimeText() {
        if (this.sampleTimeText == null) {
            try {
                this.sampleTimeText = new TextField();
                this.sampleTimeText.setName("SampleTimeText");
                ((Component)this.sampleTimeText).setBackground(Color.white);
                this.sampleTimeText.setBounds(this.getMarginWidth() + this.getSampleTimeLabel().getSize().width, 230, this.getTextWidth() - this.getSampleTimeLabel().getSize().width, this.getTextHeight());
                this.sampleTimeText.setEnabled(false);
                this.sampleTimeText.setEditable(true);
                ((TextComponent)this.sampleTimeText).setText("0");
                this.sampleTimeText.setCursor(new Cursor(2));
            }
            catch (Exception ex) {
                this.handleException(ex);
            }
        }
        return this.sampleTimeText;
    }

    protected Label getScriptClassLabel() {
        if (this.scriptClassLabel == null) {
            try {
                String clazzLabel = this.scriptClass;
                int pos = clazzLabel.lastIndexOf(46);
                clazzLabel = clazzLabel.substring(pos + 1);
                this.scriptClassLabel = new Label();
                this.scriptClassLabel.setName("ScriptClassLabel");
                this.scriptClassLabel.setText("Script class: " + clazzLabel);
                this.scriptClassLabel.setBackground(Color.lightGray);
                this.scriptClassLabel.setBounds(this.getMarginWidth(), 30, this.getTextWidth(), this.getTextHeight());
            }
            catch (Exception ex) {
                this.handleException(ex);
            }
        }
        return this.scriptClassLabel;
    }

    protected Label getScriptNameLabel() {
        if (this.scriptNameLabel == null) {
            try {
                this.scriptNameLabel = new Label();
                this.scriptNameLabel.setName("ScriptNameLabel");
                this.scriptNameLabel.setText("Script name");
                this.scriptNameLabel.setBackground(Color.lightGray);
                this.scriptNameLabel.setBounds(this.getMarginWidth(), 70, this.getTextWidth(), this.getTextHeight());
            }
            catch (Exception ex) {
                this.handleException(ex);
            }
        }
        return this.scriptNameLabel;
    }

    protected TextField getScriptNameText() {
        if (this.scriptNameText == null) {
            try {
                this.scriptNameText = new TextField();
                this.scriptNameText.setName("ScriptNameText");
                ((Component)this.scriptNameText).setBackground(Color.white);
                this.scriptNameText.setBounds(this.getMarginWidth(), 100, this.getTextWidth(), this.getTextHeight());
                ((TextComponent)this.scriptNameText).setText("");
                this.scriptNameText.setEnabled(true);
                this.scriptNameText.setEditable(true);
                this.scriptNameText.setCursor(new Cursor(2));
            }
            catch (Exception ex) {
                this.handleException(ex);
            }
        }
        return this.scriptNameText;
    }

    protected Checkbox getStartupCheck() {
        if (this.startupCheck == null) {
            try {
                this.startupCheck = new Checkbox();
                this.startupCheck.setName("StartupCheck");
                this.startupCheck.setBounds(this.getMarginWidth(), 170, this.getTextWidth(), this.getTextHeight());
                this.startupCheck.setBackground(Color.lightGray);
                this.startupCheck.setLabel("Auto start on load (#)");
                this.startupCheck.setState(false);
            }
            catch (Exception ex) {
                this.handleException(ex);
            }
        }
        return this.startupCheck;
    }

    protected int getTextHeight() {
        return 23;
    }

    protected int getTextWidth() {
        return this.getPaneWidth() - 2 * this.getMarginWidth();
    }

    protected void handleException(Throwable ex) {
        System.out.println("Exception in " + this.getClass().getName() + ". " + ex.toString());
    }

    protected void initialize() {
        this.addListeners();
        this.getDialog().setTitle("Create new script");
    }

    public void itemStateChanged(ItemEvent e) {
        if (e.getSource() == this.getAutoCheck()) {
            this.autoCheckChanged();
            return;
        }
        if (e.getSource() == this.getPeriodicCheck()) {
            this.periodicCheckChanged();
            return;
        }
    }

    protected void onCancelButton() {
        this.removeListeners();
        this.getDialog().dispose();
    }

    protected void onOkButton() {
        String scriptName;
        long sampleTime = 0L;
        boolean periodic = this.getPeriodicCheck().getState();
        if (periodic) {
            try {
                sampleTime = Long.parseLong(this.getSampleTimeText().getText());
            }
            catch (NumberFormatException numberFormatException) {
                new CebraWarningDlg("The sample time must be specified as an integer multiple of milli seconds. '" + this.getSampleTimeText().getText() + "' is not a valid long integer.", this.parent);
                return;
            }
        }
        if ((scriptName = this.getScriptNameText().getText()).length() < 3) {
            new CebraWarningDlg("The script name must have a length of at least 3 characters.", this.parent);
            return;
        }
        if (!Utilities.checkNameString(scriptName)) {
            ((TextComponent)this.getScriptNameText()).setText(Utilities.trimString(scriptName));
            this.getScriptNameText().selectAll();
            this.getScriptNameText().requestFocus();
            return;
        }
        int n = 0;
        while (Script.getScriptByName(scriptName) != null) {
            scriptName = String.valueOf(this.getScriptNameText().getText()) + ++n;
        }
        if (n > 0) {
            new CebraWarningDlg("The script name '" + this.getScriptNameText().getText() + "' is already in use.", this.parent);
            ((TextComponent)this.getScriptNameText()).setText(scriptName);
            this.getScriptNameText().selectAll();
            this.getScriptNameText().requestFocus();
            return;
        }
        Script ns = ScriptScheduler.registerScript(scriptName, this.scriptClass, this.getAutoCheck().getState());
        if (ns == null) {
            new CebraWarningDlg("The script could not be instantiated.", this.parent);
            return;
        }
        if (periodic) {
            ns.setSampleTime(sampleTime);
            ns.setPeriodic();
        }
        if (this.getStartupCheck().getState()) {
            ScriptScheduler.addStartupScript(scriptName);
            ns.setStartup(true);
        } else {
            ns.setStartup(false);
        }
        this.onCancelButton();
    }

    protected void periodicCheckChanged() {
        if (this.getPeriodicCheck().getState()) {
            this.getSampleTimeLabel().setEnabled(true);
            this.getSampleTimeText().setEnabled(true);
        } else {
            this.getSampleTimeLabel().setEnabled(false);
            this.getSampleTimeText().setEnabled(false);
        }
    }

    protected void removeListeners() {
        this.getDialog().removeWindowListener(this);
        this.getPeriodicCheck().removeItemListener(this);
        this.getCancelButton().removeActionListener(this);
        this.getOkButton().removeActionListener(this);
    }

    public void windowActivated(WindowEvent e) {
    }

    public void windowClosed(WindowEvent e) {
    }

    public void windowClosing(WindowEvent e) {
        this.onCancelButton();
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

