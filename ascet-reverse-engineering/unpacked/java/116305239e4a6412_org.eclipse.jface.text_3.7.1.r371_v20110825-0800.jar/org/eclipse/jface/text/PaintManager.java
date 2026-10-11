/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.text.BadLocationException
 *  org.eclipse.jface.text.BadPositionCategoryException
 *  org.eclipse.jface.text.DefaultPositionUpdater
 *  org.eclipse.jface.text.IDocument
 *  org.eclipse.jface.text.IPositionUpdater
 *  org.eclipse.jface.text.Position
 *  org.eclipse.jface.viewers.ISelectionChangedListener
 *  org.eclipse.jface.viewers.ISelectionProvider
 *  org.eclipse.jface.viewers.SelectionChangedEvent
 *  org.eclipse.swt.custom.StyledText
 *  org.eclipse.swt.events.KeyEvent
 *  org.eclipse.swt.events.KeyListener
 *  org.eclipse.swt.events.MouseEvent
 *  org.eclipse.swt.events.MouseListener
 */
package org.eclipse.jface.text;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.eclipse.jface.text.BadLocationException;
import org.eclipse.jface.text.BadPositionCategoryException;
import org.eclipse.jface.text.DefaultPositionUpdater;
import org.eclipse.jface.text.IDocument;
import org.eclipse.jface.text.IPaintPositionManager;
import org.eclipse.jface.text.IPainter;
import org.eclipse.jface.text.IPositionUpdater;
import org.eclipse.jface.text.ITextInputListener;
import org.eclipse.jface.text.ITextListener;
import org.eclipse.jface.text.ITextViewer;
import org.eclipse.jface.text.Position;
import org.eclipse.jface.text.TextEvent;
import org.eclipse.jface.viewers.ISelectionChangedListener;
import org.eclipse.jface.viewers.ISelectionProvider;
import org.eclipse.jface.viewers.SelectionChangedEvent;
import org.eclipse.swt.custom.StyledText;
import org.eclipse.swt.events.KeyEvent;
import org.eclipse.swt.events.KeyListener;
import org.eclipse.swt.events.MouseEvent;
import org.eclipse.swt.events.MouseListener;

