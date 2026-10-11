/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.jface.text.source.IAnnotationModel
 *  org.eclipse.jface.text.source.IAnnotationModelExtension
 *  org.eclipse.jface.text.source.IAnnotationModelListener
 *  org.eclipse.swt.custom.StyledText
 *  org.eclipse.swt.events.DisposeEvent
 *  org.eclipse.swt.events.DisposeListener
 *  org.eclipse.swt.graphics.Color
 *  org.eclipse.swt.graphics.GC
 *  org.eclipse.swt.graphics.RGB
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Display
 */
package org.eclipse.jface.internal.text.source;

import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.text.ITextViewer;
import org.eclipse.jface.text.JFaceTextUtil;
import org.eclipse.jface.text.source.CompositeRuler;
import org.eclipse.jface.text.source.IAnnotationHover;
import org.eclipse.jface.text.source.IAnnotationModel;
import org.eclipse.jface.text.source.IAnnotationModelExtension;
import org.eclipse.jface.text.source.IAnnotationModelListener;
import org.eclipse.jface.text.source.ILineDiffInfo;
import org.eclipse.jface.text.source.ILineDiffer;
import org.eclipse.jface.text.source.ILineDifferExtension2;
import org.eclipse.jface.text.source.ILineRange;
import org.eclipse.jface.text.source.ISharedTextColors;
import org.eclipse.jface.text.source.IVerticalRulerColumn;
import org.eclipse.swt.custom.StyledText;
import org.eclipse.swt.events.DisposeEvent;
import org.eclipse.swt.events.DisposeListener;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.GC;
import org.eclipse.swt.graphics.RGB;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Display;

public final class DiffPainter {
    private final IVerticalRulerColumn fColumn;
    private CompositeRuler fParentRuler;
    private Control fControl;
    private ITextViewer fViewer;
    private StyledText fWidget;
    private ILineDiffer fLineDiffer = null;
    private Color fAddedColor;
    private Color fChangedColor;
    private Color fDeletedColor;
    private Color fBackground;
    private IAnnotationHover fHover;
    private final AnnotationListener fAnnotationListener = new AnnotationListener();
    private final ISharedTextColors fSharedColors;

    public DiffPainter(IVerticalRulerColumn column, ISharedTextColors sharedColors) {
        Assert.isLegal((column != null ? 1 : 0) != 0);
        this.fColumn = column;
        this.fSharedColors = sharedColors;
    }

    public void setParentRuler(CompositeRuler parentRuler) {
        this.fParentRuler = parentRuler;
    }

    public void setHover(IAnnotationHover hover) {
        this.fHover = hover;
    }

    public IAnnotationHover getHover() {
        return this.fHover;
    }

    public void setBackground(Color background) {
        this.fBackground = background;
    }

    public void paint(GC gc, ILineRange visibleModelLines) {
        this.connectIfNeeded();
        if (!this.isConnected()) {
            return;
        }
        int lastLine = DiffPainter.end(visibleModelLines);
        int width = this.getWidth();
        Color deletionColor = this.getDeletionColor();
        int line = visibleModelLines.getStartLine();
        while (line < lastLine) {
            this.paintLine(line, gc, width, deletionColor);
            ++line;
        }
    }

    private void connectIfNeeded() {
        if (this.isConnected() || this.fParentRuler == null) {
            return;
        }
        this.fViewer = this.fParentRuler.getTextViewer();
        if (this.fViewer == null) {
            return;
        }
        this.fWidget = this.fViewer.getTextWidget();
        if (this.fWidget == null) {
            return;
        }
        this.fControl = this.fColumn.getControl();
        if (this.fControl == null) {
            return;
        }
        this.fControl.addDisposeListener(new DisposeListener(){

            public void widgetDisposed(DisposeEvent e) {
                DiffPainter.this.handleDispose();
            }
        });
    }

    private boolean isConnected() {
        return this.fControl != null;
    }

    private void handleDispose() {
        if (this.fLineDiffer != null) {
            ((IAnnotationModel)this.fLineDiffer).removeAnnotationModelListener((IAnnotationModelListener)this.fAnnotationListener);
            this.fLineDiffer = null;
        }
    }

    private void paintLine(int line, GC gc, int width, Color deletionColor) {
        int widgetLine = JFaceTextUtil.modelLineToWidgetLine(this.fViewer, line);
        if (widgetLine == -1) {
            return;
        }
        ILineDiffInfo info = this.getDiffInfo(line);
        if (info != null) {
            int y = this.fWidget.getLinePixel(widgetLine);
            int lineHeight = this.fWidget.getLineHeight(this.fWidget.getOffsetAtLine(widgetLine));
            if (this.hasSpecialColor(info)) {
                gc.setBackground(this.getColor(info));
                gc.fillRectangle(0, y, width, lineHeight);
            }
            int delBefore = info.getRemovedLinesAbove();
            int delBelow = info.getRemovedLinesBelow();
            if (delBefore > 0 || delBelow > 0) {
                gc.setForeground(deletionColor);
                if (delBefore > 0) {
                    gc.drawLine(0, y, width, y);
                }
                if (delBelow > 0) {
                    gc.drawLine(0, y + lineHeight - 1, width, y + lineHeight - 1);
                }
            }
        }
    }

