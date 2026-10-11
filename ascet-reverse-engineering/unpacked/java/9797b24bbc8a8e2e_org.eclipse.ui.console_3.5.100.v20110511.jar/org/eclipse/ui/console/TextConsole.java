/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.jobs.ISchedulingRule
 *  org.eclipse.jface.resource.ImageDescriptor
 *  org.eclipse.jface.resource.JFaceResources
 *  org.eclipse.jface.text.BadLocationException
 *  org.eclipse.jface.text.BadPositionCategoryException
 *  org.eclipse.jface.text.IDocument
 *  org.eclipse.jface.text.IRegion
 *  org.eclipse.jface.text.Position
 *  org.eclipse.jface.text.Region
 *  org.eclipse.swt.graphics.Color
 *  org.eclipse.swt.graphics.Font
 *  org.eclipse.ui.part.IPageBookViewPage
 */
package org.eclipse.ui.console;

import java.util.HashMap;
import org.eclipse.core.runtime.jobs.ISchedulingRule;
import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.jface.resource.JFaceResources;
import org.eclipse.jface.text.BadLocationException;
import org.eclipse.jface.text.BadPositionCategoryException;
import org.eclipse.jface.text.IDocument;
import org.eclipse.jface.text.IRegion;
import org.eclipse.jface.text.Position;
import org.eclipse.jface.text.Region;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.Font;
import org.eclipse.ui.console.AbstractConsole;
import org.eclipse.ui.console.ConsolePlugin;
import org.eclipse.ui.console.IConsoleConstants;
import org.eclipse.ui.console.IConsoleDocumentPartitioner;
import org.eclipse.ui.console.IConsoleManager;
import org.eclipse.ui.console.IConsoleView;
import org.eclipse.ui.console.IHyperlink;
import org.eclipse.ui.console.IPatternMatchListener;
import org.eclipse.ui.console.TextConsolePage;
import org.eclipse.ui.internal.console.ConsoleDocument;
import org.eclipse.ui.internal.console.ConsoleHyperlinkPosition;
import org.eclipse.ui.internal.console.ConsolePatternMatcher;
import org.eclipse.ui.part.IPageBookViewPage;

