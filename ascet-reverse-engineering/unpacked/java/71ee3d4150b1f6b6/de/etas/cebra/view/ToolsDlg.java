/*
 * Decompiled with CFR 0.152.
 */
package de.etas.cebra.view;

import de.etas.cebra.Cebra;
import de.etas.cebra.socket.ToolClient;
import de.etas.cebra.socket.ToolEntry;
import de.etas.cebra.view.CebraWarningDlg;
import de.etas.util.StringPrompter;
import de.etas.util.Utilities;
import java.awt.BorderLayout;
import java.awt.Button;
import java.awt.Color;
import java.awt.Component;
import java.awt.Cursor;
import java.awt.Dialog;
import java.awt.Font;
import java.awt.Frame;
import java.awt.Label;
import java.awt.List;
import java.awt.Panel;
import java.awt.TextComponent;
import java.awt.TextField;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.ItemEvent;
import java.awt.event.ItemListener;
import java.awt.event.TextEvent;
import java.awt.event.TextListener;
import java.awt.event.WindowEvent;
import java.awt.event.WindowListener;
import java.util.Hashtable;
import java.util.StringTokenizer;

class ToolsDlg
implements ActionListener,
ItemListener,
WindowListener,
TextListener {
    private Frame parent = null;
    private int origCount = 0;
    private Hashtable newTools = new Hashtable();
    private Dialog dialog = null;
    private Panel contents = null;
    private Button cancelButton = null;
    private Button okButton = null;
    private int textFieldOffset = 180;
    private int col1 = 40;
    private int col2 = 180;
    private List toolsList = null;
    private Label entryLabel = null;
    private Label actualLabel = null;
    private Label hostLabel = null;
    private TextField hostEntryText = null;
    private Label hostActualLabel = null;
    private Label portLabel = null;
    private TextField portEntryText = null;
    private Label portActualLabel = null;
    private Button addButton = null;
    private Button removeButton = null;

    public ToolsDlg(Frame p) {
        this.parent = p;
        this.initialize();
    }

    public void actionPerformed(ActionEvent e) {
        if (e.getSource() == this.getAddButton()) {
            this.onAddButton("newTool");
        } else if (e.getSource() == this.getRemoveButton()) {
            this.onRemoveButton();
        } else if (e.getSource() == this.getCancelButton()) {
            this.onCancelButton();
        } else if (e.getSource() == this.getOkButton()) {
            this.onOkButton();
        }
        this.onItemStateChanged();
    }

    private void addListeners() {
        this.getHostEntryText().addTextListener(this);
        this.getPortEntryText().addTextListener(this);
        this.getDialog().addWindowListener(this);
        this.getToolsList().addItemListener(this);
        this.getAddButton().addActionListener(this);
        this.getRemoveButton().addActionListener(this);
        this.getCancelButton().addActionListener(this);
        this.getOkButton().addActionListener(this);
    }

    private void addTools() {
        String[] toolNames = Utilities.sortStrings(this.newTools.keys());
        StringBuffer failedHosts = new StringBuffer();
        StringBuffer failedPorts = new StringBuffer();
        StringBuffer errMsg = new StringBuffer();
        int i = 0;
        while (i < toolNames.length) {
            ToolEntry entry = (ToolEntry)this.newTools.get(toolNames[i]);
            String hostName = Utilities.checkHostName(entry.host0);
            if (hostName == null) {
                failedHosts.append(entry.host0);
                failedHosts.append(" (");
                failedHosts.append(toolNames[i]);
                failedHosts.append(" )");
                failedHosts.append(Cebra.LF);
            } else {
                try {
                    int p = Integer.parseInt(entry.port0);
                    entry.host0 = hostName;
                    entry.port0 = "" + p;
                    if (!ToolClient.registerTool(toolNames[i], entry)) {
                        Cebra.println("Could not register " + toolNames[i]);
                    }
                }
                catch (Exception exception) {
                    failedPorts.append(entry.port0);
                    failedPorts.append(" (");
                    failedPorts.append(toolNames[i]);
                    failedPorts.append(" )");
                    failedPorts.append(Cebra.LF);
                }
            }
            ++i;
        }
        if (failedHosts.length() > 0) {
            errMsg.append("The following hosts are unknown:");
            errMsg.append(Cebra.LF);
            errMsg.append((Object)failedHosts);
        }
        if (failedPorts.length() > 0) {
            errMsg.append("The following Strings are no port numbers:");
            errMsg.append(Cebra.LF);
            errMsg.append((Object)failedPorts);
        }
        if (errMsg.length() > 0) {
            new CebraWarningDlg(String.valueOf(errMsg.toString()) + "Tools have not been registered.", this.parent);
        }
    }

    private Label getActualLabel() {
        if (this.actualLabel == null) {
            try {
                this.actualLabel = new Label();
                this.actualLabel.setName("ActualLabel");
                this.actualLabel.setText("Actual Value");
                this.actualLabel.setBackground(Color.lightGray);
                this.actualLabel.setBounds(30 + this.col2 + 2, this.textFieldOffset, this.getTextWidth() - this.col2 - 2, 23);
            }
            catch (Exception ex) {
                this.handleException(ex);
            }
        }
        return this.actualLabel;
    }

    private Button getAddButton() {
        if (this.addButton == null) {
            try {
                this.addButton = new Button();
                this.addButton.setName("AddButton");
                this.addButton.setBounds(this.getPaneWidth() - 60 - 30, this.getPaneHeight() - 30 - 69, 60, 23);
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

    private Panel getContents() {
        if (this.contents == null) {
            try {
                this.contents = new Panel();
                this.contents.setName("ContentsPanel");
                this.contents.setLayout(null);
                this.contents.add((Component)this.getToolsList(), this.getToolsList().getName());
                this.contents.add((Component)this.getEntryLabel(), this.getEntryLabel().getName());
                this.contents.add((Component)this.getActualLabel(), this.getActualLabel().getName());
                this.contents.add((Component)this.getHostLabel(), this.getHostLabel().getName());
                this.contents.add((Component)this.getPortLabel(), this.getPortLabel().getName());
                this.contents.add((Component)this.getHostEntryText(), this.getHostEntryText().getName());
                this.contents.add((Component)this.getHostActualLabel(), this.getHostActualLabel().getName());
                this.contents.add((Component)this.getPortEntryText(), this.getPortEntryText().getName());
                this.contents.add((Component)this.getPortActualLabel(), this.getPortActualLabel().getName());
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
                this.dialog.setName("ToolsDlg");
                this.dialog.setTitle("Remote Tool Access");
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

    private Label getEntryLabel() {
        if (this.entryLabel == null) {
            try {
                this.entryLabel = new Label();
                this.entryLabel.setName("EntryLabel");
                this.entryLabel.setText("Entry Value");
                this.entryLabel.setBackground(Color.lightGray);
                this.entryLabel.setBounds(30 + this.col1, this.textFieldOffset, this.col2 - this.col1, 23);
            }
            catch (Exception ex) {
                this.handleException(ex);
            }
        }
        return this.entryLabel;
    }

    private Label getHostActualLabel() {
        if (this.hostActualLabel == null) {
            try {
                this.hostActualLabel = new Label();
                this.hostActualLabel.setName("HostActualLabel");
                this.hostActualLabel.setText("");
                this.hostActualLabel.setBackground(Color.lightGray);
                this.hostActualLabel.setBounds(30 + this.col2 + 2, this.textFieldOffset + 23, this.getTextWidth() - this.col2 - 2, 23);
            }
            catch (Exception ex) {
                this.handleException(ex);
            }
        }
        return this.hostActualLabel;
    }

    private TextField getHostEntryText() {
        if (this.hostEntryText == null) {
            try {
                this.hostEntryText = new TextField();
                this.hostEntryText.setName("HostEntryText");
                ((Component)this.hostEntryText).setBackground(Color.white);
                this.hostEntryText.setEnabled(true);
                this.hostEntryText.setEditable(true);
                ((TextComponent)this.hostEntryText).setText("");
                this.hostEntryText.setBounds(30 + this.col1, this.textFieldOffset + 23, this.col2 - this.col1, 23);
                this.hostEntryText.setCursor(new Cursor(2));
            }
            catch (Exception ex) {
                this.handleException(ex);
            }
        }
        return this.hostEntryText;
    }

    private Label getHostLabel() {
        if (this.hostLabel == null) {
            try {
                this.hostLabel = new Label();
                this.hostLabel.setName("HostLabel");
                this.hostLabel.setText("Host");
                this.hostLabel.setBackground(Color.lightGray);
                this.hostLabel.setBounds(30, this.textFieldOffset + 23, this.col1, 23);
            }
            catch (Exception ex) {
                this.handleException(ex);
            }
        }
        return this.hostLabel;
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
        return 400;
    }

    private int getPaneWidth() {
        return 360;
    }

    private Label getPortActualLabel() {
        if (this.portActualLabel == null) {
            try {
                this.portActualLabel = new Label();
                this.portActualLabel.setName("PortActualLabel");
                this.portActualLabel.setText("");
                this.portActualLabel.setBackground(Color.lightGray);
                this.portActualLabel.setBounds(30 + this.col2 + 2, this.textFieldOffset + 46, this.getTextWidth() - this.col2 - 2, 23);
            }
            catch (Exception ex) {
                this.handleException(ex);
            }
        }
        return this.portActualLabel;
    }

    private TextField getPortEntryText() {
        if (this.portEntryText == null) {
            try {
                this.portEntryText = new TextField();
                this.portEntryText.setName("PortEntryText");
                ((Component)this.portEntryText).setBackground(Color.white);
                this.portEntryText.setEnabled(true);
                this.portEntryText.setEditable(true);
                ((TextComponent)this.portEntryText).setText("");
                this.portEntryText.setBounds(30 + this.col1, this.textFieldOffset + 46, this.col2 - this.col1, 23);
                this.portEntryText.setCursor(new Cursor(2));
            }
            catch (Exception ex) {
                this.handleException(ex);
            }
        }
        return this.portEntryText;
    }

    private Label getPortLabel() {
        if (this.portLabel == null) {
            try {
                this.portLabel = new Label();
                this.portLabel.setName("PortLabel");
                this.portLabel.setText("Port");
                this.portLabel.setBackground(Color.lightGray);
                this.portLabel.setBounds(30, this.textFieldOffset + 46, this.col1, 23);
            }
            catch (Exception ex) {
                this.handleException(ex);
            }
        }
        return this.portLabel;
    }

    private Button getRemoveButton() {
        if (this.removeButton == null) {
            try {
                this.removeButton = new Button();
                this.removeButton.setName("RemoveButton");
                this.removeButton.setBounds(30, this.getPaneHeight() - 30 - 69, 60, 23);
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

    private List getToolsList() {
        if (this.toolsList == null) {
            try {
                this.toolsList = new List();
                this.toolsList.setName("ToolsList");
                this.toolsList.setFont(new Font("monospaced", 0, 12));
                this.toolsList.setBounds(30, 30, this.getTextWidth(), 115);
                this.toolsList.setMultipleMode(false);
            }
            catch (Exception ex) {
                this.handleException(ex);
            }
        }
        return this.toolsList;
    }

    private void handleException(Throwable ex) {
        System.out.println("Exception in " + this.getClass().getName() + ". " + ex.toString());
    }

    private void initialize() {
        this.addListeners();
        ((Component)this.getDialog()).setVisible(true);
        this.onItemStateChanged();
        this.updateToolsList();
    }

    public void itemStateChanged(ItemEvent e) {
        if (e.getSource() == this.getToolsList()) {
            this.onItemStateChanged();
        }
    }

    private String[] newTools() {
        return Utilities.sortStrings(this.newTools.keys());
    }

    private void onAddButton(String newToolName) {
        if (newToolName == null) {
            return;
        }
        String tools = StringPrompter.prompt("Tool name", newToolName, this.parent);
        if (tools == null) {
            return;
        }
        if (tools.length() == 0) {
            return;
        }
        if (!Utilities.checkNameString(tools)) {
            this.onAddButton(Utilities.trimString(tools));
            return;
        }
        StringTokenizer st = new StringTokenizer(tools, Cebra.PS);
        int count = st.countTokens();
        int i = 0;
        while (i < count) {
            String toolName = st.nextToken();
            ToolEntry entry = ToolClient.getEntryForTool(toolName);
            if (entry == null && (entry = (ToolEntry)this.newTools.get(toolName)) == null) {
                this.newTools.put(toolName, new ToolEntry());
            }
            ++i;
        }
        this.updateToolsList();
    }

    private void onCancelButton() {
        this.removeListeners();
        this.getDialog().dispose();
    }

    private void onHostEntryChanged() {
        String toolName = this.getToolsList().getSelectedItem();
        if (toolName == null) {
            return;
        }
        ToolEntry entry = (ToolEntry)this.newTools.get(toolName);
        if (entry == null) {
            return;
        }
        entry.host0 = this.getHostEntryText().getText();
    }

    private void onItemStateChanged() {
        ToolEntry entry;
        int idx = this.getToolsList().getSelectedIndex();
        if (idx < 0) {
            ((TextComponent)this.getHostEntryText()).setText("");
            ((TextComponent)this.getPortEntryText()).setText("");
            this.getHostActualLabel().setText("");
            this.getPortActualLabel().setText("");
            this.getHostEntryText().setEnabled(false);
            this.getPortEntryText().setEnabled(false);
            this.getRemoveButton().setEnabled(false);
            return;
        }
        String selTool = this.getToolsList().getSelectedItem();
        if (idx < this.origCount) {
            this.getHostEntryText().setEnabled(false);
            this.getPortEntryText().setEnabled(false);
            entry = ToolClient.getEntryForTool(selTool);
            this.getRemoveButton().setEnabled(false);
        } else {
            this.getHostEntryText().setEnabled(true);
            this.getPortEntryText().setEnabled(true);
            entry = (ToolEntry)this.newTools.get(selTool);
            this.getRemoveButton().setEnabled(true);
        }
        if (entry.host0 == null) {
            ((TextComponent)this.getHostEntryText()).setText("");
        } else {
            ((TextComponent)this.getHostEntryText()).setText(entry.host0);
        }
        if (entry.port0 == null) {
            ((TextComponent)this.getPortEntryText()).setText("");
        } else {
            ((TextComponent)this.getPortEntryText()).setText(entry.port0);
        }
        if (entry.host == null) {
            this.getHostActualLabel().setText("not registered");
        } else {
            this.getHostActualLabel().setText(entry.host);
        }
        this.getPortActualLabel().setText("" + entry.port);
    }

    private void onOkButton() {
        this.addTools();
        this.onCancelButton();
    }

    private void onPortEntryChanged() {
        String toolName = this.getToolsList().getSelectedItem();
        if (toolName == null) {
            return;
        }
        ToolEntry entry = (ToolEntry)this.newTools.get(toolName);
        if (entry == null) {
            return;
        }
        entry.port0 = this.getPortEntryText().getText();
    }

    private void onRemoveButton() {
        int idx = this.getToolsList().getSelectedIndex();
        if (idx < this.origCount) {
            return;
        }
        String selTool = this.getToolsList().getSelectedItem();
        this.newTools.remove(selTool);
        this.updateToolsList();
    }

    private void removeListeners() {
        this.getHostEntryText().removeTextListener(this);
        this.getPortEntryText().removeTextListener(this);
        this.getDialog().removeWindowListener(this);
        this.getToolsList().removeItemListener(this);
        this.getAddButton().removeActionListener(this);
        this.getRemoveButton().removeActionListener(this);
        this.getCancelButton().removeActionListener(this);
        this.getOkButton().removeActionListener(this);
    }

    public void textValueChanged(TextEvent e) {
        if (e.getSource() == this.getHostEntryText()) {
            this.onHostEntryChanged();
        }
        if (e.getSource() == this.getPortEntryText()) {
            this.onPortEntryChanged();
        }
    }

    private void updateToolsList() {
        this.toolsList.removeAll();
        String[] tools = ToolClient.getAllRegisteredTools();
        int i = 0;
        while (i < tools.length) {
            this.toolsList.add(tools[i]);
            ++i;
        }
        this.origCount = tools.length;
        tools = this.newTools();
        i = 0;
        while (i < tools.length) {
            this.toolsList.add(tools[i]);
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

