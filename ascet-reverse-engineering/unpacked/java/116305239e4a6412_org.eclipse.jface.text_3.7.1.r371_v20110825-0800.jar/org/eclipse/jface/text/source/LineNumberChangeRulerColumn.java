/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.jface.text.source.IAnnotationModel
 *  org.eclipse.jface.viewers.ISelectionProvider
 *  org.eclipse.swt.graphics.Color
 *  org.eclipse.swt.graphics.GC
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 */
package org.eclipse.jface.text.source;

import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.internal.text.revisions.RevisionPainter;
import org.eclipse.jface.internal.text.source.DiffPainter;
import org.eclipse.jface.text.revisions.IRevisionListener;
import org.eclipse.jface.text.revisions.IRevisionRulerColumn;
import org.eclipse.jface.text.revisions.IRevisionRulerColumnExtension;
import org.eclipse.jface.text.revisions.RevisionInformation;
import org.eclipse.jface.text.source.CompositeRuler;
import org.eclipse.jface.text.source.IAnnotationHover;
import org.eclipse.jface.text.source.IAnnotationModel;
import org.eclipse.jface.text.source.IChangeRulerColumn;
import org.eclipse.jface.text.source.ILineRange;
import org.eclipse.jface.text.source.ISharedTextColors;
import org.eclipse.jface.text.source.IVerticalRulerListener;
import org.eclipse.jface.text.source.LineNumberRulerColumn;
import org.eclipse.jface.viewers.ISelectionProvider;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.GC;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;

