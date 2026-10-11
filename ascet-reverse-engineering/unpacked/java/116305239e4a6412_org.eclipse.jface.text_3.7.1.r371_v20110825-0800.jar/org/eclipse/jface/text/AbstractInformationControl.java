/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.ListenerList
 *  org.eclipse.jface.action.ToolBarManager
 *  org.eclipse.jface.resource.JFaceResources
 *  org.eclipse.jface.util.Geometry
 *  org.eclipse.swt.SWT
 *  org.eclipse.swt.events.DisposeEvent
 *  org.eclipse.swt.events.DisposeListener
 *  org.eclipse.swt.events.FocusEvent
 *  org.eclipse.swt.events.FocusListener
 *  org.eclipse.swt.events.MouseAdapter
 *  org.eclipse.swt.events.MouseEvent
 *  org.eclipse.swt.events.MouseListener
 *  org.eclipse.swt.events.MouseMoveListener
 *  org.eclipse.swt.events.PaintEvent
 *  org.eclipse.swt.events.PaintListener
 *  org.eclipse.swt.graphics.Color
 *  org.eclipse.swt.graphics.Device
 *  org.eclipse.swt.graphics.Drawable
 *  org.eclipse.swt.graphics.Font
 *  org.eclipse.swt.graphics.FontData
 *  org.eclipse.swt.graphics.GC
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.graphics.Rectangle
 *  org.eclipse.swt.layout.FillLayout
 *  org.eclipse.swt.layout.GridData
 *  org.eclipse.swt.layout.GridLayout
 *  org.eclipse.swt.widgets.Canvas
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Display
 *  org.eclipse.swt.widgets.Event
 *  org.eclipse.swt.widgets.Label
 *  org.eclipse.swt.widgets.Layout
 *  org.eclipse.swt.widgets.Listener
 *  org.eclipse.swt.widgets.Shell
 *  org.eclipse.swt.widgets.Slider
 *  org.eclipse.swt.widgets.ToolBar
 */
package org.eclipse.jface.text;

import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.ListenerList;
import org.eclipse.jface.action.ToolBarManager;
import org.eclipse.jface.internal.text.revisions.Colors;
import org.eclipse.jface.resource.JFaceResources;
import org.eclipse.jface.text.IInformationControl;
import org.eclipse.jface.text.IInformationControlCreator;
import org.eclipse.jface.text.IInformationControlExtension;
import org.eclipse.jface.text.IInformationControlExtension3;
import org.eclipse.jface.text.IInformationControlExtension4;
import org.eclipse.jface.text.IInformationControlExtension5;
import org.eclipse.jface.util.Geometry;
import org.eclipse.swt.SWT;
import org.eclipse.swt.events.DisposeEvent;
import org.eclipse.swt.events.DisposeListener;
import org.eclipse.swt.events.FocusEvent;
import org.eclipse.swt.events.FocusListener;
import org.eclipse.swt.events.MouseAdapter;
import org.eclipse.swt.events.MouseEvent;
import org.eclipse.swt.events.MouseListener;
import org.eclipse.swt.events.MouseMoveListener;
import org.eclipse.swt.events.PaintEvent;
import org.eclipse.swt.events.PaintListener;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.Device;
import org.eclipse.swt.graphics.Drawable;
import org.eclipse.swt.graphics.Font;
import org.eclipse.swt.graphics.FontData;
import org.eclipse.swt.graphics.GC;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.layout.FillLayout;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.layout.GridLayout;
import org.eclipse.swt.widgets.Canvas;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Label;
import org.eclipse.swt.widgets.Layout;
import org.eclipse.swt.widgets.Listener;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.swt.widgets.Slider;
import org.eclipse.swt.widgets.ToolBar;