public final class PaintManager
implements KeyListener,
MouseListener,
ISelectionChangedListener,
ITextListener,
ITextInputListener {
    private List fPainters = new ArrayList(2);
    private PositionManager fManager;
    private ITextViewer fTextViewer;

    public PaintManager(ITextViewer textViewer) {
        this.fTextViewer = textViewer;
    }

    public void addPainter(IPainter painter) {
        if (!this.fPainters.contains(painter)) {
            this.fPainters.add(painter);
            if (this.fPainters.size() == 1) {
                this.install();
            }
            painter.setPositionManager(this.fManager);
            painter.paint(8);
        }
    }

    public void removePainter(IPainter painter) {
        if (this.fPainters.remove(painter)) {
            painter.deactivate(true);
            painter.setPositionManager(null);
        }
        if (this.fPainters.size() == 0) {
            this.dispose();
        }
    }

    private void install() {
        this.fManager = new PositionManager();
        if (this.fTextViewer.getDocument() != null) {
            this.fManager.install(this.fTextViewer.getDocument());
        }
        this.fTextViewer.addTextInputListener(this);
        this.addListeners();
    }

    private void addListeners() {
        ISelectionProvider provider = this.fTextViewer.getSelectionProvider();
        provider.addSelectionChangedListener((ISelectionChangedListener)this);
        this.fTextViewer.addTextListener(this);
        StyledText text = this.fTextViewer.getTextWidget();
        text.addKeyListener((KeyListener)this);
        text.addMouseListener((MouseListener)this);
    }

    public void dispose() {
        if (this.fManager != null) {
            this.fManager.dispose();
            this.fManager = null;
        }
        Iterator e = this.fPainters.iterator();
        while (e.hasNext()) {
            ((IPainter)e.next()).dispose();
        }
        this.fPainters.clear();
        this.fTextViewer.removeTextInputListener(this);
        this.removeListeners();
    }

    private void removeListeners() {
        ISelectionProvider provider = this.fTextViewer.getSelectionProvider();
        if (provider != null) {
            provider.removeSelectionChangedListener((ISelectionChangedListener)this);
        }
        this.fTextViewer.removeTextListener(this);
        StyledText text = this.fTextViewer.getTextWidget();
        if (text != null && !text.isDisposed()) {
            text.removeKeyListener((KeyListener)this);
            text.removeMouseListener((MouseListener)this);
        }
    }

    private void paint(int reason) {
        Iterator e = this.fPainters.iterator();
        while (e.hasNext()) {
            ((IPainter)e.next()).paint(reason);
        }
    }

    public void keyPressed(KeyEvent e) {
        this.paint(2);
    }

    public void keyReleased(KeyEvent e) {
    }

    public void mouseDoubleClick(MouseEvent e) {
    }

    public void mouseDown(MouseEvent e) {
        this.paint(4);
    }

    public void mouseUp(MouseEvent e) {
    }

    public void selectionChanged(SelectionChangedEvent event) {
        this.paint(0);
    }

    public void textChanged(TextEvent event) {
        if (!event.getViewerRedrawState()) {
            return;
        }
        StyledText control = this.fTextViewer.getTextWidget();
        if (control != null) {
            control.getDisplay().asyncExec(new Runnable(){

                public void run() {
                    if (PaintManager.this.fTextViewer != null) {
                        PaintManager.this.paint(1);
                    }
                }
            });
        }
    }

    public void inputDocumentAboutToBeChanged(IDocument oldInput, IDocument newInput) {
        if (oldInput != null) {
            Iterator e = this.fPainters.iterator();
            while (e.hasNext()) {
                ((IPainter)e.next()).deactivate(false);
            }
            this.fManager.uninstall(oldInput);
            this.removeListeners();
        }
    }

    public void inputDocumentChanged(IDocument oldInput, IDocument newInput) {
        if (newInput != null) {
            this.fManager.install(newInput);
            this.paint(1);
            this.addListeners();
        }
    }

    static class PaintPositionUpdater
    extends DefaultPositionUpdater {
        protected PaintPositionUpdater(String category) {
            super(category);
        }

        protected void adaptToInsert() {
            int myStart = this.fPosition.offset;
            int myEnd = this.fPosition.offset + this.fPosition.length;
            myEnd = Math.max(myStart, myEnd);
            int yoursStart = this.fOffset;
            int yoursEnd = this.fOffset + this.fReplaceLength;
            yoursEnd = Math.max(yoursStart, yoursEnd);
            if (myEnd < yoursStart) {
                return;
            }
            if (myStart <= yoursStart) {
                this.fPosition.length += this.fReplaceLength;
            } else {
                this.fPosition.offset += this.fReplaceLength;
            }
        }
    }

    static class PositionManager
    implements IPaintPositionManager {
        private IDocument fDocument;
        private IPositionUpdater fPositionUpdater;
        private String fCategory = String.valueOf(this.getClass().getName()) + this.hashCode();

        public PositionManager() {
            this.fPositionUpdater = new PaintPositionUpdater(this.fCategory);
        }

        public void install(IDocument document) {
            this.fDocument = document;
            this.fDocument.addPositionCategory(this.fCategory);
            this.fDocument.addPositionUpdater(this.fPositionUpdater);
        }

        public void dispose() {
            this.uninstall(this.fDocument);
        }

        public void uninstall(IDocument document) {
            if (document == this.fDocument && document != null) {
                try {
                    this.fDocument.removePositionUpdater(this.fPositionUpdater);
                    this.fDocument.removePositionCategory(this.fCategory);
                }
                catch (BadPositionCategoryException badPositionCategoryException) {}
                this.fDocument = null;
            }
        }

        public void managePosition(Position position) {
            try {
                this.fDocument.addPosition(this.fCategory, position);
            }
            catch (BadPositionCategoryException badPositionCategoryException) {
            }
            catch (BadLocationException badLocationException) {}
        }

        public void unmanagePosition(Position position) {
            try {
                this.fDocument.removePosition(this.fCategory, position);
            }
            catch (BadPositionCategoryException badPositionCategoryException) {}
        }
    }
}

