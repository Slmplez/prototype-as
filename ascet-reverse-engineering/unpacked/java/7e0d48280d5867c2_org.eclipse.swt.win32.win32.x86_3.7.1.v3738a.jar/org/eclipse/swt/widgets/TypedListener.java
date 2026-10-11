/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.widgets;

import org.eclipse.swt.events.ArmEvent;
import org.eclipse.swt.events.ArmListener;
import org.eclipse.swt.events.ControlEvent;
import org.eclipse.swt.events.ControlListener;
import org.eclipse.swt.events.DisposeEvent;
import org.eclipse.swt.events.DisposeListener;
import org.eclipse.swt.events.DragDetectEvent;
import org.eclipse.swt.events.DragDetectListener;
import org.eclipse.swt.events.ExpandEvent;
import org.eclipse.swt.events.ExpandListener;
import org.eclipse.swt.events.FocusEvent;
import org.eclipse.swt.events.FocusListener;
import org.eclipse.swt.events.GestureEvent;
import org.eclipse.swt.events.GestureListener;
import org.eclipse.swt.events.HelpEvent;
import org.eclipse.swt.events.HelpListener;
import org.eclipse.swt.events.KeyEvent;
import org.eclipse.swt.events.KeyListener;
import org.eclipse.swt.events.MenuDetectEvent;
import org.eclipse.swt.events.MenuDetectListener;
import org.eclipse.swt.events.MenuEvent;
import org.eclipse.swt.events.MenuListener;
import org.eclipse.swt.events.ModifyEvent;
import org.eclipse.swt.events.ModifyListener;
import org.eclipse.swt.events.MouseEvent;
import org.eclipse.swt.events.MouseListener;
import org.eclipse.swt.events.MouseMoveListener;
import org.eclipse.swt.events.MouseTrackListener;
import org.eclipse.swt.events.MouseWheelListener;
import org.eclipse.swt.events.PaintEvent;
import org.eclipse.swt.events.PaintListener;
import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.events.SelectionListener;
import org.eclipse.swt.events.ShellEvent;
import org.eclipse.swt.events.ShellListener;
import org.eclipse.swt.events.TouchEvent;
import org.eclipse.swt.events.TouchListener;
import org.eclipse.swt.events.TraverseEvent;
import org.eclipse.swt.events.TraverseListener;
import org.eclipse.swt.events.TreeEvent;
import org.eclipse.swt.events.TreeListener;
import org.eclipse.swt.events.VerifyEvent;
import org.eclipse.swt.events.VerifyListener;
import org.eclipse.swt.internal.SWTEventListener;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Listener;

