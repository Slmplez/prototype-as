/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.jface.text.BadLocationException
 *  org.eclipse.jface.text.IDocument
 *  org.eclipse.jface.text.Position
 *  org.eclipse.jface.text.link.LinkedModeModel
 *  org.eclipse.jface.text.link.LinkedPosition
 *  org.eclipse.jface.text.link.LinkedPositionGroup
 *  org.eclipse.jface.text.source.Annotation
 *  org.eclipse.jface.text.source.AnnotationModel
 */
package org.eclipse.jface.text.link;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.text.BadLocationException;
import org.eclipse.jface.text.IDocument;
import org.eclipse.jface.text.Position;
import org.eclipse.jface.text.link.LinkedModeModel;
import org.eclipse.jface.text.link.LinkedPosition;
import org.eclipse.jface.text.link.LinkedPositionGroup;
import org.eclipse.jface.text.source.Annotation;
import org.eclipse.jface.text.source.AnnotationModel;

final class LinkedPositionAnnotations
extends AnnotationModel {
    private static final String TARGET_ANNOTATION_TYPE = "org.eclipse.ui.internal.workbench.texteditor.link.target";
    private static final String SLAVE_ANNOTATION_TYPE = "org.eclipse.ui.internal.workbench.texteditor.link.slave";
    private static final String FOCUS_ANNOTATION_TYPE = "org.eclipse.ui.internal.workbench.texteditor.link.master";
    private static final String EXIT_ANNOTATION_TYPE = "org.eclipse.ui.internal.workbench.texteditor.link.exit";
    private boolean fMarkTargets = true;
    private boolean fMarkSlaves = true;
    private boolean fMarkFocus = true;
    private boolean fMarkExitTarget = true;
    private Annotation fFocusAnnotation = null;
    private Annotation fExitAnnotation = null;
    private final Map fGroupAnnotations = new HashMap();
    private final Map fTargetAnnotations = new HashMap();
    private Position[] fTargets = new Position[0];
    private LinkedPosition fExitPosition = null;

    LinkedPositionAnnotations() {
    }

    private void setFocusPosition(Position position) throws BadLocationException {
        if (this.fMarkFocus && this.getPosition(this.fFocusAnnotation) != position) {
            this.removeAnnotation(this.fFocusAnnotation, false);
            if (position != null) {
                this.fFocusAnnotation = new Annotation(FOCUS_ANNOTATION_TYPE, false, "");
                this.addAnnotation(this.fFocusAnnotation, position, false);
            } else {
                this.fFocusAnnotation = null;
            }
        }
    }

    private void setExitPosition(Position position) throws BadLocationException {
        if (this.fMarkExitTarget && this.getPosition(this.fExitAnnotation) != position) {
            this.removeAnnotation(this.fExitAnnotation, false);
            if (position != null) {
                this.fExitAnnotation = new Annotation(EXIT_ANNOTATION_TYPE, false, "");
                this.addAnnotation(this.fExitAnnotation, position, false);
            } else {
                this.fExitAnnotation = null;
            }
        }
    }

    private void setGroupPositions(List positions) throws BadLocationException {
        if (!this.fMarkSlaves) {
            return;
        }
        ArrayList toRemove = new ArrayList(this.fGroupAnnotations.values());
        HashMap<Annotation, Position> toAdd = new HashMap<Annotation, Position>();
        if (positions != null) {
            Iterator iter = positions.iterator();
            while (iter.hasNext()) {
                Position p = (Position)iter.next();
                if (this.fGroupAnnotations.containsKey(p)) {
                    toRemove.remove(this.fGroupAnnotations.get(p));
                    continue;
                }
                Annotation a = new Annotation(SLAVE_ANNOTATION_TYPE, false, "");
                toAdd.put(a, p);
                this.fGroupAnnotations.put(p, a);
            }
        }
        this.fGroupAnnotations.values().removeAll(toRemove);
        this.replaceAnnotations(toRemove.toArray(new Annotation[0]), toAdd, false);
    }

    private void setTargetPositions(List positions) throws BadLocationException {
        if (!this.fMarkTargets) {
            return;
        }
        ArrayList toRemove = new ArrayList(this.fTargetAnnotations.values());
        HashMap<Annotation, Position> toAdd = new HashMap<Annotation, Position>();
        if (positions != null) {
            Iterator iter = positions.iterator();
            while (iter.hasNext()) {
                Position p = (Position)iter.next();
                if (this.fTargetAnnotations.containsKey(p)) {
                    toRemove.remove(this.fTargetAnnotations.get(p));
                    continue;
                }
                Annotation a = new Annotation(TARGET_ANNOTATION_TYPE, false, "");
                toAdd.put(a, p);
                this.fTargetAnnotations.put(p, a);
            }
        }
        this.fTargetAnnotations.values().removeAll(toRemove);
        this.replaceAnnotations(toRemove.toArray(new Annotation[0]), toAdd, false);
    }

    public void switchToPosition(LinkedModeModel env, LinkedPosition position) {
        LinkedPosition exit;
        if (this.fDocument == null || position != null && this.getPosition(this.fFocusAnnotation) == position || position == null && this.fFocusAnnotation == null) {
            return;
        }
        LinkedPositionGroup linkedGroup = null;
        if (position != null) {
            linkedGroup = env.getGroupForPosition((Position)position);
        }
        ArrayList<Position> targets = new ArrayList<Position>();
        targets.addAll(Arrays.asList(this.fTargets));
        ArrayList<Object> group = linkedGroup != null ? new ArrayList<LinkedPosition>(Arrays.asList(linkedGroup.getPositions())) : new ArrayList();
        if (position == null || !this.fDocument.equals(position.getDocument())) {
            position = null;
        }
        if ((exit = this.fExitPosition) == null || !this.fDocument.equals(exit.getDocument())) {
            exit = null;
        }
        if (exit != null) {
            group.remove(exit);
            targets.remove(exit);
        }
        group.removeAll(targets);
        targets.remove(position);
        group.remove(position);
        this.prune(targets);
        this.prune(group);
        try {
            this.setFocusPosition((Position)position);
            this.setExitPosition((Position)exit);
            this.setGroupPositions(group);
            this.setTargetPositions(targets);
        }
        catch (BadLocationException badLocationException) {
            Assert.isTrue((boolean)false);
        }
        this.fireModelChanged();
    }

    private void prune(List list) {
        Iterator iter = list.iterator();
        while (iter.hasNext()) {
            LinkedPosition pos = (LinkedPosition)iter.next();
            if (pos.getDocument().equals(this.fDocument)) continue;
            iter.remove();
        }
    }

    public void setTargets(Position[] positions) {
        this.fTargets = positions;
    }

    public void setExitTarget(LinkedPosition position) {
        this.fExitPosition = position;
    }

    protected void addPosition(IDocument document, Position position) {
    }

    protected void removePosition(IDocument document, Position pos) {
    }

    public void fireModelChanged() {
        super.fireModelChanged();
    }

    public void markExitTarget(boolean markExitTargets) {
        this.fMarkExitTarget = markExitTargets;
    }

    public void markFocus(boolean markFocus) {
        this.fMarkFocus = markFocus;
    }

    public void markSlaves(boolean markSlaves) {
        this.fMarkSlaves = markSlaves;
    }

    public void markTargets(boolean markTargets) {
        this.fMarkTargets = markTargets;
    }
}

