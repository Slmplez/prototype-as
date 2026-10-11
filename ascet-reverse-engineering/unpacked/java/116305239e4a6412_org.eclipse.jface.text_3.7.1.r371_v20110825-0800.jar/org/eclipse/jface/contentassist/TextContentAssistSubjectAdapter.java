/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.jface.text.BadLocationException
 *  org.eclipse.jface.text.Document
 *  org.eclipse.jface.text.IDocument
 *  org.eclipse.swt.events.ModifyEvent
 *  org.eclipse.swt.events.ModifyListener
 *  org.eclipse.swt.events.SelectionEvent
 *  org.eclipse.swt.events.SelectionListener
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Event
 *  org.eclipse.swt.widgets.Listener
 *  org.eclipse.swt.widgets.Text
 */
package org.eclipse.jface.contentassist;

import java.util.HashMap;
import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.contentassist.AbstractControlContentAssistSubjectAdapter;
import org.eclipse.jface.text.BadLocationException;
import org.eclipse.jface.text.Document;
import org.eclipse.jface.text.IDocument;
import org.eclipse.swt.events.ModifyEvent;
import org.eclipse.swt.events.ModifyListener;
import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.events.SelectionListener;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Listener;
import org.eclipse.swt.widgets.Text;

public class TextContentAssistSubjectAdapter
extends AbstractControlContentAssistSubjectAdapter {
    private Text fText;
    private HashMap fModifyListeners = new HashMap();

    public TextContentAssistSubjectAdapter(Text text) {
        Assert.isNotNull((Object)text);
        this.fText = text;
    }

    public Control getControl() {
        return this.fText;
    }

    public int getLineHeight() {
        return this.fText.getLineHeight();
    }

    public int getCaretOffset() {
        return this.fText.getCaretPosition();
    }

    public Point getLocationAtOffset(int offset) {
        Point caretLocation = this.fText.getCaretLocation();
        caretLocation.y += 2;
        return caretLocation;
    }

    public Point getWidgetSelectionRange() {
        return new Point(this.fText.getSelection().x, Math.abs(this.fText.getSelection().y - this.fText.getSelection().x));
    }

    public Point getSelectedRange() {
        return new Point(this.fText.getSelection().x, Math.abs(this.fText.getSelection().y - this.fText.getSelection().x));
    }

    public IDocument getDocument() {
        Object document = (IDocument)this.fText.getData("document");
        if (document == null) {
            document = new InternalDocument();
            this.fText.setData("document", document);
        }
        return document;
    }

    public void setSelectedRange(int i, int j) {
        this.fText.setSelection(new Point(i, i + j));
    }

    public void revealRange(int i, int j) {
        this.fText.setSelection(new Point(i, i + j));
    }

    public boolean addSelectionListener(final SelectionListener selectionListener) {
        this.fText.addSelectionListener(selectionListener);
        Listener listener = new Listener(){

            public void handleEvent(Event e) {
                selectionListener.widgetSelected(new SelectionEvent(e));
            }
        };
        this.fText.addListener(24, listener);
        this.fModifyListeners.put(selectionListener, listener);
        return true;
    }

    public void removeSelectionListener(SelectionListener selectionListener) {
        this.fText.removeSelectionListener(selectionListener);
        Object listener = this.fModifyListeners.get(selectionListener);
        if (listener instanceof Listener) {
            this.fText.removeListener(24, (Listener)listener);
        }
    }

    private class InternalDocument
    extends Document {
        private ModifyListener fModifyListener = new ModifyListener(this){
            final /* synthetic */ InternalDocument this$1;
            {
                this.this$1 = internalDocument;
            }

            public void modifyText(ModifyEvent e) {
                this.this$1.set(TextContentAssistSubjectAdapter.access$0(InternalDocument.access$1(this.this$1)).getText());
            }
        };

        private InternalDocument() {
            super(TextContentAssistSubjectAdapter.this.fText.getText());
            TextContentAssistSubjectAdapter.this.fText.addModifyListener(this.fModifyListener);
        }

        public void replace(int pos, int length, String text) throws BadLocationException {
            super.replace(pos, length, text);
            TextContentAssistSubjectAdapter.this.fText.removeModifyListener(this.fModifyListener);
            TextContentAssistSubjectAdapter.this.fText.setText(this.get());
            TextContentAssistSubjectAdapter.this.fText.addModifyListener(this.fModifyListener);
        }

        static /* synthetic */ TextContentAssistSubjectAdapter access$1(InternalDocument internalDocument) {
            return internalDocument.TextContentAssistSubjectAdapter.this;
        }
    }
}