public abstract class TextConsole
extends AbstractConsole {
    private int fConsoleWidth;
    private int fTabWidth;
    private Font fFont;
    private Color fBackground;
    private ConsolePatternMatcher fPatternMatcher;
    private ConsoleDocument fDocument;
    private boolean fPartitionerFinished = false;
    private boolean fMatcherFinished = false;
    private boolean fCompleteFired = false;
    private HashMap fAttributes = new HashMap();
    private IConsoleManager fConsoleManager = ConsolePlugin.getDefault().getConsoleManager();

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    protected void dispose() {
        super.dispose();
        this.fFont = null;
        HashMap hashMap = this.fAttributes;
        synchronized (hashMap) {
            this.fAttributes.clear();
        }
    }

    public TextConsole(String name, String consoleType, ImageDescriptor imageDescriptor, boolean autoLifecycle) {
        super(name, consoleType, imageDescriptor, autoLifecycle);
        this.fDocument = new ConsoleDocument();
        this.fDocument.addPositionCategory(ConsoleHyperlinkPosition.HYPER_LINK_CATEGORY);
        this.fPatternMatcher = new ConsolePatternMatcher(this);
        this.fDocument.addDocumentListener(this.fPatternMatcher);
        this.fTabWidth = 8;
    }

    public IPageBookViewPage createPage(IConsoleView view) {
        return new TextConsolePage(this, view);
    }

    public IDocument getDocument() {
        return this.fDocument;
    }

    public int getConsoleWidth() {
        return this.fConsoleWidth;
    }

    public void setConsoleWidth(int width) {
        if (this.fConsoleWidth != width) {
            int old = this.fConsoleWidth;
            this.fConsoleWidth = width;
            this.firePropertyChange(this, IConsoleConstants.P_CONSOLE_WIDTH, new Integer(old), new Integer(this.fConsoleWidth));
        }
    }

    public void setTabWidth(int newTabWidth) {
        if (this.fTabWidth != newTabWidth) {
            final int oldTabWidth = this.fTabWidth;
            this.fTabWidth = newTabWidth;
            ConsolePlugin.getStandardDisplay().asyncExec(new Runnable(){

                public void run() {
                    TextConsole.this.firePropertyChange(TextConsole.this, IConsoleConstants.P_TAB_SIZE, new Integer(oldTabWidth), new Integer(TextConsole.this.fTabWidth));
                }
            });
        }
    }

    public int getTabWidth() {
        return this.fTabWidth;
    }

    public Font getFont() {
        if (this.fFont == null) {
            this.fFont = this.getDefaultFont();
        }
        return this.fFont;
    }

    private Font getDefaultFont() {
        return JFaceResources.getFont((String)"org.eclipse.jface.textfont");
    }

    public void setFont(Font newFont) {
        this.getFont();
        if (newFont == null) {
            newFont = this.getDefaultFont();
        }
        if (!this.fFont.equals((Object)newFont)) {
            Font old = this.fFont;
            this.fFont = newFont;
            this.firePropertyChange(this, IConsoleConstants.P_FONT, old, this.fFont);
        }
    }

    public void setBackgrond(Color background) {
        this.setBackground(background);
    }

    public void setBackground(Color background) {
        if (this.fBackground == null ? background == null : this.fBackground.equals((Object)background)) {
            return;
        }
        Color old = this.fBackground;
        this.fBackground = background;
        this.firePropertyChange(this, IConsoleConstants.P_BACKGROUND_COLOR, old, this.fBackground);
    }

    public Color getBackground() {
        return this.fBackground;
    }

    public void clearConsole() {
        IDocument document = this.getDocument();
        if (document != null) {
            document.set("");
        }
    }

    protected abstract IConsoleDocumentPartitioner getPartitioner();

    public IHyperlink[] getHyperlinks() {
        try {
            Position[] positions = this.getDocument().getPositions(ConsoleHyperlinkPosition.HYPER_LINK_CATEGORY);
            IHyperlink[] hyperlinks = new IHyperlink[positions.length];
            int i = 0;
            while (i < positions.length) {
                ConsoleHyperlinkPosition position = (ConsoleHyperlinkPosition)positions[i];
                hyperlinks[i] = position.getHyperLink();
                ++i;
            }
            return hyperlinks;
        }
        catch (BadPositionCategoryException badPositionCategoryException) {
            return new IHyperlink[0];
        }
    }

    public IHyperlink getHyperlink(int offset) {
        try {
            Position[] positions;
            Position position;
            IDocument document = this.getDocument();
            if (document != null && (position = this.findPosition(offset, positions = document.getPositions(ConsoleHyperlinkPosition.HYPER_LINK_CATEGORY))) instanceof ConsoleHyperlinkPosition) {
                return ((ConsoleHyperlinkPosition)position).getHyperLink();
            }
        }
        catch (BadPositionCategoryException badPositionCategoryException) {}
        return null;
    }

    private Position findPosition(int offset, Position[] positions) {
        if (positions.length == 0) {
            return null;
        }
        int left = 0;
        int right = positions.length - 1;
        int mid = 0;
        Position position = null;
        while (left < right) {
            mid = (left + right) / 2;
            position = positions[mid];
            if (offset < position.getOffset()) {
                if (left == mid) {
                    right = left;
                    continue;
                }
                right = mid - 1;
                continue;
            }
            if (offset > position.getOffset() + position.getLength() - 1) {
                if (right == mid) {
                    left = right;
                    continue;
                }
                left = mid + 1;
                continue;
            }
            left = right = mid;
        }
        position = positions[left];
        if (offset >= position.getOffset() && offset < position.getOffset() + position.getLength()) {
            return position;
        }
        return null;
    }

    public void addPatternMatchListener(IPatternMatchListener listener) {
        this.fPatternMatcher.addPatternMatchListener(listener);
    }

    public void removePatternMatchListener(IPatternMatchListener listener) {
        this.fPatternMatcher.removePatternMatchListener(listener);
    }

    public ISchedulingRule getSchedulingRule() {
        return new MatcherSchedulingRule();
    }

    public void partitionerFinished() {
        this.fPatternMatcher.forceFinalMatching();
        this.fPartitionerFinished = true;
        this.checkFinished();
    }

    public void matcherFinished() {
        this.fMatcherFinished = true;
        this.fDocument.removeDocumentListener(this.fPatternMatcher);
        this.checkFinished();
    }

    private synchronized void checkFinished() {
        if (!this.fCompleteFired && this.fPartitionerFinished && this.fMatcherFinished) {
            this.fCompleteFired = true;
            this.firePropertyChange(this, IConsoleConstants.P_CONSOLE_OUTPUT_COMPLETE, null, null);
        }
    }

    public void addHyperlink(IHyperlink hyperlink, int offset, int length) throws BadLocationException {
        IDocument document = this.getDocument();
        ConsoleHyperlinkPosition hyperlinkPosition = new ConsoleHyperlinkPosition(hyperlink, offset, length);
        try {
            document.addPosition(ConsoleHyperlinkPosition.HYPER_LINK_CATEGORY, (Position)hyperlinkPosition);
            this.fConsoleManager.refresh(this);
        }
        catch (BadPositionCategoryException e) {
            ConsolePlugin.log(e);
        }
    }

    public IRegion getRegion(IHyperlink link) {
        try {
            IDocument doc = this.getDocument();
            if (doc != null) {
                Position[] positions = doc.getPositions(ConsoleHyperlinkPosition.HYPER_LINK_CATEGORY);
                int i = 0;
                while (i < positions.length) {
                    ConsoleHyperlinkPosition position = (ConsoleHyperlinkPosition)positions[i];
                    if (position.getHyperLink().equals(link)) {
                        return new Region(position.getOffset(), position.getLength());
                    }
                    ++i;
                }
            }
        }
        catch (BadPositionCategoryException badPositionCategoryException) {}
        return null;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public Object getAttribute(String key) {
        HashMap hashMap = this.fAttributes;
        synchronized (hashMap) {
            return this.fAttributes.get(key);
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void setAttribute(String key, Object value) {
        HashMap hashMap = this.fAttributes;
        synchronized (hashMap) {
            this.fAttributes.put(key, value);
        }
    }

    private class MatcherSchedulingRule
    implements ISchedulingRule {
        private MatcherSchedulingRule() {
        }

        public boolean contains(ISchedulingRule rule) {
            return rule == this;
        }

        public boolean isConflicting(ISchedulingRule rule) {
            if (this.contains(rule)) {
                return true;
            }
            if (rule != this && rule instanceof MatcherSchedulingRule) {
                return ((MatcherSchedulingRule)rule).getConsole() == TextConsole.this;
            }
            return false;
        }

        public TextConsole getConsole() {
            return TextConsole.this;
        }
    }
}

