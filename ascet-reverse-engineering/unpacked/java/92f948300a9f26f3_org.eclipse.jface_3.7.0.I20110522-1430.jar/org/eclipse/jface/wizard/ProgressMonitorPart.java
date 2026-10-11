/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.IProgressMonitorWithBlocking
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.swt.events.DisposeEvent
 *  org.eclipse.swt.events.DisposeListener
 *  org.eclipse.swt.events.SelectionAdapter
 *  org.eclipse.swt.events.SelectionEvent
 *  org.eclipse.swt.events.SelectionListener
 *  org.eclipse.swt.graphics.Cursor
 *  org.eclipse.swt.graphics.Device
 *  org.eclipse.swt.graphics.Drawable
 *  org.eclipse.swt.graphics.Font
 *  org.eclipse.swt.graphics.FontMetrics
 *  org.eclipse.swt.graphics.GC
 *  org.eclipse.swt.graphics.Image
 *  org.eclipse.swt.layout.GridData
 *  org.eclipse.swt.layout.GridLayout
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Event
 *  org.eclipse.swt.widgets.Label
 *  org.eclipse.swt.widgets.Layout
 *  org.eclipse.swt.widgets.Listener
 *  org.eclipse.swt.widgets.ToolBar
 *  org.eclipse.swt.widgets.ToolItem
 */
package org.eclipse.jface.wizard;

import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.IProgressMonitorWithBlocking;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.jface.dialogs.ProgressIndicator;
import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.jface.resource.JFaceResources;
import org.eclipse.swt.events.DisposeEvent;
import org.eclipse.swt.events.DisposeListener;
import org.eclipse.swt.events.SelectionAdapter;
import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.events.SelectionListener;
import org.eclipse.swt.graphics.Cursor;
import org.eclipse.swt.graphics.Device;
import org.eclipse.swt.graphics.Drawable;
import org.eclipse.swt.graphics.Font;
import org.eclipse.swt.graphics.FontMetrics;
import org.eclipse.swt.graphics.GC;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.layout.GridLayout;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Label;
import org.eclipse.swt.widgets.Layout;
import org.eclipse.swt.widgets.Listener;
import org.eclipse.swt.widgets.ToolBar;
import org.eclipse.swt.widgets.ToolItem;

