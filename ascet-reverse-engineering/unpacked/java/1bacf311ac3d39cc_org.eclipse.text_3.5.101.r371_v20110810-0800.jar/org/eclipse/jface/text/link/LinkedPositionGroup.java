/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 */
package org.eclipse.jface.text.link;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.text.BadLocationException;
import org.eclipse.jface.text.DocumentEvent;
import org.eclipse.jface.text.IDocument;
import org.eclipse.jface.text.IRegion;
import org.eclipse.jface.text.Position;
import org.eclipse.jface.text.Region;
import org.eclipse.jface.text.link.LinkedModeModel;
import org.eclipse.jface.text.link.LinkedPosition;
import org.eclipse.text.edits.MalformedTreeException;
import org.eclipse.text.edits.MultiTextEdit;
import org.eclipse.text.edits.ReplaceEdit;
import org.eclipse.text.edits.TextEdit;

public class LinkedPositionGroup {
    public static final int NO_STOP = -1;
    private final List fPositions = new LinkedList();
    private boolean fIsSealed = false;
    private boolean fHasCustomIteration = false;
    private LinkedPosition fLastPosition;
    private IRegion fLastRegion;

    public void addPosition(LinkedPosition position) throws BadLocationException {
        Assert.isNotNull((Object)position);
        if (this.fIsSealed) {
            throw new IllegalStateException("cannot add positions after the group is added to an model");
        }
        if (!this.fPositions.contains(position)) {
            this.enforceDisjoint(position);
            this.enforceEqualContent(position);
            this.fPositions.add(position);
            this.fHasCustomIteration |= position.getSequenceNumber() != -1;
        } else {
            return;
        }
    }

    private void enforceEqualContent(LinkedPosition position) throws BadLocationException {
        String positionContent;
        LinkedPosition groupPosition;
        String groupContent;
        if (this.fPositions.size() > 0 && !(groupContent = (groupPosition = (LinkedPosition)this.fPositions.get(0)).getContent()).equals(positionContent = position.getContent())) {
            throw new BadLocationException("First position: '" + groupContent + "' at " + groupPosition.getOffset() + ", this position: '" + positionContent + "' at " + position.getOffset());
        }
    }

    private void enforceDisjoint(LinkedPosition position) throws BadLocationException {
        Iterator it = this.fPositions.iterator();
        while (it.hasNext()) {
            LinkedPosition p = (LinkedPosition)it.next();
            if (!p.overlapsWith(position)) continue;
            throw new BadLocationException();
        }
    }

    void enforceDisjoint(LinkedPositionGroup group) throws BadLocationException {
        Assert.isNotNull((Object)group);
        Iterator it = group.fPositions.iterator();
        while (it.hasNext()) {
            LinkedPosition p = (LinkedPosition)it.next();
            this.enforceDisjoint(p);
        }
    }

    boolean isLegalEvent(DocumentEvent event) {
        this.fLastPosition = null;
        this.fLastRegion = null;
        Iterator it = this.fPositions.iterator();
        while (it.hasNext()) {
            LinkedPosition pos = (LinkedPosition)it.next();
            if (!this.overlapsOrTouches(pos, event)) continue;
            if (this.fLastPosition != null) {
                this.fLastPosition = null;
                this.fLastRegion = null;
                return false;
            }
            this.fLastPosition = pos;
            this.fLastRegion = new Region(pos.getOffset(), pos.getLength());
        }
        return true;
    }

    private boolean overlapsOrTouches(LinkedPosition position, DocumentEvent event) {
        return position.getDocument().equals(event.getDocument()) && position.getOffset() <= event.getOffset() + event.getLength() && position.getOffset() + position.getLength() >= event.getOffset();
    }

