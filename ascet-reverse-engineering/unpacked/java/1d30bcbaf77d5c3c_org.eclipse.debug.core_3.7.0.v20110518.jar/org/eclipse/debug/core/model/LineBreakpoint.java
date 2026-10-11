/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IMarker
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.debug.core.model;

import org.eclipse.core.resources.IMarker;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.debug.core.model.Breakpoint;
import org.eclipse.debug.core.model.ILineBreakpoint;

public abstract class LineBreakpoint
extends Breakpoint
implements ILineBreakpoint {
    public int getLineNumber() throws CoreException {
        IMarker m = this.getMarker();
        if (m != null) {
            return m.getAttribute("lineNumber", -1);
        }
        return -1;
    }

    public int getCharStart() throws CoreException {
        IMarker m = this.getMarker();
        if (m != null) {
            return m.getAttribute("charStart", -1);
        }
        return -1;
    }

    public int getCharEnd() throws CoreException {
        IMarker m = this.getMarker();
        if (m != null) {
            return m.getAttribute("charEnd", -1);
        }
        return -1;
    }
}

