/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.accessibility.AccessibleAdapter
 *  org.eclipse.swt.accessibility.AccessibleControlAdapter
 *  org.eclipse.swt.accessibility.AccessibleControlEvent
 *  org.eclipse.swt.accessibility.AccessibleControlListener
 *  org.eclipse.swt.accessibility.AccessibleEvent
 *  org.eclipse.swt.accessibility.AccessibleListener
 *  org.eclipse.swt.graphics.Color
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.graphics.Rectangle
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Event
 *  org.eclipse.swt.widgets.Listener
 */
package org.eclipse.ui.forms.widgets;

import org.eclipse.swt.accessibility.AccessibleAdapter;
import org.eclipse.swt.accessibility.AccessibleControlAdapter;
import org.eclipse.swt.accessibility.AccessibleControlEvent;
import org.eclipse.swt.accessibility.AccessibleControlListener;
import org.eclipse.swt.accessibility.AccessibleEvent;
import org.eclipse.swt.accessibility.AccessibleListener;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Listener;
import org.eclipse.ui.forms.events.HyperlinkAdapter;
import org.eclipse.ui.forms.events.HyperlinkEvent;
import org.eclipse.ui.forms.widgets.AbstractHyperlink;
import org.eclipse.ui.forms.widgets.ExpandableComposite;
import org.eclipse.ui.internal.forms.Messages;

public abstract class ToggleHyperlink
extends AbstractHyperlink {
    protected int innerWidth;
    protected int innerHeight;
    protected boolean hover;
    private boolean expanded;
    private Color decorationColor;
    private Color hoverColor;

    public ToggleHyperlink(Composite parent, int style) {
        super(parent, style);
        Listener listener = new Listener(){

            public void handleEvent(Event e) {
                switch (e.type) {
                    case 6: {
                        ToggleHyperlink.this.hover = true;
                        ToggleHyperlink.this.redraw();
                        break;
                    }
                    case 7: {
                        ToggleHyperlink.this.hover = false;
                        ToggleHyperlink.this.redraw();
                        break;
                    }
                    case 1: {
                        ToggleHyperlink.this.onKeyDown(e);
                    }
                }
            }
        };
        this.addListener(6, listener);
        this.addListener(7, listener);
        this.addListener(1, listener);
        this.addHyperlinkListener(new HyperlinkAdapter(){

            public void linkActivated(HyperlinkEvent e) {
                ToggleHyperlink.this.setExpanded(!ToggleHyperlink.this.isExpanded());
            }
        });
        this.initAccessible();
    }

    public void setDecorationColor(Color decorationColor) {
        this.decorationColor = decorationColor;
    }

    public Color getDecorationColor() {
        return this.decorationColor;
    }

    public void setHoverDecorationColor(Color hoverColor) {
        this.hoverColor = hoverColor;
    }

    public Color getHoverDecorationColor() {
        return this.hoverColor;
    }

    public Color geHoverDecorationColor() {
        return this.hoverColor;
    }

    public Point computeSize(int wHint, int hHint, boolean changed) {
        int width = this.innerWidth + 2 * this.marginWidth;
        int height = this.innerHeight + 2 * this.marginHeight;
        return new Point(width, height);
    }

    public boolean isExpanded() {
        return this.expanded;
    }

    public void setExpanded(boolean expanded) {
        this.expanded = expanded;
        this.redraw();
    }

    private void initAccessible() {
        this.getAccessible().addAccessibleListener((AccessibleListener)new AccessibleAdapter(){

            public void getHelp(AccessibleEvent e) {
                e.result = ToggleHyperlink.this.getToolTipText();
            }

            public void getName(AccessibleEvent e) {
                e.result = Messages.ToggleHyperlink_accessibleName;
            }

            public void getDescription(AccessibleEvent e) {
                this.getName(e);
            }
        });
        this.getAccessible().addAccessibleControlListener((AccessibleControlListener)new AccessibleControlAdapter(){

            public void getChildAtPoint(AccessibleControlEvent e) {
                Point testPoint = ToggleHyperlink.this.toControl(new Point(e.x, e.y));
                if (ToggleHyperlink.this.getBounds().contains(testPoint)) {
                    e.childID = -1;
                }
            }

            public void getLocation(AccessibleControlEvent e) {
                Rectangle location = ToggleHyperlink.this.getBounds();
                Point pt = ToggleHyperlink.this.toDisplay(new Point(location.x, location.y));
                e.x = pt.x;
                e.y = pt.y;
                e.width = location.width;
                e.height = location.height;
            }

            public void getSelection(AccessibleControlEvent e) {
                if (ToggleHyperlink.this.getSelection()) {
                    e.childID = -1;
                }
            }

            public void getFocus(AccessibleControlEvent e) {
                if (ToggleHyperlink.this.getSelection()) {
                    e.childID = -1;
                }
            }

            public void getChildCount(AccessibleControlEvent e) {
                e.detail = 0;
            }

            public void getRole(AccessibleControlEvent e) {
                e.detail = 35;
            }

            public void getState(AccessibleControlEvent e) {
                e.detail = ToggleHyperlink.this.isExpanded() ? 512 : 1024;
            }

            public void getValue(AccessibleControlEvent e) {
                if (e.childID == -1) {
                    int index;
                    String name = Messages.ToggleHyperlink_accessibleName;
                    if (ToggleHyperlink.this.getParent() instanceof ExpandableComposite && (index = (name = String.valueOf(Messages.ToggleHyperlink_accessibleColumn) + ((ExpandableComposite)ToggleHyperlink.this.getParent()).getText()).indexOf(38)) != -1) {
                        name = String.valueOf(name.substring(0, index)) + name.substring(index + 1);
                    }
                    e.result = name;
                }
            }
        });
    }

    void triggerAccessible() {
        this.getAccessible().setFocus(this.getAccessibleChildID());
    }

    private int getAccessibleChildID() {
        return this.isExpanded() ? 1 : 2;
    }

    private void onKeyDown(Event e) {
        if (e.keyCode == 0x1000004) {
            if (!this.isExpanded()) {
                this.handleActivate(e);
            }
            e.doit = false;
        } else if (e.keyCode == 0x1000003) {
            if (this.isExpanded()) {
                this.handleActivate(e);
            }
            e.doit = false;
        }
    }
}

