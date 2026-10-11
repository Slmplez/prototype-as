/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.swt.dnd.ByteArrayTransfer
 *  org.eclipse.swt.dnd.TransferData
 */
package org.eclipse.jface.util;

import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.jface.resource.JFaceResources;
import org.eclipse.jface.util.Policy;
import org.eclipse.jface.viewers.ISelection;
import org.eclipse.swt.dnd.ByteArrayTransfer;
import org.eclipse.swt.dnd.TransferData;

public class LocalSelectionTransfer
extends ByteArrayTransfer {
    private static final String TYPE_NAME = "local-selection-transfer-format" + new Long(System.currentTimeMillis()).toString();
    private static final int TYPEID = LocalSelectionTransfer.registerType((String)TYPE_NAME);
    private static final LocalSelectionTransfer INSTANCE = new LocalSelectionTransfer();
    private ISelection selection;
    private long selectionSetTime;

    protected LocalSelectionTransfer() {
    }

    public static LocalSelectionTransfer getTransfer() {
        return INSTANCE;
    }

    public ISelection getSelection() {
        return this.selection;
    }

    private boolean isInvalidNativeType(Object result) {
        return !(result instanceof byte[]) || !TYPE_NAME.equals(new String((byte[])result));
    }

    protected int[] getTypeIds() {
        return new int[]{TYPEID};
    }

    protected String[] getTypeNames() {
        return new String[]{TYPE_NAME};
    }

    public void javaToNative(Object object, TransferData transferData) {
        byte[] check = TYPE_NAME.getBytes();
        super.javaToNative((Object)check, transferData);
    }

    public Object nativeToJava(TransferData transferData) {
        Object result = super.nativeToJava(transferData);
        if (this.isInvalidNativeType(result)) {
            Policy.getLog().log((IStatus)new Status(4, "org.eclipse.jface", 4, JFaceResources.getString("LocalSelectionTransfer.errorMessage"), null));
        }
        return this.selection;
    }

    public void setSelection(ISelection s) {
        this.selection = s;
    }

    public long getSelectionSetTime() {
        return this.selectionSetTime;
    }

    public void setSelectionSetTime(long time) {
        this.selectionSetTime = time;
    }
}

