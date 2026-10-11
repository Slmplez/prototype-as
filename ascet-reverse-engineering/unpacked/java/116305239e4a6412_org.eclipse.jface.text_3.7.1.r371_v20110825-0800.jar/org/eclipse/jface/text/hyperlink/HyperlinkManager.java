/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.jface.text.IRegion
 *  org.eclipse.jface.text.Region
 *  org.eclipse.swt.custom.StyledText
 *  org.eclipse.swt.events.FocusEvent
 *  org.eclipse.swt.events.FocusListener
 *  org.eclipse.swt.events.KeyEvent
 *  org.eclipse.swt.events.KeyListener
 *  org.eclipse.swt.events.MouseEvent
 *  org.eclipse.swt.events.MouseListener
 *  org.eclipse.swt.events.MouseMoveListener
 *  org.eclipse.swt.events.MouseTrackListener
 *  org.eclipse.swt.widgets.Event
 *  org.eclipse.swt.widgets.Listener
 */
package org.eclipse.jface.text.hyperlink;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.text.IRegion;
import org.eclipse.jface.text.ITextListener;
import org.eclipse.jface.text.ITextSelection;
import org.eclipse.jface.text.ITextViewer;
import org.eclipse.jface.text.JFaceTextUtil;
import org.eclipse.jface.text.Region;
import org.eclipse.jface.text.TextEvent;
import org.eclipse.jface.text.TextViewer;
import org.eclipse.jface.text.hyperlink.IHyperlink;
import org.eclipse.jface.text.hyperlink.IHyperlinkDetector;
import org.eclipse.jface.text.hyperlink.IHyperlinkDetectorExtension2;
import org.eclipse.jface.text.hyperlink.IHyperlinkPresenter;
import org.eclipse.jface.text.hyperlink.IHyperlinkPresenterExtension;
import org.eclipse.jface.text.hyperlink.IHyperlinkPresenterExtension2;
import org.eclipse.swt.custom.StyledText;
import org.eclipse.swt.events.FocusEvent;
import org.eclipse.swt.events.FocusListener;
import org.eclipse.swt.events.KeyEvent;
import org.eclipse.swt.events.KeyListener;
import org.eclipse.swt.events.MouseEvent;
import org.eclipse.swt.events.MouseListener;
import org.eclipse.swt.events.MouseMoveListener;
import org.eclipse.swt.events.MouseTrackListener;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Listener;

