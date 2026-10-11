/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.jface.text.BadLocationException
 *  org.eclipse.jface.text.FindReplaceDocumentAdapter
 *  org.eclipse.jface.text.IDocument
 *  org.eclipse.jface.text.IRegion
 *  org.eclipse.ui.IEditorPart
 *  org.eclipse.ui.IEditorReference
 *  org.eclipse.ui.IWorkbenchWindow
 */
package org.eclipse.ui.internal.texteditor;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.jface.text.BadLocationException;
import org.eclipse.jface.text.FindReplaceDocumentAdapter;
import org.eclipse.jface.text.IDocument;
import org.eclipse.jface.text.IRegion;
import org.eclipse.ui.IEditorPart;
import org.eclipse.ui.IEditorReference;
import org.eclipse.ui.IWorkbenchWindow;
import org.eclipse.ui.internal.texteditor.TextEditorPlugin;
import org.eclipse.ui.texteditor.IDocumentProvider;
import org.eclipse.ui.texteditor.ITextEditor;

public final class HippieCompletionEngine {
    private static final String COMPLETION_WORD_REGEX = "[\\p{L}[\\p{Mn}[\\p{Pc}[\\p{Nd}[\\p{Nl}[\\p{Sc}]]]]]]+";
    private static final Pattern COMPLETION_WORD_PATTERN = Pattern.compile("[\\p{L}[\\p{Mn}[\\p{Pc}[\\p{Nd}[\\p{Nl}[\\p{Sc}]]]]]]+");
    private static final String NON_EMPTY_COMPLETION_BOUNDARY = "[\\s\\p{Z}[\\p{P}&&[\\P{Pc}]][\\p{S}&&[\\P{Sc}]]]+";
    private static final String COMPLETION_BOUNDARY = "(^|[\\s\\p{Z}[\\p{P}&&[\\P{Pc}]][\\p{S}&&[\\P{Sc}]]]+)";
    private static final boolean CASE_SENSITIVE = true;

    private String asRegPattern(CharSequence string) {
        StringBuffer out = new StringBuffer(string.length());
        boolean quoting = false;
        int i = 0;
        int length = string.length();
        while (i < length) {
            char ch = string.charAt(i);
            if (ch == '\\') {
                if (quoting) {
                    out.append("\\E");
                    quoting = false;
                }
                out.append("\\\\");
            } else {
                if (!quoting) {
                    out.append("\\Q");
                    quoting = true;
                }
                out.append(ch);
            }
            ++i;
        }
        if (quoting) {
            out.append("\\E");
        }
        return out.toString();
    }

    public List getCompletionsForward(IDocument document, CharSequence prefix, int firstPosition, boolean currentWordLast) throws BadLocationException {
        ArrayList res = new ArrayList();
        Iterator it = this.getForwardIterator(document, prefix, firstPosition, currentWordLast);
        while (it.hasNext()) {
            res.add(it.next());
        }
        return res;
    }

    public List getCompletionsBackwards(IDocument document, CharSequence prefix, int firstPosition) throws BadLocationException {
        ArrayList res = new ArrayList();
        Iterator it = this.getBackwardIterator(document, prefix, firstPosition);
        while (it.hasNext()) {
            res.add(it.next());
        }
        return res;
    }

    public String getPrefixString(IDocument doc, int pos) throws BadLocationException {
        Matcher m = COMPLETION_WORD_PATTERN.matcher("");
        int prevNonAlpha = pos;
        while (prevNonAlpha > 0) {
            m.reset(doc.get(prevNonAlpha - 1, pos - prevNonAlpha + 1));
            if (!m.matches()) break;
            --prevNonAlpha;
        }
        if (prevNonAlpha != pos) {
            return doc.get(prevNonAlpha, pos - prevNonAlpha);
        }
        return null;
    }

    public List makeUnique(List suggestions) {
        HashSet<String> seenAlready = new HashSet<String>();
        ArrayList<String> uniqueSuggestions = new ArrayList<String>();
        Iterator i = suggestions.iterator();
        while (i.hasNext()) {
            String suggestion = (String)i.next();
            if (seenAlready.contains(suggestion)) continue;
            seenAlready.add(suggestion);
            uniqueSuggestions.add(suggestion);
        }
        return uniqueSuggestions;
    }

