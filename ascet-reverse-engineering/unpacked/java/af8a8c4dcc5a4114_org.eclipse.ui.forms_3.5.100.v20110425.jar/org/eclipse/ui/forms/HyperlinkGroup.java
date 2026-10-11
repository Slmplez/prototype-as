/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.graphics.Color
 *  org.eclipse.swt.widgets.Display
 *  org.eclipse.swt.widgets.Event
 *  org.eclipse.swt.widgets.Listener
 */
package org.eclipse.ui.forms;

import java.util.ArrayList;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Listener;
import org.eclipse.ui.forms.HyperlinkSettings;
import org.eclipse.ui.forms.events.HyperlinkEvent;
import org.eclipse.ui.forms.events.IHyperlinkListener;
import org.eclipse.ui.forms.widgets.Hyperlink;

public final class HyperlinkGroup
extends HyperlinkSettings {
    private ArrayList links = new ArrayList();
    private Hyperlink lastActivated;
    private Hyperlink lastEntered;
    private GroupListener listener = new GroupListener();
    private boolean isActiveBackgroundSet;
    private boolean isActiveForegroundSet;
    private boolean isBackgroundSet;
    private boolean isForegroundSet;

    public HyperlinkGroup(Display display) {
        super(display);
    }

    public Hyperlink getLastActivated() {
        return this.lastActivated;
    }

    public void add(Hyperlink link) {
        if (this.isBackgroundSet) {
            link.setBackground(this.getBackground());
        }
        if (this.isForegroundSet) {
            link.setForeground(this.getForeground());
        }
        if (this.getHyperlinkUnderlineMode() == 3) {
            link.setUnderlined(true);
        }
        this.hook(link);
    }

    public void setActiveBackground(Color newActiveBackground) {
        super.setActiveBackground(newActiveBackground);
        this.isActiveBackgroundSet = true;
    }

    public void setActiveForeground(Color newActiveForeground) {
        super.setActiveForeground(newActiveForeground);
        this.isActiveForegroundSet = true;
    }

    public void setBackground(Color bg) {
        super.setBackground(bg);
        this.isBackgroundSet = true;
        if (this.links != null) {
            int i = 0;
            while (i < this.links.size()) {
                Hyperlink label = (Hyperlink)((Object)this.links.get(i));
                label.setBackground(bg);
                ++i;
            }
        }
    }

    public void setForeground(Color fg) {
        super.setForeground(fg);
        this.isForegroundSet = true;
        if (this.links != null) {
            int i = 0;
            while (i < this.links.size()) {
                Hyperlink label = (Hyperlink)((Object)this.links.get(i));
                label.setForeground(fg);
                ++i;
            }
        }
    }

    public void setHyperlinkUnderlineMode(int mode) {
        super.setHyperlinkUnderlineMode(mode);
        if (this.links != null) {
            int i = 0;
            while (i < this.links.size()) {
                Hyperlink label = (Hyperlink)((Object)this.links.get(i));
                label.setUnderlined(mode == 3);
                ++i;
            }
        }
    }

    private void hook(Hyperlink link) {
        link.addListener(3, this.listener);
        link.addHyperlinkListener(this.listener);
        link.addListener(12, this.listener);
        link.addListener(6, this.listener);
        link.addListener(7, this.listener);
        this.links.add(link);
    }

    private void unhook(Hyperlink link) {
        link.removeListener(3, this.listener);
        link.removeHyperlinkListener(this.listener);
        link.removeListener(6, this.listener);
        link.removeListener(7, this.listener);
        if (this.lastActivated == link) {
            this.lastActivated = null;
        }
        if (this.lastEntered == link) {
            this.lastEntered = null;
        }
        this.links.remove((Object)link);
    }

    private void onMouseDown(Event e) {
        if (e.button == 1) {
            return;
        }
        this.lastActivated = (Hyperlink)e.widget;
    }

    private class GroupListener
    implements Listener,
    IHyperlinkListener {
        private Color previousBackground;
        private Color previousForeground;

        private GroupListener() {
        }

        public void handleEvent(Event e) {
            switch (e.type) {
                case 6: {
                    this.onMouseEnter(e);
                    break;
                }
                case 7: {
                    this.onMouseExit(e);
                    break;
                }
                case 3: {
                    HyperlinkGroup.this.onMouseDown(e);
                    break;
                }
                case 12: {
                    HyperlinkGroup.this.unhook((Hyperlink)e.widget);
                }
            }
        }

        private void onMouseEnter(Event e) {
            Hyperlink link = (Hyperlink)e.widget;
            this.previousBackground = link.getBackground();
            this.previousForeground = link.getForeground();
            if (HyperlinkGroup.this.isActiveBackgroundSet) {
                link.setBackground(HyperlinkGroup.this.getActiveBackground());
            }
            if (HyperlinkGroup.this.isActiveForegroundSet) {
                link.setForeground(HyperlinkGroup.this.getActiveForeground());
            }
            if (HyperlinkGroup.this.getHyperlinkUnderlineMode() == 2) {
                link.setUnderlined(true);
            }
            link.setCursor(HyperlinkGroup.this.getHyperlinkCursor());
        }

        private void onMouseExit(Event e) {
            Hyperlink link = (Hyperlink)e.widget;
            if (HyperlinkGroup.this.isActiveBackgroundSet) {
                link.setBackground(this.previousBackground);
            }
            if (HyperlinkGroup.this.isActiveForegroundSet) {
                link.setForeground(this.previousForeground);
            }
            if (HyperlinkGroup.this.getHyperlinkUnderlineMode() == 2) {
                link.setUnderlined(false);
            }
        }

        public void linkActivated(HyperlinkEvent e) {
        }

        public void linkEntered(HyperlinkEvent e) {
            Hyperlink link = (Hyperlink)e.widget;
            if (HyperlinkGroup.this.lastEntered != null) {
                this.linkExited(HyperlinkGroup.this.lastEntered);
            }
            HyperlinkGroup.this.lastEntered = link;
        }

        public void linkExited(HyperlinkEvent e) {
            this.linkExited((Hyperlink)e.widget);
        }

        private void linkExited(Hyperlink link) {
            link.setCursor(null);
            if (HyperlinkGroup.this.lastEntered == link) {
                HyperlinkGroup.this.lastEntered = null;
            }
        }
    }
}

