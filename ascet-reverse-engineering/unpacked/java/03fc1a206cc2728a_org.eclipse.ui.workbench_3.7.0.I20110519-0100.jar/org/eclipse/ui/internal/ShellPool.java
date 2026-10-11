/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.events.DisposeEvent
 *  org.eclipse.swt.events.DisposeListener
 *  org.eclipse.swt.events.ShellAdapter
 *  org.eclipse.swt.events.ShellEvent
 *  org.eclipse.swt.events.ShellListener
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Shell
 */
package org.eclipse.ui.internal;

import java.util.Iterator;
import java.util.LinkedList;
import org.eclipse.swt.events.DisposeEvent;
import org.eclipse.swt.events.DisposeListener;
import org.eclipse.swt.events.ShellAdapter;
import org.eclipse.swt.events.ShellEvent;
import org.eclipse.swt.events.ShellListener;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.ui.internal.WorkbenchPlugin;

public class ShellPool {
    private int flags;
    private Shell parentShell;
    private LinkedList availableShells = new LinkedList();
    private static final String CLOSE_LISTENER = "close listener";
    private boolean isDisposed = false;
    private DisposeListener disposeListener = new DisposeListener(){

        public void widgetDisposed(DisposeEvent e) {
            WorkbenchPlugin.log(new RuntimeException("Widget disposed too early!"));
        }
    };
    private ShellListener closeListener = new ShellAdapter(){

        public void shellClosed(ShellEvent e) {
            Shell s;
            ShellListener l;
            if (ShellPool.this.isDisposed) {
                return;
            }
            if (e.doit && (l = (ShellListener)(s = (Shell)e.widget).getData(ShellPool.CLOSE_LISTENER)) != null) {
                s.setData(ShellPool.CLOSE_LISTENER, null);
                l.shellClosed(e);
                if (e.doit) {
                    Control[] children = s.getChildren();
                    int i = 0;
                    while (i < children.length) {
                        Control control = children[i];
                        control.dispose();
                        ++i;
                    }
                    ShellPool.this.availableShells.add(s);
                    s.setVisible(false);
                } else {
                    s.setData(ShellPool.CLOSE_LISTENER, (Object)l);
                }
            }
            e.doit = false;
        }
    };

    public ShellPool(Shell parentShell, int childFlags) {
        this.parentShell = parentShell;
        this.flags = childFlags;
    }

    public Shell allocateShell(ShellListener closeListener) {
        Shell result;
        if (!this.availableShells.isEmpty()) {
            result = (Shell)this.availableShells.removeFirst();
        } else {
            result = new Shell(this.parentShell, this.flags);
            result.addShellListener(this.closeListener);
            result.addDisposeListener(this.disposeListener);
        }
        result.setData(CLOSE_LISTENER, (Object)closeListener);
        return result;
    }

    public void dispose() {
        Iterator iter = this.availableShells.iterator();
        while (iter.hasNext()) {
            Shell next = (Shell)iter.next();
            next.removeDisposeListener(this.disposeListener);
            next.dispose();
        }
        this.availableShells.clear();
        this.isDisposed = true;
    }
}

