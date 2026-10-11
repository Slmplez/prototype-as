/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.jface.resource.JFaceResources
 *  org.eclipse.swt.dnd.Clipboard
 *  org.eclipse.swt.dnd.TextTransfer
 *  org.eclipse.swt.dnd.Transfer
 *  org.eclipse.swt.layout.GridData
 *  org.eclipse.swt.widgets.Button
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Text
 */
package org.eclipse.ui.internal.about;

import java.io.File;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.runtime.Status;
import org.eclipse.jface.resource.JFaceResources;
import org.eclipse.swt.dnd.Clipboard;
import org.eclipse.swt.dnd.TextTransfer;
import org.eclipse.swt.dnd.Transfer;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.widgets.Button;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Text;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.internal.ConfigurationInfo;
import org.eclipse.ui.internal.WorkbenchMessages;
import org.eclipse.ui.internal.about.AboutUtils;
import org.eclipse.ui.internal.about.ProductInfoPage;
import org.eclipse.ui.progress.WorkbenchJob;

public final class AboutSystemPage
extends ProductInfoPage {
    private static final String ID = "productInfo.system";
    private static final int BROWSE_ERROR_LOG_BUTTON = 1024;
    private static final int COPY_TO_CLIPBOARD_BUTTON = 1025;
    private Text text;

    public void createControl(Composite parent) {
        PlatformUI.getWorkbench().getHelpSystem().setHelp((Control)parent, "org.eclipse.ui.system_summary_dialog_context");
        Composite outer = this.createOuterComposite(parent);
        this.text = new Text(outer, 527114);
        this.text.setBackground(parent.getDisplay().getSystemColor(25));
        GridData gridData = new GridData(272);
        gridData.grabExcessVerticalSpace = true;
        gridData.grabExcessHorizontalSpace = true;
        gridData.heightHint = this.convertVerticalDLUsToPixels(300);
        gridData.widthHint = this.convertHorizontalDLUsToPixels(400);
        this.text.setLayoutData((Object)gridData);
        this.text.setFont(JFaceResources.getTextFont());
        this.fetchConfigurationInfo(this.text);
        this.setControl((Control)outer);
    }

    public void createPageButtons(Composite parent) {
        Button button = this.createButton(parent, 1024, WorkbenchMessages.AboutSystemDialog_browseErrorLogName);
        String filename = Platform.getLogFileLocation().toOSString();
        button.setEnabled(new File(filename).exists());
        this.createButton(parent, 1025, WorkbenchMessages.AboutSystemDialog_copyToClipboardName);
    }

    String getId() {
        return ID;
    }

    public void copyToClipboard() {
        if (this.text == null) {
            return;
        }
        Clipboard clipboard = null;
        try {
            clipboard = new Clipboard(this.text.getShell().getDisplay());
            String contents = this.text.getSelectionText();
            if (contents.length() == 0) {
                contents = this.text.getText();
            }
            clipboard.setContents(new Object[]{contents}, new Transfer[]{TextTransfer.getInstance()});
        }
        finally {
            if (clipboard != null) {
                clipboard.dispose();
            }
        }
    }

    protected void buttonPressed(int buttonId) {
        switch (buttonId) {
            case 1024: {
                this.openErrorLogBrowser();
                break;
            }
            case 1025: {
                this.runCopyToClipboard();
            }
        }
        super.buttonPressed(buttonId);
    }

    private void openErrorLogBrowser() {
        AboutUtils.openErrorLogBrowser(this.getShell());
    }

    private void runCopyToClipboard() {
        if (this.text == null) {
            return;
        }
        Clipboard clipboard = null;
        try {
            clipboard = new Clipboard(this.getShell().getDisplay());
            clipboard.setContents(new Object[]{this.text.getText()}, new Transfer[]{TextTransfer.getInstance()});
        }
        finally {
            if (clipboard != null) {
                clipboard.dispose();
            }
        }
    }

    private void fetchConfigurationInfo(final Text text) {
        text.setText(WorkbenchMessages.AboutSystemPage_RetrievingSystemInfo);
        WorkbenchJob job = new WorkbenchJob(WorkbenchMessages.AboutSystemPage_FetchJobTitle){

            public IStatus runInUIThread(IProgressMonitor monitor) {
                String info = ConfigurationInfo.getSystemSummary();
                if (!text.isDisposed()) {
                    text.setText(info);
                }
                return Status.OK_STATUS;
            }
        };
        job.schedule();
    }
}