    public static List computeDocuments(ITextEditor currentTextEditor) {
        ArrayList documentsForSearch = new ArrayList();
        if (currentTextEditor == null) {
            return documentsForSearch;
        }
        IDocumentProvider provider = currentTextEditor.getDocumentProvider();
        if (provider == null) {
            return documentsForSearch;
        }
        IDocument currentDocument = provider.getDocument(currentTextEditor.getEditorInput());
        if (currentDocument == null) {
            return documentsForSearch;
        }
        ArrayList<IDocument> computedDocuments = new ArrayList<IDocument>();
        IWorkbenchWindow window = currentTextEditor.getSite().getWorkbenchWindow();
        IEditorReference[] editorsArray = window.getActivePage().getEditorReferences();
        int i = 0;
        while (i < editorsArray.length) {
            IDocument doc;
            ITextEditor textEditor;
            IEditorPart realEditor = editorsArray[i].getEditor(false);
            if (realEditor instanceof ITextEditor && !realEditor.equals(currentTextEditor) && (provider = (textEditor = (ITextEditor)realEditor).getDocumentProvider()) != null && (doc = provider.getDocument(textEditor.getEditorInput())) != null) {
                computedDocuments.add(doc);
            }
            ++i;
        }
        computedDocuments.add(0, currentDocument);
        return computedDocuments;
    }

    public Iterator getForwardIterator(IDocument document, CharSequence prefix, int firstPosition, boolean currentWordLast) {
        return new HippieCompletionForwardIterator(document, prefix, firstPosition, currentWordLast);
    }

    public Iterator getBackwardIterator(IDocument document, CharSequence prefix, int firstPosition) {
        return new HippieCompletionBackwardIterator(document, prefix, firstPosition);
    }

    public Iterator getMultipleDocumentsIterator(IDocument document, List otherDocuments, CharSequence prefix, int firstPosition) {
        return new MultipleDocumentsIterator(document, otherDocuments, prefix, firstPosition);
    }

    private void log(BadLocationException e) {
        String msg = e.getLocalizedMessage();
        if (msg == null) {
            msg = "unable to access the document";
        }
        TextEditorPlugin.getDefault().getLog().log((IStatus)new Status(4, "org.eclipse.ui.workbench.texteditor", 0, msg, (Throwable)e));
    }

    private class HippieCompletionBackwardIterator
    extends HippieCompletionIterator {
        private int fLastSearchPos = -1;

        private HippieCompletionBackwardIterator(IDocument document, CharSequence prefix, int firstPosition) {
            super(document, prefix, firstPosition);
            this.calculateFirst();
        }

        protected void calculateNext() throws BadLocationException {
            IRegion word;
            if (this.fCurrentState == 0) {
                this.fCurrentState = 1;
                if (this.fFirstPosition <= 1) {
                    this.fNext = null;
                    this.fHasNext = false;
                    return;
                }
                this.fSearcher = new FindReplaceDocumentAdapter(this.fDocument);
                this.fSearchPattern = HippieCompletionEngine.COMPLETION_BOUNDARY + HippieCompletionEngine.this.asRegPattern(this.fPrefix);
                int length = this.fDocument.getLength();
                this.fNextPos = this.fFirstPosition;
                if (this.fNextPos >= length) {
                    this.fNextPos = length - 1;
                }
            }
            do {
                if (this.fNextPos <= 0) {
                    this.fNext = null;
                    this.fHasNext = false;
                    return;
                }
                Assert.isTrue((this.fLastSearchPos != this.fNextPos ? 1 : 0) != 0, (String)"Position did not change in loop (this would lead to recursion -- and should never happen).");
                this.fLastSearchPos = this.fNextPos;
                IRegion reg = this.fSearcher.find(this.fNextPos, this.fSearchPattern, false, true, false, true);
                if (reg == null) {
                    this.fNext = null;
                    this.fHasNext = false;
                    return;
                }
                int wordSearchPos = reg.getOffset() + reg.getLength() - this.fPrefix.length();
                word = this.fSearcher.find(wordSearchPos, HippieCompletionEngine.COMPLETION_WORD_REGEX, true, true, false, true);
                this.fNextPos = word.getOffset() - 1;
            } while (word.getOffset() + word.getLength() > this.fFirstPosition || word.getLength() <= this.fPrefix.length());
            String found = this.fDocument.get(word.getOffset(), word.getLength());
            this.fHasNext = true;
            this.fNext = found.substring(this.fPrefix.length());
        }
    }