public class HyperlinkManager
implements ITextListener,
Listener,
KeyListener,
MouseListener,
MouseMoveListener,
FocusListener,
MouseTrackListener {
    public static final int OPEN_HYPERLINK = 23;
    public static final DETECTION_STRATEGY FIRST = new DETECTION_STRATEGY("first");
    public static final DETECTION_STRATEGY ALL = new DETECTION_STRATEGY("all");
    public static final DETECTION_STRATEGY LONGEST_REGION_ALL = new DETECTION_STRATEGY("all with same longest region");
    public static final DETECTION_STRATEGY LONGEST_REGION_FIRST = new DETECTION_STRATEGY("first with longest region");
    private ITextViewer fTextViewer;
    private boolean fActive;
    private int fHyperlinkStateMask;
    private int fActiveHyperlinkStateMask;
    private IHyperlink[] fActiveHyperlinks;
    private IHyperlinkDetector[] fHyperlinkDetectors;
    private IHyperlinkPresenter fHyperlinkPresenter;
    private final DETECTION_STRATEGY fDetectionStrategy;

    public HyperlinkManager(DETECTION_STRATEGY detectionStrategy) {
        Assert.isNotNull((Object)detectionStrategy);
        this.fDetectionStrategy = detectionStrategy;
    }

    public void install(ITextViewer textViewer, IHyperlinkPresenter hyperlinkPresenter, IHyperlinkDetector[] hyperlinkDetectors, int eventStateMask) {
        Assert.isNotNull((Object)textViewer);
        Assert.isNotNull((Object)hyperlinkPresenter);
        this.fTextViewer = textViewer;
        this.fHyperlinkPresenter = hyperlinkPresenter;
        Assert.isLegal((this.fHyperlinkPresenter.canShowMultipleHyperlinks() || this.fDetectionStrategy == FIRST || this.fDetectionStrategy == LONGEST_REGION_FIRST ? 1 : 0) != 0);
        this.setHyperlinkDetectors(hyperlinkDetectors);
        this.setHyperlinkStateMask(eventStateMask);
        StyledText text = this.fTextViewer.getTextWidget();
        if (text == null || text.isDisposed()) {
            return;
        }
        text.getDisplay().addFilter(2, (Listener)this);
        text.addKeyListener((KeyListener)this);
        text.addMouseListener((MouseListener)this);
        text.addMouseMoveListener((MouseMoveListener)this);
        text.addFocusListener((FocusListener)this);
        text.addMouseTrackListener((MouseTrackListener)this);
        this.fTextViewer.addTextListener(this);
        this.fHyperlinkPresenter.install(this.fTextViewer);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public void setHyperlinkDetectors(IHyperlinkDetector[] hyperlinkDetectors) {
        Assert.isTrue((hyperlinkDetectors != null && hyperlinkDetectors.length > 0 ? 1 : 0) != 0);
        if (this.fHyperlinkDetectors == null) {
            this.fHyperlinkDetectors = hyperlinkDetectors;
            return;
        }
        IHyperlinkDetector[] iHyperlinkDetectorArray = this.fHyperlinkDetectors;
        synchronized (this.fHyperlinkDetectors) {
            this.fHyperlinkDetectors = hyperlinkDetectors;
            // ** MonitorExit[var2_2] (shouldn't be in output)
            return;
        }
    }

    public void setHyperlinkStateMask(int eventStateMask) {
        this.fHyperlinkStateMask = eventStateMask;
    }

    public void uninstall() {
        this.deactivate();
        StyledText text = this.fTextViewer.getTextWidget();
        if (text != null && !text.isDisposed()) {
            text.removeKeyListener((KeyListener)this);
            text.getDisplay().removeFilter(2, (Listener)this);
            text.removeMouseListener((MouseListener)this);
            text.removeMouseMoveListener((MouseMoveListener)this);
            text.removeFocusListener((FocusListener)this);
            text.removeMouseTrackListener((MouseTrackListener)this);
        }
        this.fTextViewer.removeTextListener(this);
        this.fHyperlinkPresenter.uninstall();
        this.fHyperlinkPresenter = null;
        this.fTextViewer = null;
        this.fHyperlinkDetectors = null;
    }

    protected void deactivate() {
        this.fHyperlinkPresenter.hideHyperlinks();
        this.fActive = false;
    }

    protected IHyperlink[] findHyperlinks() {
        int offset = this.getCurrentTextOffset();
        if (offset == -1) {
            return null;
        }
        Region region = new Region(offset, 0);
        return this.findHyperlinks((IRegion)region);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    private IHyperlink[] findHyperlinks(IRegion region) {
        ArrayList<IHyperlink> allHyperlinks = new ArrayList<IHyperlink>(this.fHyperlinkDetectors.length * 2);
        IHyperlinkDetector[] iHyperlinkDetectorArray = this.fHyperlinkDetectors;
        synchronized (this.fHyperlinkDetectors) {
            int i = 0;
            int length = this.fHyperlinkDetectors.length;
            while (i < length) {
                int stateMask;
                IHyperlinkDetector detector = this.fHyperlinkDetectors[i];
                if (detector != null && !(!(detector instanceof IHyperlinkDetectorExtension2) ? this.fActiveHyperlinkStateMask != this.fHyperlinkStateMask : (stateMask = ((IHyperlinkDetectorExtension2)((Object)detector)).getStateMask()) != -1 && stateMask != this.fActiveHyperlinkStateMask || stateMask == -1 && this.fActiveHyperlinkStateMask != this.fHyperlinkStateMask)) {
                    boolean canShowMultipleHyperlinks = this.fHyperlinkPresenter.canShowMultipleHyperlinks();
                    IHyperlink[] hyperlinks = detector.detectHyperlinks(this.fTextViewer, region, canShowMultipleHyperlinks);
                    if (hyperlinks != null) {
                        Assert.isLegal((hyperlinks.length > 0 ? 1 : 0) != 0);
                        if (this.fDetectionStrategy == FIRST) {
                            if (hyperlinks.length == 1) {
                                // ** MonitorExit[var3_3] (shouldn't be in output)
                                return hyperlinks;
                            }
                            // ** MonitorExit[var3_3] (shouldn't be in output)
                            return new IHyperlink[]{hyperlinks[0]};
                        }
                        allHyperlinks.addAll(Arrays.asList(hyperlinks));
                    }
                }
                ++i;
            }
            // ** MonitorExit[var3_3] (shouldn't be in output)
            if (allHyperlinks.isEmpty()) {
                return null;
            }
            if (this.fDetectionStrategy != ALL) {
                int maxLength = this.computeLongestHyperlinkLength(allHyperlinks);
                Iterator iter = new ArrayList(allHyperlinks).iterator();
                while (iter.hasNext()) {
                    IHyperlink hyperlink = (IHyperlink)iter.next();
                    if (hyperlink.getHyperlinkRegion().getLength() >= maxLength) continue;
                    allHyperlinks.remove(hyperlink);
                }
            }
            if (this.fDetectionStrategy == LONGEST_REGION_FIRST) {
                return new IHyperlink[]{(IHyperlink)allHyperlinks.get(0)};
            }
            return allHyperlinks.toArray(new IHyperlink[allHyperlinks.size()]);
        }
    }

    protected int computeLongestHyperlinkLength(List hyperlinks) {
        Assert.isLegal((hyperlinks != null && !hyperlinks.isEmpty() ? 1 : 0) != 0);
        Iterator iter = hyperlinks.iterator();
        int length = Integer.MIN_VALUE;
        while (iter.hasNext()) {
            IRegion region = ((IHyperlink)iter.next()).getHyperlinkRegion();
            if (region.getLength() < length) continue;
            length = region.getLength();
        }
        return length;
    }

    protected int getCurrentTextOffset() {
        return JFaceTextUtil.getOffsetForCursorLocation(this.fTextViewer);
    }

    public void keyPressed(KeyEvent event) {
        if (this.fActive) {
            this.deactivate();
            return;
        }
        if (!this.isRegisteredStateMask(event.keyCode)) {
            this.deactivate();
            return;
        }
        this.fActive = true;
        this.fActiveHyperlinkStateMask = event.keyCode;
    }

    public void keyReleased(KeyEvent event) {
    }

    public void mouseDoubleClick(MouseEvent e) {
    }

    public void mouseDown(MouseEvent event) {
        if (!this.fActive) {
            return;
        }
        if (event.stateMask != this.fActiveHyperlinkStateMask) {
            this.deactivate();
            return;
        }
        if (event.button != 1) {
            this.deactivate();
            return;
        }
    }

    public void mouseUp(MouseEvent e) {
        if (!this.fActive) {
            this.fActiveHyperlinks = null;
            return;
        }
        if (e.button != 1) {
            this.fActiveHyperlinks = null;
        }
        this.deactivate();
        if (this.fActiveHyperlinks != null) {
            this.fActiveHyperlinks[0].open();
        }
    }

    public void mouseMove(MouseEvent event) {
        if (this.fHyperlinkPresenter instanceof IHyperlinkPresenterExtension && !((IHyperlinkPresenterExtension)((Object)this.fHyperlinkPresenter)).canHideHyperlinks()) {
            return;
        }
        if (!this.isRegisteredStateMask(event.stateMask)) {
            if (this.fActive) {
                this.deactivate();
            }
            return;
        }
        this.fActive = true;
        this.fActiveHyperlinkStateMask = event.stateMask;
        StyledText text = this.fTextViewer.getTextWidget();
        if (text == null || text.isDisposed()) {
            this.deactivate();
            return;
        }
        if ((event.stateMask & 0x80000) != 0 && text.getSelectionCount() != 0) {
            this.deactivate();
            return;
        }
        this.fActiveHyperlinks = this.findHyperlinks();
        this.showHyperlinks(false);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    private boolean isRegisteredStateMask(int stateMask) {
        if (stateMask == this.fHyperlinkStateMask) {
            return true;
        }
        IHyperlinkDetector[] iHyperlinkDetectorArray = this.fHyperlinkDetectors;
        synchronized (this.fHyperlinkDetectors) {
            int i = 0;
            while (true) {
                if (i >= this.fHyperlinkDetectors.length) {
                    // ** MonitorExit[var2_2] (shouldn't be in output)
                    return false;
                }
                if (this.fHyperlinkDetectors[i] instanceof IHyperlinkDetectorExtension2 && stateMask == ((IHyperlinkDetectorExtension2)((Object)this.fHyperlinkDetectors[i])).getStateMask()) {
                    // ** MonitorExit[var2_2] (shouldn't be in output)
                    return true;
                }
                ++i;
            }
        }
    }

    public void focusGained(FocusEvent e) {
    }

    public void focusLost(FocusEvent event) {
        this.deactivate();
    }

    public void handleEvent(Event event) {
        this.deactivate();
    }

    public void textChanged(TextEvent event) {
        if (event.getDocumentEvent() != null) {
            this.deactivate();
        }
    }

    public void mouseExit(MouseEvent e) {
        if (this.fHyperlinkPresenter instanceof IHyperlinkPresenterExtension && !((IHyperlinkPresenterExtension)((Object)this.fHyperlinkPresenter)).canHideHyperlinks()) {
            return;
        }
        this.deactivate();
    }

    public void mouseEnter(MouseEvent e) {
    }

    public void mouseHover(MouseEvent e) {
    }

    private boolean showHyperlinks(boolean takesFocusWhenVisible) {
        if (this.fActiveHyperlinks == null || this.fActiveHyperlinks.length == 0) {
            this.fHyperlinkPresenter.hideHyperlinks();
            return false;
        }
        if (this.fActiveHyperlinks.length == 1 && takesFocusWhenVisible) {
            this.fActiveHyperlinks[0].open();
        } else if (this.fHyperlinkPresenter instanceof IHyperlinkPresenterExtension2) {
            ((IHyperlinkPresenterExtension2)((Object)this.fHyperlinkPresenter)).showHyperlinks(this.fActiveHyperlinks, takesFocusWhenVisible);
        } else {
            this.fHyperlinkPresenter.showHyperlinks(this.fActiveHyperlinks);
        }
        return true;
    }

    public boolean openHyperlink() {
        this.fActiveHyperlinkStateMask = this.fHyperlinkStateMask;
        if (this.fHyperlinkPresenter instanceof IHyperlinkPresenterExtension && !((IHyperlinkPresenterExtension)((Object)this.fHyperlinkPresenter)).canHideHyperlinks()) {
            return false;
        }
        ITextSelection sel = (ITextSelection)((TextViewer)this.fTextViewer).getSelection();
        int offset = sel.getOffset();
        if (offset == -1) {
            return false;
        }
        Region region = new Region(offset, 0);
        this.fActiveHyperlinks = this.findHyperlinks((IRegion)region);
        return this.showHyperlinks(true);
    }

    public static final class DETECTION_STRATEGY {
        String fName;

        private DETECTION_STRATEGY(String name) {
            this.fName = name;
        }

        public String toString() {
            return this.fName;
        }
    }
}

