/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.part;

public class PluginTransferData {
    String extensionName;
    byte[] transferData;

    public PluginTransferData(String extensionId, byte[] data) {
        this.extensionName = extensionId;
        this.transferData = data;
    }

    public byte[] getData() {
        return this.transferData;
    }

    public String getExtensionId() {
        return this.extensionName;
    }
}