    private boolean hasSpecialColor(ILineDiffInfo info) {
        return info.getChangeType() == 1 || info.getChangeType() == 2;
    }

    private ILineDiffInfo getDiffInfo(int line) {
        if (this.fLineDiffer != null) {
            return this.fLineDiffer.getLineInfo(line);
        }
        return null;
    }

    private Color getDeletionColor() {
        return this.fDeletedColor == null ? this.getBackground() : this.fDeletedColor;
    }

    private Color getColor(ILineDiffInfo info) {
        Assert.isTrue((info != null && info.getChangeType() != 0 ? 1 : 0) != 0);
        Color ret = null;
        switch (info.getChangeType()) {
            case 2: {
                ret = this.getShadedColor(this.fChangedColor);
                break;
            }
            case 1: {
                ret = this.getShadedColor(this.fAddedColor);
            }
        }
        return ret == null ? this.getBackground() : ret;
    }

    private Color getShadedColor(Color color) {
        if (color == null) {
            return null;
        }
        if (this.fSharedColors == null) {
            return color;
        }
        RGB baseRGB = color.getRGB();
        RGB background = this.getBackground().getRGB();
        boolean darkBase = DiffPainter.isDark(baseRGB);
        boolean darkBackground = DiffPainter.isDark(background);
        if (darkBase && darkBackground) {
            background = new RGB(255, 255, 255);
        } else if (!darkBase && !darkBackground) {
            background = new RGB(0, 0, 0);
        }
        return this.fSharedColors.getColor(DiffPainter.interpolate(baseRGB, background, 0.6));
    }

    public void setModel(IAnnotationModel model) {
        IAnnotationModel newModel = model instanceof IAnnotationModelExtension ? ((IAnnotationModelExtension)model).getAnnotationModel((Object)"diff") : model;
        this.setDiffer(newModel);
    }

    private void setDiffer(IAnnotationModel differ) {
        if (differ instanceof ILineDiffer && this.fLineDiffer != differ) {
            if (this.fLineDiffer != null) {
                ((IAnnotationModel)this.fLineDiffer).removeAnnotationModelListener((IAnnotationModelListener)this.fAnnotationListener);
            }
            this.fLineDiffer = (ILineDiffer)differ;
            if (this.fLineDiffer != null) {
                ((IAnnotationModel)this.fLineDiffer).addAnnotationModelListener((IAnnotationModelListener)this.fAnnotationListener);
            }
        }
    }

    private final void postRedraw() {
        Display d;
        if (this.isConnected() && !this.fControl.isDisposed() && (d = this.fControl.getDisplay()) != null) {
            d.asyncExec(new Runnable(){

                public void run() {
                    DiffPainter.this.redraw();
                }
            });
        }
    }

    private void redraw() {
        this.fColumn.redraw();
    }

    private int getWidth() {
        return this.fColumn.getWidth();
    }

    private static int end(ILineRange range) {
        return range.getStartLine() + range.getNumberOfLines();
    }

    private Color getBackground() {
        if (this.fBackground == null) {
            return this.fWidget.getDisplay().getSystemColor(25);
        }
        return this.fBackground;
    }

    public void setAddedColor(Color addedColor) {
        this.fAddedColor = addedColor;
    }

    public void setChangedColor(Color changedColor) {
        this.fChangedColor = changedColor;
    }

    public void setDeletedColor(Color deletedColor) {
        this.fDeletedColor = deletedColor;
    }

    public boolean hasHover(int activeLine) {
        return true;
    }

    public String getDisplayCharacter(int line) {
        return this.getDisplayCharacter(this.getDiffInfo(line));
    }

    private String getDisplayCharacter(ILineDiffInfo info) {
        if (info == null) {
            return " ";
        }
        switch (info.getChangeType()) {
            case 2: {
                return "~";
            }
            case 1: {
                return "+";
            }
        }
        return " ";
    }

    private static RGB interpolate(RGB fg, RGB bg, double scale) {
        return new RGB((int)((1.0 - scale) * (double)fg.red + scale * (double)bg.red), (int)((1.0 - scale) * (double)fg.green + scale * (double)bg.green), (int)((1.0 - scale) * (double)fg.blue + scale * (double)bg.blue));
    }

    private static double greyLevel(RGB rgb) {
        if (rgb.red == rgb.green && rgb.green == rgb.blue) {
            return rgb.red;
        }
        return 0.299 * (double)rgb.red + 0.587 * (double)rgb.green + 0.114 * (double)rgb.blue + 0.5;
    }

    private static boolean isDark(RGB rgb) {
        return DiffPainter.greyLevel(rgb) > 128.0;
    }

    public boolean hasInformation() {
        if (this.fLineDiffer instanceof ILineDifferExtension2) {
            return !((ILineDifferExtension2)((Object)this.fLineDiffer)).isSuspended();
        }
        return this.fLineDiffer != null;
    }

    private class AnnotationListener
    implements IAnnotationModelListener {
        private AnnotationListener() {
        }

        public void modelChanged(IAnnotationModel model) {
            DiffPainter.this.postRedraw();
        }
    }
}