    Map handleEvent(DocumentEvent event) {
        if (this.fLastPosition != null) {
            int lastEnd;
            int eventEnd;
            HashMap<IDocument, Object> map = new HashMap<IDocument, Object>();
            int relativeOffset = event.getOffset() - this.fLastRegion.getOffset();
            if (relativeOffset < 0) {
                relativeOffset = 0;
            }
            int length = (eventEnd = event.getOffset() + event.getLength()) > (lastEnd = this.fLastRegion.getOffset() + this.fLastRegion.getLength()) ? lastEnd - relativeOffset - this.fLastRegion.getOffset() : eventEnd - relativeOffset - this.fLastRegion.getOffset();
            String text = event.getText();
            if (text == null) {
                text = "";
            }
            Iterator<Object> it = this.fPositions.iterator();
            while (it.hasNext()) {
                LinkedPosition p = (LinkedPosition)it.next();
                if (p == this.fLastPosition || p.isDeleted()) continue;
                ArrayList<ReplaceEdit> edits = (ArrayList<ReplaceEdit>)map.get(p.getDocument());
                if (edits == null) {
                    edits = new ArrayList<ReplaceEdit>();
                    map.put(p.getDocument(), edits);
                }
                edits.add(new ReplaceEdit(p.getOffset() + relativeOffset, length, text));
            }
            try {
                it = map.keySet().iterator();
                while (it.hasNext()) {
                    IDocument d = (IDocument)it.next();
                    MultiTextEdit edit = new MultiTextEdit(0, d.getLength());
                    edit.addChildren(((List)map.get(d)).toArray(new TextEdit[0]));
                    map.put(d, edit);
                }
                return map;
            }
            catch (MalformedTreeException malformedTreeException) {
                return null;
            }
        }
        return null;
    }

    void seal() {
        Assert.isTrue((!this.fIsSealed ? 1 : 0) != 0);
        this.fIsSealed = true;
        if (!this.fHasCustomIteration && this.fPositions.size() > 0) {
            ((LinkedPosition)this.fPositions.get(0)).setSequenceNumber(0);
        }
    }

    IDocument[] getDocuments() {
        IDocument[] docs = new IDocument[this.fPositions.size()];
        int i = 0;
        Iterator it = this.fPositions.iterator();
        while (it.hasNext()) {
            LinkedPosition pos = (LinkedPosition)it.next();
            docs[i] = pos.getDocument();
            ++i;
        }
        return docs;
    }

    void register(LinkedModeModel model) throws BadLocationException {
        Iterator it = this.fPositions.iterator();
        while (it.hasNext()) {
            LinkedPosition pos = (LinkedPosition)it.next();
            model.register(pos);
        }
    }

    LinkedPosition adopt(LinkedPositionGroup group) throws BadLocationException {
        LinkedPosition found = null;
        Iterator it = group.fPositions.iterator();
        while (it.hasNext()) {
            LinkedPosition pos = (LinkedPosition)it.next();
            LinkedPosition localFound = null;
            Iterator it2 = this.fPositions.iterator();
            while (it2.hasNext()) {
                LinkedPosition myPos = (LinkedPosition)it2.next();
                if (!myPos.includes(pos)) continue;
                if (found == null) {
                    found = myPos;
                } else if (found != myPos) {
                    throw new BadLocationException();
                }
                if (localFound != null) continue;
                localFound = myPos;
            }
            if (localFound == found) continue;
            throw new BadLocationException();
        }
        return found;
    }

    LinkedPosition getPosition(LinkedPosition toFind) {
        Iterator it = this.fPositions.iterator();
        while (it.hasNext()) {
            LinkedPosition p = (LinkedPosition)it.next();
            if (!p.includes(toFind)) continue;
            return p;
        }
        return null;
    }

    boolean contains(int offset) {
        Iterator it = this.fPositions.iterator();
        while (it.hasNext()) {
            LinkedPosition pos = (LinkedPosition)it.next();
            if (!pos.includes(offset)) continue;
            return true;
        }
        return false;
    }

    public boolean isEmpty() {
        return this.fPositions.size() == 0;
    }

    public boolean isEmtpy() {
        return this.isEmpty();
    }

    public LinkedPosition[] getPositions() {
        return this.fPositions.toArray(new LinkedPosition[0]);
    }

    boolean contains(Position position) {
        Iterator it = this.fPositions.iterator();
        while (it.hasNext()) {
            LinkedPosition p = (LinkedPosition)it.next();
            if (!position.equals(p)) continue;
            return true;
        }
        return false;
    }
}