public class TypedListener
implements Listener {
    protected SWTEventListener eventListener;

    public TypedListener(SWTEventListener listener) {
        this.eventListener = listener;
    }

    public SWTEventListener getEventListener() {
        return this.eventListener;
    }

    public void handleEvent(Event e) {
        switch (e.type) {
            case 26: {
                ((ShellListener)this.eventListener).shellActivated(new ShellEvent(e));
                break;
            }
            case 30: {
                ((ArmListener)this.eventListener).widgetArmed(new ArmEvent(e));
                break;
            }
            case 21: {
                ShellEvent event = new ShellEvent(e);
                ((ShellListener)this.eventListener).shellClosed(event);
                e.doit = event.doit;
                break;
            }
            case 18: {
                if (this.eventListener instanceof TreeListener) {
                    ((TreeListener)this.eventListener).treeCollapsed(new TreeEvent(e));
                    break;
                }
                ((ExpandListener)this.eventListener).itemCollapsed(new ExpandEvent(e));
                break;
            }
            case 27: {
                ((ShellListener)this.eventListener).shellDeactivated(new ShellEvent(e));
                break;
            }
            case 20: {
                ((ShellListener)this.eventListener).shellDeiconified(new ShellEvent(e));
                break;
            }
            case 14: {
                ((SelectionListener)this.eventListener).widgetDefaultSelected(new SelectionEvent(e));
                break;
            }
            case 12: {
                ((DisposeListener)this.eventListener).widgetDisposed(new DisposeEvent(e));
                break;
            }
            case 29: {
                ((DragDetectListener)this.eventListener).dragDetected(new DragDetectEvent(e));
                break;
            }
            case 17: {
                if (this.eventListener instanceof TreeListener) {
                    ((TreeListener)this.eventListener).treeExpanded(new TreeEvent(e));
                    break;
                }
                ((ExpandListener)this.eventListener).itemExpanded(new ExpandEvent(e));
                break;
            }
            case 15: {
                ((FocusListener)this.eventListener).focusGained(new FocusEvent(e));
                break;
            }
            case 16: {
                ((FocusListener)this.eventListener).focusLost(new FocusEvent(e));
                break;
            }
            case 48: {
                GestureEvent event = new GestureEvent(e);
                ((GestureListener)this.eventListener).gesture(event);
                e.doit = event.doit;
                break;
            }
            case 28: {
                ((HelpListener)this.eventListener).helpRequested(new HelpEvent(e));
                break;
            }
            case 23: {
                ((MenuListener)this.eventListener).menuHidden(new MenuEvent(e));
                break;
            }
            case 19: {
                ((ShellListener)this.eventListener).shellIconified(new ShellEvent(e));
                break;
            }
            case 1: {
                KeyEvent event = new KeyEvent(e);
                ((KeyListener)this.eventListener).keyPressed(event);
                e.doit = event.doit;
                break;
            }
            case 2: {
                KeyEvent event = new KeyEvent(e);
                ((KeyListener)this.eventListener).keyReleased(event);
                e.doit = event.doit;
                break;
            }
            case 24: {
                ((ModifyListener)this.eventListener).modifyText(new ModifyEvent(e));
                break;
            }
            case 35: {
                MenuDetectEvent event = new MenuDetectEvent(e);
                ((MenuDetectListener)this.eventListener).menuDetected(event);
                e.x = event.x;
                e.y = event.y;
                e.doit = event.doit;
                break;
            }
            case 3: {
                ((MouseListener)this.eventListener).mouseDown(new MouseEvent(e));
                break;
            }
            case 8: {
                ((MouseListener)this.eventListener).mouseDoubleClick(new MouseEvent(e));
                break;
            }
            case 6: {
                ((MouseTrackListener)this.eventListener).mouseEnter(new MouseEvent(e));
                break;
            }
            case 7: {
                ((MouseTrackListener)this.eventListener).mouseExit(new MouseEvent(e));
                break;
            }
            case 32: {
                ((MouseTrackListener)this.eventListener).mouseHover(new MouseEvent(e));
                break;
            }
            case 5: {
                ((MouseMoveListener)this.eventListener).mouseMove(new MouseEvent(e));
                return;
            }
            case 37: {
                ((MouseWheelListener)this.eventListener).mouseScrolled(new MouseEvent(e));
                return;
            }
            case 4: {
                ((MouseListener)this.eventListener).mouseUp(new MouseEvent(e));
                break;
            }
            case 10: {
                ((ControlListener)this.eventListener).controlMoved(new ControlEvent(e));
                break;
            }
            case 9: {
                PaintEvent event = new PaintEvent(e);
                ((PaintListener)this.eventListener).paintControl(event);
                e.gc = event.gc;
                break;
            }
            case 11: {
                ((ControlListener)this.eventListener).controlResized(new ControlEvent(e));
                break;
            }
            case 13: {
                SelectionEvent event = new SelectionEvent(e);
                ((SelectionListener)this.eventListener).widgetSelected(event);
                e.x = event.x;
                e.y = event.y;
                e.doit = event.doit;
                break;
            }
            case 22: {
                ((MenuListener)this.eventListener).menuShown(new MenuEvent(e));
                break;
            }
            case 47: {
                ((TouchListener)this.eventListener).touch(new TouchEvent(e));
                break;
            }
            case 31: {
                TraverseEvent event = new TraverseEvent(e);
                ((TraverseListener)this.eventListener).keyTraversed(event);
                e.detail = event.detail;
                e.doit = event.doit;
                break;
            }
            case 25: {
                VerifyEvent event = new VerifyEvent(e);
                ((VerifyListener)this.eventListener).verifyText(event);
                e.text = event.text;
                e.doit = event.doit;
            }
        }
    }
}

