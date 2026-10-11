/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.internal.security.storage;

import org.eclipse.equinox.internal.security.auth.nls.SecAuthMessages;
import org.eclipse.equinox.internal.security.storage.Base64;
import org.eclipse.equinox.security.storage.StorageException;

public class CryptoData {
    private static final char MODULE_ID_SEPARATOR = '\t';
    private static final char SALT_SEPARATOR = ',';
    private final String moduleID;
    private final byte[] salt;
    private final byte[] encryptedData;

    public CryptoData(String moduleID, byte[] salt, byte[] data) {
        this.moduleID = moduleID;
        this.salt = salt;
        this.encryptedData = data;
    }

    public String getModuleID() {
        return this.moduleID;
    }

    public byte[] getSalt() {
        return this.salt;
    }

    public byte[] getData() {
        return this.encryptedData;
    }

    public CryptoData(String data) throws StorageException {
        String encrypted;
        int pos = data.indexOf(9);
        if (pos == -1) {
            throw new StorageException(3, SecAuthMessages.invalidEntryFormat);
        }
        if (pos == 0) {
            this.moduleID = null;
            encrypted = data.substring(1);
        } else {
            this.moduleID = data.substring(0, pos);
            encrypted = data.substring(pos + 1);
        }
        int saltPos = encrypted.indexOf(44);
        if (saltPos != -1) {
            this.salt = Base64.decode(encrypted.substring(0, saltPos));
            this.encryptedData = Base64.decode(encrypted.substring(saltPos + 1));
        } else {
            if (encrypted.length() != 0) {
                throw new StorageException(3, SecAuthMessages.invalidEntryFormat);
            }
            this.salt = null;
            this.encryptedData = null;
        }
    }

    public String toString() {
        StringBuffer encryptedText = this.moduleID == null ? new StringBuffer() : new StringBuffer(this.moduleID);
        encryptedText.append('\t');
        if (this.salt != null) {
            encryptedText.append(Base64.encode(this.salt));
        }
        if (this.encryptedData != null) {
            encryptedText.append(',');
            encryptedText.append(Base64.encode(this.encryptedData));
        }
        return encryptedText.toString();
    }
}

