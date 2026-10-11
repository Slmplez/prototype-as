/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.swt.accessibility.AccessibleControlAdapter
 *  org.eclipse.swt.accessibility.AccessibleControlEvent
 *  org.eclipse.swt.accessibility.AccessibleControlListener
 *  org.eclipse.swt.custom.CLabel
 *  org.eclipse.swt.dnd.Clipboard
 *  org.eclipse.swt.dnd.TextTransfer
 *  org.eclipse.swt.dnd.Transfer
 *  org.eclipse.swt.events.DisposeEvent
 *  org.eclipse.swt.events.DisposeListener
 *  org.eclipse.swt.events.SelectionAdapter
 *  org.eclipse.swt.events.SelectionEvent
 *  org.eclipse.swt.events.SelectionListener
 *  org.eclipse.swt.graphics.Cursor
 *  org.eclipse.swt.graphics.Device
 *  org.eclipse.swt.graphics.Font
 *  org.eclipse.swt.graphics.Image
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.graphics.Rectangle
 *  org.eclipse.swt.layout.GridData
 *  org.eclipse.swt.layout.GridLayout
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Display
 *  org.eclipse.swt.widgets.Layout
 *  org.eclipse.swt.widgets.Menu
 *  org.eclipse.swt.widgets.MenuItem
 *  org.eclipse.swt.widgets.ToolBar
 *  org.eclipse.swt.widgets.ToolItem
 */
package org.eclipse.jface.action;

import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.jface.action.LegacyActionTools;
import org.eclipse.jface.action.StatusLineLayoutData;
import org.eclipse.jface.dialogs.ProgressIndicator;
import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.jface.resource.JFaceColors;
import org.eclipse.jface.resource.JFaceResources;
import org.eclipse.swt.accessibility.AccessibleControlAdapter;
import org.eclipse.swt.accessibility.AccessibleControlEvent;
import org.eclipse.swt.accessibility.AccessibleControlListener;
import org.eclipse.swt.custom.CLabel;
import org.eclipse.swt.dnd.Clipboard;
import org.eclipse.swt.dnd.TextTransfer;
import org.eclipse.swt.dnd.Transfer;
import org.eclipse.swt.events.DisposeEvent;
import org.eclipse.swt.events.DisposeListener;
import org.eclipse.swt.events.SelectionAdapter;
import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.events.SelectionListener;
import org.eclipse.swt.graphics.Cursor;
import org.eclipse.swt.graphics.Device;
import org.eclipse.swt.graphics.Font;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.layout.GridLayout;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Layout;
import org.eclipse.swt.widgets.Menu;
import org.eclipse.swt.widgets.MenuItem;
import org.eclipse.swt.widgets.ToolBar;
import org.eclipse.swt.widgets.ToolItem;

