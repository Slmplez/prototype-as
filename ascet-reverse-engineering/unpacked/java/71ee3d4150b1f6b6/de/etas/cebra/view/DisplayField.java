/*
 * Decompiled with CFR 0.152.
 */
package de.etas.cebra.view;

import de.etas.cebra.Cebra;
import java.awt.BorderLayout;
import java.awt.Color;
import java.awt.Component;
import java.awt.Cursor;
import java.awt.Font;
import java.awt.Frame;
import java.awt.TextArea;
import java.awt.event.WindowEvent;
import java.awt.event.WindowListener;
import java.io.LineNumberReader;

public final class DisplayField
extends Thread
implements WindowListener {
    private String title = null;
    private LineNumberReader reader = null;
    private Frame frame = null;
    private TextArea text = null;

    public DisplayField(String title, LineNumberReader lnr) {
        this.title = title;
        this.reader = lnr;
        this.initialize();
    }

    private Frame getFrame() {
        if (this.frame == null) {
            try {
                this.frame = new Frame();
                this.frame.setTitle(this.title);
                this.frame.setLayout(new BorderLayout());
                ((Component)this.frame).setBounds(28, 56, 600, 350);
                this.frame.add((Component)this.getTextField(), "Center");
            }
            catch (Exception ex) {
                this.handleException(ex);
            }
        }
        return this.frame;
    }

    private TextArea getTextField() {
        if (this.text == null) {
            try {
                this.text = new TextArea();
                this.text.setFont(new Font("monospaced", 0, 12));
                this.text.setEditable(false);
                this.text.setEnabled(true);
                ((Component)this.text).setBackground(new Color(230, 230, 200));
                this.text.setForeground(Color.black);
                this.text.setCursor(new Cursor(0));
                boolean weiter = true;
                int i = 1;
                do {
                    String str;
                    if ((str = this.reader.readLine()) == null) {
                        weiter = false;
                        continue;
                    }
                    if (i < 10) {
                        this.text.append("    ");
                    } else if (i < 100) {
                        this.text.append("   ");
                    } else if (i < 1000) {
                        this.text.append("  ");
                    } else if (i < 10000) {
                        this.text.append(" ");
                    }
                    this.text.append(i + ": ");
                    this.text.append(str);
                    this.text.append(Cebra.LF);
                    ++i;
                } while (weiter);
                this.reader.close();
            }
            catch (Exception ex) {
                this.handleException(ex);
            }
        }
        return this.text;
    }

    private void handleException(Exception ex) {
        Cebra.println("NewClassDlg: " + ex.toString());
    }

    private void initialize() {
        this.getFrame().addWindowListener(this);
    }

    public void run() {
        this.getFrame().show();
    }

    public void windowActivated(WindowEvent e) {
    }

    public void windowClosed(WindowEvent e) {
    }

    public void windowClosing(WindowEvent e) {
        this.getFrame().removeWindowListener(this);
        this.getFrame().dispose();
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

