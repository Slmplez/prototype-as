/*
 * Decompiled with CFR 0.152.
 */
package de.etas.cebra.view;

import de.etas.cebra.Cebra;
import de.etas.cebra.view.CebraWarningDlg;
import de.etas.util.LogFile;
import de.etas.util.StringPrompter;
import de.etas.util.Utilities;
import java.awt.BorderLayout;
import java.awt.Button;
import java.awt.Checkbox;
import java.awt.Color;
import java.awt.Component;
import java.awt.Dialog;
import java.awt.Font;
import java.awt.Frame;
import java.awt.Label;
import java.awt.List;
import java.awt.Panel;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.ItemEvent;
import java.awt.event.ItemListener;
import java.awt.event.WindowEvent;
import java.awt.event.WindowListener;
import java.util.Enumeration;
import java.util.StringTokenizer;
import java.util.Vector;

class OptionsDlg
implements ActionListener,
ItemListener,
WindowListener {
    private Frame parent = null;
    private String newPath = null;
    private Dialog dialog = null;
    private Panel contents = null;
    private Button cancelButton = null;
    private Button okButton = null;
    private Checkbox logCheck = null;
    private Label classPathLabel = null;
    private List classPathList = null;
    private Button addButton = null;
    private Button removeButton = null;

    public OptionsDlg(Frame p) {
        this.parent = p;
        this.initialize();
    }

    public void actionPerformed(ActionEvent e) {
        if (e.getSource() == this.getAddButton()) {
            this.onAddButton();
            return;
        }
        if (e.getSource() == this.getRemoveButton()) {
            this.onRemoveButton();
            return;
        }
        if (e.getSource() == this.getCancelButton()) {
            this.onCancelButton();
            return;
        }
        if (e.getSource() == this.getOkButton()) {
            this.onOkButton();
            return;
        }
    }

    private void addListeners() {
        this.getDialog().addWindowListener(this);
        this.getAddButton().addActionListener(this);
        this.getRemoveButton().addActionListener(this);
        this.getCancelButton().addActionListener(this);
        this.getOkButton().addActionListener(this);
    }

    private Button getAddButton() {
        if (this.addButton == null) {
            try {
                this.addButton = new Button();
                this.addButton.setName("AddButton");
                this.addButton.setBounds(this.getPaneWidth() - 60 - 30, 235, 60, 23);
                this.addButton.setLabel("add...");
            }
            catch (Exception ex) {
                this.handleException(ex);
            }
        }
        return this.addButton;
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

    private Label getClassPathLabel() {
        if (this.classPathLabel == null) {
            try {
                this.classPathLabel = new Label();
                this.classPathLabel.setName("ClassPathLabel");
                this.classPathLabel.setBackground(Color.lightGray);
                this.classPathLabel.setBounds(30, 60, this.getTextWidth(), 23);
                this.classPathLabel.setText("Class path");
            }
            catch (Exception ex) {
                this.handleException(ex);
            }
        }
        return this.classPathLabel;
    }

    private Panel getContents() {
        if (this.contents == null) {
            try {
                this.contents = new Panel();
                this.contents.setName("ContentsPanel");
                this.contents.setLayout(null);
                this.contents.add((Component)this.getLogCheck(), this.getLogCheck().getName());
                this.contents.add((Component)this.getClassPathLabel(), this.getClassPathLabel().getName());
                this.contents.add((Component)this.getPathList(), this.getPathList().getName());
                this.contents.add((Component)this.getAddButton(), this.getAddButton().getName());
                this.contents.add((Component)this.getRemoveButton(), this.getRemoveButton().getName());
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
                this.dialog.setName("OptionsDlg");
                this.dialog.setTitle("Options");
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

    private Checkbox getLogCheck() {
        if (this.logCheck == null) {
            try {
                this.logCheck = new Checkbox();
                this.logCheck.setName("LogCheck");
                this.logCheck.setBounds(30, 30, this.getTextWidth(), 23);
                this.logCheck.setBackground(Color.lightGray);
                this.logCheck.setLabel("logging enabled");
                this.logCheck.setState(LogFile.loggingEnabled());
            }
            catch (Exception ex) {
                this.handleException(ex);
            }
        }
        return this.logCheck;
    }

    private Button getOkButton() {
        if (this.okButton == null) {
            try {
                this.okButton = new Button();
                this.okButton.setName("okButton");
                this.okButton.setBounds(this.getPaneWidth() - 60 - 30, this.getPaneHeight() - 23 - 30, 60, 23);
                this.okButton.setLabel("Ok");
            }
            catch (Exception ex) {
                this.handleException(ex);
            }
        }
        return this.okButton;
    }

    private int getPaneHeight() {
        return 340;
    }

    private int getPaneWidth() {
        return 320;
    }

    private List getPathList() {
        if (this.classPathList == null) {
            try {
                this.classPathList = new List();
                this.classPathList.setName("ClassPathList");
                this.classPathList.setFont(new Font("monospaced", 0, 12));
                this.classPathList.setBounds(30, 90, this.getTextWidth(), 115);
                this.classPathList.setMultipleMode(true);
                this.updatePathList();
            }
            catch (Exception ex) {
                this.handleException(ex);
            }
        }
        return this.classPathList;
    }

    private Button getRemoveButton() {
        if (this.removeButton == null) {
            try {
                this.removeButton = new Button();
                this.removeButton.setName("RemoveButton");
                this.removeButton.setBounds(30, 235, 60, 23);
                this.removeButton.setLabel("remove");
            }
            catch (Exception ex) {
                this.handleException(ex);
            }
        }
        return this.removeButton;
    }

    private int getTextWidth() {
        return this.getPaneWidth() - 60;
    }

    private void handleException(Throwable ex) {
        System.out.println("Exception in " + this.getClass().getName() + ". " + ex.toString());
    }

    private void initialize() {
        this.addListeners();
        ((Component)this.getDialog()).setVisible(true);
    }

    public void itemStateChanged(ItemEvent e) {
    }

    private String[] newPath() {
        StringTokenizer tok = new StringTokenizer(this.newPath, Cebra.PS);
        int n = tok.countTokens();
        String[] ergeb = new String[n];
        int i = 0;
        while (i < n) {
            String p = tok.nextToken();
            if (p.endsWith(Cebra.FS)) {
                p = p.substring(0, p.length() - 1);
            }
            ergeb[i] = p;
            ++i;
        }
        return ergeb;
    }

    private void onAddButton() {
        String path = StringPrompter.prompt("Class path extension", "", this.parent);
        if (path == null) {
            return;
        }
        new CebraWarningDlg("The new directory is considered after a restart of CEBRA", new Frame());
        this.newPath = String.valueOf(this.newPath) + Cebra.PS + path;
        this.updatePathList();
        Cebra.addClassPathToDefaultIniFile(path);
    }

    private void onCancelButton() {
        this.removeListeners();
        this.getDialog().dispose();
    }

    private void onOkButton() {
        LogFile.enableLogging(this.getLogCheck().getState());
        this.saveClassPath();
        this.onCancelButton();
    }

    private void onRemoveButton() {
        int[] pos = this.getPathList().getSelectedIndexes();
        int i = 0;
        while (i < pos.length) {
            String str = this.getPathList().getItem(pos[i]);
            if (!Cebra.removeClassPathFromDefaultIniFile(str)) {
                new CebraWarningDlg("Can not remove directoy " + str + " (it is a standard directory)", new Frame());
            } else {
                String[] path = Utilities.getStrings(this.newPath, 59);
                if (Utilities.contains(path, str)) {
                    Vector<String> vecPath = new Vector<String>();
                    int j = 0;
                    while (j < path.length) {
                        if (!path[j].equals(str)) {
                            vecPath.addElement(path[j]);
                        }
                        ++j;
                    }
                    this.newPath = "";
                    Enumeration enumeration = vecPath.elements();
                    while (enumeration.hasMoreElements()) {
                        this.newPath = this.newPath == "" ? (String)enumeration.nextElement() : String.valueOf(this.newPath) + ";" + (String)enumeration.nextElement();
                    }
                }
            }
            ++i;
        }
        this.updatePathList();
        new CebraWarningDlg("The removed directories are removed after a restart of CEBRA", new Frame());
    }

    private void removeListeners() {
        this.getDialog().removeWindowListener(this);
        this.getAddButton().removeActionListener(this);
        this.getCancelButton().removeActionListener(this);
        this.getOkButton().removeActionListener(this);
    }

    private void saveClassPath() {
        Utilities.setClassPath(this.newPath);
        this.updatePathList();
    }

    private void updatePathList() {
        this.classPathList.removeAll();
        if (this.newPath == null) {
            this.newPath = Utilities.getClassPath();
        }
        this.newPath = Utilities.trimPath(this.newPath, true);
        String[] path = this.newPath();
        int i = 0;
        while (i < path.length) {
            this.classPathList.add(path[i]);
            ++i;
        }
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

