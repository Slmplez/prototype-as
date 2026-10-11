/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.action.ContributionItem
 *  org.eclipse.jface.action.IAction
 *  org.eclipse.jface.action.LegacyActionTools
 *  org.eclipse.jface.action.StatusLineLayoutData
 *  org.eclipse.jface.resource.JFaceColors
 *  org.eclipse.swt.custom.CLabel
 *  org.eclipse.swt.events.DisposeEvent
 *  org.eclipse.swt.events.DisposeListener
 *  org.eclipse.swt.events.MouseAdapter
 *  org.eclipse.swt.events.MouseEvent
 *  org.eclipse.swt.events.MouseListener
 *  org.eclipse.swt.graphics.Drawable
 *  org.eclipse.swt.graphics.GC
 *  org.eclipse.swt.graphics.Image
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Display
 *  org.eclipse.swt.widgets.Label
 */
package org.eclipse.ui.texteditor;

import org.eclipse.jface.action.ContributionItem;
import org.eclipse.jface.action.IAction;
import org.eclipse.jface.action.LegacyActionTools;
import org.eclipse.jface.action.StatusLineLayoutData;
import org.eclipse.jface.resource.JFaceColors;
import org.eclipse.swt.custom.CLabel;
import org.eclipse.swt.events.DisposeEvent;
import org.eclipse.swt.events.DisposeListener;
import org.eclipse.swt.events.MouseAdapter;
import org.eclipse.swt.events.MouseEvent;
import org.eclipse.swt.events.MouseListener;
import org.eclipse.swt.graphics.Drawable;
import org.eclipse.swt.graphics.GC;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Label;
import org.eclipse.ui.texteditor.IStatusField;
import org.eclipse.ui.texteditor.IStatusFieldExtension;

public class StatusLineContributionItem
extends ContributionItem
implements IStatusField,
IStatusFieldExtension {
    private static final int INDENT = 3;
    static final int DEFAULT_WIDTH_IN_CHARS = 14;
    private int fFixedWidth = -1;
    private int fFixedHeight = -1;
    private String fText;
    private Image fImage;
    private String fErrorText;
    private Image fErrorImage;
    private String fToolTipText;
    private int fWidthInChars;
    private CLabel fLabel;
    private IAction fActionHandler;
    private MouseListener fMouseListener;

    public StatusLineContributionItem(String id) {
        this(id, true, 14);
    }

    public StatusLineContributionItem(String id, boolean visible, int widthInChars) {
        super(id);
        this.setVisible(visible);
        this.fWidthInChars = widthInChars;
    }

    public void setText(String text) {
        this.fText = text;
        this.updateMessageLabel();
    }

    public void setImage(Image image) {
        this.fImage = image;
        this.updateMessageLabel();
    }

    public void setErrorText(String text) {
        this.fErrorText = text;
        this.updateMessageLabel();
    }

    public void setErrorImage(Image image) {
        this.fErrorImage = image;
        this.updateMessageLabel();
    }

    public void setToolTipText(String string) {
        this.fToolTipText = string;
        this.updateMessageLabel();
    }

    public void fill(Composite parent) {
        Label sep = new Label(parent, 2);
        this.fLabel = new CLabel(parent, 32);
        this.fLabel.addDisposeListener(new DisposeListener(){

            public void widgetDisposed(DisposeEvent e) {
                StatusLineContributionItem.this.fMouseListener = null;
            }
        });
        if (this.fActionHandler != null) {
            this.fMouseListener = new Listener();
            this.fLabel.addMouseListener(this.fMouseListener);
        }
        StatusLineLayoutData data = new StatusLineLayoutData();
        data.widthHint = this.getWidthHint(parent);
        this.fLabel.setLayoutData((Object)data);
        data = new StatusLineLayoutData();
        data.heightHint = this.getHeightHint(parent);
        sep.setLayoutData((Object)data);
        this.updateMessageLabel();
    }

    public void setActionHandler(IAction actionHandler) {
        if (this.fActionHandler != null && actionHandler == null && this.fMouseListener != null) {
            if (!this.fLabel.isDisposed()) {
                this.fLabel.removeMouseListener(this.fMouseListener);
            }
            this.fMouseListener = null;
        }
        this.fActionHandler = actionHandler;
        if (this.fLabel != null && !this.fLabel.isDisposed() && this.fMouseListener == null && this.fActionHandler != null) {
            this.fMouseListener = new Listener();
            this.fLabel.addMouseListener(this.fMouseListener);
        }
    }

    private int getWidthHint(Composite control) {
        if (this.fFixedWidth < 0) {
            GC gc = new GC((Drawable)control);
            gc.setFont(control.getFont());
            this.fFixedWidth = gc.getFontMetrics().getAverageCharWidth() * this.fWidthInChars;
            this.fFixedWidth += 6;
            gc.dispose();
        }
        return this.fFixedWidth;
    }

    private int getHeightHint(Composite control) {
        if (this.fFixedHeight < 0) {
            GC gc = new GC((Drawable)control);
            gc.setFont(control.getFont());
            this.fFixedHeight = gc.getFontMetrics().getHeight();
            gc.dispose();
        }
        return this.fFixedHeight;
    }

    private void updateMessageLabel() {
        if (this.fLabel != null && !this.fLabel.isDisposed()) {
            Display display = this.fLabel.getDisplay();
            if (this.fErrorText != null && this.fErrorText.length() > 0 || this.fErrorImage != null) {
                String escapedErrorText = this.escape(this.fErrorText);
                this.fLabel.setForeground(JFaceColors.getErrorText((Display)display));
                this.fLabel.setText(escapedErrorText);
                this.fLabel.setImage(this.fErrorImage);
                if (this.fToolTipText != null) {
                    this.fLabel.setToolTipText(this.escape(this.fToolTipText));
                } else if (this.fErrorText.length() > this.fWidthInChars) {
                    this.fLabel.setToolTipText(escapedErrorText);
                } else {
                    this.fLabel.setToolTipText(null);
                }
            } else {
                String escapedText = this.escape(this.fText);
                this.fLabel.setForeground(display.getSystemColor(21));
                this.fLabel.setText(escapedText);
                this.fLabel.setImage(this.fImage);
                if (this.fToolTipText != null) {
                    this.fLabel.setToolTipText(this.escape(this.fToolTipText));
                } else if (this.fText != null && this.fText.length() > this.fWidthInChars) {
                    this.fLabel.setToolTipText(escapedText);
                } else {
                    this.fLabel.setToolTipText(null);
                }
            }
        }
    }

    private String escape(String text) {
        if (text == null) {
            return text;
        }
        return LegacyActionTools.escapeMnemonics((String)text);
    }

    private class Listener
    extends MouseAdapter {
        private Listener() {
        }

        public void mouseDoubleClick(MouseEvent e) {
            if (StatusLineContributionItem.this.fActionHandler != null && StatusLineContributionItem.this.fActionHandler.isEnabled()) {
                StatusLineContributionItem.this.fActionHandler.run();
            }
        }
    }
}