public class ProgressMonitorPart
extends Composite
implements IProgressMonitorWithBlocking {
    protected Label fLabel;
    protected String fTaskName;
    protected String fSubTaskName;
    protected ProgressIndicator fProgressIndicator;
    protected Control fCancelComponent;
    protected volatile boolean fIsCanceled;
    protected IStatus blockedStatus;
    protected Listener fCancelListener = new Listener(){

        public void handleEvent(Event e) {
            ProgressMonitorPart.this.setCanceled(true);
            if (ProgressMonitorPart.this.fCancelComponent != null) {
                ProgressMonitorPart.this.fCancelComponent.setEnabled(false);
            }
        }
    };
    private ToolBar fToolBar;
    private ToolItem fStopButton;
    private boolean fHasStopButton = false;
    static /* synthetic */ Class class$0;

    public ProgressMonitorPart(Composite parent, Layout layout) {
        this(parent, layout, false);
    }

    public ProgressMonitorPart(Composite parent, Layout layout, int progressIndicatorHeight) {
        super(parent, 0);
        this.initialize(layout, progressIndicatorHeight);
    }

    public ProgressMonitorPart(Composite parent, Layout layout, boolean createStopButton) {
        super(parent, 0);
        this.fHasStopButton = createStopButton;
        this.initialize(layout, -1);
    }

    public void attachToCancelComponent(Control cancelComponent) {
        if (this.fHasStopButton) {
            this.setCancelEnabled(true);
        } else {
            this.fCancelComponent = cancelComponent;
            this.fCancelComponent.addListener(13, this.fCancelListener);
        }
    }

    public void beginTask(String name, int totalWork) {
        this.fTaskName = name;
        this.fSubTaskName = "";
        this.updateLabel();
        if (totalWork == -1 || totalWork == 0) {
            this.fProgressIndicator.beginAnimatedTask();
        } else {
            this.fProgressIndicator.beginTask(totalWork);
        }
        if (this.fToolBar != null && !this.fToolBar.isDisposed()) {
            this.fToolBar.setVisible(true);
            this.fToolBar.setFocus();
        }
    }

    public void done() {
        this.fLabel.setText("");
        this.fSubTaskName = "";
        this.fProgressIndicator.sendRemainingWork();
        this.fProgressIndicator.done();
        if (this.fToolBar != null && !this.fToolBar.isDisposed()) {
            this.fToolBar.setVisible(false);
        }
    }

    protected static String escapeMetaCharacters(String in) {
        if (in == null || in.indexOf(38) < 0) {
            return in;
        }
        int length = in.length();
        StringBuffer out = new StringBuffer(length + 1);
        int i = 0;
        while (i < length) {
            char c = in.charAt(i);
            if (c == '&') {
                out.append("&&");
            } else {
                out.append(c);
            }
            ++i;
        }
        return out.toString();
    }

    protected void initialize(Layout layout, int progressIndicatorHeight) {
        if (layout == null) {
            GridLayout l = new GridLayout();
            l.marginWidth = 0;
            l.marginHeight = 0;
            layout = l;
        }
        int numColumns = 1;
        if (this.fHasStopButton) {
            ++numColumns;
        }
        this.setLayout(layout);
        if (layout instanceof GridLayout) {
            ((GridLayout)layout).numColumns = numColumns;
        }
        this.fLabel = new Label((Composite)this, 16384);
        this.fLabel.setLayoutData((Object)new GridData(4, 2, true, false, numColumns, 1));
        if (progressIndicatorHeight == -1) {
            GC gc = new GC((Drawable)this.fLabel);
            FontMetrics fm = gc.getFontMetrics();
            gc.dispose();
            progressIndicatorHeight = fm.getHeight();
        }
        this.fProgressIndicator = new ProgressIndicator(this);
        GridData gd = new GridData();
        gd.horizontalAlignment = 4;
        gd.grabExcessHorizontalSpace = true;
        gd.grabExcessVerticalSpace = false;
        gd.verticalAlignment = 2;
        gd.heightHint = progressIndicatorHeight;
        this.fProgressIndicator.setLayoutData(gd);
        if (this.fHasStopButton) {
            this.fToolBar = new ToolBar((Composite)this, 0x800000);
            gd = new GridData();
            gd.grabExcessHorizontalSpace = false;
            gd.grabExcessVerticalSpace = false;
            gd.verticalAlignment = 2;
            this.fToolBar.setLayoutData((Object)gd);
            this.fStopButton = new ToolItem(this.fToolBar, 8);
            this.fStopButton.addSelectionListener((SelectionListener)new SelectionAdapter(){

                public void widgetSelected(SelectionEvent e) {
                    ProgressMonitorPart.this.setCanceled(true);
                    if (ProgressMonitorPart.this.fStopButton != null) {
                        ProgressMonitorPart.this.fStopButton.setEnabled(false);
                    }
                }
            });
            Class<?> clazz = class$0;
            if (clazz == null) {
                try {
                    clazz = class$0 = Class.forName("org.eclipse.jface.wizard.ProgressMonitorPart");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            final Image stopImage = ImageDescriptor.createFromFile(clazz, "images/stop.gif").createImage((Device)this.getDisplay());
            final Cursor arrowCursor = new Cursor((Device)this.getDisplay(), 0);
            this.fToolBar.setCursor(arrowCursor);
            this.fStopButton.setImage(stopImage);
            this.fStopButton.addDisposeListener(new DisposeListener(){

                public void widgetDisposed(DisposeEvent e) {
                    stopImage.dispose();
                    arrowCursor.dispose();
                }
            });
            this.fStopButton.setEnabled(false);
            this.fStopButton.setToolTipText(JFaceResources.getString("ProgressMonitorPart.cancelToolTip"));
        }
    }

    public void internalWorked(double work) {
        this.fProgressIndicator.worked(work);
    }

    public boolean isCanceled() {
        return this.fIsCanceled;
    }

    public void removeFromCancelComponent(Control cancelComponent) {
        if (this.fHasStopButton) {
            this.setCancelEnabled(false);
        } else {
            Assert.isTrue((this.fCancelComponent == cancelComponent && this.fCancelComponent != null ? 1 : 0) != 0);
            this.fCancelComponent.removeListener(13, this.fCancelListener);
            this.fCancelComponent = null;
        }
    }

    public void setCanceled(boolean b) {
        this.fIsCanceled = b;
    }

    public void setFont(Font font) {
        super.setFont(font);
        this.fLabel.setFont(font);
        this.fProgressIndicator.setFont(font);
    }

    public void setTaskName(String name) {
        this.fTaskName = name;
        this.updateLabel();
    }

    public void subTask(String name) {
        this.fSubTaskName = name;
        this.updateLabel();
    }

    protected void updateLabel() {
        if (this.blockedStatus == null) {
            String text = this.taskLabel();
            this.fLabel.setText(text);
        } else {
            this.fLabel.setText(this.blockedStatus.getMessage());
        }
        this.fLabel.update();
    }

    private String taskLabel() {
        boolean hasSubtask;
        boolean hasTask = this.fTaskName != null && this.fTaskName.length() > 0;
        boolean bl = hasSubtask = this.fSubTaskName != null && this.fSubTaskName.length() > 0;
        if (hasTask) {
            if (hasSubtask) {
                return ProgressMonitorPart.escapeMetaCharacters(JFaceResources.format("Set_SubTask", new Object[]{this.fTaskName, this.fSubTaskName}));
            }
            return ProgressMonitorPart.escapeMetaCharacters(this.fTaskName);
        }
        if (hasSubtask) {
            return ProgressMonitorPart.escapeMetaCharacters(this.fSubTaskName);
        }
        return "";
    }

    public void worked(int work) {
        this.internalWorked(work);
    }

    public void clearBlocked() {
        this.blockedStatus = null;
        this.updateLabel();
    }

    public void setBlocked(IStatus reason) {
        this.blockedStatus = reason;
        this.updateLabel();
    }

    private void setCancelEnabled(boolean enabled) {
        if (this.fStopButton != null && !this.fStopButton.isDisposed()) {
            this.fStopButton.setEnabled(enabled);
            if (enabled) {
                this.fToolBar.setFocus();
            }
        }
    }
}

