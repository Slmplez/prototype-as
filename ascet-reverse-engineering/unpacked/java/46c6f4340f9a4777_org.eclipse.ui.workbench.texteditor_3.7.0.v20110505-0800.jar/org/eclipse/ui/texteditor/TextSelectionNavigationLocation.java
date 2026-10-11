/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.text.BadLocationException
 *  org.eclipse.jface.text.BadPositionCategoryException
 *  org.eclipse.jface.text.DefaultPositionUpdater
 *  org.eclipse.jface.text.IDocument
 *  org.eclipse.jface.text.IPositionUpdater
 *  org.eclipse.jface.text.ITextSelection
 *  org.eclipse.jface.text.Position
 *  org.eclipse.jface.viewers.ISelection
 *  org.eclipse.jface.viewers.ISelectionProvider
 *  org.eclipse.ui.IEditorPart
 *  org.eclipse.ui.IMemento
 *  org.eclipse.ui.INavigationLocation
 *  org.eclipse.ui.NavigationLocation
 */
package org.eclipse.ui.texteditor;

import org.eclipse.jface.text.BadLocationException;
import org.eclipse.jface.text.BadPositionCategoryException;
import org.eclipse.jface.text.DefaultPositionUpdater;
import org.eclipse.jface.text.IDocument;
import org.eclipse.jface.text.IPositionUpdater;
import org.eclipse.jface.text.ITextSelection;
import org.eclipse.jface.text.Position;
import org.eclipse.jface.viewers.ISelection;
import org.eclipse.jface.viewers.ISelectionProvider;
import org.eclipse.ui.IEditorPart;
import org.eclipse.ui.IMemento;
import org.eclipse.ui.INavigationLocation;
import org.eclipse.ui.NavigationLocation;
import org.eclipse.ui.texteditor.IDocumentProvider;
import org.eclipse.ui.texteditor.ITextEditor;