class StatusLine
extends Composite
implements IProgressMonitor {
    public static final int GAP = 3;
    public static final int DELAY_PROGRESS = 500;
    protected boolean fProgressIsVisible = false;
    protected boolean fCancelButtonIsVisible = false;
    protected boolean fCancelEnabled = false;
    protected String fTaskName;
    protected volatile boolean fIsCanceled;
    protected long fStartTime;
    private Cursor fStopButtonCursor;
    protected String fMessageText;
    protected Image fMessageImage;
    protected String fErrorText;
    protected Image fErrorImage;
    protected CLabel fMessageLabel;
    protected Composite fProgressBarComposite;
    protected ProgressIndicator fProgressBar;
    protected ToolBar fToolBar;
    protected ToolItem fCancelButton;
    protected static ImageDescriptor fgStopImage;
    private MenuItem copyMenuItem;
    static /* synthetic */ Class class$0;

    static {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.jface.action.StatusLine");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        fgStopImage = ImageDescriptor.createFromFile(clazz, "images/stop.gif");
        JFaceResources.getImageRegistry().put("org.eclipse.jface.parts.StatusLine.stopImage", fgStopImage);
    }

    public StatusLine(Composite parent, int style) {
        super(parent, style);
        this.getAccessible().addAccessibleControlListener((AccessibleControlListener)new AccessibleControlAdapter(){

            public void getRole(AccessibleControlEvent e) {
                e.detail = 23;
            }
        });
        this.addDisposeListener(new DisposeListener(){

            public void widgetDisposed(DisposeEvent e) {
                StatusLine.this.handleDispose();
            }
        });
        this.setLayout(new StatusLineLayout());
        this.fMessageLabel = new CLabel((Composite)this, 0);
        Menu menu = new Menu((Control)this.fMessageLabel);
        this.fMessageLabel.setMenu(menu);
        this.copyMenuItem = new MenuItem(menu, 8);
        this.copyMenuItem.setText(JFaceResources.getString("copy"));
        this.copyMenuItem.addSelectionListener((SelectionListener)new SelectionAdapter(){

            public void widgetSelected(SelectionEvent e) {
                String text = StatusLine.this.fMessageLabel.getText();
                if (text != null && text.length() > 0) {
                    text = LegacyActionTools.removeMnemonics(text);
                    Clipboard cp = new Clipboard(e.display);
                    cp.setContents(new Object[]{text}, new Transfer[]{TextTransfer.getInstance()});
                    cp.dispose();
                }
            }
        });
        this.fProgressIsVisible = false;
        this.fCancelEnabled = false;
        this.fToolBar = new ToolBar((Composite)this, 0x800000);
        this.fCancelButton = new ToolItem(this.fToolBar, 8);
        this.fCancelButton.setImage(fgStopImage.createImage());
        this.fCancelButton.setToolTipText(JFaceResources.getString("Cancel_Current_Operation"));
        this.fCancelButton.addSelectionListener((SelectionListener)new SelectionAdapter(){

            public void widgetSelected(SelectionEvent e) {
                StatusLine.this.setCanceled(true);
            }
        });
        this.fCancelButton.addDisposeListener(new DisposeListener(){

            public void widgetDisposed(DisposeEvent e) {
                Image i = StatusLine.this.fCancelButton.getImage();
                if (i != null && !i.isDisposed()) {
                    i.dispose();
                }
            }
        });
        this.fProgressBarComposite = new Composite((Composite)this, 0);
        GridLayout layout = new GridLayout();
        layout.horizontalSpacing = 0;
        layout.verticalSpacing = 0;
        layout.marginHeight = 0;
        layout.marginWidth = 0;
        this.fProgressBarComposite.setLayout((Layout)layout);
        this.fProgressBar = new ProgressIndicator(this.fProgressBarComposite);
        this.fProgressBar.setLayoutData(new GridData(1536));
        this.fStopButtonCursor = new Cursor((Device)this.getDisplay(), 0);
    }

    public void beginTask(String name, int totalWork) {
        long timestamp;
        this.fStartTime = timestamp = System.currentTimeMillis();
        final boolean animated = totalWork == -1 || totalWork == 0;
        Runnable timer = new Runnable(){

            public void run() {
                StatusLine.this.startTask(timestamp, animated);
            }
        };
        if (this.fProgressBar == null) {
            return;
        }
        this.fProgressBar.getDisplay().timerExec(500, timer);
        if (!animated) {
            this.fProgressBar.beginTask(totalWork);
        }
        this.fTaskName = name == null ? "" : name;
        this.setMessage(this.fTaskName);
    }

    public void done() {
        this.fStartTime = 0L;
        if (this.fProgressBar != null) {
            this.fProgressBar.sendRemainingWork();
            this.fProgressBar.done();
        }
        this.setMessage(null);
        this.hideProgress();
    }

    public IProgressMonitor getProgressMonitor() {
        return this;
    }

    protected void handleDispose() {
        if (this.fStopButtonCursor != null) {
            this.fStopButtonCursor.dispose();
            this.fStopButtonCursor = null;
        }
        if (this.fProgressBar != null) {
            this.fProgressBar.dispose();
            this.fProgressBar = null;
        }
    }

    protected void hideProgress() {
        if (this.fProgressIsVisible && !this.isDisposed()) {
            this.fProgressIsVisible = false;
            this.fCancelEnabled = false;
            this.fCancelButtonIsVisible = false;
            if (this.fToolBar != null && !this.fToolBar.isDisposed()) {
                this.fToolBar.setVisible(false);
            }
            if (this.fProgressBarComposite != null && !this.fProgressBarComposite.isDisposed()) {
                this.fProgressBarComposite.setVisible(false);
            }
            this.layout();
        }
    }

    public void internalWorked(double work) {
        if (!this.fProgressIsVisible && System.currentTimeMillis() - this.fStartTime > 500L) {
            this.showProgress();
        }
        if (this.fProgressBar != null) {
            this.fProgressBar.worked(work);
        }
    }

    public boolean isCanceled() {
        return this.fIsCanceled;
    }

    public boolean isCancelEnabled() {
        return this.fCancelEnabled;
    }

    public void setCanceled(boolean b) {
        this.fIsCanceled = b;
        if (this.fCancelButton != null) {
            this.fCancelButton.setEnabled(!b);
        }
    }

    public void setCancelEnabled(boolean enabled) {
        this.fCancelEnabled = enabled;
        if (this.fProgressIsVisible && !this.fCancelButtonIsVisible && enabled) {
            this.showButton();
            this.layout();
        }
        if (this.fCancelButton != null && !this.fCancelButton.isDisposed()) {
            this.fCancelButton.setEnabled(enabled);
        }
    }

    public void setErrorMessage(String message) {
        this.setErrorMessage(null, message);
    }

    public void setErrorMessage(Image image, String message) {
        this.fErrorText = this.trim(message);
        this.fErrorImage = image;
        this.updateMessageLabel();
    }

    public void setFont(Font font) {
        super.setFont(font);
        Control[] children = this.getChildren();
        int i = 0;
        while (i < children.length) {
            children[i].setFont(font);
            ++i;
        }
    }

    public void setMessage(String message) {
        this.setMessage(null, message);
    }

    public void setMessage(Image image, String message) {
        this.fMessageText = this.trim(message);
        this.fMessageImage = image;
        this.updateMessageLabel();
    }

    public void setTaskName(String name) {
        this.fTaskName = name == null ? "" : name;
    }

    protected void showButton() {
        if (this.fToolBar != null && !this.fToolBar.isDisposed()) {
            this.fToolBar.setVisible(true);
            this.fToolBar.setEnabled(true);
            this.fToolBar.setCursor(this.fStopButtonCursor);
            this.fCancelButtonIsVisible = true;
        }
    }

    protected void showProgress() {
        if (!this.fProgressIsVisible && !this.isDisposed()) {
            this.fProgressIsVisible = true;
            if (this.fCancelEnabled) {
                this.showButton();
            }
            if (this.fProgressBarComposite != null && !this.fProgressBarComposite.isDisposed()) {
                this.fProgressBarComposite.setVisible(true);
            }
            this.layout();
        }
    }

    void startTask(long timestamp, boolean animated) {
        if (!this.fProgressIsVisible && this.fStartTime == timestamp) {
            this.showProgress();
            if (animated && this.fProgressBar != null && !this.fProgressBar.isDisposed()) {
                this.fProgressBar.beginAnimatedTask();
            }
        }
    }

    public void subTask(String name) {
        String newName = name == null ? "" : name;
        String text = this.fTaskName == null || this.fTaskName.length() == 0 ? newName : JFaceResources.format("Set_SubTask", new Object[]{this.fTaskName, newName});
        this.setMessage(text);
    }

    String trim(String message) {
        if (message == null) {
            return null;
        }
        message = LegacyActionTools.escapeMnemonics(message);
        int cr = message.indexOf(13);
        int lf = message.indexOf(10);
        if (cr == -1 && lf == -1) {
            return message;
        }
        int len = cr == -1 ? lf : (lf == -1 ? cr : Math.min(cr, lf));
        return message.substring(0, len);
    }

    protected void updateMessageLabel() {
        if (this.fMessageLabel != null && !this.fMessageLabel.isDisposed()) {
            Display display = this.fMessageLabel.getDisplay();
            if (this.fErrorText != null && this.fErrorText.length() > 0 || this.fErrorImage != null) {
                this.fMessageLabel.setForeground(JFaceColors.getErrorText(display));
                this.fMessageLabel.setText(this.fErrorText);
                this.fMessageLabel.setImage(this.fErrorImage);
            } else {
                this.fMessageLabel.setForeground(display.getSystemColor(21));
                this.fMessageLabel.setText(this.fMessageText == null ? "" : this.fMessageText);
                this.fMessageLabel.setImage(this.fMessageImage);
            }
            if (this.copyMenuItem != null && !this.copyMenuItem.isDisposed()) {
                String text = this.fMessageLabel.getText();
                this.copyMenuItem.setEnabled(text != null && text.length() > 0);
            }
        }
    }

    public void worked(int work) {
        this.internalWorked(work);
    }

    public class StatusLineLayout
    extends Layout {
        private final StatusLineLayoutData DEFAULT_DATA = new StatusLineLayoutData();

        public Point computeSize(Composite composite, int wHint, int hHint, boolean changed) {
            if (wHint != -1 && hHint != -1) {
                return new Point(wHint, hHint);
            }
            Control[] children = composite.getChildren();
            int totalWidth = 0;
            int maxHeight = 0;
            int totalCnt = 0;
            int i = 0;
            while (i < children.length) {
                boolean useWidth = true;
                Control w = children[i];
                if (w == StatusLine.this.fProgressBarComposite && !StatusLine.this.fProgressIsVisible) {
                    useWidth = false;
                } else if (w == StatusLine.this.fToolBar && !StatusLine.this.fCancelButtonIsVisible) {
                    useWidth = false;
                }
                StatusLineLayoutData data = (StatusLineLayoutData)w.getLayoutData();
                if (data == null) {
                    data = this.DEFAULT_DATA;
                }
                Point e = w.computeSize(data.widthHint, data.heightHint, changed);
                if (useWidth) {
                    totalWidth += e.x;
                    ++totalCnt;
                }
                maxHeight = Math.max(maxHeight, e.y);
                ++i;
            }
            if (totalCnt > 0) {
                totalWidth += (totalCnt - 1) * 3;
            }
            if (totalWidth <= 0) {
                totalWidth = maxHeight * 4;
            }
            return new Point(totalWidth, maxHeight);
        }

        public void layout(Composite composite, boolean flushCache) {
            if (composite == null) {
                return;
            }
            StatusLine.this.fMessageLabel.moveAbove(null);
            StatusLine.this.fToolBar.moveBelow((Control)StatusLine.this.fMessageLabel);
            StatusLine.this.fProgressBarComposite.moveBelow((Control)StatusLine.this.fToolBar);
            Rectangle rect = composite.getClientArea();
            Control[] children = composite.getChildren();
            int count = children.length;
            int[] ws = new int[count];
            int h = rect.height;
            int totalWidth = -3;
            int i = 0;
            while (i < count) {
                Control w = children[i];
                if ((w != StatusLine.this.fProgressBarComposite || StatusLine.this.fProgressIsVisible) && (w != StatusLine.this.fToolBar || StatusLine.this.fCancelButtonIsVisible)) {
                    int width;
                    StatusLineLayoutData data = (StatusLineLayoutData)w.getLayoutData();
                    if (data == null) {
                        data = this.DEFAULT_DATA;
                    }
                    ws[i] = width = w.computeSize((int)data.widthHint, (int)h, (boolean)flushCache).x;
                    totalWidth += width + 3;
                }
                ++i;
            }
            int diff = rect.width - totalWidth;
            ws[0] = ws[0] + diff;
            int msgMinWidth = rect.width / 3;
            if (ws[0] < msgMinWidth) {
                diff = ws[0] - msgMinWidth;
                ws[0] = msgMinWidth;
            } else {
                diff = 0;
            }
            int i2 = count - 1;
            while (i2 >= 0 && diff < 0) {
                int min = Math.min(ws[i2], -diff);
                int n = i2--;
                ws[n] = ws[n] - min;
                diff += min + 3;
            }
            int x = rect.x;
            int y = rect.y;
            int i3 = 0;
            while (i3 < count) {
                Control w = children[i3];
                if (w == StatusLine.this.fProgressBarComposite && !StatusLine.this.fProgressIsVisible || w == StatusLine.this.fToolBar && !StatusLine.this.fCancelButtonIsVisible) {
                    w.setBounds(x + rect.width, y, ws[i3], h);
                } else {
                    w.setBounds(x, y, ws[i3], h);
                    if (ws[i3] > 0) {
                        x += ws[i3] + 3;
                    }
                }
                ++i3;
            }
        }
    }
}