    private class HippieCompletionForwardIterator
    extends HippieCompletionIterator {
        private boolean fCurrentWordLast;
        private String fCurrentWordCompletion = null;

        private HippieCompletionForwardIterator(IDocument document, CharSequence prefix, int firstPosition, boolean currentWordLast) {
            super(document, prefix, firstPosition);
            this.fCurrentWordLast = currentWordLast;
            this.calculateFirst();
        }

        protected void calculateNext() throws BadLocationException {
            if (this.fCurrentState == 0) {
                if (this.fFirstPosition == this.fDocument.getLength()) {
                    this.fHasNext = false;
                    return;
                }
                this.fSearcher = new FindReplaceDocumentAdapter(this.fDocument);
                if (this.fFirstPosition > 0) {
                    --this.fFirstPosition;
                    this.fSearchPattern = HippieCompletionEngine.NON_EMPTY_COMPLETION_BOUNDARY + HippieCompletionEngine.this.asRegPattern(this.fPrefix);
                } else {
                    this.fSearchPattern = HippieCompletionEngine.COMPLETION_BOUNDARY + HippieCompletionEngine.this.asRegPattern(this.fPrefix);
                }
                this.fNextPos = this.fFirstPosition;
                this.fCurrentState = 1;
            }
            if (this.fCurrentState == 1) {
                this.fHasNext = false;
                IRegion reg = this.fSearcher.find(this.fNextPos, this.fSearchPattern, true, true, false, true);
                while (reg != null) {
                    IRegion word = this.checkRegion(reg);
                    this.fNextPos = word.getOffset() + word.getLength();
                    if (this.fNextPos >= this.fDocument.getLength()) {
                        this.fCurrentState = 2;
                        if (!this.fHasNext) break;
                        return;
                    }
                    if (this.fHasNext) {
                        return;
                    }
                    reg = this.fSearcher.find(this.fNextPos, this.fSearchPattern, true, true, false, true);
                }
                this.fCurrentState = 2;
            }
            if (this.fCurrentState == 2) {
                this.fCurrentState = 3;
                if (this.fCurrentWordCompletion != null) {
                    this.fNext = this.fCurrentWordCompletion;
                    this.fHasNext = true;
                    return;
                }
            }
            this.fNext = null;
            this.fHasNext = false;
        }

        private IRegion checkRegion(IRegion reg) throws BadLocationException {
            int wordSearchPos = reg.getOffset() + reg.getLength() - this.fPrefix.length();
            IRegion word = this.fSearcher.find(wordSearchPos, HippieCompletionEngine.COMPLETION_WORD_REGEX, true, true, false, true);
            if (word.getLength() > this.fPrefix.length()) {
                String wholeWord = this.fDocument.get(word.getOffset(), word.getLength());
                String completion = wholeWord.substring(this.fPrefix.length());
                if (this.fCurrentWordLast && reg.getOffset() == this.fFirstPosition) {
                    if (this.fCurrentWordCompletion == null) {
                        this.fCurrentWordCompletion = completion;
                    }
                } else {
                    this.fNext = completion;
                    this.fHasNext = true;
                }
            }
            return word;
        }
    }

