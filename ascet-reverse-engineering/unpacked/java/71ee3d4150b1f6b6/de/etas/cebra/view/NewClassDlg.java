/*
 * Decompiled with CFR 0.152.
 */
package de.etas.cebra.view;

import de.etas.cebra.Cebra;
import de.etas.cebra.scripts.Script;
import de.etas.cebra.view.CebraWarningDlg;
import de.etas.util.Utilities;
import java.awt.BorderLayout;
import java.awt.Button;
import java.awt.Color;
import java.awt.Component;
import java.awt.Cursor;
import java.awt.Dialog;
import java.awt.FileDialog;
import java.awt.Frame;
import java.awt.Label;
import java.awt.Panel;
import java.awt.TextComponent;
import java.awt.TextField;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.WindowEvent;
import java.awt.event.WindowListener;

public final class NewClassDlg
implements ActionListener,
WindowListener {
    private Frame parent = null;
    private Dialog dialog = null;
    private Panel contents = null;
    private Label classLabel = null;
    private TextField classValue = null;
    private Button browseButton = null;
    private Label aliasLabel = null;
    private TextField aliasValue = null;
    private Button cancelButton = null;
    private Button okButton = null;
    private FileDialog fileDlg = null;

    public NewClassDlg(Frame p) {
        this.parent = p;
        this.initialize();
        this.getDialog().show();
    }

    public void actionPerformed(ActionEvent e) {
        Object s = e.getSource();
        if (s == this.getBrowseButton()) {
            this.onBrowseButton();
            return;
        }
        if (s == this.getCancelButton()) {
            this.onCancelButton();
            return;
        }
        if (s == this.getOkButton()) {
            this.onOkButton();
            return;
        }
    }

    private void addListeners() {
        this.getDialog().addWindowListener(this);
        this.getBrowseButton().addActionListener(this);
        this.getCancelButton().addActionListener(this);
        this.getOkButton().addActionListener(this);
    }

    private Label getAliasLabel() {
        if (this.aliasLabel == null) {
            try {
                this.aliasLabel = new Label();
                this.aliasLabel.setText("Alias name");
                this.aliasLabel.setBackground(Color.lightGray);
                this.aliasLabel.setBounds(30, 100, this.getTextWidth(), 23);
            }
            catch (Exception ex) {
                this.handleException(ex);
            }
        }
        return this.aliasLabel;
    }

    private TextField getAliasValue() {
        if (this.aliasValue == null) {
            try {
                this.aliasValue = new TextField();
                this.aliasValue.setName("AliasValue");
                ((Component)this.aliasValue).setBackground(Color.white);
                this.aliasValue.setBounds(30, 130, this.getTextWidth(), 23);
                ((TextComponent)this.aliasValue).setText("");
                this.aliasValue.setEnabled(true);
                this.aliasValue.setEditable(true);
                this.aliasValue.setCursor(new Cursor(2));
            }
            catch (Exception ex) {
                this.handleException(ex);
            }
        }
        return this.aliasValue;
    }

    private Button getBrowseButton() {
        if (this.browseButton == null) {
            try {
                this.browseButton = new Button();
                this.browseButton.setName("browseButton");
                this.browseButton.setBounds(this.getPaneWidth() - 30 - 60, 60, 60, 23);
                this.browseButton.setLabel("Browse...");
            }
            catch (Exception ex) {
                this.handleException(ex);
            }
        }
        return this.browseButton;
    }

    private Button getCancelButton() {
        if (this.cancelButton == null) {
            try {
                this.cancelButton = new Button();
                this.cancelButton.setName("CancelButton");
                this.cancelButton.setBounds(30, this.getPaneHeight() - 23 - 30, 60, 23);
                this.cancelButton.setLabel("Cancel");
            }
            catch (Exception ex) {
                this.handleException(ex);
            }
        }
        return this.cancelButton;
    }

    private Label getClassLabel() {
        if (this.classLabel == null) {
            try {
                this.classLabel = new Label();
                this.classLabel.setText("Class");
                this.classLabel.setBackground(Color.lightGray);
                this.classLabel.setBounds(30, 30, this.getTextWidth() - 60 - 1, 23);
            }
            catch (Exception ex) {
                this.handleException(ex);
            }
        }
        return this.classLabel;
    }

    private TextField getClassValue() {
        if (this.classValue == null) {
            try {
                this.classValue = new TextField();
                this.classValue.setName("ClassValue");
                ((Component)this.classValue).setBackground(Color.white);
                this.classValue.setBounds(30, 60, this.getTextWidth() - 60 - 5, 23);
                ((TextComponent)this.classValue).setText("");
                this.classValue.setEnabled(true);
                this.classValue.setEditable(true);
                this.classValue.setCursor(new Cursor(2));
            }
            catch (Exception ex) {
                this.handleException(ex);
            }
        }
        return this.classValue;
    }

    private Panel getContents() {
        if (this.contents == null) {
            try {
                this.contents = new Panel();
                this.contents.setName("ContentsPanel");
                this.contents.setLayout(null);
                this.contents.add((Component)this.getClassLabel(), this.getClassLabel().getName());
                this.contents.add((Component)this.getClassValue(), this.getClassValue().getName());
                this.contents.add((Component)this.getAliasLabel(), this.getAliasLabel().getName());
                this.contents.add((Component)this.getAliasValue(), this.getAliasValue().getName());
                this.contents.add((Component)this.getBrowseButton(), this.getBrowseButton().getName());
                this.contents.add((Component)this.getCancelButton(), this.getCancelButton().getName());
                this.contents.add((Component)this.getOkButton(), this.getOkButton().getName());
            }
            catch (Exception ex) {
                this.handleException(ex);
            }
        }
        return this.contents;
    }

    private Dialog getDialog() {
        if (this.dialog == null) {
            try {
                this.dialog = new Dialog(this.parent);
                this.dialog.setName("NewClassDlg");
                this.dialog.setTitle("New script class");
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

    private FileDialog getFileDialog() {
        if (this.fileDlg == null) {
            try {
                this.fileDlg = new FileDialog(this.parent, "Chose class file", 0);
            }
            catch (Exception ex) {
                this.handleException(ex);
            }
        }
        return this.fileDlg;
    }

    private Button getOkButton() {
        if (this.okButton == null) {
            try {
                this.okButton = new Button();
                this.okButton.setName("okButton");
                this.okButton.setBounds(this.getPaneWidth() - 30 - 60, this.getPaneHeight() - 23 - 30, 60, 23);
                this.okButton.setLabel("Ok");
            }
            catch (Exception ex) {
                this.handleException(ex);
            }
        }
        return this.okButton;
    }

    private int getPaneHeight() {
        return 300;
    }

    private int getPaneWidth() {
        return 280;
    }

    private int getTextWidth() {
        return this.getPaneWidth() - 60;
    }

    private void handleException(Exception ex) {
        Cebra.println("NewClassDlg: " + ex.toString());
    }

    private void initialize() {
        this.addListeners();
    }

    private void onBrowseButton() {
        this.getFileDialog().show();
        String clazzFile = this.getFileDialog().getFile();
        String clazzPath = this.getFileDialog().getDirectory();
        if (clazzFile == null) {
            return;
        }
        String path = Utilities.validatePath(clazzPath);
        if (path == null) {
            new CebraWarningDlg("File is not within the class path." + Cebra.LF + "Use 'Options->Options...' to change the class path.", this.parent);
            return;
        }
        if (!clazzFile.endsWith(".class")) {
            new CebraWarningDlg("File is not a java class file. Extension must be '*.class'!", this.parent);
            return;
        }
        int pos = clazzFile.lastIndexOf(46);
        clazzFile = clazzFile.substring(0, pos);
        clazzFile = String.valueOf(clazzPath) + clazzFile;
        pos = path.length();
        clazzFile = clazzFile.substring(pos);
        clazzFile = Utilities.changeToJavaPath(clazzFile);
        ((TextComponent)this.getClassValue()).setText(clazzFile);
    }

    private void onCancelButton() {
        this.removeListeners();
        this.getDialog().dispose();
    }

    private void onOkButton() {
        String clazzName = this.getClassValue().getText();
        String aliasName = this.getAliasValue().getText();
        if (clazzName == null) {
            new CebraWarningDlg("You must chose a class.", this.parent);
            return;
        }
        if (clazzName.length() < 1) {
            new CebraWarningDlg("You must chose a class.", this.parent);
            return;
        }
        if (aliasName == null) {
            new CebraWarningDlg("You must chose an alias name for the class.", this.parent);
            return;
        }
        if (aliasName.length() < 1) {
            new CebraWarningDlg("You must chose an alias name for the class.", this.parent);
            return;
        }
        Class<?> clazz = null;
        try {
            clazz = Class.forName(clazzName);
        }
        catch (ClassNotFoundException classNotFoundException) {
            new CebraWarningDlg("Class '" + clazzName + "' is not a valid class file or was not found in the class path." + Cebra.LF + "Use 'Options->Options...' to change the class path.", this.parent);
            return;
        }
        if (!Script.isScriptClass(clazz)) {
            new CebraWarningDlg("Class '" + clazzName + "' is not a subclass of de.etas.cebra.scripts.Script.", this.parent);
            return;
        }
        Cebra.addClassNameAlias(aliasName, clazz);
        this.onCancelButton();
    }

    private void removeListeners() {
        this.getDialog().addWindowListener(this);
        this.getBrowseButton().addActionListener(this);
        this.getCancelButton().addActionListener(this);
        this.getOkButton().addActionListener(this);
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

