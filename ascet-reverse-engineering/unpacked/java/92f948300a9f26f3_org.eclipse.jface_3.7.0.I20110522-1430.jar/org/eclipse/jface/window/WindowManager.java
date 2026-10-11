/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 */
package org.eclipse.jface.window;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.window.Window;

public class WindowManager {
    private ArrayList windows = new ArrayList();
    private List subManagers;

    public WindowManager() {
    }

    public WindowManager(WindowManager parent) {
        Assert.isNotNull((Object)parent);
        parent.addWindowManager(this);
    }

    public void add(Window window) {
        if (!this.windows.contains(window)) {
            this.windows.add(window);
            window.setWindowManager(this);
        }
    }

    private void addWindowManager(WindowManager wm) {
        if (this.subManagers == null) {
            this.subManagers = new ArrayList();
        }
        if (!this.subManagers.contains(wm)) {
            this.subManagers.add(wm);
        }
    }

    public boolean close() {
        boolean closed;
        List t = (List)this.windows.clone();
        Iterator e = t.iterator();
        while (e.hasNext()) {
            Window window = (Window)e.next();
            closed = window.close();
            if (closed) continue;
            return false;
        }
        if (this.subManagers != null) {
            e = this.subManagers.iterator();
            while (e.hasNext()) {
                WindowManager wm = (WindowManager)e.next();
                closed = wm.close();
                if (closed) continue;
                return false;
            }
        }
        return true;
    }

    public int getWindowCount() {
        return this.windows.size();
    }

    public Window[] getWindows() {
        Window[] bs = new Window[this.windows.size()];
        this.windows.toArray(bs);
        return bs;
    }

    public final void remove(Window window) {
        if (this.windows.contains(window)) {
            this.windows.remove(window);
            window.setWindowManager(null);
        }
    }
}

