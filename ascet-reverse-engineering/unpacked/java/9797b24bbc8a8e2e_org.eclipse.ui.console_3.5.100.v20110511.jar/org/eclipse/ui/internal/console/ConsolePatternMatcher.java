/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.core.runtime.jobs.Job
 *  org.eclipse.jface.text.BadLocationException
 *  org.eclipse.jface.text.DocumentEvent
 *  org.eclipse.jface.text.IDocument
 *  org.eclipse.jface.text.IDocumentListener
 */
package org.eclipse.ui.internal.console;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.jobs.Job;
import org.eclipse.jface.text.BadLocationException;
import org.eclipse.jface.text.DocumentEvent;
import org.eclipse.jface.text.IDocument;
import org.eclipse.jface.text.IDocumentListener;
import org.eclipse.ui.console.ConsolePlugin;
import org.eclipse.ui.console.IPatternMatchListener;
import org.eclipse.ui.console.PatternMatchEvent;
import org.eclipse.ui.console.TextConsole;

public class ConsolePatternMatcher
implements IDocumentListener {
    private MatchJob fMatchJob = new MatchJob();
    private ArrayList fPatterns = new ArrayList();
    private TextConsole fConsole;
    private boolean fFinalMatch;
    private boolean fScheduleFinal;

    public ConsolePatternMatcher(TextConsole console) {
        this.fConsole = console;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void addPatternMatchListener(IPatternMatchListener matchListener) {
        ArrayList arrayList = this.fPatterns;
        synchronized (arrayList) {
            Iterator iter = this.fPatterns.iterator();
            while (iter.hasNext()) {
                CompiledPatternMatchListener element = (CompiledPatternMatchListener)iter.next();
                if (element.listener != matchListener) continue;
                return;
            }
            if (matchListener == null || matchListener.getPattern() == null) {
                throw new IllegalArgumentException("Pattern cannot be null");
            }
            Pattern pattern = Pattern.compile(matchListener.getPattern(), matchListener.getCompilerFlags());
            String qualifier = matchListener.getLineQualifier();
            Pattern qPattern = null;
            if (qualifier != null) {
                qPattern = Pattern.compile(qualifier, matchListener.getCompilerFlags());
            }
            CompiledPatternMatchListener notifier = new CompiledPatternMatchListener(pattern, qPattern, matchListener);
            this.fPatterns.add(notifier);
            matchListener.connect(this.fConsole);
            this.fMatchJob.schedule();
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void removePatternMatchListener(IPatternMatchListener matchListener) {
        ArrayList arrayList = this.fPatterns;
        synchronized (arrayList) {
            Iterator iter = this.fPatterns.iterator();
            while (iter.hasNext()) {
                CompiledPatternMatchListener element = (CompiledPatternMatchListener)iter.next();
                if (element.listener != matchListener) continue;
                iter.remove();
                matchListener.disconnect();
            }
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void disconnect() {
        this.fMatchJob.cancel();
        ArrayList arrayList = this.fPatterns;
        synchronized (arrayList) {
            Iterator iterator = this.fPatterns.iterator();
            while (iterator.hasNext()) {
                CompiledPatternMatchListener notifier = (CompiledPatternMatchListener)iterator.next();
                notifier.dispose();
            }
            this.fPatterns.clear();
        }
    }

    public void documentAboutToBeChanged(DocumentEvent event) {
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void documentChanged(DocumentEvent event) {
        if (event.fLength > 0) {
            ArrayList arrayList = this.fPatterns;
            synchronized (arrayList) {
                if (event.fDocument.getLength() == 0) {
                    Iterator iter = this.fPatterns.iterator();
                    while (iter.hasNext()) {
                        CompiledPatternMatchListener notifier = (CompiledPatternMatchListener)iter.next();
                        notifier.end = 0;
                    }
                } else if (event.fOffset == 0) {
                    Iterator iter = this.fPatterns.iterator();
                    while (iter.hasNext()) {
                        CompiledPatternMatchListener notifier = (CompiledPatternMatchListener)iter.next();
                        int n = notifier.end = notifier.end > event.fLength ? notifier.end - event.fLength : 0;
                    }
                }
            }
        }
        this.fMatchJob.schedule();
    }

    public void forceFinalMatching() {
        this.fScheduleFinal = true;
        this.fMatchJob.schedule();
    }

    private class CompiledPatternMatchListener {
        Pattern pattern;
        Pattern qualifier;
        IPatternMatchListener listener;
        int end = 0;

        CompiledPatternMatchListener(Pattern pattern, Pattern qualifier, IPatternMatchListener matchListener) {
            this.pattern = pattern;
            this.listener = matchListener;
            this.qualifier = qualifier;
        }

        public void dispose() {
            this.listener.disconnect();
            this.pattern = null;
            this.qualifier = null;
            this.listener = null;
        }
    }

    private class MatchJob
    extends Job {
        MatchJob() {
            super("Match Job");
            this.setSystem(true);
        }

        /*
         * WARNING - Removed try catching itself - possible behaviour change.
         */
        protected IStatus run(IProgressMonitor monitor) {
            IDocument doc = ConsolePatternMatcher.this.fConsole.getDocument();
            String text = null;
            int prevBaseOffset = -1;
            if (doc != null && !monitor.isCanceled()) {
                int endOfSearch = doc.getLength();
                int indexOfLastChar = endOfSearch;
                if (indexOfLastChar > 0) {
                    --indexOfLastChar;
                }
                int lastLineToSearch = 0;
                int offsetOfLastLineToSearch = 0;
                try {
                    lastLineToSearch = doc.getLineOfOffset(indexOfLastChar);
                    offsetOfLastLineToSearch = doc.getLineOffset(lastLineToSearch);
                }
                catch (BadLocationException badLocationException) {
                    return Status.OK_STATUS;
                }
                Object[] patterns = null;
                ArrayList arrayList = ConsolePatternMatcher.this.fPatterns;
                synchronized (arrayList) {
                    patterns = ConsolePatternMatcher.this.fPatterns.toArray();
                }
                int i = 0;
                while (i < patterns.length) {
                    if (monitor.isCanceled()) break;
                    CompiledPatternMatchListener notifier = (CompiledPatternMatchListener)patterns[i];
                    int baseOffset = notifier.end;
                    int lengthToSearch = endOfSearch - baseOffset;
                    if (lengthToSearch > 0) {
                        try {
                            if (prevBaseOffset != baseOffset) {
                                text = doc.get(baseOffset, lengthToSearch);
                            }
                            Matcher reg = notifier.pattern.matcher(text);
                            Matcher quick = null;
                            if (notifier.qualifier != null) {
                                quick = notifier.qualifier.matcher(text);
                            }
                            int startOfNextSearch = 0;
                            int endOfLastMatch = -1;
                            int lineOfLastMatch = -1;
                            while (startOfNextSearch < lengthToSearch && !monitor.isCanceled()) {
                                if (quick != null) {
                                    int matchLine;
                                    startOfNextSearch = quick.find(startOfNextSearch) ? (lineOfLastMatch == (matchLine = doc.getLineOfOffset(baseOffset + quick.start())) ? endOfLastMatch : doc.getLineOffset(matchLine) - baseOffset) : lengthToSearch;
                                }
                                if (startOfNextSearch < 0) {
                                    startOfNextSearch = 0;
                                }
                                if (startOfNextSearch >= lengthToSearch) continue;
                                if (reg.find(startOfNextSearch)) {
                                    endOfLastMatch = reg.end();
                                    lineOfLastMatch = doc.getLineOfOffset(baseOffset + endOfLastMatch - 1);
                                    int regStart = reg.start();
                                    IPatternMatchListener listener = notifier.listener;
                                    if (listener != null && !monitor.isCanceled()) {
                                        listener.matchFound(new PatternMatchEvent(ConsolePatternMatcher.this.fConsole, baseOffset + regStart, endOfLastMatch - regStart));
                                    }
                                    startOfNextSearch = endOfLastMatch;
                                    continue;
                                }
                                startOfNextSearch = lengthToSearch;
                            }
                            notifier.end = lastLineToSearch == lineOfLastMatch ? baseOffset + endOfLastMatch : offsetOfLastLineToSearch;
                        }
                        catch (BadLocationException e) {
                            ConsolePlugin.log(e);
                        }
                    }
                    prevBaseOffset = baseOffset;
                    ++i;
                }
            }
            if (ConsolePatternMatcher.this.fFinalMatch) {
                ConsolePatternMatcher.this.disconnect();
                ConsolePatternMatcher.this.fConsole.matcherFinished();
            } else if (ConsolePatternMatcher.this.fScheduleFinal) {
                ConsolePatternMatcher.this.fFinalMatch = true;
                this.schedule();
            }
            return Status.OK_STATUS;
        }

        public boolean belongsTo(Object family) {
            return family == ConsolePatternMatcher.this.fConsole;
        }
    }
}

