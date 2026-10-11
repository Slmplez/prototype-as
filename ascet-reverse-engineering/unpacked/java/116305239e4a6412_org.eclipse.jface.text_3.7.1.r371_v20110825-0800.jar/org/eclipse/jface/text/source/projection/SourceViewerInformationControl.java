/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.jface.resource.JFaceResources
 *  org.eclipse.jface.text.Document
 *  org.eclipse.swt.custom.StyledText
 *  org.eclipse.swt.events.DisposeEvent
 *  org.eclipse.swt.events.DisposeListener
 *  org.eclipse.swt.events.FocusListener
 *  org.eclipse.swt.events.KeyEvent
 *  org.eclipse.swt.events.KeyListener
 *  org.eclipse.swt.graphics.Color
 *  org.eclipse.swt.graphics.Device
 *  org.eclipse.swt.graphics.Drawable
 *  org.eclipse.swt.graphics.Font
 *  org.eclipse.swt.graphics.FontData
 *  org.eclipse.swt.graphics.GC
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.graphics.RGB
 *  org.eclipse.swt.graphics.Rectangle
 *  org.eclipse.swt.layout.GridData
 *  org.eclipse.swt.layout.GridLayout
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Display
 *  org.eclipse.swt.widgets.Label
 *  org.eclipse.swt.widgets.Layout
 *  org.eclipse.swt.widgets.Shell
 */
package org.eclipse.jface.text.source.projection;

import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.resource.JFaceResources;
import org.eclipse.jface.text.Document;
import org.eclipse.jface.text.IInformationControl;
import org.eclipse.jface.text.IInformationControlCreator;
import org.eclipse.jface.text.IInformationControlExtension;
import org.eclipse.jface.text.IInformationControlExtension3;
import org.eclipse.jface.text.IInformationControlExtension5;
import org.eclipse.jface.text.source.SourceViewer;
import org.eclipse.jface.text.source.SourceViewerConfiguration;
import org.eclipse.swt.custom.StyledText;
import org.eclipse.swt.events.DisposeEvent;
import org.eclipse.swt.events.DisposeListener;
import org.eclipse.swt.events.FocusListener;
import org.eclipse.swt.events.KeyEvent;
import org.eclipse.swt.events.KeyListener;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.Device;
import org.eclipse.swt.graphics.Drawable;
import org.eclipse.swt.graphics.Font;
import org.eclipse.swt.graphics.FontData;
import org.eclipse.swt.graphics.GC;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.RGB;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.layout.GridLayout;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Label;
import org.eclipse.swt.widgets.Layout;
import org.eclipse.swt.widgets.Shell;

