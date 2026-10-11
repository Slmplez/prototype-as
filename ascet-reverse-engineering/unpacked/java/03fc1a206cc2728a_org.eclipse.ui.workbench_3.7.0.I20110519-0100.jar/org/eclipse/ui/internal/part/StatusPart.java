/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.jface.dialogs.IDialogConstants
 *  org.eclipse.swt.events.DisposeEvent
 *  org.eclipse.swt.events.DisposeListener
 *  org.eclipse.swt.events.SelectionAdapter
 *  org.eclipse.swt.events.SelectionEvent
 *  org.eclipse.swt.events.SelectionListener
 *  org.eclipse.swt.graphics.Color
 *  org.eclipse.swt.graphics.Image
 *  org.eclipse.swt.layout.FillLayout
 *  org.eclipse.swt.layout.GridData
 *  org.eclipse.swt.layout.GridLayout
 *  org.eclipse.swt.widgets.Button
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Display
 *  org.eclipse.swt.widgets.Label
 *  org.eclipse.swt.widgets.Layout
 *  org.eclipse.swt.widgets.Text
 */
package org.eclipse.ui.internal.part;

import java.io.PrintWriter;
import java.io.StringWriter;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.jface.dialogs.IDialogConstants;
import org.eclipse.swt.events.DisposeEvent;
import org.eclipse.swt.events.DisposeListener;
import org.eclipse.swt.events.SelectionAdapter;
import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.events.SelectionListener;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.layout.FillLayout;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.layout.GridLayout;
import org.eclipse.swt.widgets.Button;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Label;
import org.eclipse.swt.widgets.Layout;
import org.eclipse.swt.widgets.Text;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.internal.WorkbenchMessages;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.statushandlers.StatusManager;
import org.eclipse.ui.views.IViewDescriptor;

public class StatusPart {
    private static final String LOG_VIEW_ID = "org.eclipse.pde.runtime.LogView";
    boolean showingDetails = false;
    private Button detailsButton;
    private Composite detailsArea;
    private Control details = null;
    private IStatus reason;

    public StatusPart(Composite parent, IStatus reason_) {
        int margins;
        Color bgColor = parent.getDisplay().getSystemColor(25);
        Color fgColor = parent.getDisplay().getSystemColor(24);
        parent.setBackground(bgColor);
        parent.setForeground(fgColor);
        this.reason = reason_;
        GridLayout layout = new GridLayout();
        layout.numColumns = 3;
        int spacing = 8;
        layout.marginBottom = margins = 8;
        layout.marginTop = margins;
        layout.marginLeft = margins;
        layout.marginRight = margins;
        layout.horizontalSpacing = spacing;
        layout.verticalSpacing = spacing;
        parent.setLayout((Layout)layout);
        Label imageLabel = new Label(parent, 0);
        imageLabel.setBackground(bgColor);
        Image image = this.getImage();
        if (image != null) {
            image.setBackground(bgColor);
            imageLabel.setImage(image);
            imageLabel.setLayoutData((Object)new GridData(66));
        }
        Text text = new Text(parent, 74);
        text.setBackground(bgColor);
        text.setForeground(fgColor);
        text.setLayoutData((Object)new GridData(4, 0x1000000, true, false));
        text.setText(this.reason.getMessage());
        Composite buttonParent = new Composite(parent, 0);
        buttonParent.setBackground(parent.getBackground());
        GridLayout buttonsLayout = new GridLayout();
        buttonsLayout.numColumns = 2;
        buttonsLayout.marginHeight = 0;
        buttonsLayout.marginWidth = 0;
        buttonsLayout.horizontalSpacing = 0;
        buttonParent.setLayout((Layout)buttonsLayout);
        this.detailsButton = new Button(buttonParent, 8);
        this.detailsButton.addSelectionListener((SelectionListener)new SelectionAdapter(){

            public void widgetSelected(SelectionEvent e) {
                StatusPart.this.showDetails(!StatusPart.this.showingDetails);
            }
        });
        this.detailsButton.setLayoutData((Object)new GridData(1, 4, false, false));
        this.detailsButton.setVisible(this.reason.getException() != null);
        this.createShowLogButton(buttonParent);
        this.updateDetailsText();
        this.detailsArea = new Composite(parent, 0);
        this.detailsArea.setBackground(bgColor);
        this.detailsArea.setForeground(fgColor);
        GridData data = new GridData(1808);
        data.horizontalSpan = 3;
        data.verticalSpan = 1;
        this.detailsArea.setLayoutData((Object)data);
        this.detailsArea.setLayout((Layout)new FillLayout());
        parent.layout(true);
    }

    private Image getImage() {
        Display d = Display.getCurrent();
        switch (this.reason.getSeverity()) {
            case 4: {
                return d.getSystemImage(1);
            }
            case 2: {
                return d.getSystemImage(8);
            }
        }
        return d.getSystemImage(2);
    }

    private void showDetails(boolean shouldShow) {
        if (shouldShow == this.showingDetails) {
            return;
        }
        this.showingDetails = shouldShow;
        this.updateDetailsText();
    }

    private void updateDetailsText() {
        if (this.details != null) {
            this.details.dispose();
            this.details = null;
        }
        if (this.showingDetails) {
            this.detailsButton.setText(IDialogConstants.HIDE_DETAILS_LABEL);
            Text detailsText = new Text(this.detailsArea, 33557258);
            detailsText.setText(this.getDetails(this.reason));
            detailsText.setBackground(detailsText.getDisplay().getSystemColor(25));
            this.details = detailsText;
            this.detailsArea.layout(true);
        } else {
            this.detailsButton.setText(IDialogConstants.SHOW_DETAILS_LABEL);
        }
    }

    private String getDetails(IStatus status) {
        if (status.getException() != null) {
            return this.getStackTrace(status.getException());
        }
        return "";
    }

    private String getStackTrace(Throwable throwable) {
        StringWriter swriter = new StringWriter();
        PrintWriter pwriter = new PrintWriter(swriter);
        throwable.printStackTrace(pwriter);
        pwriter.flush();
        pwriter.close();
        return swriter.toString();
    }

    private void createShowLogButton(Composite parent) {
        IViewDescriptor descriptor = PlatformUI.getWorkbench().getViewRegistry().find(LOG_VIEW_ID);
        if (descriptor == null) {
            return;
        }
        Button button = new Button(parent, 8);
        button.addSelectionListener((SelectionListener)new SelectionAdapter(){

            public void widgetSelected(SelectionEvent e) {
                try {
                    PlatformUI.getWorkbench().getActiveWorkbenchWindow().getActivePage().showView(StatusPart.LOG_VIEW_ID);
                }
                catch (CoreException ce) {
                    StatusManager.getManager().handle(ce, WorkbenchPlugin.PI_WORKBENCH);
                }
            }
        });
        final Image image = descriptor.getImageDescriptor().createImage();
        button.setImage(image);
        button.setToolTipText(WorkbenchMessages.ErrorLogUtil_ShowErrorLogTooltip);
        button.addDisposeListener(new DisposeListener(){

            public void widgetDisposed(DisposeEvent e) {
                image.dispose();
            }
        });
    }
}