public abstract class AbstractInformationControl
implements IInformationControl,
IInformationControlExtension,
IInformationControlExtension3,
IInformationControlExtension4,
IInformationControlExtension5 {
    private final Shell fShell;
    private final Composite fContentComposite;
    private final boolean fResizable;
    private Composite fStatusComposite;
    private Label fSeparator;
    private Label fStatusLabel;
    private Font fStatusLabelFont;
    private Color fStatusLabelForeground;
    private final ToolBarManager fToolBarManager;
    private ToolBar fToolBar;
    private Listener fShellListener;
    private final ListenerList fFocusListeners = new ListenerList(1);
    private Point fSizeConstraints;
    private int fResizeHandleSize;

    public AbstractInformationControl(Shell parentShell, String statusFieldText) {
        this(parentShell, 16388, statusFieldText, null);
    }

    public AbstractInformationControl(Shell parentShell, ToolBarManager toolBarManager) {
        this(parentShell, 16404, null, toolBarManager);
    }

    public AbstractInformationControl(Shell parentShell, boolean isResizable) {
        this(parentShell, 0x4004 | (isResizable ? 16 : 0), null, null);
    }

    AbstractInformationControl(Shell parentShell, int shellStyle, String statusFieldText, ToolBarManager toolBarManager) {
        Assert.isTrue((statusFieldText == null || toolBarManager == null ? 1 : 0) != 0);
        this.fResizeHandleSize = -1;
        this.fToolBarManager = toolBarManager;
        if ((shellStyle & 8) != 0) {
            shellStyle &= 0xFFFFFB07;
        }
        this.fResizable = (shellStyle & 0x10) != 0;
        this.fShell = new Shell(parentShell, shellStyle);
        Display display = this.fShell.getDisplay();
        Color foreground = display.getSystemColor(28);
        Color background = display.getSystemColor(29);
        AbstractInformationControl.setColor((Control)this.fShell, foreground, background);
        GridLayout layout = new GridLayout(1, false);
        layout.marginHeight = 0;
        layout.marginWidth = 0;
        layout.verticalSpacing = 0;
        this.fShell.setLayout((Layout)layout);
        this.fContentComposite = new Composite((Composite)this.fShell, 0);
        this.fContentComposite.setLayoutData((Object)new GridData(4, 4, true, true));
        this.fContentComposite.setLayout((Layout)new FillLayout());
        AbstractInformationControl.setColor((Control)this.fContentComposite, foreground, background);
        this.createStatusComposite(statusFieldText, toolBarManager, foreground, background);
        this.addDisposeListener(new DisposeListener(){

            public void widgetDisposed(DisposeEvent e) {
                AbstractInformationControl.this.handleDispose();
            }
        });
    }

    private void createStatusComposite(String statusFieldText, ToolBarManager toolBarManager, Color foreground, Color background) {
        if (toolBarManager == null && statusFieldText == null) {
            return;
        }
        this.fStatusComposite = new Composite((Composite)this.fShell, 0);
        GridData gridData = new GridData(4, 1024, true, false);
        this.fStatusComposite.setLayoutData((Object)gridData);
        GridLayout statusLayout = new GridLayout(1, false);
        statusLayout.marginHeight = 0;
        statusLayout.marginWidth = 0;
        statusLayout.verticalSpacing = 1;
        this.fStatusComposite.setLayout((Layout)statusLayout);
        this.fSeparator = new Label(this.fStatusComposite, 258);
        this.fSeparator.setLayoutData((Object)new GridData(768));
        if (statusFieldText != null) {
            this.createStatusLabel(statusFieldText, foreground, background);
        } else {
            this.createToolBar(toolBarManager);
        }
    }

    private void createStatusLabel(String statusFieldText, Color foreground, Color background) {
        this.fStatusLabel = new Label(this.fStatusComposite, 131072);
        this.fStatusLabel.setLayoutData((Object)new GridData(4, 0x1000000, true, false));
        this.fStatusLabel.setText(statusFieldText);
        FontData[] fontDatas = JFaceResources.getDialogFont().getFontData();
        int i = 0;
        while (i < fontDatas.length) {
            fontDatas[i].setHeight(fontDatas[i].getHeight() * 9 / 10);
            ++i;
        }
        this.fStatusLabelFont = new Font((Device)this.fStatusLabel.getDisplay(), fontDatas);
        this.fStatusLabel.setFont(this.fStatusLabelFont);
        this.fStatusLabelForeground = new Color((Device)this.fStatusLabel.getDisplay(), Colors.blend(background.getRGB(), foreground.getRGB(), 0.56f));
        AbstractInformationControl.setColor((Control)this.fStatusLabel, this.fStatusLabelForeground, background);
        AbstractInformationControl.setColor((Control)this.fStatusComposite, foreground, background);
    }

    private void createToolBar(ToolBarManager toolBarManager) {
        Composite bars = new Composite(this.fStatusComposite, 0);
        bars.setLayoutData((Object)new GridData(4, 4, false, false));
        GridLayout layout = new GridLayout(3, false);
        layout.marginHeight = 0;
        layout.marginWidth = 0;
        layout.horizontalSpacing = 0;
        layout.verticalSpacing = 0;
        bars.setLayout((Layout)layout);
        this.fToolBar = toolBarManager.createControl(bars);
        GridData gd = new GridData(1, 1, false, false);
        this.fToolBar.setLayoutData((Object)gd);
        Composite spacer = new Composite(bars, 0);
        gd = new GridData(4, 4, true, true);
        gd.widthHint = 0;
        gd.heightHint = 0;
        spacer.setLayoutData((Object)gd);
        this.addMoveSupport((Control)spacer);
        this.addResizeSupportIfNecessary(bars);
    }

    private void addResizeSupportIfNecessary(Composite bars) {
        String platform = SWT.getPlatform();
        final boolean isWin = platform.equals("win32");
        if (!isWin && !platform.equals("gtk")) {
            return;
        }
        final Canvas resizer = new Canvas(bars, 0);
        int size = this.getResizeHandleSize(bars);
        GridData data = new GridData(0x1000008, 0x1000008, false, true);
        data.widthHint = size;
        data.heightHint = size;
        resizer.setLayoutData((Object)data);
        resizer.addPaintListener(new PaintListener(){

            public void paintControl(PaintEvent e) {
                Point s = resizer.getSize();
                int x = s.x - 2;
                int y = s.y - 2;
                int min = Math.min(x, y);
                if (isWin) {
                    int j;
                    e.gc.setBackground(resizer.getDisplay().getSystemColor(20));
                    int end = min - 1;
                    int i = 0;
                    while (i <= 2) {
                        j = 0;
                        while (j <= 2 - i) {
                            e.gc.fillRectangle(end - 4 * i, end - 4 * j, 2, 2);
                            ++j;
                        }
                        ++i;
                    }
                    --end;
                    e.gc.setBackground(resizer.getDisplay().getSystemColor(18));
                    i = 0;
                    while (i <= 2) {
                        j = 0;
                        while (j <= 2 - i) {
                            e.gc.fillRectangle(end - 4 * i, end - 4 * j, 2, 2);
                            ++j;
                        }
                        ++i;
                    }
                } else {
                    e.gc.setForeground(resizer.getDisplay().getSystemColor(18));
                    int i = 1;
                    while (i < min) {
                        e.gc.drawLine(i, y, x, i);
                        i += 4;
                    }
                    e.gc.setForeground(resizer.getDisplay().getSystemColor(20));
                    i = 2;
                    while (i < min) {
                        e.gc.drawLine(i, y, x, i);
                        i += 4;
                    }
                }
            }
        });
        final boolean isRTL = (resizer.getShell().getStyle() & 0x4000000) != 0;
        resizer.setCursor(resizer.getDisplay().getSystemCursor(isRTL ? 16 : 15));
        MouseAdapter resizeSupport = new MouseAdapter(){
            private MouseMoveListener fResizeListener;

            public void mouseDown(MouseEvent e) {
                Rectangle shellBounds = AbstractInformationControl.this.fShell.getBounds();
                int shellX = shellBounds.x;
                int shellY = shellBounds.y;
                int shellWidth = shellBounds.width;
                int shellHeight = shellBounds.height;
                Point mouseLoc = resizer.toDisplay(e.x, e.y);
                int mouseX = mouseLoc.x;
                int mouseY = mouseLoc.y;
                this.fResizeListener = new MouseMoveListener(this, resizer, mouseX, mouseY, isRTL, shellX, shellY, shellWidth, shellHeight){
                    final /* synthetic */ 3 this$1;
                    private final /* synthetic */ Canvas val$resizer;
                    private final /* synthetic */ int val$mouseX;
                    private final /* synthetic */ int val$mouseY;
                    private final /* synthetic */ boolean val$isRTL;
                    private final /* synthetic */ int val$shellX;
                    private final /* synthetic */ int val$shellY;
                    private final /* synthetic */ int val$shellWidth;
                    private final /* synthetic */ int val$shellHeight;
                    {
                        this.this$1 = var1_1;
                        this.val$resizer = canvas;
                        this.val$mouseX = n;
                        this.val$mouseY = n2;
                        this.val$isRTL = bl;
                        this.val$shellX = n3;
                        this.val$shellY = n4;
                        this.val$shellWidth = n5;
                        this.val$shellHeight = n6;
                    }

                    public void mouseMove(MouseEvent e2) {
                        Point mouseLoc2 = this.val$resizer.toDisplay(e2.x, e2.y);
                        int dx = mouseLoc2.x - this.val$mouseX;
                        int dy = mouseLoc2.y - this.val$mouseY;
                        if (this.val$isRTL) {
                            3.access$0(this.this$1).setLocation(new Point(this.val$shellX + dx, this.val$shellY));
                            3.access$0(this.this$1).setSize(this.val$shellWidth - dx, this.val$shellHeight + dy);
                        } else {
                            3.access$0(this.this$1).setSize(this.val$shellWidth + dx, this.val$shellHeight + dy);
                        }
                    }
                };
                resizer.addMouseMoveListener(this.fResizeListener);
            }

            public void mouseUp(MouseEvent e) {
                resizer.removeMouseMoveListener(this.fResizeListener);
                this.fResizeListener = null;
            }

            static /* synthetic */ AbstractInformationControl access$0(3 var0) {
                return var0.AbstractInformationControl.this;
            }
        };
        resizer.addMouseListener((MouseListener)resizeSupport);
    }

    private int getResizeHandleSize(Composite parent) {
        if (this.fResizeHandleSize == -1) {
            Slider sliderV = new Slider(parent, 512);
            Slider sliderH = new Slider(parent, 256);
            int width = sliderV.computeSize((int)-1, (int)-1).x;
            int height = sliderH.computeSize((int)-1, (int)-1).y;
            sliderV.dispose();
            sliderH.dispose();
            this.fResizeHandleSize = Math.min(width, height);
        }
        return this.fResizeHandleSize;
    }

    private void addMoveSupport(final Control control) {
        MouseAdapter moveSupport = new MouseAdapter(){
            private MouseMoveListener fMoveListener;

            public void mouseDown(MouseEvent e) {
                Point shellLoc = AbstractInformationControl.this.fShell.getLocation();
                int shellX = shellLoc.x;
                int shellY = shellLoc.y;
                Point mouseLoc = control.toDisplay(e.x, e.y);
                int mouseX = mouseLoc.x;
                int mouseY = mouseLoc.y;
                this.fMoveListener = new MouseMoveListener(this, control, mouseX, mouseY, shellX, shellY){
                    final /* synthetic */ 5 this$1;
                    private final /* synthetic */ Control val$control;
                    private final /* synthetic */ int val$mouseX;
                    private final /* synthetic */ int val$mouseY;
                    private final /* synthetic */ int val$shellX;
                    private final /* synthetic */ int val$shellY;
                    {
                        this.this$1 = var1_1;
                        this.val$control = control;
                        this.val$mouseX = n;
                        this.val$mouseY = n2;
                        this.val$shellX = n3;
                        this.val$shellY = n4;
                    }

                    public void mouseMove(MouseEvent e2) {
                        Point mouseLoc2 = this.val$control.toDisplay(e2.x, e2.y);
                        int dx = mouseLoc2.x - this.val$mouseX;
                        int dy = mouseLoc2.y - this.val$mouseY;
                        AbstractInformationControl.access$0(5.access$0(this.this$1)).setLocation(this.val$shellX + dx, this.val$shellY + dy);
                    }
                };
                control.addMouseMoveListener(this.fMoveListener);
            }

            public void mouseUp(MouseEvent e) {
                control.removeMouseMoveListener(this.fMoveListener);
                this.fMoveListener = null;
            }

            static /* synthetic */ AbstractInformationControl access$0(5 var0) {
                return var0.AbstractInformationControl.this;
            }
        };
        control.addMouseListener((MouseListener)moveSupport);
    }

    private static void setColor(Control control, Color foreground, Color background) {
        control.setForeground(foreground);
        control.setBackground(background);
    }

    protected final Shell getShell() {
        return this.fShell;
    }

    protected final ToolBarManager getToolBarManager() {
        return this.fToolBarManager;
    }

    protected final void create() {
        this.createContent(this.fContentComposite);
    }

    protected abstract void createContent(Composite var1);

    public void setInformation(String information) {
    }

    public boolean isResizable() {
        return this.fResizable;
    }

    public void setVisible(boolean visible) {
        if (this.fShell.isVisible() == visible) {
            return;
        }
        this.fShell.setVisible(visible);
    }

    public void dispose() {
        if (this.fShell != null && !this.fShell.isDisposed()) {
            this.fShell.dispose();
        }
    }

    protected void handleDispose() {
        if (this.fStatusLabelFont != null) {
            this.fStatusLabelFont.dispose();
            this.fStatusLabelFont = null;
        }
        if (this.fStatusLabelForeground != null) {
            this.fStatusLabelForeground.dispose();
            this.fStatusLabelForeground = null;
        }
    }

    public void setSize(int width, int height) {
        this.fShell.setSize(width, height);
    }

    public void setLocation(Point location) {
        this.fShell.setLocation(location);
    }

    public void setSizeConstraints(int maxWidth, int maxHeight) {
        this.fSizeConstraints = new Point(maxWidth, maxHeight);
    }

    protected final Point getSizeConstraints() {
        return this.fSizeConstraints != null ? Geometry.copy((Point)this.fSizeConstraints) : null;
    }

    public Point computeSizeHint() {
        Point constrains = this.getSizeConstraints();
        if (constrains == null) {
            return this.fShell.computeSize(-1, -1, true);
        }
        return this.fShell.computeSize(constrains.x, constrains.y, true);
    }

    public Rectangle computeTrim() {
        Rectangle trim = this.fShell.computeTrim(0, 0, 0, 0);
        if (this.fStatusComposite != null) {
            trim.height += this.fStatusComposite.computeSize((int)-1, (int)-1).y;
        }
        return trim;
    }

    public Rectangle getBounds() {
        return this.fShell.getBounds();
    }

    public boolean restoresLocation() {
        return false;
    }

    public boolean restoresSize() {
        return false;
    }

    public void addDisposeListener(DisposeListener listener) {
        this.fShell.addDisposeListener(listener);
    }

    public void removeDisposeListener(DisposeListener listener) {
        this.fShell.removeDisposeListener(listener);
    }

    public void setForegroundColor(Color foreground) {
        this.fContentComposite.setForeground(foreground);
    }

    public void setBackgroundColor(Color background) {
        this.fContentComposite.setBackground(background);
    }

    public boolean isFocusControl() {
        return this.fShell.getDisplay().getActiveShell() == this.fShell;
    }

    public void setFocus() {
        boolean focusTaken = this.fShell.setFocus();
        if (!focusTaken) {
            this.fShell.forceFocus();
        }
    }

    public void addFocusListener(FocusListener listener) {
        if (this.fFocusListeners.isEmpty()) {
            this.fShellListener = new Listener(){

                public void handleEvent(Event event) {
                    Object[] listeners = AbstractInformationControl.this.fFocusListeners.getListeners();
                    int i = 0;
                    while (i < listeners.length) {
                        FocusListener focusListener = (FocusListener)listeners[i];
                        if (event.type == 26) {
                            focusListener.focusGained(new FocusEvent(event));
                        } else {
                            focusListener.focusLost(new FocusEvent(event));
                        }
                        ++i;
                    }
                }
            };
            this.fShell.addListener(27, this.fShellListener);
            this.fShell.addListener(26, this.fShellListener);
        }
        this.fFocusListeners.add((Object)listener);
    }

    public void removeFocusListener(FocusListener listener) {
        this.fFocusListeners.remove((Object)listener);
        if (this.fFocusListeners.isEmpty()) {
            this.fShell.removeListener(26, this.fShellListener);
            this.fShell.removeListener(27, this.fShellListener);
            this.fShellListener = null;
        }
    }

    public void setStatusText(String statusFieldText) {
        if (this.fStatusLabel != null && !this.getShell().isVisible()) {
            if (statusFieldText == null) {
                this.fStatusComposite.setVisible(false);
            } else {
                this.fStatusLabel.setText(statusFieldText);
                this.fStatusComposite.setVisible(true);
            }
        }
    }

    public boolean containsControl(Control control) {
        do {
            if (control == this.fShell) {
                return true;
            }
            if (!(control instanceof Shell)) continue;
            return false;
        } while ((control = control.getParent()) != null);
        return false;
    }

    public boolean isVisible() {
        return this.fShell != null && !this.fShell.isDisposed() && this.fShell.isVisible();
    }

    public IInformationControlCreator getInformationPresenterControlCreator() {
        return null;
    }

    public Point computeSizeConstraints(int widthInChars, int heightInChars) {
        GC gc = new GC((Drawable)this.fContentComposite);
        gc.setFont(JFaceResources.getDialogFont());
        int width = gc.getFontMetrics().getAverageCharWidth();
        int height = gc.getFontMetrics().getHeight();
        gc.dispose();
        return new Point(widthInChars * width, heightInChars * height);
    }
}

