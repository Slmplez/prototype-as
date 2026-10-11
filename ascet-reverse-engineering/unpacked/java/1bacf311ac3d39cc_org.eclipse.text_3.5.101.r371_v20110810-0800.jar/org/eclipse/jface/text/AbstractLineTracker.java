/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jface.text;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.eclipse.jface.text.BadLocationException;
import org.eclipse.jface.text.DocumentRewriteSession;
import org.eclipse.jface.text.ILineTracker;
import org.eclipse.jface.text.ILineTrackerExtension;
import org.eclipse.jface.text.IRegion;
import org.eclipse.jface.text.ListLineTracker;
import org.eclipse.jface.text.TreeLineTracker;

public abstract class AbstractLineTracker
implements ILineTracker,
ILineTrackerExtension {
    private static final boolean DEBUG = false;
    private DocumentRewriteSession fActiveRewriteSession;
    private List fPendingRequests;
    private ILineTracker fDelegate = new ListLineTracker(){

        public String[] getLegalLineDelimiters() {
            return AbstractLineTracker.this.getLegalLineDelimiters();
        }

        protected DelimiterInfo nextDelimiterInfo(String text, int offset) {
            return AbstractLineTracker.this.nextDelimiterInfo(text, offset);
        }
    };
    private boolean fNeedsConversion = true;

    protected AbstractLineTracker() {
    }

    public int computeNumberOfLines(String text) {
        return this.fDelegate.computeNumberOfLines(text);
    }

    public String getLineDelimiter(int line) throws BadLocationException {
        this.checkRewriteSession();
        return this.fDelegate.getLineDelimiter(line);
    }

    public IRegion getLineInformation(int line) throws BadLocationException {
        this.checkRewriteSession();
        return this.fDelegate.getLineInformation(line);
    }

    public IRegion getLineInformationOfOffset(int offset) throws BadLocationException {
        this.checkRewriteSession();
        return this.fDelegate.getLineInformationOfOffset(offset);
    }

    public int getLineLength(int line) throws BadLocationException {
        this.checkRewriteSession();
        return this.fDelegate.getLineLength(line);
    }

    public int getLineNumberOfOffset(int offset) throws BadLocationException {
        this.checkRewriteSession();
        return this.fDelegate.getLineNumberOfOffset(offset);
    }

    public int getLineOffset(int line) throws BadLocationException {
        this.checkRewriteSession();
        return this.fDelegate.getLineOffset(line);
    }

    public int getNumberOfLines() {
        try {
            this.checkRewriteSession();
        }
        catch (BadLocationException badLocationException) {}
        return this.fDelegate.getNumberOfLines();
    }

    public int getNumberOfLines(int offset, int length) throws BadLocationException {
        this.checkRewriteSession();
        return this.fDelegate.getNumberOfLines(offset, length);
    }

    public void set(String text) {
        if (this.hasActiveRewriteSession()) {
            this.fPendingRequests.clear();
            this.fPendingRequests.add(new Request(text));
            return;
        }
        this.fDelegate.set(text);
    }

    public void replace(int offset, int length, String text) throws BadLocationException {
        if (this.hasActiveRewriteSession()) {
            this.fPendingRequests.add(new Request(offset, length, text));
            return;
        }
        this.checkImplementation();
        this.fDelegate.replace(offset, length, text);
    }

    private void checkImplementation() {
        if (this.fNeedsConversion) {
            this.fNeedsConversion = false;
            this.fDelegate = new TreeLineTracker((ListLineTracker)this.fDelegate){

                protected DelimiterInfo nextDelimiterInfo(String text, int offset) {
                    return AbstractLineTracker.this.nextDelimiterInfo(text, offset);
                }

                public String[] getLegalLineDelimiters() {
                    return AbstractLineTracker.this.getLegalLineDelimiters();
                }
            };
        }
    }

    protected abstract DelimiterInfo nextDelimiterInfo(String var1, int var2);

    public final void startRewriteSession(DocumentRewriteSession session) {
        if (this.fActiveRewriteSession != null) {
            throw new IllegalStateException();
        }
        this.fActiveRewriteSession = session;
        this.fPendingRequests = new ArrayList(20);
    }

    public final void stopRewriteSession(DocumentRewriteSession session, String text) {
        if (this.fActiveRewriteSession == session) {
            this.fActiveRewriteSession = null;
            this.fPendingRequests = null;
            this.set(text);
        }
    }

    protected final boolean hasActiveRewriteSession() {
        return this.fActiveRewriteSession != null;
    }

    protected final void flushRewriteSession() throws BadLocationException {
        Iterator e = this.fPendingRequests.iterator();
        this.fPendingRequests = null;
        this.fActiveRewriteSession = null;
        while (e.hasNext()) {
            Request request = (Request)e.next();
            if (request.isReplaceRequest()) {
                this.replace(request.offset, request.length, request.text);
                continue;
            }
            this.set(request.text);
        }
    }

    protected final void checkRewriteSession() throws BadLocationException {
        if (this.hasActiveRewriteSession()) {
            this.flushRewriteSession();
        }
    }

    protected static class DelimiterInfo {
        public int delimiterIndex;
        public int delimiterLength;
        public String delimiter;

        protected DelimiterInfo() {
        }
    }

    protected static class Request {
        public final int offset;
        public final int length;
        public final String text;

        public Request(int offset, int length, String text) {
            this.offset = offset;
            this.length = length;
            this.text = text;
        }

        public Request(String text) {
            this.offset = -1;
            this.length = -1;
            this.text = text;
        }

        public boolean isReplaceRequest() {
            return this.offset > -1 && this.length > -1;
        }
    }
}