    private abstract class HippieCompletionIterator
    implements Iterator {
        protected IDocument fDocument;
        protected CharSequence fPrefix;
        protected int fFirstPosition;
        protected boolean fHasNext;
        protected String fNext;
        protected int fCurrentState = 0;
        protected FindReplaceDocumentAdapter fSearcher;
        protected String fSearchPattern;
        protected int fNextPos;

        public HippieCompletionIterator(IDocument document, CharSequence prefix, int firstPosition) {
            this.fDocument = document;
            this.fPrefix = prefix;
            this.fFirstPosition = firstPosition;
        }

        protected void calculateFirst() {
            try {
                this.calculateNext();
            }
            catch (BadLocationException e) {
                HippieCompletionEngine.this.log(e);
                this.fHasNext = false;
                this.fNext = null;
            }
        }

        public boolean hasNext() {
            return this.fHasNext;
        }

        public Object next() {
            if (!this.fHasNext) {
                throw new NoSuchElementException();
            }
            String ret = this.fNext;
            try {
                this.calculateNext();
            }
            catch (BadLocationException e) {
                HippieCompletionEngine.this.log(e);
                this.fHasNext = false;
                this.fNext = null;
            }
            return ret;
        }

        public void remove() {
            throw new UnsupportedOperationException();
        }

        protected abstract void calculateNext() throws BadLocationException;
    }

    private final class MultipleDocumentsIterator
    implements Iterator {
        private String fNext;
        private int fCurrLocation = -1;
        private final List fSuggestions;
        private int fCurrSuggestion = 0;
        private final CharSequence fPrefix;
        private final List fOtherDocuments;
        private final IDocument fOpenDocument;
        private final int fSelectionOffset;
        private boolean fAddedEmpty = false;
        private Iterator fCompletionsForwardIterator;
        private Iterator fCompletionsBackwardIterator;

        private MultipleDocumentsIterator(IDocument openDocument, List otherDocuments, CharSequence prefix, int selectionOffset) {
            this.fPrefix = prefix;
            this.fSuggestions = new ArrayList();
            this.fOtherDocuments = otherDocuments;
            this.fSelectionOffset = selectionOffset;
            this.fOpenDocument = openDocument;
            this.calculateNext();
        }

        /*
         * Unable to fully structure code
         */
        private void calculateNext() {
            if (this.fCurrLocation == -1) {
                this.fCompletionsBackwardIterator = HippieCompletionEngine.this.getBackwardIterator(this.fOpenDocument, this.fPrefix, this.fSelectionOffset);
                this.fCompletionsForwardIterator = HippieCompletionEngine.this.getForwardIterator(this.fOpenDocument, this.fPrefix, this.fSelectionOffset - this.fPrefix.length(), true);
                ++this.fCurrLocation;
            }
            if (!this.checkNext()) ** GOTO lbl11
            return;
lbl-1000:
            // 1 sources

            {
                this.fCompletionsForwardIterator = HippieCompletionEngine.this.getForwardIterator((IDocument)this.fOtherDocuments.get(this.fCurrLocation), this.fPrefix, 0, false);
                ++this.fCurrLocation;
                if (!this.checkNext()) continue;
                return;
lbl11:
                // 2 sources

                ** while (this.fCurrLocation < this.fOtherDocuments.size())
            }
lbl12:
            // 1 sources

            if (!this.fAddedEmpty) {
                this.fSuggestions.add("");
                this.fAddedEmpty = true;
            }
            this.checkNext();
        }

        private boolean checkNext() {
            if (this.fCompletionsBackwardIterator != null) {
                if (this.fCompletionsBackwardIterator.hasNext()) {
                    this.fSuggestions.add(this.fCompletionsBackwardIterator.next());
                } else {
                    this.fCompletionsBackwardIterator = null;
                }
            }
            if (this.fCompletionsBackwardIterator == null && this.fCompletionsForwardIterator != null && this.fCompletionsForwardIterator.hasNext()) {
                this.fSuggestions.add(this.fCompletionsForwardIterator.next());
            }
            if (this.fSuggestions.size() > this.fCurrSuggestion) {
                this.fNext = (String)this.fSuggestions.get(this.fCurrSuggestion);
                ++this.fCurrSuggestion;
                return true;
            }
            this.fNext = null;
            return false;
        }

        public boolean hasNext() {
            return this.fNext != null;
        }

        public Object next() {
            if (this.fNext == null) {
                throw new NoSuchElementException("No more elements to iterate");
            }
            String ret = this.fNext;
            this.calculateNext();
            return ret;
        }

        public void remove() {
            throw new UnsupportedOperationException("Not supported");
        }
    }
}