class SourceViewerInformationControl
implements IInformationControl,
IInformationControlExtension,
IInformationControlExtension3,
IInformationControlExtension5,
DisposeListener {
    private Shell fShell;
    private StyledText fText;
    private final String fSymbolicFontName;
    private Font fTextFont;
    private SourceViewer fViewer;
    private Label fStatusField;
    private Label fSeparator;
    private Font fStatusTextFont;
    private Color fStatusTextForegroundColor;
    private int fMaxWidth;
    private int fMaxHeight;

    public SourceViewerInformationControl(Shell parent, boolean isResizable, String symbolicFontName, String statusFieldText) {
        int shellStyle = 0x4004 | (isResizable ? 16 : 0);
        int textStyle = isResizable ? 768 : 0;
        this.fShell = new Shell(parent, 0x84000 | shellStyle);
        Display display = this.fShell.getDisplay();
        Shell composite = this.fShell;
        GridLayout layout = new GridLayout(1, false);
        layout.marginHeight = 0;
        layout.marginWidth = 0;
        composite.setLayout((Layout)layout);
        GridData gd = new GridData(768);
        composite.setLayoutData((Object)gd);
        if (statusFieldText != null) {
            composite = new Composite((Composite)composite, 0);
            layout = new GridLayout(1, false);
            layout.marginHeight = 0;
            layout.marginWidth = 0;
            composite.setLayout((Layout)layout);
            gd = new GridData(1808);
            composite.setLayoutData((Object)gd);
            composite.setForeground(display.getSystemColor(28));
            composite.setBackground(display.getSystemColor(29));
        }
        this.fViewer = new SourceViewer((Composite)composite, null, textStyle);
        this.fViewer.configure(new SourceViewerConfiguration());
        this.fViewer.setEditable(false);
        this.fText = this.fViewer.getTextWidget();
        gd = new GridData(1809);
        this.fText.setLayoutData((Object)gd);
        this.fText.setForeground(parent.getDisplay().getSystemColor(28));
        this.fText.setBackground(parent.getDisplay().getSystemColor(29));
        this.fSymbolicFontName = symbolicFontName;
        this.fTextFont = JFaceResources.getFont((String)symbolicFontName);
        this.fText.setFont(this.fTextFont);
        this.fText.addKeyListener(new KeyListener(){

            public void keyPressed(KeyEvent e) {
                if (e.character == '\u001b') {
                    SourceViewerInformationControl.this.fShell.dispose();
                }
            }

            public void keyReleased(KeyEvent e) {
            }
        });
        if (statusFieldText != null) {
            this.fSeparator = new Label((Composite)composite, 259);
            this.fSeparator.setLayoutData((Object)new GridData(768));
            this.fStatusField = new Label((Composite)composite, 131072);
            this.fStatusField.setText(statusFieldText);
            Font font = this.fStatusField.getFont();
            FontData[] fontDatas = font.getFontData();
            int i = 0;
            while (i < fontDatas.length) {
                fontDatas[i].setHeight(fontDatas[i].getHeight() * 9 / 10);
                ++i;
            }
            this.fStatusTextFont = new Font((Device)this.fStatusField.getDisplay(), fontDatas);
            this.fStatusField.setFont(this.fStatusTextFont);
            GridData gd2 = new GridData(1842);
            this.fStatusField.setLayoutData((Object)gd2);
            this.fStatusTextForegroundColor = new Color((Device)this.fStatusField.getDisplay(), SourceViewerInformationControl.blend(display.getSystemColor(29).getRGB(), display.getSystemColor(28).getRGB(), 0.56f));
            this.fStatusField.setForeground(this.fStatusTextForegroundColor);
            this.fStatusField.setBackground(display.getSystemColor(29));
        }
        this.addDisposeListener(this);
    }

    private static RGB blend(RGB bg, RGB fg, float factor) {
        Assert.isLegal((bg != null ? 1 : 0) != 0);
        Assert.isLegal((fg != null ? 1 : 0) != 0);
        Assert.isLegal((factor >= 0.0f && factor <= 1.0f ? 1 : 0) != 0);
        float complement = 1.0f - factor;
        return new RGB((int)(complement * (float)bg.red + factor * (float)fg.red), (int)(complement * (float)bg.green + factor * (float)fg.green), (int)(complement * (float)bg.blue + factor * (float)fg.blue));
    }

    public void setInput(Object input) {
        if (input instanceof String) {
            this.setInformation((String)input);
        } else {
            this.setInformation(null);
        }
    }

    public void setInformation(String content) {
        if (content == null) {
            this.fViewer.setInput(null);
            return;
        }
        Document doc = new Document(content);
        this.fViewer.setInput(doc);
    }

    public void setVisible(boolean visible) {
        this.fShell.setVisible(visible);
    }

    public void widgetDisposed(DisposeEvent event) {
        if (this.fStatusTextFont != null && !this.fStatusTextFont.isDisposed()) {
            this.fStatusTextFont.dispose();
        }
        this.fStatusTextFont = null;
        if (this.fStatusTextForegroundColor != null && !this.fStatusTextForegroundColor.isDisposed()) {
            this.fStatusTextForegroundColor.dispose();
        }
        this.fStatusTextForegroundColor = null;
        this.fTextFont = null;
        this.fShell = null;
        this.fText = null;
    }

    public final void dispose() {
        if (this.fShell != null && !this.fShell.isDisposed()) {
            this.fShell.dispose();
        } else {
            this.widgetDisposed(null);
        }
    }

    public void setSize(int width, int height) {
        if (this.fStatusField != null) {
            GridData gd = (GridData)this.fViewer.getTextWidget().getLayoutData();
            Point statusSize = this.fStatusField.computeSize(-1, -1, true);
            Point separatorSize = this.fSeparator.computeSize(-1, -1, true);
            gd.heightHint = height - statusSize.y - separatorSize.y;
        }
        this.fShell.setSize(width, height);
        if (this.fStatusField != null) {
            this.fShell.pack(true);
        }
    }

    public void setLocation(Point location) {
        this.fShell.setLocation(location);
    }

    public void setSizeConstraints(int maxWidth, int maxHeight) {
        this.fMaxWidth = maxWidth;
        this.fMaxHeight = maxHeight;
    }

    public Point computeSizeHint() {
        int x = -1;
        int y = -1;
        Point size = this.fShell.computeSize(x, y);
        if (size.x > this.fMaxWidth) {
            x = this.fMaxWidth;
        }
        if (size.y > this.fMaxHeight) {
            y = this.fMaxHeight;
        }
        if (x != -1 || y != -1) {
            size = this.fShell.computeSize(x, y, false);
        }
        return size;
    }

    public void addDisposeListener(DisposeListener listener) {
        this.fShell.addDisposeListener(listener);
    }

    public void removeDisposeListener(DisposeListener listener) {
        this.fShell.removeDisposeListener(listener);
    }

    public void setForegroundColor(Color foreground) {
        this.fText.setForeground(foreground);
    }

    public void setBackgroundColor(Color background) {
        this.fText.setBackground(background);
    }

    public boolean isFocusControl() {
        return this.fShell.getDisplay().getActiveShell() == this.fShell;
    }

    public void setFocus() {
        this.fShell.forceFocus();
        this.fText.setFocus();
    }

    public void addFocusListener(FocusListener listener) {
        this.fText.addFocusListener(listener);
    }

    public void removeFocusListener(FocusListener listener) {
        this.fText.removeFocusListener(listener);
    }

    public boolean hasContents() {
        return this.fText.getCharCount() > 0;
    }

    public Rectangle computeTrim() {
        Rectangle trim = this.fShell.computeTrim(0, 0, 0, 0);
        this.addInternalTrim(trim);
        return trim;
    }

    private void addInternalTrim(Rectangle trim) {
        if (this.fStatusField != null) {
            trim.height += this.fSeparator.computeSize((int)-1, (int)-1).y;
            trim.height += this.fStatusField.computeSize((int)-1, (int)-1).y;
        }
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

    public IInformationControlCreator getInformationPresenterControlCreator() {
        return new IInformationControlCreator(){

            public IInformationControl createInformationControl(Shell parent) {
                return new SourceViewerInformationControl(parent, true, SourceViewerInformationControl.this.fSymbolicFontName, null);
            }
        };
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

    public Point computeSizeConstraints(int widthInChars, int heightInChars) {
        GC gc = new GC((Drawable)this.fText);
        gc.setFont(this.fTextFont);
        int width = gc.getFontMetrics().getAverageCharWidth();
        int height = gc.getFontMetrics().getHeight();
        gc.dispose();
        return new Point(widthInChars * width, heightInChars * height);
    }
}

