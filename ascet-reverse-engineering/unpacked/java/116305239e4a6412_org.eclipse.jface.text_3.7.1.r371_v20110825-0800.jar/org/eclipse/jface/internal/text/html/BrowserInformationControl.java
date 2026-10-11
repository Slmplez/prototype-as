/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.ListenerList
 *  org.eclipse.jface.action.ToolBarManager
 *  org.eclipse.jface.resource.JFaceResources
 *  org.eclipse.swt.SWT
 *  org.eclipse.swt.SWTError
 *  org.eclipse.swt.browser.Browser
 *  org.eclipse.swt.browser.LocationListener
 *  org.eclipse.swt.browser.OpenWindowListener
 *  org.eclipse.swt.browser.ProgressAdapter
 *  org.eclipse.swt.browser.ProgressEvent
 *  org.eclipse.swt.browser.ProgressListener
 *  org.eclipse.swt.browser.WindowEvent
 *  org.eclipse.swt.custom.StyleRange
 *  org.eclipse.swt.graphics.Color
 *  org.eclipse.swt.graphics.Device
 *  org.eclipse.swt.graphics.Drawable
 *  org.eclipse.swt.graphics.Font
 *  org.eclipse.swt.graphics.GC
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.graphics.Rectangle
 *  org.eclipse.swt.graphics.TextLayout
 *  org.eclipse.swt.graphics.TextStyle
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Decorations
 *  org.eclipse.swt.widgets.Display
 *  org.eclipse.swt.widgets.Menu
 *  org.eclipse.swt.widgets.Shell
 *  org.eclipse.swt.widgets.Slider
 */
package org.eclipse.jface.internal.text.html;

import java.io.IOException;
import java.io.StringReader;
import java.util.Iterator;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.ListenerList;
import org.eclipse.jface.action.ToolBarManager;
import org.eclipse.jface.internal.text.html.BrowserInformationControlInput;
import org.eclipse.jface.internal.text.html.HTML2TextReader;
import org.eclipse.jface.internal.text.html.HTMLPrinter;
import org.eclipse.jface.resource.JFaceResources;
import org.eclipse.jface.text.AbstractInformationControl;
import org.eclipse.jface.text.IDelayedInputChangeProvider;
import org.eclipse.jface.text.IInformationControlExtension2;
import org.eclipse.jface.text.IInputChangedListener;
import org.eclipse.jface.text.TextPresentation;
import org.eclipse.swt.SWT;
import org.eclipse.swt.SWTError;
import org.eclipse.swt.browser.Browser;
import org.eclipse.swt.browser.LocationListener;
import org.eclipse.swt.browser.OpenWindowListener;
import org.eclipse.swt.browser.ProgressAdapter;
import org.eclipse.swt.browser.ProgressEvent;
import org.eclipse.swt.browser.ProgressListener;
import org.eclipse.swt.browser.WindowEvent;
import org.eclipse.swt.custom.StyleRange;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.Device;
import org.eclipse.swt.graphics.Drawable;
import org.eclipse.swt.graphics.Font;
import org.eclipse.swt.graphics.GC;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.graphics.TextLayout;
import org.eclipse.swt.graphics.TextStyle;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Decorations;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Menu;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.swt.widgets.Slider;