public class TextSelectionNavigationLocation
extends NavigationLocation {
    private static final String TAG_X = "x";
    private static final String TAG_Y = "y";
    private static final String TAG_INFO = "info";
    private static final String INFO_DELETED = "deleted";
    private static final String INFO_NOT_DELETED = "not_deleted";
    private static final String CATEGORY;
    private static final IPositionUpdater fgPositionUpdater;
    private Position fPosition;
    private IDocument fDocument;
    private Position fSavedPosition;
    static /* synthetic */ Class class$0;

    static {
        StringBuffer stringBuffer = new StringBuffer("__navigation_");
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.ui.texteditor.TextSelectionNavigationLocation");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        CATEGORY = stringBuffer.append(clazz.hashCode()).toString();
        fgPositionUpdater = new DefaultPositionUpdater(CATEGORY);
    }

    public TextSelectionNavigationLocation(ITextEditor part, boolean initialize) {
        super((IEditorPart)part);
        if (initialize) {
            Position position;
            ISelection s = part.getSelectionProvider().getSelection();
            if (s == null || s.isEmpty()) {
                return;
            }
            ITextSelection selection = (ITextSelection)s;
            IDocument document = this.getDocument(part);
            if (this.installOnDocument(document, position = new Position(selection.getOffset(), selection.getLength()))) {
                this.fDocument = document;
                this.fPosition = position;
                if (!part.isDirty()) {
                    this.fSavedPosition = new Position(this.fPosition.offset, this.fPosition.length);
                }
            }
        }
    }

    private IDocument getDocument(ITextEditor part) {
        IDocumentProvider provider = part.getDocumentProvider();
        return provider.getDocument(part.getEditorInput());
    }

    private boolean installOnDocument(IDocument document, Position position) {
        if (document != null && position != null) {
            if (!document.containsPositionCategory(CATEGORY)) {
                document.addPositionCategory(CATEGORY);
                document.addPositionUpdater(fgPositionUpdater);
            }
            try {
                document.addPosition(CATEGORY, position);
                return true;
            }
            catch (BadLocationException badLocationException) {
            }
            catch (BadPositionCategoryException badPositionCategoryException) {}
        }
        return false;
    }

    private boolean uninstallFromDocument(IDocument document, Position position) {
        if (document != null && position != null) {
            try {
                document.removePosition(CATEGORY, position);
                Position[] category = document.getPositions(CATEGORY);
                if (category == null || category.length == 0) {
                    document.removePositionCategory(CATEGORY);
                    document.removePositionUpdater(fgPositionUpdater);
                }
                return true;
            }
            catch (BadPositionCategoryException badPositionCategoryException) {}
        }
        return false;
    }

    public String toString() {
        return "Selection<" + this.fPosition + ">";
    }

    private boolean equalsLocationOf(ITextEditor part) {
        String text;
        ITextSelection textSelection;
        if (this.fPosition == null) {
            return true;
        }
        if (this.fPosition.isDeleted) {
            return false;
        }
        ISelectionProvider provider = part.getSite().getSelectionProvider();
        ISelection selection = provider.getSelection();
        if (selection instanceof ITextSelection && (textSelection = (ITextSelection)selection).getOffset() == this.fPosition.offset && textSelection.getLength() == this.fPosition.length && (text = textSelection.getText()) != null) {
            try {
                return text.equals(this.fDocument.get(this.fPosition.offset, this.fPosition.length));
            }
            catch (BadLocationException badLocationException) {}
        }
        return false;
    }

    public void dispose() {
        this.uninstallFromDocument(this.fDocument, this.fPosition);
        this.fDocument = null;
        this.fPosition = null;
        this.fSavedPosition = null;
        super.dispose();
    }

    public void releaseState() {
        this.uninstallFromDocument(this.fDocument, this.fPosition);
        this.fDocument = null;
        this.fPosition = null;
        this.fSavedPosition = null;
        super.releaseState();
    }

    public boolean mergeInto(INavigationLocation location) {
        if (location == null) {
            return false;
        }
        if (((Object)((Object)this)).getClass() != location.getClass()) {
            return false;
        }
        if (this.fPosition == null || this.fPosition.isDeleted) {
            return true;
        }
        TextSelectionNavigationLocation s = (TextSelectionNavigationLocation)location;
        if (s.fPosition == null || s.fPosition.isDeleted) {
            this.uninstallFromDocument(this.fDocument, this.fPosition);
            s.fDocument = this.fDocument;
            s.fPosition = this.fPosition;
            s.fSavedPosition = this.fSavedPosition;
            return true;
        }
        if (s.fDocument == this.fDocument && (s.fPosition.overlapsWith(this.fPosition.offset, this.fPosition.length) || this.fPosition.offset + this.fPosition.length == s.fPosition.offset || s.fPosition.offset + s.fPosition.length == this.fPosition.offset)) {
            s.fPosition.offset = this.fPosition.offset;
            s.fPosition.length = this.fPosition.length;
            return true;
        }
        return false;
    }

    public void restoreLocation() {
        if (this.fPosition == null || this.fPosition.isDeleted) {
            return;
        }
        IEditorPart part = this.getEditorPart();
        if (part instanceof ITextEditor) {
            ITextEditor editor = (ITextEditor)this.getEditorPart();
            editor.selectAndReveal(this.fPosition.offset, this.fPosition.length);
        }
    }

    public void restoreState(IMemento memento) {
        IEditorPart part = this.getEditorPart();
        if (part instanceof ITextEditor) {
            this.fDocument = this.getDocument((ITextEditor)part);
            Integer offset = memento.getInteger(TAG_X);
            Integer length = memento.getInteger(TAG_Y);
            String deleted = memento.getString(TAG_INFO);
            if (offset != null && length != null) {
                Position p = new Position(offset.intValue(), length.intValue());
                if (deleted != null) {
                    boolean bl = p.isDeleted = INFO_DELETED.equals(deleted);
                }
                if (this.installOnDocument(this.fDocument, p)) {
                    this.fPosition = p;
                    if (!part.isDirty()) {
                        this.fSavedPosition = new Position(this.fPosition.offset, this.fPosition.length);
                    }
                }
            }
        }
    }

    public void saveState(IMemento memento) {
        if (this.fSavedPosition != null) {
            memento.putInteger(TAG_X, this.fSavedPosition.offset);
            memento.putInteger(TAG_Y, this.fSavedPosition.length);
            memento.putString(TAG_INFO, this.fSavedPosition.isDeleted ? INFO_DELETED : INFO_NOT_DELETED);
        }
    }

    public void partSaved(IEditorPart part) {
        this.fSavedPosition = this.fPosition == null || this.fPosition.isDeleted() ? null : new Position(this.fPosition.offset, this.fPosition.length);
    }

    public void update() {
        IEditorPart part = this.getEditorPart();
        if (part instanceof ITextEditor) {
            ITextEditor textEditor = (ITextEditor)this.getEditorPart();
            if (this.equalsLocationOf(textEditor)) {
                return;
            }
            ISelection s = textEditor.getSelectionProvider().getSelection();
            if (s == null || s.isEmpty()) {
                return;
            }
            ITextSelection selection = (ITextSelection)s;
            if (selection.getOffset() == 0 && selection.getLength() == 0) {
                return;
            }
            this.fPosition.offset = selection.getOffset();
            this.fPosition.length = selection.getLength();
            this.fPosition.isDeleted = false;
            if (!part.isDirty()) {
                this.fSavedPosition = new Position(this.fPosition.offset, this.fPosition.length);
            }
        }
    }
}

