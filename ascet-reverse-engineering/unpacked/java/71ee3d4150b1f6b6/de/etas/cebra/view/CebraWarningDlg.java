/*
 * Decompiled with CFR 0.152.
 */
package de.etas.cebra.view;

import de.etas.cebra.Cebra;
import java.awt.BorderLayout;
import java.awt.Button;
import java.awt.Color;
import java.awt.Component;
import java.awt.Dialog;
import java.awt.Font;
import java.awt.Frame;
import java.awt.Panel;
import java.awt.TextArea;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.util.StringTokenizer;

public class CebraWarningDlg
implements ActionListener {
    private Dialog ivjCebraWarningDlg = null;
    private Panel ivjContentsPane = null;
    private Button ivjOkButton = null;
    private TextArea ivjWarningText = null;
    private Frame parent = null;
    private int textWidth = 40;
    private String lineFeed = Cebra.LF;

    public CebraWarningDlg(String message, Frame p) {
        this.parent = p;
        int lineCount = 1;
        this.getOkButton().addActionListener(this);
        StringBuffer msg = new StringBuffer();
        StringTokenizer tok = new StringTokenizer(message);
        int lineWidth = 0;
        int last_index = 0;
        while (tok.hasMoreTokens()) {
            String str = tok.nextToken();
            int act_index = message.indexOf(str, last_index);
            if (act_index - last_index > 0) {
                int i = last_index;
                while (i < act_index) {
                    if (message.charAt(i) == '\n' || message.charAt(i) == '\r') {
                        msg.append(this.lineFeed);
                        lineWidth = 0;
                        ++lineCount;
                    }
                    if (message.charAt(i) == '\t') {
                        if (lineWidth + 8 > this.textWidth) {
                            msg.append(this.lineFeed);
                            lineWidth = 0;
                            ++lineCount;
                        } else {
                            msg.append("        ");
                            lineWidth += 8;
                        }
                    }
                    if (message.charAt(i) == ' ') {
                        if (lineWidth + 1 > this.textWidth) {
                            msg.append(this.lineFeed);
                            lineWidth = 0;
                            ++lineCount;
                        } else {
                            msg.append(" ");
                            ++lineWidth;
                        }
                    }
                    ++i;
                }
            }
            last_index = act_index + str.length();
            if (lineWidth + str.length() > this.textWidth) {
                msg.append(this.lineFeed);
                msg.append(str);
                lineWidth = str.length();
                ++lineCount;
                continue;
            }
            msg.append(str);
            lineWidth += str.length();
        }
        ((Component)this.getCebraWarningDlg()).setBounds(103, 68, 278, 27 + 23 * (lineCount + 3) + 20);
        this.getWarningText().setBounds(11, 11, 250, 23 * lineCount);
        this.getOkButton().setBounds(105, 27 + 23 * lineCount + 10, 60, 23);
        this.getWarningText().setText(msg.toString());
        this.getOkButton().requestFocus();
        this.getCebraWarningDlg().setModal(true);
        ((Component)this.getCebraWarningDlg()).setVisible(true);
    }

    public void actionPerformed(ActionEvent e) {
        if (e.getSource() == this.getOkButton()) {
            this.getOkButton().removeActionListener(this);
            this.getCebraWarningDlg().dispose();
        }
    }

    private Dialog getCebraWarningDlg() {
        if (this.ivjCebraWarningDlg == null) {
            try {
                this.ivjCebraWarningDlg = new Dialog(this.parent);
                this.ivjCebraWarningDlg.setName("CebraWarningDlg");
                this.ivjCebraWarningDlg.setLayout(new BorderLayout());
                this.ivjCebraWarningDlg.setTitle("Cebra Warning");
                this.ivjCebraWarningDlg.setResizable(false);
                this.getCebraWarningDlg().add((Component)this.getContentsPane(), "Center");
            }
            catch (Throwable throwable) {}
        }
        return this.ivjCebraWarningDlg;
    }

    private Panel getContentsPane() {
        if (this.ivjContentsPane == null) {
            try {
                this.ivjContentsPane = new Panel();
                this.ivjContentsPane.setName("ContentsPane");
                this.ivjContentsPane.setLayout(null);
                this.getContentsPane().add((Component)this.getOkButton(), this.getOkButton().getName());
                this.getContentsPane().add((Component)this.getWarningText(), this.getWarningText().getName());
            }
            catch (Throwable throwable) {}
        }
        return this.ivjContentsPane;
    }

    private Button getOkButton() {
        if (this.ivjOkButton == null) {
            try {
                this.ivjOkButton = new Button();
                this.ivjOkButton.setName("OkButton");
                this.ivjOkButton.setBounds(95, 140, 60, 23);
                this.ivjOkButton.setActionCommand("Ok");
                this.ivjOkButton.setLabel("Ok");
            }
            catch (Throwable throwable) {}
        }
        return this.ivjOkButton;
    }

    private TextArea getWarningText() {
        if (this.ivjWarningText == null) {
            try {
                this.ivjWarningText = new TextArea("", 0, 0, 3);
                this.ivjWarningText.setName("WarningText");
                this.ivjWarningText.setFont(new Font("dialog", 0, 12));
                this.ivjWarningText.setText("");
                ((Component)this.ivjWarningText).setBackground(Color.lightGray);
                this.ivjWarningText.setForeground(Color.black);
                this.ivjWarningText.setEditable(false);
            }
            catch (Throwable throwable) {}
        }
        return this.ivjWarningText;
    }
}

