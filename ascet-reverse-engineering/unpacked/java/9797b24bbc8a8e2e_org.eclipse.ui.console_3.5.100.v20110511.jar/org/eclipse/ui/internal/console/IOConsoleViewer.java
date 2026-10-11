/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.text.BadLocationException
 *  org.eclipse.jface.text.DocumentEvent
 *  org.eclipse.jface.text.IDocument
 *  org.eclipse.jface.text.IDocumentListener
 *  org.eclipse.swt.custom.StyledText
 *  org.eclipse.swt.events.VerifyEvent
 *  org.eclipse.swt.widgets.Composite
 */
package org.eclipse.ui.internal.console;

import org.eclipse.jface.text.BadLocationException;
import org.eclipse.jface.text.DocumentEvent;
import org.eclipse.jface.text.IDocument;
import org.eclipse.jface.text.IDocumentListener;
import org.eclipse.swt.custom.StyledText;
import org.eclipse.swt.events.VerifyEvent;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.ui.console.ConsolePlugin;
import org.eclipse.ui.console.IConsoleDocumentPartitioner;
import org.eclipse.ui.console.TextConsole;
import org.eclipse.ui.console.TextConsoleViewer;

public class IOConsoleViewer
extends TextConsoleViewer {
    private boolean fAutoScroll = true;
    private IDocumentListener fDocumentListener;

    public IOConsoleViewer(Composite parent, TextConsole console) {
        super(parent, console);
    }

    public boolean isAutoScroll() {
        return this.fAutoScroll;
    }

    public void setAutoScroll(boolean scroll) {
        this.fAutoScroll = scroll;
    }

    protected void handleVerifyEvent(VerifyEvent e) {
        block11: {
            IDocument doc = this.getDocument();
            String[] legalLineDelimiters = doc.getLegalLineDelimiters();
            String eventString = e.text;
            try {
                int length;
                IConsoleDocumentPartitioner partitioner = (IConsoleDocumentPartitioner)doc.getDocumentPartitioner();
                if (!partitioner.isReadOnly(e.start)) {
                    boolean isCarriageReturn = false;
                    int i = 0;
                    while (i < legalLineDelimiters.length) {
                        if (e.text.equals(legalLineDelimiters[i])) {
                            isCarriageReturn = true;
                            break;
                        }
                        ++i;
                    }
                    if (!isCarriageReturn) {
                        super.handleVerifyEvent(e);
                        return;
                    }
                }
                if (e.start == (length = doc.getLength())) {
                    super.handleVerifyEvent(e);
                    break block11;
                }
                try {
                    doc.replace(length, 0, eventString);
                }
                catch (BadLocationException badLocationException) {}
                e.doit = false;
            }
            finally {
                StyledText text = (StyledText)e.widget;
                text.setCaretOffset(text.getCharCount());
            }
        }
    }

    public void setReadOnly() {
        ConsolePlugin.getStandardDisplay().asyncExec(new Runnable(){

            public void run() {
                StyledText text = IOConsoleViewer.this.getTextWidget();
                if (text != null && !text.isDisposed()) {
                    text.setEditable(false);
                }
            }
        });
    }

    public boolean isReadOnly() {
        return !this.getTextWidget().getEditable();
    }

    public void setDocument(IDocument document) {
        IDocument oldDocument = this.getDocument();
        super.setDocument(document);
        if (oldDocument != null) {
            oldDocument.removeDocumentListener(this.getDocumentListener());
        }
        if (document != null) {
            document.addDocumentListener(this.getDocumentListener());
        }
    }

    private IDocumentListener getDocumentListener() {
        if (this.fDocumentListener == null) {
            this.fDocumentListener = new IDocumentListener(){

                public void documentAboutToBeChanged(DocumentEvent event) {
                }

                public void documentChanged(DocumentEvent event) {
                    if (IOConsoleViewer.this.fAutoScroll) {
                        IOConsoleViewer.this.revealEndOfDocument();
                    }
                }
            };
        }
        return this.fDocumentListener;
    }
}

