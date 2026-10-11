/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.jface.dialogs.IDialogConstants
 *  org.eclipse.jface.dialogs.IDialogSettings
 *  org.eclipse.jface.dialogs.ProgressMonitorDialog
 *  org.eclipse.jface.dialogs.TrayDialog
 *  org.eclipse.jface.operation.IRunnableWithProgress
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.layout.GridData
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Shell
 *  org.eclipse.swt.widgets.Text
 */
package org.eclipse.ui.internal.views.log;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.RandomAccessFile;
import java.io.StringWriter;
import java.lang.reflect.InvocationTargetException;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.jface.dialogs.IDialogConstants;
import org.eclipse.jface.dialogs.IDialogSettings;
import org.eclipse.jface.dialogs.ProgressMonitorDialog;
import org.eclipse.jface.dialogs.TrayDialog;
import org.eclipse.jface.operation.IRunnableWithProgress;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.swt.widgets.Text;
import org.eclipse.ui.internal.views.log.Activator;
import org.eclipse.ui.internal.views.log.Messages;

public final class OpenLogDialog
extends TrayDialog {
    private File logFile;
    private IDialogSettings dialogSettings;
    private Point dialogLocation;
    private Point dialogSize;
    private int DEFAULT_WIDTH = 750;
    private int DEFAULT_HEIGHT = 800;

    public OpenLogDialog(Shell parentShell, File logFile) {
        super(parentShell);
        this.logFile = logFile;
        this.setShellStyle(3312);
    }

    protected void configureShell(Shell newShell) {
        super.configureShell(newShell);
        newShell.setText(Messages.OpenLogDialog_title);
        this.readConfiguration();
    }

    protected void createButtonsForButtonBar(Composite parent) {
        this.createButton(parent, 12, IDialogConstants.CLOSE_LABEL, true);
    }

    public void create() {
        super.create();
        if (this.dialogLocation != null) {
            this.getShell().setLocation(this.dialogLocation);
        }
        if (this.dialogSize != null) {
            this.getShell().setSize(this.dialogSize);
        } else {
            this.getShell().setSize(this.DEFAULT_WIDTH, this.DEFAULT_HEIGHT);
        }
        this.getButton(12).setFocus();
    }

    protected Control createDialogArea(Composite parent) {
        Composite outer = (Composite)super.createDialogArea(parent);
        Text text = new Text(outer, 527114);
        text.setBackground(parent.getDisplay().getSystemColor(25));
        GridData gridData = new GridData(272);
        gridData.grabExcessVerticalSpace = true;
        gridData.grabExcessHorizontalSpace = true;
        text.setLayoutData((Object)gridData);
        text.setText(this.getLogSummary());
        return outer;
    }

    private String getLogSummary() {
        StringWriter out = new StringWriter();
        PrintWriter writer = new PrintWriter(out);
        if (this.logFile.length() > 0x100000L) {
            this.readLargeFileWithMonitor(writer);
        } else {
            this.readFileWithMonitor(writer);
        }
        writer.close();
        return out.toString();
    }

    protected void buttonPressed(int buttonId) {
        if (buttonId == 12) {
            this.storeSettings();
            this.close();
        }
        super.buttonPressed(buttonId);
    }

    private void storeSettings() {
        this.writeConfiguration();
    }

    private IDialogSettings getDialogSettings() {
        IDialogSettings settings = Activator.getDefault().getDialogSettings();
        this.dialogSettings = settings.getSection(((Object)((Object)this)).getClass().getName());
        if (this.dialogSettings == null) {
            this.dialogSettings = settings.addNewSection(((Object)((Object)this)).getClass().getName());
        }
        return this.dialogSettings;
    }

    private void readConfiguration() {
        IDialogSettings s = this.getDialogSettings();
        try {
            int x = s.getInt("x");
            int y = s.getInt("y");
            this.dialogLocation = new Point(x, y);
            x = s.getInt("width");
            y = s.getInt("height");
            this.dialogSize = new Point(x, y);
        }
        catch (NumberFormatException numberFormatException) {
            this.dialogLocation = null;
            this.dialogSize = null;
        }
    }

    private void writeConfiguration() {
        IDialogSettings s = this.getDialogSettings();
        Point location = this.getShell().getLocation();
        s.put("x", location.x);
        s.put("y", location.y);
        Point size = this.getShell().getSize();
        s.put("width", size.x);
        s.put("height", size.y);
    }

    void readFile(PrintWriter writer) throws FileNotFoundException, IOException {
        BufferedReader bReader = new BufferedReader(new FileReader(this.logFile));
        while (bReader.ready()) {
            writer.println(bReader.readLine());
        }
    }

    void readLargeFile(PrintWriter writer) throws FileNotFoundException, IOException {
        RandomAccessFile random = null;
        boolean hasStarted = false;
        try {
            String line;
            random = new RandomAccessFile(this.logFile, "r");
            random.seek(this.logFile.length() - 0x100000L);
            while ((line = random.readLine()) != null) {
                if ((line = line.trim()).length() == 0) continue;
                if (!hasStarted && (line.startsWith("!ENTRY") || line.startsWith("!SESSION"))) {
                    hasStarted = true;
                }
                if (!hasStarted) continue;
                writer.println(line);
            }
        }
        catch (Throwable throwable) {
            try {
                if (random != null) {
                    random.close();
                }
            }
            catch (IOException iOException) {}
            throw throwable;
        }
        try {
            if (random != null) {
                random.close();
            }
        }
        catch (IOException iOException) {}
    }

    private void readLargeFileWithMonitor(final PrintWriter writer) {
        IRunnableWithProgress runnable = new IRunnableWithProgress(){

            public void run(IProgressMonitor monitor) {
                monitor.beginTask(Messages.OpenLogDialog_message, -1);
                try {
                    OpenLogDialog.this.readLargeFile(writer);
                }
                catch (IOException iOException) {
                    writer.println(Messages.OpenLogDialog_cannotDisplay);
                }
            }
        };
        ProgressMonitorDialog dialog = new ProgressMonitorDialog(this.getParentShell());
        try {
            dialog.run(true, true, runnable);
        }
        catch (InvocationTargetException invocationTargetException) {
        }
        catch (InterruptedException interruptedException) {}
    }

    private void readFileWithMonitor(final PrintWriter writer) {
        IRunnableWithProgress runnable = new IRunnableWithProgress(){

            public void run(IProgressMonitor monitor) {
                monitor.beginTask(Messages.OpenLogDialog_message, -1);
                try {
                    OpenLogDialog.this.readFile(writer);
                }
                catch (IOException iOException) {
                    writer.println(Messages.OpenLogDialog_cannotDisplay);
                }
            }
        };
        ProgressMonitorDialog dialog = new ProgressMonitorDialog(this.getParentShell());
        try {
            dialog.run(true, true, runnable);
        }
        catch (InvocationTargetException invocationTargetException) {
        }
        catch (InterruptedException interruptedException) {}
    }
}

