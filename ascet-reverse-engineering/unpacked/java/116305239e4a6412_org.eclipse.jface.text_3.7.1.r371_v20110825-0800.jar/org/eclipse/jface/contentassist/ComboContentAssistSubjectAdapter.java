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
 *  org.eclipse.swt.graphics.Drawable
 *  org.eclipse.swt.graphics.GC
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.widgets.Combo
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Event
 *  org.eclipse.swt.widgets.Listener
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
import org.eclipse.swt.graphics.Drawable;
import org.eclipse.swt.graphics.GC;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.widgets.Combo;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Listener;

public class ComboContentAssistSubjectAdapter
extends AbstractControlContentAssistSubjectAdapter {
    private Combo fCombo;
    private HashMap fModifyListeners;

    public ComboContentAssistSubjectAdapter(Combo combo) {
        Assert.isNotNull((Object)combo);
        this.fCombo = combo;
        this.fModifyListeners = new HashMap();
    }

    public Control getControl() {
        return this.fCombo;
    }

    public int getLineHeight() {
        return this.fCombo.getTextHeight();
    }

    public int getCaretOffset() {
        return this.fCombo.getSelection().y;
    }

    public Point getLocationAtOffset(int offset) {
        String comboString = this.fCombo.getText();
        GC gc = new GC((Drawable)this.fCombo);
        gc.setFont(this.fCombo.getFont());
        Point extent = gc.textExtent(comboString.substring(0, Math.min(offset, comboString.length())));
        int spaceWidth = gc.textExtent((String)" ").x;
        gc.dispose();
        int x = 2 * spaceWidth + this.fCombo.getClientArea().x + this.fCombo.getBorderWidth() + extent.x;
        return new Point(x, this.fCombo.getClientArea().y);
    }

    public Point getWidgetSelectionRange() {
        return new Point(this.fCombo.getSelection().x, Math.abs(this.fCombo.getSelection().y - this.fCombo.getSelection().x));
    }

    public Point getSelectedRange() {
        return new Point(this.fCombo.getSelection().x, Math.abs(this.fCombo.getSelection().y - this.fCombo.getSelection().x));
    }

    public IDocument getDocument() {
        Object document = (IDocument)this.fCombo.getData("document");
        if (document == null) {
            document = new InternalDocument();
            this.fCombo.setData("document", document);
        }
        return document;
    }

    public void setSelectedRange(int i, int j) {
        this.fCombo.setSelection(new Point(i, i + j));
    }

    public void revealRange(int i, int j) {
        this.fCombo.setSelection(new Point(i, i + j));
    }

    public boolean addSelectionListener(final SelectionListener selectionListener) {
        this.fCombo.addSelectionListener(selectionListener);
        Listener listener = new Listener(){

            public void handleEvent(Event e) {
                selectionListener.widgetSelected(new SelectionEvent(e));
            }
        };
        this.fCombo.addListener(24, listener);
        this.fModifyListeners.put(selectionListener, listener);
        return true;
    }

    public void removeSelectionListener(SelectionListener selectionListener) {
        this.fCombo.removeSelectionListener(selectionListener);
        Object listener = this.fModifyListeners.get(selectionListener);
        if (listener instanceof Listener) {
            this.fCombo.removeListener(24, (Listener)listener);
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
                this.this$1.set(ComboContentAssistSubjectAdapter.access$0(InternalDocument.access$1(this.this$1)).getText());
            }
        };

        private InternalDocument() {
            super(ComboContentAssistSubjectAdapter.this.fCombo.getText());
            ComboContentAssistSubjectAdapter.this.fCombo.addModifyListener(this.fModifyListener);
        }

        public void replace(int pos, int length, String text) throws BadLocationException {
            super.replace(pos, length, text);
            ComboContentAssistSubjectAdapter.this.fCombo.removeModifyListener(this.fModifyListener);
            ComboContentAssistSubjectAdapter.this.fCombo.setText(this.get());
            ComboContentAssistSubjectAdapter.this.fCombo.addModifyListener(this.fModifyListener);
        }

        static /* synthetic */ ComboContentAssistSubjectAdapter access$1(InternalDocument internalDocument) {
            return internalDocument.ComboContentAssistSubjectAdapter.this;
        }
    }
}

