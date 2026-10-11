/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.text.templates.persistence.TemplatePersistenceData
 *  org.eclipse.swt.dnd.ByteArrayTransfer
 *  org.eclipse.swt.dnd.TransferData
 */
package org.eclipse.ui.texteditor.templates;

import org.eclipse.jface.text.templates.persistence.TemplatePersistenceData;
import org.eclipse.swt.dnd.ByteArrayTransfer;
import org.eclipse.swt.dnd.TransferData;

class TemplatesTransfer
extends ByteArrayTransfer {
    private static final TemplatesTransfer INSTANCE = new TemplatesTransfer();
    private static final String TYPE_NAME = "template-transfer-format:" + System.currentTimeMillis() + ":" + ((Object)((Object)INSTANCE)).hashCode();
    private static final int TYPE_ID = TemplatesTransfer.registerType((String)TYPE_NAME);
    private TemplatePersistenceData[] fObject;

    TemplatesTransfer() {
    }

    public static TemplatesTransfer getInstance() {
        return INSTANCE;
    }

    protected int[] getTypeIds() {
        return new int[]{TYPE_ID};
    }

    protected String[] getTypeNames() {
        return new String[]{TYPE_NAME};
    }

    protected void javaToNative(Object object, TransferData transferData) {
        if (object == null || !(object instanceof TemplatePersistenceData[]) || !this.isSupportedType(transferData)) {
            this.fObject = null;
            return;
        }
        this.fObject = (TemplatePersistenceData[])object;
        super.javaToNative((Object)TYPE_NAME.getBytes(), transferData);
    }

    protected Object nativeToJava(TransferData transferData) {
        Object result = super.nativeToJava(transferData);
        if (!(result instanceof byte[]) || !TYPE_NAME.equals(new String((byte[])result))) {
            return null;
        }
        return this.fObject;
    }
}

