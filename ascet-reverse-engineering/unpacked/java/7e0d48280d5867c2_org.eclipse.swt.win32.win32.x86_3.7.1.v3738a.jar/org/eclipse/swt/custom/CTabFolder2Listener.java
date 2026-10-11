/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.custom;

import org.eclipse.swt.custom.CTabFolderEvent;
import org.eclipse.swt.internal.SWTEventListener;

public interface CTabFolder2Listener
extends SWTEventListener {
    public void close(CTabFolderEvent var1);

    public void minimize(CTabFolderEvent var1);

    public void maximize(CTabFolderEvent var1);

    public void restore(CTabFolderEvent var1);

    public void showList(CTabFolderEvent var1);
}

