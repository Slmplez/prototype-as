/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.action.ToolBarManager
 *  org.eclipse.jface.resource.JFaceResources
 *  org.eclipse.jface.util.Geometry
 *  org.eclipse.swt.custom.StyledText
 *  org.eclipse.swt.events.DisposeEvent
 *  org.eclipse.swt.events.DisposeListener
 *  org.eclipse.swt.graphics.Color
 *  org.eclipse.swt.graphics.Drawable
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.graphics.Rectangle
 *  org.eclipse.swt.layout.FillLayout
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Display
 *  org.eclipse.swt.widgets.Shell
 */
package org.eclipse.jface.text;

import org.eclipse.jface.action.ToolBarManager;
import org.eclipse.jface.internal.text.html.HTMLTextPresenter;
import org.eclipse.jface.resource.JFaceResources;
import org.eclipse.jface.text.AbstractInformationControl;
import org.eclipse.jface.text.IInformationControl;
import org.eclipse.jface.text.IInformationControlCreator;
import org.eclipse.jface.text.TextPresentation;
import org.eclipse.jface.util.Geometry;
import org.eclipse.swt.custom.StyledText;
import org.eclipse.swt.events.DisposeEvent;
import org.eclipse.swt.events.DisposeListener;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.Drawable;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.layout.FillLayout;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Shell;

public class DefaultInformationControl
extends AbstractInformationControl
implements DisposeListener {
    private static final int INNER_BORDER = 1;
    private StyledText fText;
    private final IInformationPresenter fPresenter;
    private final TextPresentation fPresentation = new TextPresentation();
    private final int fAdditionalTextStyles;

    public DefaultInformationControl(Shell parent, boolean isResizeable) {
        super(parent, isResizeable);
        this.fAdditionalTextStyles = isResizeable ? 768 : 0;
        this.fPresenter = new HTMLTextPresenter(!isResizeable);
        this.create();
    }

    public DefaultInformationControl(Shell parent, String statusFieldText) {
        this(parent, statusFieldText, (IInformationPresenter)new HTMLTextPresenter(true));
    }

    public DefaultInformationControl(Shell parent, String statusFieldText, IInformationPresenter presenter) {
        super(parent, statusFieldText);
        this.fAdditionalTextStyles = 0;
        this.fPresenter = presenter;
        this.create();
    }

    public DefaultInformationControl(Shell parent, ToolBarManager toolBarManager) {
        this(parent, toolBarManager, (IInformationPresenter)new HTMLTextPresenter(false));
    }

    public DefaultInformationControl(Shell parent, ToolBarManager toolBarManager, IInformationPresenter presenter) {
        super(parent, toolBarManager);
        this.fAdditionalTextStyles = 768;
        this.fPresenter = presenter;
        this.create();
    }

    public DefaultInformationControl(Shell parent) {
        this(parent, (String)null, (IInformationPresenter)null);
    }

    public DefaultInformationControl(Shell parent, IInformationPresenter presenter) {
        this(parent, (String)null, presenter);
    }

    public DefaultInformationControl(Shell parent, int shellStyle, int style, IInformationPresenter presenter) {
        this(parent, shellStyle, style, presenter, null);
    }

    public DefaultInformationControl(Shell parentShell, int shellStyle, int style, IInformationPresenter presenter, String statusFieldText) {
        super(parentShell, 0x84000 | shellStyle, statusFieldText, null);
        this.fAdditionalTextStyles = style;
        this.fPresenter = presenter;
        this.create();
    }

    public DefaultInformationControl(Shell parent, int textStyles, IInformationPresenter presenter) {
        this(parent, textStyles, presenter, null);
    }

    public DefaultInformationControl(Shell parent, int textStyles, IInformationPresenter presenter, String statusFieldText) {
        super(parent, statusFieldText);
        this.fAdditionalTextStyles = textStyles;
        this.fPresenter = presenter;
        this.create();
    }

    protected void createContent(Composite parent) {
        this.fText = new StyledText(parent, 0xA | this.fAdditionalTextStyles);
        this.fText.setForeground(parent.getForeground());
        this.fText.setBackground(parent.getBackground());
        this.fText.setFont(JFaceResources.getDialogFont());
        FillLayout layout = (FillLayout)parent.getLayout();
        if (this.fText.getWordWrap()) {
            layout.marginHeight = 1;
            layout.marginWidth = 1;
        } else {
            this.fText.setIndent(1);
        }
    }

    public void setInformation(String content) {
        if (this.fPresenter == null) {
            this.fText.setText(content);
        } else {
            this.fPresentation.clear();
            int maxWidth = -1;
            int maxHeight = -1;
            Point constraints = this.getSizeConstraints();
            if (constraints != null) {
                maxWidth = constraints.x;
                maxHeight = constraints.y;
                if (this.fText.getWordWrap()) {
                    maxWidth -= 2;
                    maxHeight -= 2;
                } else {
                    --maxWidth;
                }
                Rectangle trim = this.computeTrim();
                maxWidth -= trim.width;
                maxHeight -= trim.height;
                maxWidth -= this.fText.getCaret().getSize().x;
            }
            if (this.isResizable()) {
                maxHeight = Integer.MAX_VALUE;
            }
            if ((content = this.fPresenter instanceof IInformationPresenterExtension ? ((IInformationPresenterExtension)((Object)this.fPresenter)).updatePresentation((Drawable)this.fText, content, this.fPresentation, maxWidth, maxHeight) : this.fPresenter.updatePresentation(this.getShell().getDisplay(), content, this.fPresentation, maxWidth, maxHeight)) != null) {
                this.fText.setText(content);
                TextPresentation.applyTextPresentation(this.fPresentation, this.fText);
            } else {
                this.fText.setText("");
            }
        }
    }

    public void setVisible(boolean visible) {
        if (visible && this.fText.getWordWrap()) {
            Point currentSize = this.getShell().getSize();
            this.getShell().pack(true);
            Point newSize = this.getShell().getSize();
            if (newSize.x > currentSize.x || newSize.y > currentSize.y) {
                this.setSize(currentSize.x, currentSize.y);
            }
        }
        super.setVisible(visible);
    }

    public Point computeSizeHint() {
        int widthHint = -1;
        Point constraints = this.getSizeConstraints();
        if (constraints != null && this.fText.getWordWrap()) {
            widthHint = constraints.x;
        }
        return this.getShell().computeSize(widthHint, -1, true);
    }

    public Rectangle computeTrim() {
        return Geometry.add((Rectangle)super.computeTrim(), (Rectangle)this.fText.computeTrim(0, 0, 0, 0));
    }

    public void setForegroundColor(Color foreground) {
        super.setForegroundColor(foreground);
        this.fText.setForeground(foreground);
    }

    public void setBackgroundColor(Color background) {
        super.setBackgroundColor(background);
        this.fText.setBackground(background);
    }

    public boolean hasContents() {
        return this.fText.getCharCount() > 0;
    }

    public void widgetDisposed(DisposeEvent event) {
    }

    public IInformationControlCreator getInformationPresenterControlCreator() {
        return new IInformationControlCreator(){

            public IInformationControl createInformationControl(Shell parent) {
                return new DefaultInformationControl(parent, null, DefaultInformationControl.this.fPresenter);
            }
        };
    }

    public static interface IInformationPresenter {
        public String updatePresentation(Display var1, String var2, TextPresentation var3, int var4, int var5);
    }

    public static interface IInformationPresenterExtension {
        public String updatePresentation(Drawable var1, String var2, TextPresentation var3, int var4, int var5);
    }
}