public final class LineNumberChangeRulerColumn
extends LineNumberRulerColumn
implements IChangeRulerColumn,
IRevisionRulerColumn,
IRevisionRulerColumnExtension {
    private IAnnotationModel fAnnotationModel;
    private boolean fCharacterDisplay;
    private final RevisionPainter fRevisionPainter;
    private final DiffPainter fDiffPainter;
    private boolean fShowNumbers = true;

    public LineNumberChangeRulerColumn(ISharedTextColors sharedColors) {
        Assert.isNotNull((Object)sharedColors);
        this.fRevisionPainter = new RevisionPainter(this, sharedColors);
        this.fDiffPainter = new DiffPainter(this, sharedColors);
    }

    public Control createControl(CompositeRuler parentRuler, Composite parentControl) {
        Control control = super.createControl(parentRuler, parentControl);
        this.fRevisionPainter.setParentRuler(parentRuler);
        this.fDiffPainter.setParentRuler(parentRuler);
        return control;
    }

    public int getLineOfLastMouseButtonActivity() {
        return this.getParentRuler().getLineOfLastMouseButtonActivity();
    }

    public int toDocumentLineNumber(int y_coordinate) {
        return this.getParentRuler().toDocumentLineNumber(y_coordinate);
    }

    public void setModel(IAnnotationModel model) {
        this.setAnnotationModel(model);
        this.fRevisionPainter.setModel(model);
        this.fDiffPainter.setModel(model);
        this.updateNumberOfDigits();
        this.computeIndentations();
        this.layout(true);
        this.postRedraw();
    }

    private void setAnnotationModel(IAnnotationModel model) {
        if (this.fAnnotationModel != model) {
            this.fAnnotationModel = model;
        }
    }

    public void setDisplayMode(boolean characterMode) {
        if (characterMode != this.fCharacterDisplay) {
            this.fCharacterDisplay = characterMode;
            this.updateNumberOfDigits();
            this.computeIndentations();
            this.layout(true);
        }
    }

    public IAnnotationModel getModel() {
        return this.fAnnotationModel;
    }

    protected String createDisplayString(int line) {
        StringBuffer buffer = new StringBuffer();
        if (this.fShowNumbers) {
            buffer.append(super.createDisplayString(line));
        }
        if (this.fCharacterDisplay && this.getModel() != null) {
            buffer.append(this.fDiffPainter.getDisplayCharacter(line));
        }
        return buffer.toString();
    }

    protected int computeNumberOfDigits() {
        int digits = this.fCharacterDisplay && this.getModel() != null ? (this.fShowNumbers ? super.computeNumberOfDigits() + 1 : 1) : (this.fShowNumbers ? super.computeNumberOfDigits() : 0);
        if (this.fRevisionPainter.hasInformation()) {
            digits += this.fRevisionPainter.getRequiredWidth();
        }
        return digits;
    }

    public void addVerticalRulerListener(IVerticalRulerListener listener) {
        throw new UnsupportedOperationException();
    }

    public void removeVerticalRulerListener(IVerticalRulerListener listener) {
        throw new UnsupportedOperationException();
    }

    void doPaint(GC gc, ILineRange visibleLines) {
        Color foreground = gc.getForeground();
        if (visibleLines != null) {
            if (this.fRevisionPainter.hasInformation()) {
                this.fRevisionPainter.paint(gc, visibleLines);
            } else if (this.fDiffPainter.hasInformation()) {
                this.fDiffPainter.paint(gc, visibleLines);
            }
        }
        gc.setForeground(foreground);
        if (this.fShowNumbers || this.fCharacterDisplay) {
            super.doPaint(gc, visibleLines);
        }
    }

    public IAnnotationHover getHover() {
        int activeLine = this.getParentRuler().getLineOfLastMouseButtonActivity();
        if (this.fRevisionPainter.hasHover(activeLine)) {
            return this.fRevisionPainter.getHover();
        }
        if (this.fDiffPainter.hasHover(activeLine)) {
            return this.fDiffPainter.getHover();
        }
        return null;
    }

    public void setHover(IAnnotationHover hover) {
        this.fRevisionPainter.setHover(hover);
        this.fDiffPainter.setHover(hover);
    }

    public void setBackground(Color background) {
        super.setBackground(background);
        this.fRevisionPainter.setBackground(background);
        this.fDiffPainter.setBackground(background);
    }

    public void setAddedColor(Color addedColor) {
        this.fDiffPainter.setAddedColor(addedColor);
    }

    public void setChangedColor(Color changedColor) {
        this.fDiffPainter.setChangedColor(changedColor);
    }

    public void setDeletedColor(Color deletedColor) {
        this.fDiffPainter.setDeletedColor(deletedColor);
    }

    public void setRevisionInformation(RevisionInformation info) {
        this.fRevisionPainter.setRevisionInformation(info);
        this.updateNumberOfDigits();
        this.computeIndentations();
        this.layout(true);
        this.postRedraw();
    }

    public ISelectionProvider getRevisionSelectionProvider() {
        return this.fRevisionPainter.getRevisionSelectionProvider();
    }

    public void setRevisionRenderingMode(IRevisionRulerColumnExtension.RenderingMode renderingMode) {
        this.fRevisionPainter.setRenderingMode(renderingMode);
    }

    public void showLineNumbers(boolean showNumbers) {
        if (this.fShowNumbers != showNumbers) {
            this.fShowNumbers = showNumbers;
            this.updateNumberOfDigits();
            this.computeIndentations();
            this.layout(true);
        }
    }

    public int getWidth() {
        int width = super.getWidth();
        return width > 0 ? width : 8;
    }

    public boolean isShowingLineNumbers() {
        return this.fShowNumbers;
    }

    public boolean isShowingRevisionInformation() {
        return this.fRevisionPainter.hasInformation();
    }

    public boolean isShowingChangeInformation() {
        return this.fDiffPainter.hasInformation();
    }

    public void showRevisionAuthor(boolean show) {
        this.fRevisionPainter.showRevisionAuthor(show);
        this.updateNumberOfDigits();
        this.computeIndentations();
        this.layout(true);
        this.postRedraw();
    }

    public void showRevisionId(boolean show) {
        this.fRevisionPainter.showRevisionId(show);
        this.updateNumberOfDigits();
        this.computeIndentations();
        this.layout(true);
        this.postRedraw();
    }

    public void addRevisionListener(IRevisionListener listener) {
        this.fRevisionPainter.addRevisionListener(listener);
    }

    public void removeRevisionListener(IRevisionListener listener) {
        this.fRevisionPainter.removeRevisionListener(listener);
    }

    protected void handleDispose() {
        this.fRevisionPainter.setParentRuler(null);
        this.fRevisionPainter.setModel(null);
        this.fDiffPainter.setParentRuler(null);
        this.fDiffPainter.setModel(null);
        super.handleDispose();
    }
}

