/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.dnd.ByteArrayTransfer
 *  org.eclipse.swt.dnd.TransferData
 */
package org.eclipse.ui.part;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import org.eclipse.swt.dnd.ByteArrayTransfer;
import org.eclipse.swt.dnd.TransferData;
import org.eclipse.ui.part.PluginTransferData;

public class PluginTransfer
extends ByteArrayTransfer {
    private static final String TYPE_NAME = "pluggable-transfer-format";
    private static final int TYPEID = PluginTransfer.registerType((String)"pluggable-transfer-format");
    private static PluginTransfer instance = new PluginTransfer();

    private PluginTransfer() {
    }

    public static PluginTransfer getInstance() {
        return instance;
    }

    protected int[] getTypeIds() {
        return new int[]{TYPEID};
    }

    protected String[] getTypeNames() {
        return new String[]{TYPE_NAME};
    }

    protected void javaToNative(Object data, TransferData transferData) {
        PluginTransferData realData = (PluginTransferData)data;
        if (data == null) {
            return;
        }
        try {
            ByteArrayOutputStream out = new ByteArrayOutputStream();
            DataOutputStream dataOut = new DataOutputStream(out);
            dataOut.writeUTF(realData.getExtensionId());
            dataOut.writeInt(realData.getData().length);
            dataOut.write(realData.getData());
            dataOut.close();
            super.javaToNative((Object)out.toByteArray(), transferData);
        }
        catch (IOException e) {
            e.printStackTrace();
        }
    }

    protected Object nativeToJava(TransferData transferData) {
        try {
            byte[] bytes = (byte[])super.nativeToJava(transferData);
            ByteArrayInputStream in = new ByteArrayInputStream(bytes);
            DataInputStream dataIn = new DataInputStream(in);
            String extensionName = dataIn.readUTF();
            int len = dataIn.readInt();
            byte[] pluginData = new byte[len];
            dataIn.readFully(pluginData);
            return new PluginTransferData(extensionName, pluginData);
        }
        catch (IOException e) {
            e.printStackTrace();
            return null;
        }
    }
}