public class BrowserInformationControl
extends AbstractInformationControl
implements IInformationControlExtension2,
IDelayedInputChangeProvider {
    private static final int MIN_WIDTH = 80;
    private static final int MIN_HEIGHT = 50;
    private static boolean fgIsAvailable = false;
    private static boolean fgAvailabilityChecked = false;
    private static Point fgScrollBarSize;
    private Browser fBrowser;
    private boolean fBrowserHasContent;
    private TextLayout fTextLayout;
    private TextStyle fBoldStyle;
    private BrowserInformationControlInput fInput;
    private boolean fCompleted = false;
    private IInputChangedListener fDelayedInputChangeListener;
    private ListenerList fInputChangeListeners = new ListenerList(1);
    private final String fSymbolicFontName;

    public static boolean isAvailable(Composite parent) {
        if (!fgAvailabilityChecked) {
            try {
                try {
                    Browser browser = new Browser(parent, 0);
                    browser.dispose();
                    fgIsAvailable = true;
                    Slider sliderV = new Slider(parent, 512);
                    Slider sliderH = new Slider(parent, 256);
                    int width = sliderV.computeSize((int)-1, (int)-1).x;
                    int height = sliderH.computeSize((int)-1, (int)-1).y;
                    fgScrollBarSize = new Point(width, height);
                    sliderV.dispose();
                    sliderH.dispose();
                }
                catch (SWTError sWTError) {
                    fgIsAvailable = false;
                    fgAvailabilityChecked = true;
                }
            }
            finally {
                fgAvailabilityChecked = true;
            }
        }
        return fgIsAvailable;
    }

    public BrowserInformationControl(Shell parent, String symbolicFontName, boolean resizable) {
        super(parent, resizable);
        this.fSymbolicFontName = symbolicFontName;
        this.create();
    }

    public BrowserInformationControl(Shell parent, String symbolicFontName, String statusFieldText) {
        super(parent, statusFieldText);
        this.fSymbolicFontName = symbolicFontName;
        this.create();
    }

    public BrowserInformationControl(Shell parent, String symbolicFontName, ToolBarManager toolBarManager) {
        super(parent, toolBarManager);
        this.fSymbolicFontName = symbolicFontName;
        this.create();
    }

    protected void createContent(Composite parent) {
        this.fBrowser = new Browser(parent, 0);
        this.fBrowser.setJavascriptEnabled(false);
        Display display = this.getShell().getDisplay();
        this.fBrowser.setForeground(display.getSystemColor(28));
        this.fBrowser.setBackground(display.getSystemColor(29));
        this.fBrowser.addProgressListener((ProgressListener)new ProgressAdapter(){

            public void completed(ProgressEvent event) {
                BrowserInformationControl.this.fCompleted = true;
            }
        });
        this.fBrowser.addOpenWindowListener(new OpenWindowListener(){

            public void open(WindowEvent event) {
                event.required = true;
            }
        });
        this.fBrowser.setMenu(new Menu((Decorations)this.getShell(), 0));
        this.createTextLayout();
    }

    public void setInformation(final String content) {
        this.setInput(new BrowserInformationControlInput(null){

            public String getHtml() {
                return content;
            }

            public String getInputName() {
                return "";
            }

            public Object getInputElement() {
                return content;
            }
        });
    }

    public void setInput(Object input) {
        Assert.isLegal((input == null || input instanceof String || input instanceof BrowserInformationControlInput ? 1 : 0) != 0);
        if (input instanceof String) {
            this.setInformation((String)input);
            return;
        }
        this.fInput = (BrowserInformationControlInput)input;
        String content = null;
        if (this.fInput != null) {
            content = this.fInput.getHtml();
        }
        boolean bl = this.fBrowserHasContent = content != null && content.length() > 0;
        if (!this.fBrowserHasContent) {
            content = "<html><body ></html>";
        }
        boolean RTL = (this.getShell().getStyle() & 0x4000000) != 0;
        boolean resizable = this.isResizable();
        String[] styles = null;
        styles = RTL && resizable ? new String[]{"direction:rtl;", "overflow:scroll;", "word-wrap:break-word;"} : (RTL && !resizable ? new String[]{"direction:rtl;", "overflow:hidden;", "word-wrap:break-word;"} : (!resizable ? new String[]{"overflow:hidden;"} : new String[]{"overflow:scroll;"}));
        StringBuffer buffer = new StringBuffer(content);
        HTMLPrinter.insertStyles(buffer, styles);
        content = buffer.toString();
        this.fCompleted = false;
        this.fBrowser.setText(content);
        Object[] listeners = this.fInputChangeListeners.getListeners();
        int i = 0;
        while (i < listeners.length) {
            ((IInputChangedListener)listeners[i]).inputChanged(this.fInput);
            ++i;
        }
    }

    public void setVisible(boolean visible) {
        Shell shell = this.getShell();
        if (shell.isVisible() == visible) {
            return;
        }
        if (!visible) {
            super.setVisible(false);
            this.setInput(null);
            return;
        }
        Display display = shell.getDisplay();
        display.timerExec(100, new Runnable(){

            public void run() {
                BrowserInformationControl.this.fCompleted = true;
            }
        });
        while (!this.fCompleted) {
            if (display.readAndDispatch()) continue;
            display.sleep();
        }
        shell = this.getShell();
        if (shell == null || shell.isDisposed()) {
            return;
        }
        if ("win32".equals(SWT.getPlatform())) {
            shell.moveAbove(null);
        }
        super.setVisible(true);
    }

    public void setSize(int width, int height) {
        this.fBrowser.setRedraw(false);
        try {
            super.setSize(width, height);
        }
        finally {
            this.fBrowser.setRedraw(true);
        }
    }

    private void createTextLayout() {
        this.fTextLayout = new TextLayout((Device)this.fBrowser.getDisplay());
        String symbolicFontName = this.fSymbolicFontName == null ? "org.eclipse.jface.dialogfont" : this.fSymbolicFontName;
        Font font = JFaceResources.getFont((String)symbolicFontName);
        this.fTextLayout.setFont(font);
        this.fTextLayout.setWidth(-1);
        font = JFaceResources.getFontRegistry().getBold(symbolicFontName);
        this.fBoldStyle = new TextStyle(font, null, null);
        this.fTextLayout.setText("    ");
        int tabWidth = this.fTextLayout.getBounds().width;
        this.fTextLayout.setTabs(new int[]{tabWidth});
        this.fTextLayout.setText("");
    }

    protected void handleDispose() {
        if (this.fTextLayout != null) {
            this.fTextLayout.dispose();
            this.fTextLayout = null;
        }
        this.fBrowser = null;
        super.handleDispose();
    }

    public Point computeSizeHint() {
        String text;
        Point sizeConstraints = this.getSizeConstraints();
        Rectangle trim = this.computeTrim();
        int height = trim.height;
        TextPresentation presentation = new TextPresentation();
        HTML2TextReader reader = new HTML2TextReader(new StringReader(this.fInput.getHtml()), presentation);
        try {
            text = reader.getString();
        }
        catch (IOException iOException) {
            text = "";
        }
        this.fTextLayout.setText(text);
        this.fTextLayout.setWidth(sizeConstraints == null ? -1 : sizeConstraints.x - trim.width);
        Iterator iter = presentation.getAllStyleRangeIterator();
        while (iter.hasNext()) {
            StyleRange sr = (StyleRange)iter.next();
            if (sr.fontStyle != 1) continue;
            this.fTextLayout.setStyle(this.fBoldStyle, sr.start, sr.start + sr.length - 1);
        }
        Rectangle bounds = this.fTextLayout.getBounds();
        int lineCount = this.fTextLayout.getLineCount();
        int textWidth = 0;
        int i = 0;
        while (i < lineCount) {
            Rectangle rect = this.fTextLayout.getLineBounds(i);
            int lineWidth = rect.x + rect.width;
            if (i == 0) {
                lineWidth += this.fInput.getLeadingImageWidth();
            }
            textWidth = Math.max(textWidth, lineWidth);
            ++i;
        }
        bounds.width = textWidth;
        this.fTextLayout.setText("");
        int minWidth = bounds.width;
        height += bounds.height;
        minWidth += 15;
        height += 15;
        if (sizeConstraints != null) {
            if (sizeConstraints.x != -1) {
                minWidth = Math.min(sizeConstraints.x, minWidth + trim.width);
            }
            if (sizeConstraints.y != -1) {
                height = Math.min(sizeConstraints.y, height);
            }
        }
        int width = Math.max(80, minWidth);
        height = Math.max(50, height);
        return new Point(width, height);
    }

    public Rectangle computeTrim() {
        Rectangle trim = super.computeTrim();
        if (this.isResizable()) {
            boolean RTL;
            boolean bl = RTL = (this.getShell().getStyle() & 0x4000000) != 0;
            if (RTL) {
                trim.x -= BrowserInformationControl.fgScrollBarSize.x;
            }
            trim.width += BrowserInformationControl.fgScrollBarSize.x;
            trim.height += BrowserInformationControl.fgScrollBarSize.y;
        }
        return trim;
    }

    public void addLocationListener(LocationListener listener) {
        this.fBrowser.addLocationListener(listener);
    }

    public void setForegroundColor(Color foreground) {
        super.setForegroundColor(foreground);
        this.fBrowser.setForeground(foreground);
    }

    public void setBackgroundColor(Color background) {
        super.setBackgroundColor(background);
        this.fBrowser.setBackground(background);
    }

    public boolean hasContents() {
        return this.fBrowserHasContent;
    }

    public void addInputChangeListener(IInputChangedListener inputChangeListener) {
        Assert.isNotNull((Object)inputChangeListener);
        this.fInputChangeListeners.add((Object)inputChangeListener);
    }

    public void removeInputChangeListener(IInputChangedListener inputChangeListener) {
        this.fInputChangeListeners.remove((Object)inputChangeListener);
    }

    public void setDelayedInputChangeListener(IInputChangedListener inputChangeListener) {
        this.fDelayedInputChangeListener = inputChangeListener;
    }

    public boolean hasDelayedInputChangeListener() {
        return this.fDelayedInputChangeListener != null;
    }

    public void notifyDelayedInputChange(Object newInput) {
        if (this.fDelayedInputChangeListener != null) {
            this.fDelayedInputChangeListener.inputChanged(newInput);
        }
    }

    public String toString() {
        String style = (this.getShell().getStyle() & 0x10) == 0 ? "fixed" : "resizeable";
        return String.valueOf(super.toString()) + " -  style: " + style;
    }

    public BrowserInformationControlInput getInput() {
        return this.fInput;
    }

    public Point computeSizeConstraints(int widthInChars, int heightInChars) {
        if (this.fSymbolicFontName == null) {
            return null;
        }
        GC gc = new GC((Drawable)this.fBrowser);
        Font font = this.fSymbolicFontName == null ? JFaceResources.getDialogFont() : JFaceResources.getFont((String)this.fSymbolicFontName);
        gc.setFont(font);
        int width = gc.getFontMetrics().getAverageCharWidth();
        int height = gc.getFontMetrics().getHeight();
        gc.dispose();
        return new Point(widthInChars * width, heightInChars * height);
    }
}

